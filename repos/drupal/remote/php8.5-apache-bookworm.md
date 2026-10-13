## `drupal:php8.5-apache-bookworm`

```console
$ docker pull drupal@sha256:ac1b8ed961b760308fa7398836bfeba545fef7b618bd3b6574a0b6f70632d45e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `drupal:php8.5-apache-bookworm` - linux; amd64

```console
$ docker pull drupal@sha256:0b1a9b109bb7f6331248d744389f82da14c2debd2f0a1416d0212975ffbfc68f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218863638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfef3692dd0cc02d31926bcf498c40f373bffbd164b9d3c2bfb0883d38e7f4ed`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:20:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:20:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:20:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:20:56 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:20:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:20:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:23:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:23:45 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:23:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:23:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:23:45 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:23:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:23:45 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:23:45 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:23:45 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:23:45 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:23:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:23:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:26:20 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:20 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:26:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:26:20 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:26:20 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:20 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:26:20 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:26:20 GMT
CMD ["apache2-foreground"]
# Mon, 12 Oct 2026 22:50:07 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:50:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 22:50:07 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Mon, 12 Oct 2026 22:50:07 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 22:50:07 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 22:50:07 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 22:50:07 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 22:50:14 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 22:50:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45aae2a48a69905aa3ab6f1d43cd9d5cf6e14d2298df92c09f080ee1ee58bd0a`  
		Last Modified: Tue, 06 Oct 2026 01:23:31 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6912bbca7a8f277d8486abdfeb92e075c430ec9a97f3f7149b933f196853cb64`  
		Last Modified: Tue, 06 Oct 2026 01:23:34 GMT  
		Size: 106.5 MB (106458505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e410314175c161e58eb911b91f007f5cc34cafa3fab82d7ba8afb924a6e2dfe7`  
		Last Modified: Tue, 06 Oct 2026 01:23:31 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ea452c26bf00cd5fd68592bd325286f28e697ec8ec336e09fa4344da2c03c7`  
		Last Modified: Tue, 06 Oct 2026 01:26:31 GMT  
		Size: 20.1 MB (20148736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b3b45bdf55e12031cb0110e155fb51bd3a93df0cf58ab220655037f9544c3d`  
		Last Modified: Tue, 06 Oct 2026 01:26:30 GMT  
		Size: 434.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b9dfae05dcf0c354ab3e3e58067244d7614d9104be0a75706f78469a8f5028`  
		Last Modified: Tue, 06 Oct 2026 01:26:30 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37051f7408ed41d3b9c09d7d8eb16d6109cc7006ff533f11be474a990e83854f`  
		Last Modified: Tue, 06 Oct 2026 01:26:31 GMT  
		Size: 14.6 MB (14598970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515c930ab3573b2d86fb69a22a2f395c2ad7e42605d6d69aaaa72998fc0e8a8e`  
		Last Modified: Tue, 06 Oct 2026 01:26:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c34de1ff54971ff4c38bdd42bde1cb93d26a18f35e146f6ddae5d986126ab8d`  
		Last Modified: Tue, 06 Oct 2026 01:26:31 GMT  
		Size: 15.2 MB (15162646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c258d86e0e88b5393a73c5aec5ba9968893ad0ba05c33eecb0a60cabb727a92`  
		Last Modified: Tue, 06 Oct 2026 01:26:32 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf395200494c954065b3b38f05d827574bbde72b16604a8ec1df676997ef61e1`  
		Last Modified: Tue, 06 Oct 2026 01:26:32 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c616af9e41c366f7e58bf68eb05bdb073dc7c191b73b8d218b7168f8a43872`  
		Last Modified: Tue, 06 Oct 2026 01:26:32 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba5f5eaf1ab323f7de2b91273f073a1ea7d11d5e5b25f59273801d732a5cf26`  
		Last Modified: Mon, 12 Oct 2026 22:50:33 GMT  
		Size: 9.7 MB (9718757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e536db1f34a33232dcd142748b3f5f2d9c5ba1c91b05b333c13461f3f468fe9`  
		Last Modified: Mon, 12 Oct 2026 22:50:32 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbed8d400dc48aa51f63210d7231d75d1fd46b6321547f900c6e4b83d1660554`  
		Last Modified: Mon, 12 Oct 2026 22:50:32 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f956fc18890e8057c15f769fe4f9bb22920de4a65c725e1dc88a2508876233`  
		Last Modified: Mon, 12 Oct 2026 22:50:33 GMT  
		Size: 833.0 KB (832983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c199a67084caac31f33b14d5605cf876a3783e8a9672222aa782b903bddb9c52`  
		Last Modified: Mon, 12 Oct 2026 22:50:30 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f432e22fe4b4c0fbab3b5f9fb8271ba17309038ecdf0fb79237c88bffe8ab0e7`  
		Last Modified: Mon, 12 Oct 2026 22:50:34 GMT  
		Size: 23.7 MB (23687546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:7496294a13de976ca27b2efe3b9f88be12e6b1d8e52d83e7e1855260cc64fa1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7207188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aa12e23f38aa172a41fb4fccf282271872865a904d03f7998dd506d7eb8ddc3`

```dockerfile
```

-	Layers:
	-	`sha256:a569ea425961be4a8002435b92d6253eec2696cd65ef65d842523fae5d725adc`  
		Last Modified: Mon, 12 Oct 2026 22:50:32 GMT  
		Size: 7.2 MB (7164183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83d554fddd74252f75684fa5ee798c0c8c73886797c2deaafd768ef169667d55`  
		Last Modified: Mon, 12 Oct 2026 22:50:32 GMT  
		Size: 43.0 KB (43005 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5-apache-bookworm` - linux; arm variant v7

```console
$ docker pull drupal@sha256:15b5a70e6835196a607c394b7a98d9b8f7584551060b17d5e92d82ac9d578f48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (178961243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae03fa0524ea46fe8dea24190108aa8bcc5aca9669355386cfa4b890323f645`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:33:50 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:34:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:34:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:34:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:34:08 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:34:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:34:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:34:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:34:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:34:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:34:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:34:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:34:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:34:17 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:34:17 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:34:17 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:34:17 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:34:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:34:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:37:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:37:18 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:37:18 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:37:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:37:18 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:37:18 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:37:18 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:37:18 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:37:18 GMT
CMD ["apache2-foreground"]
# Mon, 12 Oct 2026 23:00:15 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:00:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 23:00:15 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Mon, 12 Oct 2026 23:00:15 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 23:00:15 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 23:00:15 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 23:00:15 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 23:00:23 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 23:00:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de64863eb1a62775374066b52f1507d3f2d44609f2782747b97bf5f15465242`  
		Last Modified: Tue, 06 Oct 2026 01:37:34 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbf17157f69bb98d4269ecfb0a727de2d486cee175c8fc22d8ebf8920a63222f`  
		Last Modified: Tue, 06 Oct 2026 01:37:37 GMT  
		Size: 78.1 MB (78057330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74e700782929785990f659b55f0ab396061736d21c12aaa4efde379ee627083`  
		Last Modified: Tue, 06 Oct 2026 01:37:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f3e0b38ab9152ec04968fb608eea49b07da31523edcfb14cfe4be0d74f145a`  
		Last Modified: Tue, 06 Oct 2026 01:37:35 GMT  
		Size: 18.9 MB (18866002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b620fd83035022e97ba3a86dd58d8f944c53437a5c1eabd8ec97fdfe85012fd6`  
		Last Modified: Tue, 06 Oct 2026 01:37:35 GMT  
		Size: 427.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853383be6d85a1fff218c12e0e066e40468f876dad0f5ecec7b608005c94c146`  
		Last Modified: Tue, 06 Oct 2026 01:37:35 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8fff3052e98e3589366c058c567ed302ff14ff7096823ae295a9f969b557dc6`  
		Last Modified: Tue, 06 Oct 2026 01:37:37 GMT  
		Size: 14.6 MB (14597187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2b792594c323a99ddae8c2518c267666f179f3c20a65284dd4aad036fc099d`  
		Last Modified: Tue, 06 Oct 2026 01:37:37 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b58eca3ef9e28d38f195d21182499e05625c0cbca27e795fca84c259730e58f`  
		Last Modified: Tue, 06 Oct 2026 01:37:37 GMT  
		Size: 12.6 MB (12623547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df69b181e34c7415de7acc1ab9f290e868402ebf93d53a4f3a258cc61064e9ab`  
		Last Modified: Tue, 06 Oct 2026 01:37:38 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b09a29f5104e8dd783c292bf46b3a351025a32baf06be77fd3bf7ab004c2bd`  
		Last Modified: Tue, 06 Oct 2026 01:37:38 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec87b9c89187a3e91165e048084ceca5e2e8b9a5122423b757b13758e2f71ff`  
		Last Modified: Tue, 06 Oct 2026 01:37:38 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa4b8478046d8503fc2f9efe2786f62a4e6109411a0c9396d09e1540412714a8`  
		Last Modified: Mon, 12 Oct 2026 23:00:41 GMT  
		Size: 6.3 MB (6335457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0de508676f53d75e2d0d8c0e6807e5c1763c620dc8d5c1da7e8934b70a2c0d5`  
		Last Modified: Mon, 12 Oct 2026 23:00:41 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30289946d91887b48f9242f7f35b681c3584fb819937c201b5e96ce9fc8ae836`  
		Last Modified: Mon, 12 Oct 2026 23:00:41 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb818bf99536a313cb1c2110e6ad42312ca185d7cc2720d922706fd2b0ca878b`  
		Last Modified: Mon, 12 Oct 2026 23:00:41 GMT  
		Size: 833.0 KB (832979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85852f516c36b429ba092a08f5be668d05885a1c7d5cae60a5c155e50ede1bb`  
		Last Modified: Mon, 12 Oct 2026 23:00:41 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d6ed57585190cbedb44c37eadc56586a34a48536935036796eba11a3ad703c`  
		Last Modified: Mon, 12 Oct 2026 23:00:43 GMT  
		Size: 23.7 MB (23686008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:22cacee291b02b26b91d846e575721b9fdf1dbdd8f3f673832fae868b1757af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7020938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2408e825e8c441537862066dfb8c62b95e0b04564f03e2aba47babd381055f4`

```dockerfile
```

-	Layers:
	-	`sha256:67e5f7f10f1b8a8e20c85a1ab9d0742340196f8e751e51dfe25e8a9930aab653`  
		Last Modified: Mon, 12 Oct 2026 23:00:41 GMT  
		Size: 7.0 MB (6977764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f3d3a3b259d1d10663f80c0fb0c3ba421f1d5ec9a31fa8ccda9d4bc64538edd`  
		Last Modified: Mon, 12 Oct 2026 23:00:41 GMT  
		Size: 43.2 KB (43174 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5-apache-bookworm` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:94549e6dd7e5034dd13eec9e7ef3c9f6d5c539f858c711ab39d12f2f3299fd49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.0 MB (210003178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20cf41f48b04de12b65378bcf72028b8745ba2b895ccc879ece921d7f828a1b8`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:24:25 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:24:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:24:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:24:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:24:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:24:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:24:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:24:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:24:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:24:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:24:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:24:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:24:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:24:46 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:24:46 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:24:46 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:24:46 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:24:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:24:58 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:27:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:27:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:27:55 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:27:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:27:55 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:27:55 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:27:55 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:27:55 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:27:55 GMT
CMD ["apache2-foreground"]
# Mon, 12 Oct 2026 22:59:29 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:59:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 22:59:29 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Mon, 12 Oct 2026 22:59:29 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 22:59:29 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 22:59:29 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 22:59:29 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 22:59:35 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 22:59:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520a799f45ed6a802c137fc0671a984215881c8f3e3f37842787d023f94b0837`  
		Last Modified: Tue, 06 Oct 2026 01:28:15 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99db62200b459491d6cee2c4de53a139e975443d1225b02a02f6d9e86551a510`  
		Last Modified: Tue, 06 Oct 2026 01:28:18 GMT  
		Size: 100.3 MB (100250027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9717971f4c8dbaca691e73f591a00d150c207792d1b8b1916ee3091256bae0d5`  
		Last Modified: Tue, 06 Oct 2026 01:28:15 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a330dc0254a6579472bd3b106c6a7cdace5244ac13a13d8b7c9d11e00a5e2cf`  
		Last Modified: Tue, 06 Oct 2026 01:28:16 GMT  
		Size: 20.2 MB (20179720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da4c83698486c01e5a949522e7f86557b100929901f14078d76046e2c0edc222`  
		Last Modified: Tue, 06 Oct 2026 01:28:16 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b680a2a6350e2bacd748e6f8914217d9b836982be5f5395be34a2407a692e6`  
		Last Modified: Tue, 06 Oct 2026 01:28:17 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5e168c016539806d2d2d6f0f5fca53429106784e9fba16f7969a14a2e7962d`  
		Last Modified: Tue, 06 Oct 2026 01:28:18 GMT  
		Size: 14.6 MB (14598735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc5a66c5c077b6daf7c3f587c4b43b326c98345b423c99c12fdb30ffe54fd5a9`  
		Last Modified: Tue, 06 Oct 2026 01:28:18 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ba11f1201da5c6f057921c70325c7a27a37975bbc3680779f747ed35aa8cca`  
		Last Modified: Tue, 06 Oct 2026 01:28:18 GMT  
		Size: 14.7 MB (14700726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952a4df16b829ec116c204c080dd4e3070463bc5110811c322555e0219203962`  
		Last Modified: Tue, 06 Oct 2026 01:28:19 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c08822704a385350180d917a5cfcb4dfb1bd67c10f563fa256936d2ff70abf0d`  
		Last Modified: Tue, 06 Oct 2026 01:28:19 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b872392dfafb7bd51303ee641a04db93421b7fa4b6e31ad0cb0b68ca4b6826`  
		Last Modified: Tue, 06 Oct 2026 01:28:19 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b3f15bf604639578f3fe17b1f71bb02d04a224484e28407b0a91c8b2cc7515`  
		Last Modified: Mon, 12 Oct 2026 22:59:55 GMT  
		Size: 7.6 MB (7610155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc685dbef9fba23980ca252ad84612cc7f326c5f8f5b24f55a36687cf7f4cf9`  
		Last Modified: Mon, 12 Oct 2026 22:59:54 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3edd025b58e54f53d34fcc3535ba6285761c56ddac139fa57ff7090e3ba6f84a`  
		Last Modified: Mon, 12 Oct 2026 22:59:54 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f324fa5ae5536e6f195ae8a52faeb3eab4e435edb6bf80bab4fe9a4b1b18903`  
		Last Modified: Mon, 12 Oct 2026 22:59:54 GMT  
		Size: 833.0 KB (832986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c4027c07cf167fc6769f1a285557573d69d0a2047367f776a40e57dd21077a`  
		Last Modified: Mon, 12 Oct 2026 22:59:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4d66456392f94fd2e89eef73a1a505a21a4ea05dcba42b33e427ac357d5685`  
		Last Modified: Mon, 12 Oct 2026 22:59:56 GMT  
		Size: 23.7 MB (23687490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:26f0eb44c55de228a1ff82188d8b54c25903d414590b98883c74e05d4e3cfd11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7235946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67933e46e6bade6c824f26101be93d348a5051ba82c626540fcc6a994bd9acdd`

```dockerfile
```

-	Layers:
	-	`sha256:450833678ea4926310eaed764d02cf44e91ec768f2425a63bbf1d3a70b35e418`  
		Last Modified: Mon, 12 Oct 2026 22:59:54 GMT  
		Size: 7.2 MB (7192715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:625636652da41da3686a846953593174deefeeab0d453f7469e308a2847352a8`  
		Last Modified: Mon, 12 Oct 2026 22:59:54 GMT  
		Size: 43.2 KB (43231 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5-apache-bookworm` - linux; 386

```console
$ docker pull drupal@sha256:584ae2b8246c44812a389fb4787ff2b9b8c551367e0b60d4c65b2513e13d802f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.0 MB (214971472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c84e2f768bd549da331ee212bd800c66c121cc3258c1669b29a2de9979c6f25`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:22:53 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:23:12 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:23:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:23:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:23:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:23:12 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:23:12 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:23:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:23:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:23:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:23:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:23:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:23:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:23:19 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:23:19 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:23:19 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:23:19 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:23:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:23:27 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:26:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:26:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:26:42 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:26:42 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:42 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:26:42 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:26:42 GMT
CMD ["apache2-foreground"]
# Mon, 12 Oct 2026 22:57:51 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:57:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 22:57:51 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Mon, 12 Oct 2026 22:57:51 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 22:57:51 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 22:57:51 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 22:57:51 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 22:57:57 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 22:57:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd502e4027e03dc0818b887fd3c9d7d7412f85e4f53a931616d2a6c074d33185`  
		Last Modified: Tue, 06 Oct 2026 01:27:02 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23eb1bc5f71201e781d29fc3fee68ed15acb33b53ce2cf3e38ca545f4206cd43`  
		Last Modified: Tue, 06 Oct 2026 01:27:06 GMT  
		Size: 103.8 MB (103795585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c14fbdadb24cf823da679249186c900cd909ec5b7de7ca9899e187e8e39f7d`  
		Last Modified: Tue, 06 Oct 2026 01:27:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7545bf31bc3ec2eb94b39f7598d02981a941522073a832d064752f6cd54984ed`  
		Last Modified: Tue, 06 Oct 2026 01:27:03 GMT  
		Size: 20.7 MB (20666155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8e035656b17549616caceab6add8f50293fa7bb4addfcced2b6bdc4437b1dd`  
		Last Modified: Tue, 06 Oct 2026 01:27:04 GMT  
		Size: 427.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e137656da0ce661c6983e173ea6ef523abd208db96247a819c749fac98d47f`  
		Last Modified: Tue, 06 Oct 2026 01:27:04 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11a606b60078cf892b356fdbcf7d993ba05790d6b99b89d26dc630208d84d95`  
		Last Modified: Tue, 06 Oct 2026 01:27:05 GMT  
		Size: 14.6 MB (14598163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a22c576a79d1db01456e03cabc821b02e87735e04904f85ac63ab982db3d725`  
		Last Modified: Tue, 06 Oct 2026 01:27:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f60b9a0fc1256f5cd893b930aeb3a35f7e246a3ee6c4c9fc1003cbc672eb7690`  
		Last Modified: Tue, 06 Oct 2026 01:27:05 GMT  
		Size: 15.6 MB (15583416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe8a8813c4ec3c8b4758df3c4684c858b14664aa55b3e899453c62fed868ad7`  
		Last Modified: Tue, 06 Oct 2026 01:27:06 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14d40818c1b08ec9f880f4238ff247e7af39958ce0b77f618694674f257dc60e`  
		Last Modified: Tue, 06 Oct 2026 01:27:06 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6fd21d355a255343a652e04c01b94cfea5ea3bc647242c35af0959850f0c862`  
		Last Modified: Tue, 06 Oct 2026 01:27:07 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634c9768c6abf596de267292e28866a68dfc4ff53302718e7de4c77a4f25bb1a`  
		Last Modified: Mon, 12 Oct 2026 22:58:14 GMT  
		Size: 6.6 MB (6562110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec9ee4478803a526890f694ce8e4134684e530bbb49e1a8cb736f6337f620d9`  
		Last Modified: Mon, 12 Oct 2026 22:58:14 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c075bb2734b588220abd251d1290e92ce12d8214b737ea13cebf6defc72464`  
		Last Modified: Mon, 12 Oct 2026 22:58:14 GMT  
		Size: 255.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c15a4b393aa9b723da5e241219243febf102b873d31342a5804f9c0648fbd9c`  
		Last Modified: Mon, 12 Oct 2026 22:58:14 GMT  
		Size: 833.0 KB (832985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21758f853dbb49346bb48e94a7b953a70570fff6152b0b45a53662c03bc3c308`  
		Last Modified: Mon, 12 Oct 2026 22:58:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2c18c0992a535be71c0284a3df95dee4664e97b399e72b700d02fec62f1f786`  
		Last Modified: Mon, 12 Oct 2026 22:58:16 GMT  
		Size: 23.7 MB (23687529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:75ae77c1094cd002a4e3851e39209ef2464b3d5f9f1e437a6aa169cc7bcf64c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7180121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78d9ae7ab19d03f9d7335ac789a1916d50a4f861dfa09f8f989e905824f5a1a`

```dockerfile
```

-	Layers:
	-	`sha256:83352618d5024ff267966ce0fbb7d3a9e06bcaf970ecbda87975c6c9ba459499`  
		Last Modified: Mon, 12 Oct 2026 22:58:14 GMT  
		Size: 7.1 MB (7137179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75733290e4aefbe2d43bda19b5b874b630ce7509dfec62b4ec0152ced1c8cab3`  
		Last Modified: Mon, 12 Oct 2026 22:58:14 GMT  
		Size: 42.9 KB (42942 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5-apache-bookworm` - linux; ppc64le

```console
$ docker pull drupal@sha256:1961115132bbca04282004cd6e97cf53d3d71c5864b180ef03b434b4847049e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.5 MB (221502652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f742b489a4e25f9b94b350c640a457a952fc08b4149e3a0d9354ad7469eeb45a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:26:04 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 02:26:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 02:26:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:26:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 02:26:56 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 02:26:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 02:26:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 02:28:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 02:28:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 02:28:43 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 02:28:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 02:28:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 02:28:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 02:28:43 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 02:28:43 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 02:28:43 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 02:28:43 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 02:50:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 02:50:50 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:55:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 02:55:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:55:31 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 02:55:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 02:55:31 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 02:55:31 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:55:31 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 02:55:31 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 02:55:31 GMT
CMD ["apache2-foreground"]
# Tue, 06 Oct 2026 11:44:30 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 11:44:31 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 06 Oct 2026 11:44:31 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Tue, 06 Oct 2026 11:44:32 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 11:44:33 GMT
ENV DRUPAL_VERSION=11.4.8
# Tue, 06 Oct 2026 11:44:33 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 06 Oct 2026 11:44:33 GMT
WORKDIR /opt/drupal
# Tue, 06 Oct 2026 11:47:41 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 06 Oct 2026 11:47:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2789e2ef0186abdcd12660ec9600c2417a359541b63343a3160c7dc435dc7e0e`  
		Last Modified: Tue, 06 Oct 2026 02:32:48 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321e77ced5d9ec45dd23954f83db75fe42798c995171ebdad361a53f35abdfcf`  
		Last Modified: Tue, 06 Oct 2026 02:32:52 GMT  
		Size: 105.6 MB (105610722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d966707ad6e13c03374836ee5e6eed28458a6c68a433b9e1607b0cb6a95f6f58`  
		Last Modified: Tue, 06 Oct 2026 02:32:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1dfbc71aeed26e3fbd83aabcc3b99014bfb7677040f3c17c007778c4516adea`  
		Last Modified: Tue, 06 Oct 2026 02:34:23 GMT  
		Size: 21.3 MB (21332553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afee8e239a2068aa6dfd9c8348a8ce2c9bcbac9cc4173df259131ebbb9c17e4`  
		Last Modified: Tue, 06 Oct 2026 02:34:22 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b8c0a0bc048e3db36d9e4fe9e44a45dbec025173b2afaa981219672388e0bb1`  
		Last Modified: Tue, 06 Oct 2026 02:34:22 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8bfdd33a4434e94e1471cb8a502bbc3a5fce51f67c3b47eaa70e76e0a203a6`  
		Last Modified: Tue, 06 Oct 2026 02:55:57 GMT  
		Size: 14.6 MB (14598524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a8441fb435eaa1b609e1572fd2ce710a7bf8d0ef70c3f3632c6d05ca907e502`  
		Last Modified: Tue, 06 Oct 2026 02:55:57 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cc66ba70c9258e917b92dc11694130fc6886baef1a908784252bbcd03cb917`  
		Last Modified: Tue, 06 Oct 2026 02:55:57 GMT  
		Size: 15.2 MB (15163555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053fe1aa1f095bf0847a2c558411e084cbfa9fb9cd6ec9682051b131b9878cc0`  
		Last Modified: Tue, 06 Oct 2026 02:55:57 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e603bfeddf7373da3a6b937a78dc60772dc4beeedd903c944bb28e548509937`  
		Last Modified: Tue, 06 Oct 2026 02:55:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6fc449a53963ee1661b77c8b96590fbf0a4cf593f96d531752cb67599e2fbe2`  
		Last Modified: Tue, 06 Oct 2026 02:55:58 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:588b009b866fb56060e96cd3fdbbc8933c3f0f3685b1792755e0f767a64f4af8`  
		Last Modified: Tue, 06 Oct 2026 11:45:26 GMT  
		Size: 8.2 MB (8231706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd2cab09878cfd62deb98c272ab307220146cb4dca9ac4b4e5658048f13ce42`  
		Last Modified: Tue, 06 Oct 2026 11:45:25 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea23346eb35cba7be4ca5ba93312f6e35cbfdda9866d3503ab6ce7193e83504c`  
		Last Modified: Tue, 06 Oct 2026 11:45:26 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf78f0204051af927c205ce2f6ffbac9952a5d050959c1c0d0bedac43242c232`  
		Last Modified: Tue, 06 Oct 2026 11:45:26 GMT  
		Size: 833.0 KB (832985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03402edba983aeeb973dbd942e2df98262d0e672f53c3bdf1303f8cc6fff5f5`  
		Last Modified: Tue, 06 Oct 2026 11:45:27 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b064299a6329bf4ec4eccd0853855a5967c8da626796c852f79226207625535a`  
		Last Modified: Tue, 06 Oct 2026 11:48:30 GMT  
		Size: 23.6 MB (23633991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:9c885c4dd406d73538d1468a720ef4949315d9f4a0854fdec3cfe3098ec086b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7184522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3567ccf8dd895d111f327caaffb348efe720219e24bc16a80538adc62857663d`

```dockerfile
```

-	Layers:
	-	`sha256:e088c3dd0441d13d907fa1ee2033ea4f3aa48cf1be02f4f4c922a1f0723d3321`  
		Last Modified: Tue, 06 Oct 2026 11:48:29 GMT  
		Size: 7.1 MB (7141430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bd6cf625be960355b79a18583cf3fb8d602a8c271c901c2b62710eb02b6250f`  
		Last Modified: Tue, 06 Oct 2026 11:48:28 GMT  
		Size: 43.1 KB (43092 bytes)  
		MIME: application/vnd.in-toto+json
