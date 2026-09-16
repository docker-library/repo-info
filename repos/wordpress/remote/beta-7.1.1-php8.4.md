## `wordpress:beta-7.1.1-php8.4`

```console
$ docker pull wordpress@sha256:fd3be08a8e0f0a00bfe6f39eae812044ca9211f591bddeafa588291467a87d1a
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

### `wordpress:beta-7.1.1-php8.4` - linux; amd64

```console
$ docker pull wordpress@sha256:ce79e0bf53acb10fcc5465addb0e4559095f901ba017ef39b50726fc9d4f6a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.3 MB (290291740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6e718ac565ef0d1c1c1706a2d3e1b3c1d18db9db8d233727ce93d406b6f428`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 21:22:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 15 Sep 2026 21:22:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 15 Sep 2026 21:22:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 21:22:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:22:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:22:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 15 Sep 2026 21:22:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 15 Sep 2026 21:22:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 15 Sep 2026 21:22:50 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 15 Sep 2026 21:22:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 15 Sep 2026 21:22:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:22:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:22:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:22:50 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 15 Sep 2026 21:22:50 GMT
ENV PHP_VERSION=8.4.25
# Tue, 15 Sep 2026 21:22:50 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Tue, 15 Sep 2026 21:22:50 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Tue, 15 Sep 2026 21:22:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 15 Sep 2026 21:22:58 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:25:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:25:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:25:21 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:25:21 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:25:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:25:21 GMT
STOPSIGNAL SIGWINCH
# Tue, 15 Sep 2026 21:25:21 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:25:21 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:25:21 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 21:25:21 GMT
CMD ["apache2-foreground"]
# Tue, 15 Sep 2026 22:29:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:30:22 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:30:22 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:30:22 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:30:22 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:30:25 GMT
RUN set -eux; 	version='7.1.1-RC1'; 	sha1='833d00fc95cab51a894692ed0a36f72c86c3dd69'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:30:25 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:30:25 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:30:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:30:25 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:30:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:30:25 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:507ba8eabddad8381a66dfbed64677521d8043bdce1077cc500bcaac786889c6`  
		Last Modified: Tue, 15 Sep 2026 21:25:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e54bdf43168728d19377a2c663a3725aec8ff6ede6d14a6a5a7ec91dd6fcb37e`  
		Last Modified: Tue, 15 Sep 2026 21:25:46 GMT  
		Size: 129.1 MB (129122770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6749d0e9ac187cf53897b1ae574adea89dbba2863e67be3c04407702499506f7`  
		Last Modified: Tue, 15 Sep 2026 21:25:43 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a679d7f98d1ffe669a735ba278e52372f91d98bbcf290f1c711554e4bf9d84b`  
		Last Modified: Tue, 15 Sep 2026 21:25:43 GMT  
		Size: 4.2 MB (4239736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05fb9cba2168d74bb63e74847a702f8c2adba0b8bafed8917702df3a0e4bc78`  
		Last Modified: Tue, 15 Sep 2026 21:25:44 GMT  
		Size: 438.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ade00bf9490b039086931bce5c3f2820e5addb6b08ef1f3321d1612c9612fc9`  
		Last Modified: Tue, 15 Sep 2026 21:25:44 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2f80990cf0265ac96700c3ce420445497e5ec2543140ec4f43376980b8cf670`  
		Last Modified: Tue, 15 Sep 2026 21:25:45 GMT  
		Size: 13.9 MB (13926588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b8486a42fffaa9607f2f0bd0b0286fc3dd8888227b199438018bc427e13f93`  
		Last Modified: Tue, 15 Sep 2026 21:25:45 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7d62c29ad732375c8bd73ba76b49ea99b7d0d53bebb951b99354355061d865`  
		Last Modified: Tue, 15 Sep 2026 21:25:46 GMT  
		Size: 14.8 MB (14822137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6d56e75d63c69fcefdeac9e9f537402c3f33fc5270aac8a2d2bb9ce30f4eadd`  
		Last Modified: Tue, 15 Sep 2026 21:25:46 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7065db3f4c4ec7c611486c174cb3dac88f34106c1157d2937ae853e0ad72332`  
		Last Modified: Tue, 15 Sep 2026 21:25:46 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a304779a3511fdeccff9e531183d39fa92e2bec17aeda0713c83be2c51b2f022`  
		Last Modified: Tue, 15 Sep 2026 21:25:47 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15fb6c13166f5c60042adeee40cc0d63ecec5fd4cb4901afc4607f0896acb28`  
		Last Modified: Tue, 15 Sep 2026 21:25:47 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f33750ff0d871c65bf6d1a3313781d23a3466c1141377e43ec2121041890519`  
		Last Modified: Tue, 15 Sep 2026 22:30:42 GMT  
		Size: 33.0 MB (32967061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3431c93aa472798b7aae33c66bab91ac970fa020d3a2890d68e51c9359143242`  
		Last Modified: Tue, 15 Sep 2026 22:30:42 GMT  
		Size: 30.0 MB (29998353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6129e1caeca437c157341b51d267423be5798e7c9e94e582aebc5117b7bf9fcd`  
		Last Modified: Tue, 15 Sep 2026 22:30:41 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45428bee9f465890222672ad54cdf9f1eca6af9c7e7b513117e15951c1e1ece5`  
		Last Modified: Tue, 15 Sep 2026 22:30:41 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c66135137f928cfb802ece11ebb3e64430e063cf11b4e7c59479763eed147d8`  
		Last Modified: Tue, 15 Sep 2026 22:30:42 GMT  
		Size: 18.8 KB (18795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e72150dd07b86e4d33c78dd1a5fc740db1bb974ecc84e8a6ccd458c9c60c4f05`  
		Last Modified: Tue, 15 Sep 2026 22:30:43 GMT  
		Size: 35.4 MB (35392778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d93462147e4877ce3befc8964b81309b58e9c93a9a46890f9370664195e338f`  
		Last Modified: Tue, 15 Sep 2026 22:30:44 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8cff09bba86b4f131048dec2e81ab21a1b2427ba0dc8f5974e91c056ac43b9`  
		Last Modified: Tue, 15 Sep 2026 22:30:44 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddfa761af182ddd9375c63f8ab75f92316cad90a2570925cde75a1449758f3d1`  
		Last Modified: Tue, 15 Sep 2026 22:30:44 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1.1-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:499cbb90970982214b453bd4a5f96131ef6f62a2eaefefa497a4d7368b9d3b3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8763408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:133e2c68191ba50444cf9787af4d4ad46a333a38e1719a80dc86a3f884ee2bad`

```dockerfile
```

-	Layers:
	-	`sha256:cbe5aafa3b1f0eccf1bfefc1cad0332aa577fe3ddf125e00d2a99e6697e6f807`  
		Last Modified: Tue, 15 Sep 2026 22:30:41 GMT  
		Size: 8.7 MB (8696863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d714149a74c29a47bfd801244eb8bcee44c37c61793a4d9818570827090e6abf`  
		Last Modified: Tue, 15 Sep 2026 22:30:41 GMT  
		Size: 66.5 KB (66545 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1.1-php8.4` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:83a93b751347fad443ef815a6dd392b9d0f2db823313b084501a2a4c1fa8395c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257419724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ce1c9c4a2399012d16b41978f60732ede1a6c52e75fe7f1172b48c87164be6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 21:12:15 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 15 Sep 2026 21:12:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 15 Sep 2026 21:12:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 21:12:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:12:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:12:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 15 Sep 2026 21:12:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 15 Sep 2026 21:12:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 15 Sep 2026 21:12:50 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 15 Sep 2026 21:12:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 15 Sep 2026 21:12:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:12:50 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 15 Sep 2026 21:12:50 GMT
ENV PHP_VERSION=8.4.25
# Tue, 15 Sep 2026 21:12:50 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Tue, 15 Sep 2026 21:12:50 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Tue, 15 Sep 2026 21:20:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 15 Sep 2026 21:20:46 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:23:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:23:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:23:52 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:23:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:23:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:23:52 GMT
STOPSIGNAL SIGWINCH
# Tue, 15 Sep 2026 21:23:52 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:23:52 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:23:52 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 21:23:52 GMT
CMD ["apache2-foreground"]
# Tue, 15 Sep 2026 22:22:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:24:16 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:24:16 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:24:16 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:24:16 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:27:32 GMT
RUN set -eux; 	version='7.1.1-RC1'; 	sha1='833d00fc95cab51a894692ed0a36f72c86c3dd69'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:27:32 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:27:32 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:27:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:27:32 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:27:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:27:32 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb73623933cc153289aa42f8b11605706fe6ad1a422ea975b5f98b42ca17b12`  
		Last Modified: Tue, 15 Sep 2026 21:16:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc70b8dbd800e079122d4b6fd693dc377ea85531d92a9183787a26263585d15a`  
		Last Modified: Tue, 15 Sep 2026 21:16:51 GMT  
		Size: 105.3 MB (105275727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d790398126764cd5651e93c76671dc99192721865bb6326a425d3ee5f31daba`  
		Last Modified: Tue, 15 Sep 2026 21:16:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54909a1590c51bbc12a479ee6c8e4b196a28c7815d1fe72c39614b6a7787e6f`  
		Last Modified: Tue, 15 Sep 2026 21:16:48 GMT  
		Size: 4.1 MB (4098019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:485ed96930d50c931dd3d8a238d44519cfa292f4ad96e936f58c8c15b1ead7bb`  
		Last Modified: Tue, 15 Sep 2026 21:16:49 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47bb4cea2515293089f1f8cc8fa976ea70dab9ce0850f3815e60f8ce864eeee4`  
		Last Modified: Tue, 15 Sep 2026 21:16:49 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914056e6596455b5fccf6977565620196f318937984720d47034701b21b0ebe4`  
		Last Modified: Tue, 15 Sep 2026 21:24:03 GMT  
		Size: 13.9 MB (13923820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937b1adf0bdba4c0d46b5e69040befc10bbfa407fd462c42cf2d0e5a3377ce74`  
		Last Modified: Tue, 15 Sep 2026 21:24:02 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26630b50622bd4572784f1ff132d60df47288de927160f212b1ac75dfa6b317`  
		Last Modified: Tue, 15 Sep 2026 21:24:03 GMT  
		Size: 13.2 MB (13219731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48a94526879d9ed8ee4c9cf122c6f441c7dff9f097677da6b0dfc55c1565220`  
		Last Modified: Tue, 15 Sep 2026 21:24:02 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3e475463bfa6dd55785fd1ec05513975eb4587df722a1a1ce4e4a42d37a0d3`  
		Last Modified: Tue, 15 Sep 2026 21:24:03 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a41feb6d735418c44ce445bb5f57145cd77091e4c30a502a961bb0272117194`  
		Last Modified: Tue, 15 Sep 2026 21:24:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce60df811a63bd0745986b5dcbab8abf25fb2dff588b6b0974017819022e598`  
		Last Modified: Tue, 15 Sep 2026 21:24:04 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f46a9540bc689d4c3fdbad26e3bdf8c26ff5261607da28f52467a038c4ccfdc1`  
		Last Modified: Tue, 15 Sep 2026 22:24:37 GMT  
		Size: 30.1 MB (30146916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85d5d86609ac9325b2b4213872e1f9aec467b4fd4340de9c3e6d71cf9227b18`  
		Last Modified: Tue, 15 Sep 2026 22:24:37 GMT  
		Size: 27.4 MB (27364119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b5df45599b10a16418bc398a2861fff1489da68bc0cae7f2a39ad62fbbf36a5`  
		Last Modified: Tue, 15 Sep 2026 22:24:36 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43d8ae5b707a911b02428d7f843a042fb2807f114f99e9fd3f68ba79408cc51`  
		Last Modified: Tue, 15 Sep 2026 22:24:36 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28029f6b97e9280195c92b2b12937410a0f32b3649d6dbd4d2fc662567df3af`  
		Last Modified: Tue, 15 Sep 2026 22:24:37 GMT  
		Size: 18.8 KB (18793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0475ae33ab6e5e1018672571071e46f1132acc1ee8ea3cd19ee0ac0ea25dd2f9`  
		Last Modified: Tue, 15 Sep 2026 22:27:49 GMT  
		Size: 35.4 MB (35392804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e83a80c581e47b4929fabd53de17b42580b865a35815f434745ca55ed12e1d91`  
		Last Modified: Tue, 15 Sep 2026 22:27:48 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9522cd3f0f683aa52349ff55b0a3c3e7cd54ce8b656f65da57c07ad63ebab5b`  
		Last Modified: Tue, 15 Sep 2026 22:27:48 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d70026fe11dca5c26bbbcaf908dbe773e638a7ae47e70ddbf3bf8ff306e287d`  
		Last Modified: Tue, 15 Sep 2026 22:27:48 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1.1-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:a0ec7aab97020b129b41c5b2933bad74fb57e87c1beda335e5f9c69d54318674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8557189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b669eeb462ce01f70baa9128dff22be30ccce1ffcc012808aa2014d0a99721c`

```dockerfile
```

-	Layers:
	-	`sha256:bd4220be1d22d1bd714578714fbccaf551fd796d92ac0741cb1ed059f474e089`  
		Last Modified: Tue, 15 Sep 2026 22:27:47 GMT  
		Size: 8.5 MB (8490439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c718be283f7d8111ac68a64c8f10ff54d798e38420910189c06dbd7b6d25c285`  
		Last Modified: Tue, 15 Sep 2026 22:27:47 GMT  
		Size: 66.8 KB (66750 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1.1-php8.4` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:51340eff2190fca218f0c785b7655247fa8ff996656dc17cb6955f0cec3ea21c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.7 MB (242731054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e13d67df173e85b4ae7f580fed267879715207498a202f457b8b7d60a546b08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 21:43:11 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 15 Sep 2026 21:43:34 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 15 Sep 2026 21:43:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 21:43:34 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:43:34 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:43:34 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 15 Sep 2026 21:43:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 15 Sep 2026 21:43:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 15 Sep 2026 21:43:41 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 15 Sep 2026 21:43:42 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 15 Sep 2026 21:43:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:43:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:43:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:43:42 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 15 Sep 2026 21:43:42 GMT
ENV PHP_VERSION=8.4.25
# Tue, 15 Sep 2026 21:43:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Tue, 15 Sep 2026 21:43:42 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Tue, 15 Sep 2026 21:43:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 15 Sep 2026 21:43:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:46:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:46:40 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:46:40 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:46:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:46:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:46:40 GMT
STOPSIGNAL SIGWINCH
# Tue, 15 Sep 2026 21:46:40 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:46:41 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:46:41 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 21:46:41 GMT
CMD ["apache2-foreground"]
# Tue, 15 Sep 2026 22:25:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:27:14 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:27:14 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:27:14 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:27:14 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:27:17 GMT
RUN set -eux; 	version='7.1.1-RC1'; 	sha1='833d00fc95cab51a894692ed0a36f72c86c3dd69'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:27:17 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:27:17 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:27:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:27:17 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:27:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:27:17 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38dfa5a7ac75e355c653a7e07d222cda67290f23c26cb23ae8988bc7185f3bc`  
		Last Modified: Tue, 15 Sep 2026 21:46:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465cbf3204c3a845a3414b71fb2c5ce759a207164822008f23d45bc99fffc022`  
		Last Modified: Tue, 15 Sep 2026 21:47:02 GMT  
		Size: 95.9 MB (95945914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a5c2fc2dc8c031f3cdee5b338a29f029af86e9f422ae63165464f50f8aa5e72`  
		Last Modified: Tue, 15 Sep 2026 21:46:59 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d27eaa3fbfb3111cb388321da1caa426d7ee9ce40fe6ad7ad88f86e45cfee0f`  
		Last Modified: Tue, 15 Sep 2026 21:46:59 GMT  
		Size: 3.8 MB (3764552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f26f0e8b1945deab9b23829a13972db6c017785f25c723575a9a318ae32fba0c`  
		Last Modified: Tue, 15 Sep 2026 21:47:00 GMT  
		Size: 427.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aee5b92895b575a61f112980f4f86a0b954131ae11bcc617b1efc6d66e63a5e`  
		Last Modified: Tue, 15 Sep 2026 21:47:00 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dda59759cf0a315bbbcd1d550ff6fc35d12544a6d3dae47f24c1d28809294db8`  
		Last Modified: Tue, 15 Sep 2026 21:47:01 GMT  
		Size: 13.9 MB (13923988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6c0be11208f823d6a0c15ac32dd4438d27286814f1c4aca6b09b9f5d5da91c`  
		Last Modified: Tue, 15 Sep 2026 21:47:01 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:012fe1570b986d3c308cc97d5828800fb753910934d268562d170e11c4d86c83`  
		Last Modified: Tue, 15 Sep 2026 21:47:02 GMT  
		Size: 12.6 MB (12627912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2825b575e8bb4c97d2d9db71104dfc2720de16cb87e95543b6a6682263436145`  
		Last Modified: Tue, 15 Sep 2026 21:47:02 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed5e5a842f8914cabb4a8b6c373445e642670c0b01584af1d9edcf21ec095db0`  
		Last Modified: Tue, 15 Sep 2026 21:47:02 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba9cae0c44a6a6134c2e8e84f575270f6f4669bda8ddd8a8d08ef48f1aa4c03f`  
		Last Modified: Tue, 15 Sep 2026 21:47:03 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacaca911a85848ea667779e53d77bb01f13ba2761a6c7bd67d412a4aa4dff3c`  
		Last Modified: Tue, 15 Sep 2026 21:47:03 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2593e640cf4676e471630e029b9a04a1cea7f16413ec7ddf0c63ac07d0703bed`  
		Last Modified: Tue, 15 Sep 2026 22:27:35 GMT  
		Size: 29.1 MB (29054543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d199c36a13c4f8d7df06d05a9c48f1947614ee84d2b86df729f72310a7750a52`  
		Last Modified: Tue, 15 Sep 2026 22:27:35 GMT  
		Size: 25.8 MB (25772573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0133d15f60df6d142460b79fba631764b57a0a942a8b5999c2543374ef28e2c`  
		Last Modified: Tue, 15 Sep 2026 22:27:34 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cbff3db0a72d7d927ec40df892648b211a889a81eace78f36e9c01db9fd582`  
		Last Modified: Tue, 15 Sep 2026 22:27:34 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baface88a5154bd8a3a65d9465cdfc601441154bb03c19f20bb530176d9563bb`  
		Last Modified: Tue, 15 Sep 2026 22:27:35 GMT  
		Size: 18.8 KB (18794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8109457f6fdbb89607b2eb8e37f1e19c39df4aaf74b3ad6998fac7c59ead35a5`  
		Last Modified: Tue, 15 Sep 2026 22:27:36 GMT  
		Size: 35.4 MB (35392796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb8cb4dc394d34c9e4d2592e71b3d8656a8162798406bad54a816aa52aa56d1`  
		Last Modified: Tue, 15 Sep 2026 22:27:36 GMT  
		Size: 2.4 KB (2444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b915f909a96d8b9d956be23ae3bcfd44f74e295a84f8ad564e4ad4d2b43510f9`  
		Last Modified: Tue, 15 Sep 2026 22:27:36 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58d19dc916f28863ecac6a5e6861e8d61036de9dbd15d7ec1615d812eb380cef`  
		Last Modified: Tue, 15 Sep 2026 22:27:36 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1.1-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:581cc11ab8e86270467658cd3686c4c9a80a5b6a19a1cd9fa3000ed6da2e075d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8562015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b779a2b2ac874558e4ce464b6a3756bd5ca4820a01b52aeca4a4c58e0fa60ac9`

```dockerfile
```

-	Layers:
	-	`sha256:e9a062f5a8d9ce6507a5ea968ae74b35bc45c2af47925ffde375ca023f28312d`  
		Last Modified: Tue, 15 Sep 2026 22:27:34 GMT  
		Size: 8.5 MB (8495275 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea2fab24e6cbe8615b07cadc78829cfb26d79444a1404e8df1fcacff9cd5624d`  
		Last Modified: Tue, 15 Sep 2026 22:27:34 GMT  
		Size: 66.7 KB (66740 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1.1-php8.4` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:92b87dc753d8433eb8fb8fae124aeddc99fd092d8ff4e4c61436a0570a0b6236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282851121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59cbebfc4bc0273880963c14d4c54e0af6e9c3bfe55b06c32250ef35ce2bb6c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 21:24:19 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 15 Sep 2026 21:24:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 15 Sep 2026 21:24:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 21:24:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:24:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:24:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 15 Sep 2026 21:24:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 15 Sep 2026 21:24:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 15 Sep 2026 21:24:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 15 Sep 2026 21:24:47 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 15 Sep 2026 21:24:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:24:47 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:24:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:24:47 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 15 Sep 2026 21:24:47 GMT
ENV PHP_VERSION=8.4.25
# Tue, 15 Sep 2026 21:24:47 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Tue, 15 Sep 2026 21:24:47 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Tue, 15 Sep 2026 21:24:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 15 Sep 2026 21:24:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:28:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:28:05 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:28:05 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:28:06 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:28:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:28:06 GMT
STOPSIGNAL SIGWINCH
# Tue, 15 Sep 2026 21:28:06 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:28:06 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:28:06 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 21:28:06 GMT
CMD ["apache2-foreground"]
# Tue, 15 Sep 2026 22:16:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:17:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:17:48 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:17:49 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:17:49 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:17:51 GMT
RUN set -eux; 	version='7.1.1-RC1'; 	sha1='833d00fc95cab51a894692ed0a36f72c86c3dd69'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:17:51 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:17:51 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:17:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:17:52 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:17:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:17:52 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538623502ca65e3eb475030c4c668d331038f7d82c7189e0c264a001a6f43362`  
		Last Modified: Tue, 15 Sep 2026 21:28:28 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e52cbfbb36d2ea83574daee49c641c31a56da0780c202ee6839456e462a59c`  
		Last Modified: Tue, 15 Sep 2026 21:28:31 GMT  
		Size: 121.8 MB (121803801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:307545eb01839e13724863a6d9d75091920051e0b24f63ac5e90dae9e0f3a32c`  
		Last Modified: Tue, 15 Sep 2026 21:28:28 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f5277b474e2304159964596647aac38a2ead88b42a2e3aed22cbe517d63448b`  
		Last Modified: Tue, 15 Sep 2026 21:28:28 GMT  
		Size: 4.3 MB (4315102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da249b0bf6d7729898ab014e78fa8cfc66881f0e1571175a46c8611e6963876`  
		Last Modified: Tue, 15 Sep 2026 21:28:29 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7985ff2cd52c3ea68727166dd62aac8f2fcfb2c56bdee424ebac02892e8df1a4`  
		Last Modified: Tue, 15 Sep 2026 21:28:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cc761a3a152bd00b8267a32d758e98f4bb6bc443cdaf4b9fd6abff9a38bc9a`  
		Last Modified: Tue, 15 Sep 2026 21:28:30 GMT  
		Size: 13.9 MB (13926209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a3cbc53ae5e5d23f57c984938e83bedab247180c47d2bbbac8afee0260c4a67`  
		Last Modified: Tue, 15 Sep 2026 21:28:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab85d69980156d18e8f01f901dcb328e77d4d616859644be7db371fff2ae093`  
		Last Modified: Tue, 15 Sep 2026 21:28:30 GMT  
		Size: 14.4 MB (14445280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d362f218a662839abe14736c6960830faf457ccc929a0848f54487eb89f8511a`  
		Last Modified: Tue, 15 Sep 2026 21:28:31 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0d1c66083476bd931cf0d8203eb38b7f471475991f89a9f77c114f6c73b6df`  
		Last Modified: Tue, 15 Sep 2026 21:28:31 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e8f3e74bbcf8e8a928cfa046ba8fd6786192a9510570155ee1f3e5ed97946f`  
		Last Modified: Tue, 15 Sep 2026 21:28:32 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54707ce490d83bf7013d88dd389c0fa13a3bb4b66762661dd2243c17f6a33e51`  
		Last Modified: Tue, 15 Sep 2026 21:28:32 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e636c314297d3090f11fcf1e885d57a9225e85bfb4ce30988def4351bdd60e39`  
		Last Modified: Tue, 15 Sep 2026 22:18:10 GMT  
		Size: 34.5 MB (34480655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4adbf60b3ed0e25827c0b2af1f1af8b0c658c56134676b17278fad89c23b904`  
		Last Modified: Tue, 15 Sep 2026 22:18:10 GMT  
		Size: 28.3 MB (28298047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74cd85496cf1b1a9dd6a0abab6ec92fd38885dc37f9dd56207fa27dc5685ac96`  
		Last Modified: Tue, 15 Sep 2026 22:18:09 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253ed744fb812d97cdb907d6f8722e0e670f5a5fec1eec6d82cb394de2cc776c`  
		Last Modified: Tue, 15 Sep 2026 22:18:09 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cfe0a46c0bd38ddb24330c060e1191372c06e9b84cad46d411c99e96a796878`  
		Last Modified: Tue, 15 Sep 2026 22:18:10 GMT  
		Size: 18.8 KB (18792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0de56bd3ceeded07bea5f721271da11c224a0eae161041c2bc93f82d6e06360`  
		Last Modified: Tue, 15 Sep 2026 22:18:11 GMT  
		Size: 35.4 MB (35392792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60b4654619b76ca871e0a4b419371dd33b1984b96953263b5d2b83c29531c8b`  
		Last Modified: Tue, 15 Sep 2026 22:18:11 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6651a2ab3c77f033582124a644cb358a6562ddbfda505dba84f30e1c54c22983`  
		Last Modified: Tue, 15 Sep 2026 22:18:11 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af52715ac0ebb477ed40481bc9198d8a08150bc14d04ec14a05e8978b10436d6`  
		Last Modified: Tue, 15 Sep 2026 22:18:12 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1.1-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:ef9aa25fd8d7cadfc856a3d9ed5a8676beee66f53be7238245ffc876d5aca13a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8860209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d297dc2f7b63921ca107389f251103fe80a33756aa80945d53d4fec3d4d765`

```dockerfile
```

-	Layers:
	-	`sha256:8a62100cba92b1c7bfdb3b1237857d1b774cc928d2fad36bd4176d9fe65e2742`  
		Last Modified: Tue, 15 Sep 2026 22:18:09 GMT  
		Size: 8.8 MB (8793398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a04cab10f108028a162abd2fd94ab4cf12fce4b22ba106e77df300c7b32261f`  
		Last Modified: Tue, 15 Sep 2026 22:18:09 GMT  
		Size: 66.8 KB (66811 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1.1-php8.4` - linux; 386

```console
$ docker pull wordpress@sha256:eda51bd8e6fe0f896b3cd36043aa7828ed62efa2f65d2908aa722853f424d8bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.0 MB (287962932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d49cac4b0683f93c506d52a56119fa07bde52d9a32e5807ffb5de74260c1db01`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 21:23:19 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 15 Sep 2026 21:23:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 15 Sep 2026 21:23:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 21:23:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:23:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:23:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 15 Sep 2026 21:23:43 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 15 Sep 2026 21:23:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 15 Sep 2026 21:23:50 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 15 Sep 2026 21:23:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 15 Sep 2026 21:23:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:23:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:23:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:23:50 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 15 Sep 2026 21:23:50 GMT
ENV PHP_VERSION=8.4.25
# Tue, 15 Sep 2026 21:23:50 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Tue, 15 Sep 2026 21:23:50 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Tue, 15 Sep 2026 21:23:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 15 Sep 2026 21:23:59 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:26:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:26:49 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:26:49 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:26:49 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:26:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:26:49 GMT
STOPSIGNAL SIGWINCH
# Tue, 15 Sep 2026 21:26:49 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:26:49 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:26:49 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 21:26:49 GMT
CMD ["apache2-foreground"]
# Tue, 15 Sep 2026 22:16:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:17:46 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:17:46 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:17:46 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:17:46 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:17:49 GMT
RUN set -eux; 	version='7.1.1-RC1'; 	sha1='833d00fc95cab51a894692ed0a36f72c86c3dd69'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:17:49 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:17:49 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:17:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:17:49 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:17:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:17:49 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4320817c4341198d69c67f3edc6d6d0fe01b7341bd9d0d0531b0b071ff10e34a`  
		Last Modified: Tue, 15 Sep 2026 21:27:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b43baa04c19d92373a91dcbf7803a71b2414094b28d9567f0d16906a23ee37`  
		Last Modified: Tue, 15 Sep 2026 21:27:12 GMT  
		Size: 127.1 MB (127103519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00415e438f203562951f37b8915fdecd8fab4409a1561dd7e6ee62604e03f9fd`  
		Last Modified: Tue, 15 Sep 2026 21:27:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbb6151078bc5e511a879ccba3fa2a63405da8ad31e02c2bac64de8311b1c631`  
		Last Modified: Tue, 15 Sep 2026 21:27:10 GMT  
		Size: 4.5 MB (4471981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67291823e253df298447ef4100b96b62a219a0f1c4fcf6fd6b91a1e5112d229`  
		Last Modified: Tue, 15 Sep 2026 21:27:11 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:673dc9f9938975c708193511182cbaacaec3bca45c961cc4d4406526fa79755d`  
		Last Modified: Tue, 15 Sep 2026 21:27:11 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868b4775ae93bdb676f745e83cc7ba2a010ed73fc2bf4663cc192463ab442056`  
		Last Modified: Tue, 15 Sep 2026 21:27:13 GMT  
		Size: 13.9 MB (13925459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021cd566c43e2ea2ef995215733888b98e6fead2bf3a441bf5a0dba0926474fb`  
		Last Modified: Tue, 15 Sep 2026 21:27:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a42b4c101898a298f20e80aaaa1d5720f8243bcccf0a9b1b01435ab723d15d4`  
		Last Modified: Tue, 15 Sep 2026 21:27:14 GMT  
		Size: 15.3 MB (15269378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbef02e4b67e210c37a8ef8818b45d3ede0f3f7b1e8a148d85a02dd63981c721`  
		Last Modified: Tue, 15 Sep 2026 21:27:13 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdbecf1a788ca0117992a497d16dcce76ac8da7af4260b7e3dda8edf6d1ae552`  
		Last Modified: Tue, 15 Sep 2026 21:27:14 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9bc9566e0d335626ec8c2892d31120611a88c0638bbbc53c10e4c8968f5bfe3`  
		Last Modified: Tue, 15 Sep 2026 21:27:15 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f92c2ce02c1579364fa138e988c5aca910318bda621d6adeaf94b002d8e317`  
		Last Modified: Tue, 15 Sep 2026 21:27:14 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752610bf21e347a586f525da38f75df78c30725d8fb288b98fec9cd76f66af0b`  
		Last Modified: Tue, 15 Sep 2026 22:18:07 GMT  
		Size: 32.4 MB (32410188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e6dced125a14dd79eea71d7f6b41768e4b5540bad031bd18d89b302b6da1dc`  
		Last Modified: Tue, 15 Sep 2026 22:18:07 GMT  
		Size: 28.1 MB (28056582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cbfe4f8971da64c2f5942bebc7f74b6c912f8511ab63a6901c96abee691176`  
		Last Modified: Tue, 15 Sep 2026 22:18:06 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aefc740c95581dc5caa6152bcd8a9470d70203ef46a2f0dfbe97bf07f0bf98d8`  
		Last Modified: Tue, 15 Sep 2026 22:18:06 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50a07e68c7c007c26fc3227f64c80529856db6706d5a69629bfa4e86a962e17e`  
		Last Modified: Tue, 15 Sep 2026 22:18:07 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b7cf24a2a5a23fb5287139339e57bf6be0e538511e04be170b02b83331baf6`  
		Last Modified: Tue, 15 Sep 2026 22:18:08 GMT  
		Size: 35.4 MB (35392798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d62182716743d580dfe39510309a7cfe9de5dd2e4d1dfd396345217ea142fa`  
		Last Modified: Tue, 15 Sep 2026 22:18:08 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff99d093c1d43e5e6a1d220cd10650e3bbab6dcec53ea508893a5d0283678b1`  
		Last Modified: Tue, 15 Sep 2026 22:18:08 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aeb49ad606a8affba68757fa531b5e26c19e85162a7ce423884fe97b2c827a1`  
		Last Modified: Tue, 15 Sep 2026 22:18:09 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1.1-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:fe324d9cdf269b06a001b7502cc7c17b9ea3818cd21e55b2cf33cab1b58a566e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8736326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2464e876314dba723c5eeb0fb0e4a0e2d6095ff2ee3d3f70ef0625fcad96e3a1`

```dockerfile
```

-	Layers:
	-	`sha256:9976675db4a1c0b5d2edce6d3c5f0a48dea6ade1f03ce0eab04949a130e00dd7`  
		Last Modified: Tue, 15 Sep 2026 22:18:06 GMT  
		Size: 8.7 MB (8669855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c80d87e04a80177307489cacf94a3751c4ebadbb98813059bcc2b51c7d7ead51`  
		Last Modified: Tue, 15 Sep 2026 22:18:05 GMT  
		Size: 66.5 KB (66471 bytes)  
		MIME: application/vnd.in-toto+json
