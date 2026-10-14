## `wordpress:php8.3`

```console
$ docker pull wordpress@sha256:81a34254acaa6ff3b9a67268c2745e9a041c4094cbe5ccd35b75ed3bbdc033b5
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

### `wordpress:php8.3` - linux; amd64

```console
$ docker pull wordpress@sha256:607e9f6829f9e4f3001bc91c98426aaa742d164af030aa7a8073932798e2af6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275395911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8c3c28c36ca1e2815c5f4383db0a97e6c1f1bc4b95486965590fb752b07efdf`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 06 Oct 2026 01:20:39 GMT
ENV PHP_VERSION=8.3.35
# Tue, 06 Oct 2026 01:20:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Tue, 06 Oct 2026 01:20:39 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Tue, 06 Oct 2026 01:27:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:27:07 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:29:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:29:40 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:29:40 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 06 Oct 2026 01:29:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:29:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:29:40 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:29:40 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:29:40 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:29:40 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:29:40 GMT
CMD ["apache2-foreground"]
# Wed, 07 Oct 2026 21:50:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 21:51:39 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 07 Oct 2026 21:51:39 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 07 Oct 2026 21:51:39 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 07 Oct 2026 21:51:39 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 07 Oct 2026 21:51:42 GMT
RUN set -eux; 	version='7.1.3'; 	sha1='491a78c7676b15dffcc69130c6054b8f49228a91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 07 Oct 2026 21:51:42 GMT
VOLUME [/var/www/html]
# Wed, 07 Oct 2026 21:51:42 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 07 Oct 2026 21:51:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 21:51:42 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 07 Oct 2026 21:51:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 21:51:42 GMT
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
	-	`sha256:5bd2aab6bd16d56e43fba3614baed5373f17d3828a05a9734b14227a133e5f30`  
		Last Modified: Tue, 06 Oct 2026 01:29:50 GMT  
		Size: 12.8 MB (12789004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10ab328c1454003de433a0e8dcde5b3a1f0aedcc43c261c3cbf914d6e5877f15`  
		Last Modified: Tue, 06 Oct 2026 01:29:50 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3652c884f1978f2bf594bc4cab886eb8b14dc9583918dadb6b7bc85d88fa22`  
		Last Modified: Tue, 06 Oct 2026 01:29:50 GMT  
		Size: 11.7 MB (11716743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44256314083a2580c4d7b9112827c7e356a2997ef14c22433a7bdd2ab948b995`  
		Last Modified: Tue, 06 Oct 2026 01:29:50 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f209d1853dfdeeeefd69fd9c5be0317b116290079c755f353e005f922e524ef`  
		Last Modified: Tue, 06 Oct 2026 01:29:51 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d87683de0a29afe359729172781fa1d91ec33c425599c74bc846daf8b125c39`  
		Last Modified: Tue, 06 Oct 2026 01:29:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:928ddadd1b1eae1242a940d9988969d9204e1b71a02333b9753beee71a326868`  
		Last Modified: Tue, 06 Oct 2026 01:29:52 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5da053af527c795f6e5d31b3824494a7437a08af96c92ba3ba8e6fa38b81a07`  
		Last Modified: Wed, 07 Oct 2026 21:52:00 GMT  
		Size: 33.4 MB (33410299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04b05f2ec3066efe69e01999b7f18e8e0eca4207efd855eb9f462176375fe9c4`  
		Last Modified: Wed, 07 Oct 2026 21:52:00 GMT  
		Size: 30.1 MB (30124784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439f2909ad340476573dfc0721d029137a4bd396386bed6a90a10d10d3e2ef1c`  
		Last Modified: Wed, 07 Oct 2026 21:51:59 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:171eb0bc859e665348d0b416d8fe6d9655a7fec167f3c2d313422f0d6315a8fc`  
		Last Modified: Wed, 07 Oct 2026 21:51:59 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50427e99fb9c5921ab54ff5e3f882445cf03402a69dc79e70bee4825a680b5e7`  
		Last Modified: Wed, 07 Oct 2026 21:52:00 GMT  
		Size: 18.8 KB (18797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17aef3cdc1c9c5391d7a31070639976fd7f20abc45967519b59bf47a8d8063df`  
		Last Modified: Wed, 07 Oct 2026 21:52:01 GMT  
		Size: 35.4 MB (35400106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4c83254f6cd82e3a3185d19fe1729c2206d4626ad1b1fb6cf6aec31e571e80`  
		Last Modified: Wed, 07 Oct 2026 21:52:01 GMT  
		Size: 2.4 KB (2438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:292513814dbca6331a0456c7a3e6e908322d1ebf32f959fe082935a0e4dcda9b`  
		Last Modified: Wed, 07 Oct 2026 21:52:02 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df60b2c773cec1bdc84d2389a1aa6717791f229b72d34dc8f2bd698d2ff7b5be`  
		Last Modified: Wed, 07 Oct 2026 21:52:02 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:b454a1052c60c3ddb44b7cb7f4202f387df31567be7f174e59428e8b5b097147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8773645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74a7de6b405912a98c3520cb1573289b07f9bb493c75a58006a5841a295a03f`

```dockerfile
```

-	Layers:
	-	`sha256:338133eaa18f85ff0da396908404c769d779f63f353ba839d5001ac01c64b1a1`  
		Last Modified: Wed, 07 Oct 2026 21:51:59 GMT  
		Size: 8.7 MB (8705426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e209c2ae9ae659611e493402e39db9fa8fdda5ac3371483ce6011e075459962d`  
		Last Modified: Wed, 07 Oct 2026 21:51:58 GMT  
		Size: 68.2 KB (68219 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:php8.3` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:05301dfe7b26bd719faa792e21484a22e14b4386fe73ad2b33302438bbd3c6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243840063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16d1f2cdafdba4bcf50b5435e42136bffccf8f0ed4301f5a40baf0ef22983eef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:31:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:31:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:31:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:31:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:31:59 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:31:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:31:59 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:32:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:32:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:32:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:32:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:32:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:32:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:32:09 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 06 Oct 2026 01:32:09 GMT
ENV PHP_VERSION=8.3.35
# Tue, 06 Oct 2026 01:32:09 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Tue, 06 Oct 2026 01:32:09 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Tue, 06 Oct 2026 01:32:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:32:24 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:35:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:35:24 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:35:24 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 06 Oct 2026 01:35:25 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:35:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:35:25 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:35:25 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:35:25 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:35:25 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:35:25 GMT
CMD ["apache2-foreground"]
# Wed, 07 Oct 2026 21:50:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 21:52:01 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 07 Oct 2026 21:52:01 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 07 Oct 2026 21:52:01 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 07 Oct 2026 21:52:01 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 07 Oct 2026 21:52:04 GMT
RUN set -eux; 	version='7.1.3'; 	sha1='491a78c7676b15dffcc69130c6054b8f49228a91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 07 Oct 2026 21:52:04 GMT
VOLUME [/var/www/html]
# Wed, 07 Oct 2026 21:52:04 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 07 Oct 2026 21:52:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 21:52:04 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 07 Oct 2026 21:52:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 21:52:04 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88483c3cb4b3b8b1324dd61b5fd8da817a8c783065fcd57a59ad161f6266d33c`  
		Last Modified: Tue, 06 Oct 2026 01:35:43 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656d15336b2245de994b3612e093139df0105d2bffbc161516ff996af936ecab`  
		Last Modified: Tue, 06 Oct 2026 01:35:46 GMT  
		Size: 94.9 MB (94876939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4271dc804a40a6aa8d20dbe45e0363b8c995864873d7eeeaa7177c900079e8c1`  
		Last Modified: Tue, 06 Oct 2026 01:35:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a85f4d31efac6b85d037eb992b5809b791934dee47d7f9247bf35211526567c`  
		Last Modified: Tue, 06 Oct 2026 01:35:44 GMT  
		Size: 4.1 MB (4097309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718a45cc4cdbb36b04c549cb09299e385189b9c7cb4be939f027d9040183ea4b`  
		Last Modified: Tue, 06 Oct 2026 01:35:45 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a0be5a151aac6e4e9e44ed7d50d852c1250b79009bc228941c9c9452e0714b5`  
		Last Modified: Tue, 06 Oct 2026 01:35:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c307d66b144f755f59ca712cfbb16edcf6c9320842abe774c9f610e87979eb94`  
		Last Modified: Tue, 06 Oct 2026 01:35:45 GMT  
		Size: 12.8 MB (12786409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199e3b744d5761b49b44e61135dd6be33a39fd1309c12ead23d68ec8771520de`  
		Last Modified: Tue, 06 Oct 2026 01:35:46 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be547039a626499397813f141c98e245bcf4981a10cf6bd2628a9a3de208b186`  
		Last Modified: Tue, 06 Oct 2026 01:35:46 GMT  
		Size: 10.6 MB (10607127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd743b2f2edf4374667de8f166f8871c0eb8ee6f8260eadc5898baddb08db71`  
		Last Modified: Tue, 06 Oct 2026 01:35:47 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e6187f558537ccd0b947beaa6e1df3adbf486d1a6023e87bba5fb02722a267`  
		Last Modified: Tue, 06 Oct 2026 01:35:47 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b3ef16ef32a2f24a886a6be68ce3da5a6322266e9bd12beca0a21f6f57cc9d`  
		Last Modified: Tue, 06 Oct 2026 01:35:47 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf3a964ad19f056d75087a26f6a0efbde9356de3f7dda543727b6961d3df6786`  
		Last Modified: Tue, 06 Oct 2026 01:35:48 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0700bb6c66f3f30e1e3cf73771854b43394adcfd1578d09bb8fd097a6e14c43`  
		Last Modified: Wed, 07 Oct 2026 21:52:22 GMT  
		Size: 30.5 MB (30542192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a168c9fe3517c6c0eae7531535a44fef7761326574920fddb6234c7317d3a4`  
		Last Modified: Wed, 07 Oct 2026 21:52:22 GMT  
		Size: 27.5 MB (27492856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fedf2e19a18442b09251cd824f87b04c4e725b3035966f644d3522a9e6d65a1`  
		Last Modified: Wed, 07 Oct 2026 21:52:21 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324b023fa057b5b2ab8a69b4883b468bb0abc125a1c9c87ab5c15ac7684c6001`  
		Last Modified: Wed, 07 Oct 2026 21:52:21 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1da1423907f8040260c51d9c10906cd4994ba8936eef07d947a79e55d02d4f31`  
		Last Modified: Wed, 07 Oct 2026 21:52:22 GMT  
		Size: 18.8 KB (18796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dda5c763319972c8f7eb7e6054385c82fb10bb06c9dbd7b7ff4df5617b672e`  
		Last Modified: Wed, 07 Oct 2026 21:52:23 GMT  
		Size: 35.4 MB (35400107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488ff8f5ace2b01dcdd05324f5d556988bbd1d493bd09d388977ad2b7926967a`  
		Last Modified: Wed, 07 Oct 2026 21:52:24 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53a6dd74ee615ce718e9034fc911aa5fa780999dd4a2096e6f53b5a1d9ccbe9c`  
		Last Modified: Wed, 07 Oct 2026 21:52:24 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31797d88256b53764f990bf3695f14436118ad497149823b84505d3f89130620`  
		Last Modified: Wed, 07 Oct 2026 21:52:24 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:327fd3d89fc4354008ceb13817c31350f8f92a06b13499ad65c55588fc06dc3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8567513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c089fa02405f3a071117940511c42eb81672d248b4ba45c3d22b4fbe01748449`

```dockerfile
```

-	Layers:
	-	`sha256:6f8362832840019dda29cc96d80df03168f4f2d7b6fd95ab1e8455868d21bb1b`  
		Last Modified: Wed, 07 Oct 2026 21:52:21 GMT  
		Size: 8.5 MB (8499050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fb0a2d66129770b42fb0542e35365ffdc0bb114b9550ee6328eeccb8f609023`  
		Last Modified: Wed, 07 Oct 2026 21:52:21 GMT  
		Size: 68.5 KB (68463 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:php8.3` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:c193b0c642e558f341aaa11cdb9049edd7f18d23acd3288c449d7d892de54e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229884542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0508827f43c451232304321d6802250b7c58d98280d83face32ac899c08c3c61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:46:29 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:46:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:46:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:46:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:46:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:46:46 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:46:46 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:46:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:46:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:46:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:46:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:46:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:46:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:46:54 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 06 Oct 2026 01:46:54 GMT
ENV PHP_VERSION=8.3.35
# Tue, 06 Oct 2026 01:46:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Tue, 06 Oct 2026 01:46:54 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Tue, 06 Oct 2026 01:47:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:47:04 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:49:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:49:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:49:41 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 06 Oct 2026 01:49:41 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:49:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:49:41 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:49:41 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:49:41 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:49:41 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:49:41 GMT
CMD ["apache2-foreground"]
# Wed, 07 Oct 2026 21:52:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 21:54:29 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 07 Oct 2026 21:54:29 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 07 Oct 2026 21:54:29 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 07 Oct 2026 21:54:29 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 07 Oct 2026 21:54:32 GMT
RUN set -eux; 	version='7.1.3'; 	sha1='491a78c7676b15dffcc69130c6054b8f49228a91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 07 Oct 2026 21:54:32 GMT
VOLUME [/var/www/html]
# Wed, 07 Oct 2026 21:54:32 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 07 Oct 2026 21:54:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 21:54:32 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 07 Oct 2026 21:54:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 21:54:32 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5723a510252b77de1fbc7256df32a73a8cabc15509799075dd3d6eff2ad15787`  
		Last Modified: Tue, 06 Oct 2026 01:49:58 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af36b6c950fcaade57c10de628b5697b649c694af9cab8e495c8e8cf620b0742`  
		Last Modified: Tue, 06 Oct 2026 01:50:00 GMT  
		Size: 86.3 MB (86265524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e85d586654924d2ba4b7900be3a4ce61baf59394aed33dca12f70850c58dd49a`  
		Last Modified: Tue, 06 Oct 2026 01:49:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e027febc58669a695a11fcc34c75f79304274d3ca67af823ad79ac91018c0c`  
		Last Modified: Tue, 06 Oct 2026 01:49:58 GMT  
		Size: 3.8 MB (3763858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01e97e13745e577d56735f95ef81dc7918c5a2b67dbd7c4da201525b3a90967`  
		Last Modified: Tue, 06 Oct 2026 01:49:59 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99cd3dcb27f8e070b5f1c69eebd305ccea222f71bf8dd9f46a9b7c2ad7165a4d`  
		Last Modified: Tue, 06 Oct 2026 01:50:00 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ef3045ae8f926a6ee0dc9ed0136cee96ea7d957c24bd21cd709ab32b86ec09`  
		Last Modified: Tue, 06 Oct 2026 01:50:00 GMT  
		Size: 12.8 MB (12786529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:558f0c5e10ca0374d36ac269c71c3f33b6c2fd16b380fb91c315d45da5c12553`  
		Last Modified: Tue, 06 Oct 2026 01:50:01 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb479ede8a93e4c29803b90efd4200fc0141f032b5c55e5f7ca085810904ea63`  
		Last Modified: Tue, 06 Oct 2026 01:50:01 GMT  
		Size: 10.1 MB (10075658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f9f204e30b91ae64242fb541f24adeba1d892d05a059b6b5b1679ccb1e5b13c`  
		Last Modified: Tue, 06 Oct 2026 01:50:02 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf578009a1b855b65810ac4e2717ce20b630be9a6ff8121b373edc6baf4c56d0`  
		Last Modified: Tue, 06 Oct 2026 01:50:02 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa74cb07361f01c39907556fb01a02b197a991f32234435514b5bd473b9c55c`  
		Last Modified: Tue, 06 Oct 2026 01:50:02 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b21407566313e1faeb13f46b529878fbf7a304fa5f72bf4db4ef94b4f936977`  
		Last Modified: Tue, 06 Oct 2026 01:50:02 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084a300e7aef9e7dbdb6b26ad880b4ae8b2ded1067e9ec6e996f3cd407c8a374`  
		Last Modified: Wed, 07 Oct 2026 21:54:50 GMT  
		Size: 29.4 MB (29408670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5c1f46aa66d9ebbf7475234ce443a30f05f03640f6b436646c7e0f4d45ae08`  
		Last Modified: Wed, 07 Oct 2026 21:54:50 GMT  
		Size: 25.9 MB (25896370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5b6c5a0ac10318ab82da9c457428a4198dc9d1ec2d0fc7016819099510a710`  
		Last Modified: Wed, 07 Oct 2026 21:54:49 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f882716d121645580bb8b642e4f7f1c3c2813038b92b28fdd85d64b80458e486`  
		Last Modified: Wed, 07 Oct 2026 21:54:49 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8c1a33640aa0abfdc588888e293c57851f16411d4ae5d2963dfab044de5cab`  
		Last Modified: Wed, 07 Oct 2026 21:54:50 GMT  
		Size: 18.8 KB (18795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7cd0e1308989e5a6edfde4cf397285675a77f844354eda0a294b18e17b9485`  
		Last Modified: Wed, 07 Oct 2026 21:54:51 GMT  
		Size: 35.4 MB (35400109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27001adaa386e6c8bc09fda28f6bdcc011e0e0f07ced84d0aa736a75cfa12a51`  
		Last Modified: Wed, 07 Oct 2026 21:54:51 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e60bd7e1f524bfcba34f4fad644fd219fa95f40623cc911c6e4887768865ff5`  
		Last Modified: Wed, 07 Oct 2026 21:54:51 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da56ff522a028a2c37ab3134852c73c59ad40e86810d9718b35ecf79cd99ae8b`  
		Last Modified: Wed, 07 Oct 2026 21:54:52 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:b8b5b4fb15f566a55b0437528cd5e2540a7f3304f96c4a3a20f5ab1051304a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8572349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d1480e889919d546b55fb4060f75fa73470480131ccda5c1dfbfba47dafa4f3`

```dockerfile
```

-	Layers:
	-	`sha256:9359ddb795ad2338ce911382e9cf862e81b3f853d161a413efa89b0b70d8b54e`  
		Last Modified: Wed, 07 Oct 2026 21:54:49 GMT  
		Size: 8.5 MB (8503886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c768be1302b6702416e1f278ecf60fde4e13acd816fd23cbf5c6b1928a067ebd`  
		Last Modified: Wed, 07 Oct 2026 21:54:49 GMT  
		Size: 68.5 KB (68463 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:php8.3` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:6029a147b7b5045b0aed8b7e720d2c9bec4a6486740a656bf34eb4e0e67dd31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267980984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c064f5d92d53fabea44709a5cf16e659fec6e736178ab3d6430180f0e82149`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:20:29 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:20:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:20:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:20:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:20:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:20:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:20:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:20:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:20:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:20:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:20:51 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:20:51 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:20:51 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:20:51 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 06 Oct 2026 01:20:51 GMT
ENV PHP_VERSION=8.3.35
# Tue, 06 Oct 2026 01:20:51 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Tue, 06 Oct 2026 01:20:51 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Tue, 06 Oct 2026 01:28:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:28:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:32:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:32:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:32:15 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 06 Oct 2026 01:32:15 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:32:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:32:15 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:32:15 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:32:15 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:32:15 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:32:15 GMT
CMD ["apache2-foreground"]
# Wed, 07 Oct 2026 21:50:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 21:51:30 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 07 Oct 2026 21:51:30 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 07 Oct 2026 21:51:30 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 07 Oct 2026 21:51:31 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 07 Oct 2026 21:51:33 GMT
RUN set -eux; 	version='7.1.3'; 	sha1='491a78c7676b15dffcc69130c6054b8f49228a91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 07 Oct 2026 21:51:33 GMT
VOLUME [/var/www/html]
# Wed, 07 Oct 2026 21:51:33 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 07 Oct 2026 21:51:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 21:51:33 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 07 Oct 2026 21:51:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 21:51:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f518d48e6ffa00f78ec2954ccc1162fd5f22319b2f8889e52d176e4b4248a9d`  
		Last Modified: Tue, 06 Oct 2026 01:24:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83c39ee365cb52ac15c027aa6fe445047bf7fd5f06a3f79463db90ecbcfaca48`  
		Last Modified: Tue, 06 Oct 2026 01:24:17 GMT  
		Size: 110.2 MB (110178674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade4c71a91c71b39337634408840099a690b3d9c4f553e60fbafc48b1a7c036f`  
		Last Modified: Tue, 06 Oct 2026 01:24:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a274fe0231ebd3d9fe3854bec595c733cdc23584a7e3d2231c9681cf9238c2`  
		Last Modified: Tue, 06 Oct 2026 01:24:15 GMT  
		Size: 4.3 MB (4314410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f2ef3d5c866f1b0a1567d5d17d181ec5c9441e52246f0c38c1e2aac695060b`  
		Last Modified: Tue, 06 Oct 2026 01:24:16 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb3406e6d238efc04fe0bb8c654f05a3c1065ba1a256fc2ba91d2a8124fb944`  
		Last Modified: Tue, 06 Oct 2026 01:24:16 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f171804e8ab656a3a0fe9d74c5215cb08ce4da38e52c0acd67592bcc15a29ca2`  
		Last Modified: Tue, 06 Oct 2026 01:32:27 GMT  
		Size: 12.8 MB (12788574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d932a6b58175402992805fc4cf3543af8c17c0f5a9903c0e8385ec8be99fb38`  
		Last Modified: Tue, 06 Oct 2026 01:32:26 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e017bcfd9472b1787ee3d47c996de7f168bf98a3520b47570b5e4cc274a9c59`  
		Last Modified: Tue, 06 Oct 2026 01:32:26 GMT  
		Size: 11.7 MB (11734950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c7e376fd72bab2b0631ab868448071be5eedd6602433b76ab472c9c2c893743`  
		Last Modified: Tue, 06 Oct 2026 01:32:26 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b02f237f9072e74056a3870d06c16a3a3c798d335859c94a7c37ba1254010656`  
		Last Modified: Tue, 06 Oct 2026 01:32:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a44916679cbadc30564c15861f16f3767b4fe5b0b40cf1acdd95a6f01f8103`  
		Last Modified: Tue, 06 Oct 2026 01:32:27 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f8767990d79f8c374c3257e0d60673183dadf17a2a8d5c9bc2a94148aba746`  
		Last Modified: Tue, 06 Oct 2026 01:32:28 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16f55bde2b5c3d9fdbf5f57f7c1da122e03a94d266e459f1642999049aeb640`  
		Last Modified: Wed, 07 Oct 2026 21:51:52 GMT  
		Size: 34.9 MB (34890860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d925c228774d1b5981fdb1a963ff2ae8dd51b66c6b887b7dfe471526458e8fde`  
		Last Modified: Wed, 07 Oct 2026 21:51:52 GMT  
		Size: 28.4 MB (28443504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c320947ebc862c7940d6e478713fa0400fb4d0c30a73cd4beba421bb511baddb`  
		Last Modified: Wed, 07 Oct 2026 21:51:51 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0099b9b09aad8752e4dbf077d077fd3904b62425fdfdc0c34091f6680d36acf`  
		Last Modified: Wed, 07 Oct 2026 21:51:51 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46183ad034782ae4d2e6aea672f8321b805d2a4853dae49ca1115819ecce86d`  
		Last Modified: Wed, 07 Oct 2026 21:51:52 GMT  
		Size: 18.8 KB (18794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dcc887248f9d97f6934e93ec9f4da0e756c264d5e1e8c3ef6487277fe1a455b`  
		Last Modified: Wed, 07 Oct 2026 21:51:53 GMT  
		Size: 35.4 MB (35400110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1649c4a5921ffa086250c86a5db0f1863095b5dc5d806cf33af5e7d2fca9b2e6`  
		Last Modified: Wed, 07 Oct 2026 21:51:53 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2fe18d7143f79fc925c3ec051c8f7bd9d417d525a5ac3834f42c86572d30c51`  
		Last Modified: Wed, 07 Oct 2026 21:51:53 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6dcaff0d14c6c0d2cc52b3249e71c6881fb5f17a534c7aaf33842afd5ff415`  
		Last Modified: Wed, 07 Oct 2026 21:51:53 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:f66aead467b348cb35c45ef5a4af3ed4da0bcc3d646ca6926996d2c0229064c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8870590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f40058c2b4ec095d86ef5d7fd55424dd91643ce1925b3ac3146693cc74679bef`

```dockerfile
```

-	Layers:
	-	`sha256:f85cee2c63c65941a7bccced20f725f35cf353145d62c6e4c40219d9e8bf7b40`  
		Last Modified: Wed, 07 Oct 2026 21:51:51 GMT  
		Size: 8.8 MB (8802033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84165c2518d81b559dd7a86661feb89f18ecbddce671f014c6597757560c6f32`  
		Last Modified: Wed, 07 Oct 2026 21:51:50 GMT  
		Size: 68.6 KB (68557 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:php8.3` - linux; 386

```console
$ docker pull wordpress@sha256:ae892e5d17c485a6bae073943993b74c50a8acad2f20d013603dbbd8ffdcc8b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.3 MB (273265166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f176839c94d7a389e2c8dcc2fb54a8fb8ec400421c3f846a3611c18176fffc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:18:42 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:19:02 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:19:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:19:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:19:02 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:19:02 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:19:02 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:27:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:27:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:27:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:27:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:27:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:27:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:27:20 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 06 Oct 2026 01:27:20 GMT
ENV PHP_VERSION=8.3.35
# Tue, 06 Oct 2026 01:27:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Tue, 06 Oct 2026 01:27:20 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Tue, 06 Oct 2026 01:27:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:27:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:30:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:30:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:30:30 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 06 Oct 2026 01:30:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:30:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:30:30 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:30:30 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:30:30 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:30:30 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:30:30 GMT
CMD ["apache2-foreground"]
# Wed, 07 Oct 2026 21:50:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 21:51:26 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 07 Oct 2026 21:51:26 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 07 Oct 2026 21:51:26 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 07 Oct 2026 21:51:26 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 07 Oct 2026 21:51:28 GMT
RUN set -eux; 	version='7.1.3'; 	sha1='491a78c7676b15dffcc69130c6054b8f49228a91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 07 Oct 2026 21:51:28 GMT
VOLUME [/var/www/html]
# Wed, 07 Oct 2026 21:51:28 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 07 Oct 2026 21:51:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 21:51:28 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 07 Oct 2026 21:51:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 21:51:28 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acffc01193ce0fde2ac253fe53bbd4004ac675ffa11868e1b5c67f0951a26f55`  
		Last Modified: Tue, 06 Oct 2026 01:22:43 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50adfb3d63eba2ccb258049e6c1e8551682ab039a069fec1dd74db9913b2bfef`  
		Last Modified: Tue, 06 Oct 2026 01:22:46 GMT  
		Size: 116.1 MB (116148504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654e785c7e5338e8f002c24cae98ff5293831c7f81953c04c913176913b8ef5b`  
		Last Modified: Tue, 06 Oct 2026 01:22:19 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f6994eca6ec686abbfa3a80feb0bee333ad64c086871da723bd8468fc84c486`  
		Last Modified: Tue, 06 Oct 2026 01:30:40 GMT  
		Size: 4.5 MB (4471207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b0fa0c16539438b92dad9ff58695ad34f8c125a3be141737ade271bf0de11b`  
		Last Modified: Tue, 06 Oct 2026 01:30:40 GMT  
		Size: 436.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50a17738a3382a18b96db3fd26d56cdcf7f0952d488c64acf7369e233d911d51`  
		Last Modified: Tue, 06 Oct 2026 01:30:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ccec94d319b4ee089269a39dcb0d763697448665bbf87f4ae0005fdbc8441d`  
		Last Modified: Tue, 06 Oct 2026 01:30:40 GMT  
		Size: 12.8 MB (12787869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdce20b8ef7265268834bcaa3f385ffa084b3ec5f34199123f5f487f26a7ba10`  
		Last Modified: Tue, 06 Oct 2026 01:30:41 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bb71b8a2e192320662bb62bdf692620d385e471473e69de65efe40be915583e`  
		Last Modified: Tue, 06 Oct 2026 01:30:41 GMT  
		Size: 12.0 MB (11979206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2595d50514ba49b281120d2cc6ad13e71bf38d39c6d4b53408cf60538ccf319`  
		Last Modified: Tue, 06 Oct 2026 01:30:41 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e6eadd26a6438e42ec2fd8141a9fc42aade510005265e06e133fe55efc3279`  
		Last Modified: Tue, 06 Oct 2026 01:30:42 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08de14e2032d97075f445993b5575c7011da8c7d39bf47d5a0931ae0bcf3338c`  
		Last Modified: Tue, 06 Oct 2026 01:30:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a2950299cfe58781356f5b31e74b851d0cd65c2d531ce61f47275dd2632574c`  
		Last Modified: Tue, 06 Oct 2026 01:30:42 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a891dae8b94eae196bc53cd916b3b8b6f4038c643d363b8fbd236ea55e52b253`  
		Last Modified: Wed, 07 Oct 2026 21:51:45 GMT  
		Size: 32.9 MB (32890779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52810b60d0fffc19e8679e7bb19b2e876c8df86e5fe07bb26789f1b89a5cfa37`  
		Last Modified: Wed, 07 Oct 2026 21:51:45 GMT  
		Size: 28.2 MB (28204527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8866cd21be3f7efb4e871271abec8499189544912759fc3f5c7524e2c8f4b21`  
		Last Modified: Wed, 07 Oct 2026 21:51:44 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e541014b90cf7aa097f8cd095455019a1a6aa2fe3cc68e12df2d86a282fafc1e`  
		Last Modified: Wed, 07 Oct 2026 21:51:44 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76ff3807f1b03143914a09cefb73ab53ca5c36a2eb4773d25e660b2e59e796b`  
		Last Modified: Wed, 07 Oct 2026 21:51:45 GMT  
		Size: 18.8 KB (18800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed87c20f133f308aa12ef8ae335cd4446c03a660d46fe0650ea825050e01e2a`  
		Last Modified: Wed, 07 Oct 2026 21:51:47 GMT  
		Size: 35.4 MB (35400110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52200e8d4be6ab5ac4d422340e2aaf6a67e0635aca4293436b8772460fbf5eef`  
		Last Modified: Wed, 07 Oct 2026 21:51:47 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7654f3e04c2d364f37ad27bf697abfd98b02fd398dafe141dea56a433957e2d7`  
		Last Modified: Wed, 07 Oct 2026 21:51:47 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e41b9af456e8a01c2859434b10e520b55027702dfc825d62b16436d7280fd54e`  
		Last Modified: Wed, 07 Oct 2026 21:51:47 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:dfa7d011c3bdde559366adef7dfd98eee4fb951643e349c12bc7ad2dbb256f1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8746503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95eefb5afbaf2b53753caf5cddafdbee4ef09f00fff17dfddb079fc9bd30ce91`

```dockerfile
```

-	Layers:
	-	`sha256:3db14e2f58d9d1e72cb485383a67ca1aed5462271d8c0ab1812d5a24e85f0286`  
		Last Modified: Wed, 07 Oct 2026 21:51:44 GMT  
		Size: 8.7 MB (8678388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70109a27344a58bbb85ae08164097d7d70cd134a19bdf21b1dcb192797c42adf`  
		Last Modified: Wed, 07 Oct 2026 21:51:44 GMT  
		Size: 68.1 KB (68115 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:php8.3` - linux; ppc64le

```console
$ docker pull wordpress@sha256:d74214296aa34513cc819807f8c4246c8a19fdce8880a1357dfb322b5430acc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271401572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:909f9b7e14401f198e2ac18b32b169e62c6a05df4e8d2909b09f67047dec9a86`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_VERSION=8.3.35
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Tue, 06 Oct 2026 03:23:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 03:23:36 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:28:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 03:28:56 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:28:57 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 06 Oct 2026 03:28:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 03:28:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 03:28:57 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 03:28:57 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:28:58 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 03:28:58 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 03:28:58 GMT
CMD ["apache2-foreground"]
# Wed, 07 Oct 2026 21:54:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 21:58:40 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 07 Oct 2026 21:58:41 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 07 Oct 2026 21:58:45 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 07 Oct 2026 21:58:47 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 07 Oct 2026 21:58:52 GMT
RUN set -eux; 	version='7.1.3'; 	sha1='491a78c7676b15dffcc69130c6054b8f49228a91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 07 Oct 2026 21:58:53 GMT
VOLUME [/var/www/html]
# Wed, 07 Oct 2026 21:58:53 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 07 Oct 2026 21:58:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 21:58:54 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 07 Oct 2026 21:58:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 21:58:54 GMT
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
	-	`sha256:4873f95424c0f70e73e6742419f04b3ba3ac767a310f96d5e1d1eef2eeca424f`  
		Last Modified: Tue, 06 Oct 2026 03:29:39 GMT  
		Size: 12.8 MB (12796073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb42b19634f7b95dbbfb84f448e38daacd4b9e5154e88b76e79ad41f78d4ba2`  
		Last Modified: Tue, 06 Oct 2026 03:29:38 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b0dbbd1d4ebf86d908fa31963edbf65bd2619ed9c1fd52e1bf1eec4b2b8d494`  
		Last Modified: Tue, 06 Oct 2026 03:29:39 GMT  
		Size: 12.1 MB (12127097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339ed59d21e8ee5f3ac829461be496012626f1766fe91da932134283ea26363c`  
		Last Modified: Tue, 06 Oct 2026 03:29:38 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35da0ea0c457d9c047e361af0847c0374f3f45a705e8d8065cad800a26f649aa`  
		Last Modified: Tue, 06 Oct 2026 03:29:39 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1c3484f6515691b541023d1b64f005ddc7c765c6653777e73874468bca9287`  
		Last Modified: Tue, 06 Oct 2026 03:29:39 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a191115efec4dbf343bfc39881c3d835076b23f1d65b61c6e71101ad23e405f3`  
		Last Modified: Tue, 06 Oct 2026 03:29:40 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057fcd2d27881f3d7dcb052d4f1b10cd26bfdc1713a67898ba3b6d7e197895ae`  
		Last Modified: Wed, 07 Oct 2026 21:59:43 GMT  
		Size: 33.4 MB (33449019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295b6e79df59c225f6fc41c689acd073d92866bd7f2d1eef6f429e3e0527d405`  
		Last Modified: Wed, 07 Oct 2026 21:59:43 GMT  
		Size: 29.4 MB (29438090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c80706b200e0cf5962dcdfbfc4168a29db131a3fa3b809425d3f686e367f057e`  
		Last Modified: Wed, 07 Oct 2026 21:59:42 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc7274e4c8b0c54e7771c77222ce9a849f912ff7b002d72bb8d14d191760ead`  
		Last Modified: Wed, 07 Oct 2026 21:59:42 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ec5f5fbda2978f07b62798684e56ad70323e6228b83e5ab312df478c6f266b`  
		Last Modified: Wed, 07 Oct 2026 21:59:43 GMT  
		Size: 18.8 KB (18801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a9f7f02cbe82ba62e5b307fbfd604ce82eabe8b728002ff72a320ef6bc823bc`  
		Last Modified: Wed, 07 Oct 2026 21:59:44 GMT  
		Size: 35.4 MB (35400111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d07cb6c3a049fb4d531eb29d59b59c124517d3cce10095507a05f66a17ec7d3a`  
		Last Modified: Wed, 07 Oct 2026 21:59:44 GMT  
		Size: 2.4 KB (2444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4628b68b4d064ca8d460f3b38704e25b5609725353e6589f6cec83a95e19cf72`  
		Last Modified: Wed, 07 Oct 2026 21:59:44 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7757b143733bacea6ad5f79c58f2b3d971706a8718c0a5c9bbf12ee5211d5ef8`  
		Last Modified: Wed, 07 Oct 2026 21:59:45 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:bcd8cc9878bbfd1e5412a9f157d83dd87b3d4df7b8f00f642fc7af13f46aa86c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8774695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b01527554d5debe735774a335400e973a1eeddad68cf424900a3bf27dca33fd`

```dockerfile
```

-	Layers:
	-	`sha256:8c5507d44dfcdb3960e8b6594d34ca47d8020cfba7bb344df5ddec592e251fa5`  
		Last Modified: Wed, 07 Oct 2026 21:59:42 GMT  
		Size: 8.7 MB (8706348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d2cd49c6d032a9d0276009eeed8238c6922d1f1be7900354d580718d697c1b4`  
		Last Modified: Wed, 07 Oct 2026 21:59:41 GMT  
		Size: 68.3 KB (68347 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:php8.3` - linux; riscv64

```console
$ docker pull wordpress@sha256:4f92be52dbf0a5dccfd53f18cca7e40a65a0a442affa6f38ef71f5b6979d639e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.3 MB (296302614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:195303339b3ba5fc2ecc370fa94b8f53e5985285fd642cfa2ca39d6ad0faf8ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 13:40:43 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 13:42:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 13:42:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 13:42:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 13:42:51 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 13:42:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 13:42:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 14:48:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 14:48:33 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 14:48:33 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 14:48:33 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_VERSION=8.3.35
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Sat, 10 Oct 2026 19:32:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 10 Oct 2026 19:32:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 10 Oct 2026 20:24:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 10 Oct 2026 20:24:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 10 Oct 2026 20:24:14 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 10 Oct 2026 20:24:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 10 Oct 2026 20:24:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 10 Oct 2026 20:24:14 GMT
STOPSIGNAL SIGWINCH
# Sat, 10 Oct 2026 20:24:14 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sat, 10 Oct 2026 20:24:15 GMT
WORKDIR /var/www/html
# Sat, 10 Oct 2026 20:24:15 GMT
EXPOSE map[80/tcp:{}]
# Sat, 10 Oct 2026 20:24:15 GMT
CMD ["apache2-foreground"]
# Wed, 14 Oct 2026 01:31:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 01:50:02 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 14 Oct 2026 01:50:02 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 14 Oct 2026 01:50:03 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 14 Oct 2026 01:50:04 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 14 Oct 2026 01:50:15 GMT
RUN set -eux; 	version='7.1.3'; 	sha1='491a78c7676b15dffcc69130c6054b8f49228a91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 14 Oct 2026 01:50:15 GMT
VOLUME [/var/www/html]
# Wed, 14 Oct 2026 01:50:15 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 14 Oct 2026 01:50:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 01:50:16 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 14 Oct 2026 01:50:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 01:50:16 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48aaf34f6bbd390cdb6465c85eb5a7f863d1234fcab5d9f06f044f3083428268`  
		Last Modified: Tue, 06 Oct 2026 14:45:17 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e83dba9bd9a90fae32fda7544beed84181e93ba7de5e63377339f9b1c98dc7`  
		Last Modified: Tue, 06 Oct 2026 14:45:44 GMT  
		Size: 146.6 MB (146597027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29baf3a93736ee739c55151019f11266588429784b2b8a433a17201dc995d68`  
		Last Modified: Tue, 06 Oct 2026 14:45:17 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4b8c8d7858f65af436bdc1c287c7f87605de438f0cde1f5223d97f7e86cdfd`  
		Last Modified: Tue, 06 Oct 2026 15:48:27 GMT  
		Size: 4.0 MB (4047419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:641e32a1ed79b687c6aca6f0e89a3398c7c1e37545fb8ed0330b48875ac88df2`  
		Last Modified: Tue, 06 Oct 2026 15:48:26 GMT  
		Size: 436.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c2230167315d1d89238b6af4f2b8714ed13e4a337b367cde24217b1098e9a5`  
		Last Modified: Tue, 06 Oct 2026 15:48:26 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa00e849d79b094e1f249bd52006b27c7cd2d3ba9b41838cbaba8c4787f95646`  
		Last Modified: Sat, 10 Oct 2026 20:27:27 GMT  
		Size: 12.8 MB (12803754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:307fae895d5c5c318d22685c91d6179fc7150ba35f73da39f0edf996710ee833`  
		Last Modified: Sat, 10 Oct 2026 20:27:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c3b71ab66f95333f9e8d16af73b82113c55d9ad48e7af120d07f5144a02eaf`  
		Last Modified: Sat, 10 Oct 2026 20:27:27 GMT  
		Size: 11.3 MB (11261317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b955d591522a3e6dfe0e9a6ca0653fa6c83143f2b4514c9baa1d518ddf4c7f`  
		Last Modified: Sat, 10 Oct 2026 20:27:23 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999d5e9715adfaaf497fe2abca8b3ba0bad4ddf769fbcbfc20c86a33f5928cbb`  
		Last Modified: Sat, 10 Oct 2026 20:27:25 GMT  
		Size: 254.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e2f7af361a7638edc788f289cd575345426abde1f37ec3b49b6ec1526d9174`  
		Last Modified: Sat, 10 Oct 2026 20:27:25 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f27cca4cecf2611a0d5cc9fc321ce8ed62cac601d9ca0c484c253ce3bd5a9932`  
		Last Modified: Sat, 10 Oct 2026 20:27:27 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b7597bdd8905957e4f30646796c87e826ebf9dd3be0ddaa7d97f88855a85e2`  
		Last Modified: Wed, 14 Oct 2026 01:55:16 GMT  
		Size: 30.9 MB (30948395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc665b9692e362cb270de887861d0a43c285a7ffd02abdebae6ceda89546b3b`  
		Last Modified: Wed, 14 Oct 2026 01:55:15 GMT  
		Size: 26.9 MB (26881142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b08b9d46b000bf3a13e6ed0196f5c730c9a242be03c9a969e4dbb018633c68c`  
		Last Modified: Wed, 14 Oct 2026 01:55:04 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:837aabc5735235cb271d1c1ddd97c3c6235540e76f84f91b2676fb79c5d58f0c`  
		Last Modified: Wed, 14 Oct 2026 01:55:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1023c1a81f24a1594d3287e8295af4924e790c80471060bbbeab30154e07b0e3`  
		Last Modified: Wed, 14 Oct 2026 01:55:06 GMT  
		Size: 18.8 KB (18814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93c73e9236ef517414d8c4675ca8f346440de97a9f730be8afc500fd7187645a`  
		Last Modified: Wed, 14 Oct 2026 01:55:18 GMT  
		Size: 35.4 MB (35400114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c097b76a506b4e53264ab484d24c4117f228f671adc5b6f42756b18c8867256`  
		Last Modified: Wed, 14 Oct 2026 01:55:09 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef444ec1e9528f18a33a9d8ca46014d05cf8d7e42f4be49857e2d7f137c9f596`  
		Last Modified: Wed, 14 Oct 2026 01:55:12 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23029fd1c96ce669c55f7c645bbffd34917ec195ded80dcd01182caef81afc0c`  
		Last Modified: Wed, 14 Oct 2026 01:55:14 GMT  
		Size: 199.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:a986cd9aa9ca12b62d75b3f1aa38cc7cb259509da70de2b8e181ffdfb346815c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8839558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ff27cf4264cdc92ed899cb2822679722862ee4f8d5918ce20117c6070b8a612`

```dockerfile
```

-	Layers:
	-	`sha256:8f399ca277ba34f1e0e5644adbe3e5629ea8982029e5ca39abed7210b99416d5`  
		Last Modified: Wed, 14 Oct 2026 01:55:06 GMT  
		Size: 8.8 MB (8771211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb1bfa728f9eb0f855f92a356d9bdb07856bf7eccc6499a89cd8151bb2053797`  
		Last Modified: Wed, 14 Oct 2026 01:55:03 GMT  
		Size: 68.3 KB (68347 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:php8.3` - linux; s390x

```console
$ docker pull wordpress@sha256:cd9b78a02a5242f7294c47bb52da81bf3eb4fdec27b48c23eaa9d7590228fb31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (245983679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06fca615e64e8032f75fa186aca61db38fc0195b4b0e63be5a01c6d85c3c4ac9`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 06 Oct 2026 01:28:14 GMT
ENV PHP_VERSION=8.3.35
# Tue, 06 Oct 2026 01:28:14 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Tue, 06 Oct 2026 01:28:14 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Tue, 06 Oct 2026 01:32:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:32:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:35:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:35:35 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:35:35 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 06 Oct 2026 01:35:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:35:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:35:36 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:35:36 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:35:36 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:35:36 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:35:36 GMT
CMD ["apache2-foreground"]
# Wed, 07 Oct 2026 21:48:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 21:49:33 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 07 Oct 2026 21:49:33 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 07 Oct 2026 21:49:33 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 07 Oct 2026 21:49:33 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 07 Oct 2026 21:49:34 GMT
RUN set -eux; 	version='7.1.3'; 	sha1='491a78c7676b15dffcc69130c6054b8f49228a91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 07 Oct 2026 21:49:34 GMT
VOLUME [/var/www/html]
# Wed, 07 Oct 2026 21:49:34 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 07 Oct 2026 21:49:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 21:49:34 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 07 Oct 2026 21:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 21:49:34 GMT
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
	-	`sha256:a9b638ca5f0042fd749cde0fd79d7bcbd604b5c999e23429447699956e82d9ca`  
		Last Modified: Tue, 06 Oct 2026 01:35:53 GMT  
		Size: 12.8 MB (12787353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bace02e3f63b5ec419d44db1762d61bb2b8c347554d5df83c3589bc63b066cce`  
		Last Modified: Tue, 06 Oct 2026 01:35:52 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dbf93fdaee732daf10da6a93e237a29991114bf9f1bbc5160e221ba76a99f4`  
		Last Modified: Tue, 06 Oct 2026 01:35:53 GMT  
		Size: 11.6 MB (11576988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cb25530cde4c8604638aef931c472394e196a0b88dc8339ec7a2bd4aa29fd8`  
		Last Modified: Tue, 06 Oct 2026 01:35:52 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02b1736927ac35545fb717b8eca17bdcf4dd8dcdbc9eca85ab9d657896c01b23`  
		Last Modified: Tue, 06 Oct 2026 01:35:53 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f49b036ba70374e1205cb1eb56becbb1c3c091e7cffaa8c42385f9ea32eb03`  
		Last Modified: Tue, 06 Oct 2026 01:35:53 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b52ed730ea632c480f1355032e865a63457d30f405ec52b0b51af441be69c0a`  
		Last Modified: Tue, 06 Oct 2026 01:35:54 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff32ee7dcfdf81db67e0d06582abbeccbcadcde83accb966d3ad3d493397271e`  
		Last Modified: Wed, 07 Oct 2026 21:49:57 GMT  
		Size: 31.9 MB (31863055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5c4d52020928ea8791a6bd803f851b346b1ffaf9d7a6e770cedfa8a18c20c47`  
		Last Modified: Wed, 07 Oct 2026 21:49:57 GMT  
		Size: 27.5 MB (27504603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6147a279af5d99ffa90026a6a595bae328277129b7023aa4a824d29b330149`  
		Last Modified: Wed, 07 Oct 2026 21:49:57 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0951013318eda0d196b932fcd6eb8cd853e6f5b6bab34feb27eec68391ffc2a`  
		Last Modified: Wed, 07 Oct 2026 21:49:57 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b70bc3876a1ccfe2c156d037dc6d182aab4dacfb6914f3a4cfcbe06f444de4`  
		Last Modified: Wed, 07 Oct 2026 21:49:58 GMT  
		Size: 18.8 KB (18792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3c54c5c4b0c7ce1467cea34e9a89a02afa3478c5b141be02b484c7c9cafae2`  
		Last Modified: Wed, 07 Oct 2026 21:49:59 GMT  
		Size: 35.4 MB (35400108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4143843e4ce421b8369db785cd1c15fbbde009a0615979ddfb271adf253260`  
		Last Modified: Wed, 07 Oct 2026 21:49:59 GMT  
		Size: 2.4 KB (2437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b6788bb1ae7e8e1f3738b56bc2d9eba6cddb17940c14035428048fe5589149d`  
		Last Modified: Wed, 07 Oct 2026 21:49:59 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ba2c81c67dba6cd68f6a151a00b0c74172e7a12a7c766ce2f1c9ae7bbbca6df`  
		Last Modified: Wed, 07 Oct 2026 21:49:59 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:27968aac2a9ffbf4f19412ff880d728047ad96ba9e3462b0c22ac1f38fe93b22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8492768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da7a5852778a0341026c36cf30980a64191980950d8754702f002b2892cb9d84`

```dockerfile
```

-	Layers:
	-	`sha256:6048a716f9f5686bd7f1d093b04f93cedcb15fe8a8692a0bdac3ecaa2ad668d7`  
		Last Modified: Wed, 07 Oct 2026 21:49:57 GMT  
		Size: 8.4 MB (8424559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10f5716a36a573c5f8fb4fc2da390e92de8e14e1faa24c0e79a41b9e79bae623`  
		Last Modified: Wed, 07 Oct 2026 21:49:57 GMT  
		Size: 68.2 KB (68209 bytes)  
		MIME: application/vnd.in-toto+json
