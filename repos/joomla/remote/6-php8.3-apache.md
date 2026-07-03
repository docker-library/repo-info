## `joomla:6-php8.3-apache`

```console
$ docker pull joomla@sha256:081c6603eb3d20ca010bf15b11eca7c386e1ed536daf8b2ad4ad8ddedc9dd1ff
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

### `joomla:6-php8.3-apache` - linux; amd64

```console
$ docker pull joomla@sha256:0d669a2d1035a12bdb893a7bf896eabb913300310ee9a56d6d199ced5eae0472
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (277043911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c5b20758bf846fdcc1b5308a11dd0f264cd4a2e14d969ce3a44659a3aa91dfa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:41:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:41:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:41:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:41:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:41:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:41:31 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 02 Jul 2026 20:41:31 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 02 Jul 2026 20:41:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 02 Jul 2026 20:41:37 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 02 Jul 2026 20:41:37 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 02 Jul 2026 20:41:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:41:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:41:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:41:37 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 02 Jul 2026 20:41:37 GMT
ENV PHP_VERSION=8.3.32
# Thu, 02 Jul 2026 20:41:37 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Thu, 02 Jul 2026 20:41:37 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Thu, 02 Jul 2026 20:41:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 20:41:46 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:44:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:44:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:44:30 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:44:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:44:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:44:30 GMT
STOPSIGNAL SIGWINCH
# Thu, 02 Jul 2026 20:44:30 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:44:30 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:44:30 GMT
EXPOSE map[80/tcp:{}]
# Thu, 02 Jul 2026 20:44:30 GMT
CMD ["apache2-foreground"]
# Thu, 02 Jul 2026 21:20:10 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 21:20:10 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 21:20:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 21:22:07 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 21:22:07 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:22:07 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 21:22:07 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 02 Jul 2026 21:22:07 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:22:07 GMT
ENV JOOMLA_VERSION=6.1.1
# Thu, 02 Jul 2026 21:22:07 GMT
ENV JOOMLA_SHA512=73ecfd0f94e04a563d55293df741770b47cc3fcfdb75c383bc9c909d2071d2b212723a2546dae0978a866b0b90da31aec301ae66467722848657696b870ae7a9
# Thu, 02 Jul 2026 21:22:08 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.1/Joomla_6.1.1-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 21:22:08 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:22:08 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 21:22:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:22:08 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:906564357cfe2b5a5f0862ab6966f916db898251d278cd5ba80f14769bd958bf`  
		Last Modified: Thu, 02 Jul 2026 20:44:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc7cab649dc487a73db609a3992944ac48897d5dbac862544f038c011115f64`  
		Last Modified: Thu, 02 Jul 2026 20:44:55 GMT  
		Size: 117.8 MB (117839655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0570e3cdaeb0117235952d2d707cc93e144477a6b84f8b9b75fecf241b7ec52b`  
		Last Modified: Thu, 02 Jul 2026 20:44:52 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569b01d3d541e67efe10f8b761abd2778d744498ee5064f0cb436549347a8577`  
		Last Modified: Thu, 02 Jul 2026 20:44:53 GMT  
		Size: 4.2 MB (4227901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddc0ddb0c4c28bac2d508bc37f66648f518c9209a3cc197704d5fef125c6c1a`  
		Last Modified: Thu, 02 Jul 2026 20:44:53 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd5ccf507873365cce396cf8be1a335a7823b2ca1f09bab891a39c6fba1de29`  
		Last Modified: Thu, 02 Jul 2026 20:44:54 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3937d7f568c706f2faeb8d95039c5b8684071de1e4171c50171a19df6a40cdb`  
		Last Modified: Thu, 02 Jul 2026 20:44:55 GMT  
		Size: 12.8 MB (12772482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ac09bd5f6f13be1afb657c4cba243e2e047070cc4af45f9986adc856b49885a`  
		Last Modified: Thu, 02 Jul 2026 20:44:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49586687e242de3b74e6fbf5c01b8b30656bb920f443cb6eb0d074272e78c0d8`  
		Last Modified: Thu, 02 Jul 2026 20:44:55 GMT  
		Size: 11.7 MB (11715529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c178225d3bb2e4fc4f4529407c620ad8fa0dab891701a544a1418a59180631eb`  
		Last Modified: Thu, 02 Jul 2026 20:44:56 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb6e0febd6a0951b10279e50d1b5bcda2ad78a0af434955b33f56d35168e7f4`  
		Last Modified: Thu, 02 Jul 2026 20:44:56 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb2ad7257e751784dd0a0868269408e290266ac54f87d1f5410c32488d0016d`  
		Last Modified: Thu, 02 Jul 2026 20:44:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c65671dc66ad2562c7ca9d02c7ac1f3c3ef29674d91aee67fc9e3b6ef2891764`  
		Last Modified: Thu, 02 Jul 2026 20:44:57 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2819aa8142afddc15b1cc892145acfa0f56d77ae6f552e7275de5cbc58f15a52`  
		Last Modified: Thu, 02 Jul 2026 21:22:18 GMT  
		Size: 27.3 MB (27274337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:506f688327b42515f7da7955a44935fc3ab5ae38606a44f2fc267b78ba83f349`  
		Last Modified: Thu, 02 Jul 2026 21:22:19 GMT  
		Size: 45.0 MB (45023321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc7272937698e8a9213848d730a280e0525890f55b2dfef9c2565e2e9c12859`  
		Last Modified: Thu, 02 Jul 2026 21:22:17 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9b64220012b64216f54b1c666597100f1eeb6b2f0ee142f4211302bbfa983ec`  
		Last Modified: Thu, 02 Jul 2026 21:22:17 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb246f487f27fa8febb1b3e09f88ad6edbc1bf11654ab6c11c2f4cd18f95ac5f`  
		Last Modified: Thu, 02 Jul 2026 21:22:19 GMT  
		Size: 18.8 KB (18797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b863c0bf52d2860ca67f7137d23c7e2118b4c550b015110aa57b7c12525888`  
		Last Modified: Thu, 02 Jul 2026 21:22:19 GMT  
		Size: 28.4 MB (28375295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9e0bdf7e1bb01c2a3df00b2167d3ba4768101b611d1c781b7cdf90254e556c9`  
		Last Modified: Thu, 02 Jul 2026 21:22:20 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1adda0a1bacf1ea7477ce8b0e6faea9de94c759ffe59aa35f81bc2bcb29bc695`  
		Last Modified: Thu, 02 Jul 2026 21:22:20 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.3-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:543e369723ef26f73a5cbdfa967846e66b6c8add0b0d7db65193e3267aa17885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 KB (57781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b425a6f2b28511dc0fd617cf64f046bb462f87b37386af98f2df4aa88625ccc4`

```dockerfile
```

-	Layers:
	-	`sha256:dc3e4f95f04ef7f1651d79bcde89916da40d1ee0f09822012bd18ca888f32c66`  
		Last Modified: Thu, 02 Jul 2026 21:22:17 GMT  
		Size: 57.8 KB (57781 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.3-apache` - linux; arm variant v5

```console
$ docker pull joomla@sha256:fe27df5b40d7a2917d692ed86cf00cb48c44417028783c604caefb086bf0ec2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248248920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed36459de0fa94106250904991a42393561f263bf5c30765716bddf6fb8d5d8e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:46:51 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:47:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:47:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:47:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:47:25 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:47:25 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 02 Jul 2026 20:47:25 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 02 Jul 2026 20:54:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 02 Jul 2026 20:54:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 02 Jul 2026 20:54:55 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 02 Jul 2026 20:54:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:54:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:54:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:54:55 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 02 Jul 2026 20:54:55 GMT
ENV PHP_VERSION=8.3.32
# Thu, 02 Jul 2026 20:54:55 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Thu, 02 Jul 2026 20:54:55 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Thu, 02 Jul 2026 20:55:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 20:55:07 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:58:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:58:11 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:58:11 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:58:11 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:58:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:58:11 GMT
STOPSIGNAL SIGWINCH
# Thu, 02 Jul 2026 20:58:11 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:58:11 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:58:11 GMT
EXPOSE map[80/tcp:{}]
# Thu, 02 Jul 2026 20:58:11 GMT
CMD ["apache2-foreground"]
# Thu, 02 Jul 2026 21:30:04 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 21:30:04 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 21:30:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 21:33:06 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 21:33:07 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:33:07 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 21:33:07 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 02 Jul 2026 21:33:07 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:33:07 GMT
ENV JOOMLA_VERSION=6.1.1
# Thu, 02 Jul 2026 21:33:07 GMT
ENV JOOMLA_SHA512=73ecfd0f94e04a563d55293df741770b47cc3fcfdb75c383bc9c909d2071d2b212723a2546dae0978a866b0b90da31aec301ae66467722848657696b870ae7a9
# Thu, 02 Jul 2026 21:33:09 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.1/Joomla_6.1.1-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 21:33:09 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:33:09 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 21:33:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:33:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20a2c035b853e45f158de85435f680d746df54fa7f8c6864b94805b04aea4f9d`  
		Last Modified: Thu, 02 Jul 2026 20:51:06 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d324b6563340809e2957b06019837d97231518ec5f1b6fb02e5c235b54346dc`  
		Last Modified: Thu, 02 Jul 2026 20:51:09 GMT  
		Size: 94.9 MB (94887051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf66913d8fe8fbef7f5594545e7d1dfa04d9e3f50691140dd8d6eaeebfc48a3`  
		Last Modified: Thu, 02 Jul 2026 20:51:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d218abab2b7851da9a9be7d6f541097dbddc9f0869b25c917496d64c532162b1`  
		Last Modified: Thu, 02 Jul 2026 20:58:22 GMT  
		Size: 4.1 MB (4097958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48008aef0c6d145e46ddee0ba5a4fcbdce1d11e8093c320c3e070b11b2f521e5`  
		Last Modified: Thu, 02 Jul 2026 20:58:22 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc1404b1d9942f48bfa03dd41230ef99bf2f022d3a6e79416f4bef09cc89989`  
		Last Modified: Thu, 02 Jul 2026 20:58:22 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9936e90a14cbfa52c3dee1b15c8d96c30838000dff395dc97fc62ffc629c07a`  
		Last Modified: Thu, 02 Jul 2026 20:58:22 GMT  
		Size: 12.8 MB (12769972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fcb91d4c31a3c6fe6986042caa3e625ea92610435462e5787251403c698f93d`  
		Last Modified: Thu, 02 Jul 2026 20:58:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d5bfeca573938b758bdc8c6609a4dead9eb362b2a3ac816ced028ac23052d46`  
		Last Modified: Thu, 02 Jul 2026 20:58:23 GMT  
		Size: 10.6 MB (10603746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77f3db6b4ad0bf7264a03c5291f29dedff75f0409527471e403938a735bc560`  
		Last Modified: Thu, 02 Jul 2026 20:58:24 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811d67e68688f5ba3d9772bcd1ac7ec9d1154265eb7700159f9fd52fac315a94`  
		Last Modified: Thu, 02 Jul 2026 20:58:24 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80ef19d477996cdf1b3082e9fe03c80ef5cedbfe995212306e368fc818c1679`  
		Last Modified: Thu, 02 Jul 2026 20:58:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c295af9e8f852a8c97ed2954bb85172050d2fb2bb80123a55232b3f4d57674`  
		Last Modified: Thu, 02 Jul 2026 20:58:25 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83fbf0d5abd19b495f52f8b01177aea7471a76757845d0708a12e15a8eff7974`  
		Last Modified: Thu, 02 Jul 2026 21:33:18 GMT  
		Size: 26.7 MB (26709916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c15d7e2c62bffeebdd455418650a61c4ff46dae892e48d67a288641b2b8fd3`  
		Last Modified: Thu, 02 Jul 2026 21:33:19 GMT  
		Size: 42.8 MB (42815737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df329fa314a8e75b00bccd2a10939931b5798459bee9e13f0d34f9f5cafd2a2f`  
		Last Modified: Thu, 02 Jul 2026 21:33:17 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb5e11af79814594f4d8268ce655287de70dd918ea72b94c762b3a95bd501a6`  
		Last Modified: Thu, 02 Jul 2026 21:33:17 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ae2e7538e29fd6208fb6727dfd431a3289f2bda110f819634cff2cba71027e`  
		Last Modified: Thu, 02 Jul 2026 21:33:18 GMT  
		Size: 18.8 KB (18799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c0eda3b3e5a7e884cdf0b3ebb6893c997ca24e23e833917da15422ffc2a9d5`  
		Last Modified: Thu, 02 Jul 2026 21:33:19 GMT  
		Size: 28.4 MB (28375349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632f6661ff88bb580bcaa3a53239ded475f63399198c5bc3fa5b978cb597a66b`  
		Last Modified: Thu, 02 Jul 2026 21:33:20 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca0b02c869a7873091cfd4038b82a7faf84799ed4ec4bdfbf5d8fd1f1d0c627`  
		Last Modified: Thu, 02 Jul 2026 21:33:20 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.3-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:271076b7bde801770bcb9e9d751586670e9640987b94ac0d559df0ff86eac6f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 KB (57915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d94b00da8ab3de16a151816fabcaf9c8a1e67e12b94f458ed45a0ce8ab6e5d79`

```dockerfile
```

-	Layers:
	-	`sha256:fed1af92fa4d1a8647f7809f9d276e85641bdc6c06e1c1730f52a7ae0601d52b`  
		Last Modified: Thu, 02 Jul 2026 21:33:17 GMT  
		Size: 57.9 KB (57915 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.3-apache` - linux; arm variant v7

```console
$ docker pull joomla@sha256:2841933e73208ba600fcef7d77d7b0b410140f2cdcd3a050cd200a4bf27c4f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.7 MB (234651231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2427bc456215a0f8fa89a6a0686a15d4f5b2a6bee816b0ceebecaaffd60a0e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:32:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:33:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:33:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:33:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:33:16 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:33:16 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 02 Jul 2026 20:33:16 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 02 Jul 2026 20:43:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 02 Jul 2026 20:43:25 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 02 Jul 2026 20:43:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 02 Jul 2026 20:43:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:43:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:43:25 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:43:25 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 02 Jul 2026 20:43:25 GMT
ENV PHP_VERSION=8.3.32
# Thu, 02 Jul 2026 20:43:25 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Thu, 02 Jul 2026 20:43:25 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Thu, 02 Jul 2026 20:57:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 20:57:06 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:59:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:59:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:59:41 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:59:41 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:59:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:59:41 GMT
STOPSIGNAL SIGWINCH
# Thu, 02 Jul 2026 20:59:41 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:59:42 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:59:42 GMT
EXPOSE map[80/tcp:{}]
# Thu, 02 Jul 2026 20:59:42 GMT
CMD ["apache2-foreground"]
# Thu, 02 Jul 2026 21:45:12 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 21:45:12 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 21:45:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 21:47:54 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 21:47:54 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:47:54 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 21:47:54 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 02 Jul 2026 21:47:54 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:47:54 GMT
ENV JOOMLA_VERSION=6.1.1
# Thu, 02 Jul 2026 21:47:54 GMT
ENV JOOMLA_SHA512=73ecfd0f94e04a563d55293df741770b47cc3fcfdb75c383bc9c909d2071d2b212723a2546dae0978a866b0b90da31aec301ae66467722848657696b870ae7a9
# Thu, 02 Jul 2026 21:47:55 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.1/Joomla_6.1.1-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 21:47:56 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:47:56 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 21:47:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:47:56 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9acf4b6b865322976d6cf4b238f0916624b25cc6c5c07f349e1942acf2cb88e`  
		Last Modified: Thu, 02 Jul 2026 20:36:13 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6241b6209f77cdfc2e20f3341f6045ca3dc70c02447af0fe537b1d2be1eb196e`  
		Last Modified: Thu, 02 Jul 2026 20:36:16 GMT  
		Size: 86.3 MB (86256323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c999b9a6424cd718e1a42ab2d92e4e042086a77b134800bbebc65f43bdb9e55`  
		Last Modified: Thu, 02 Jul 2026 20:36:12 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a1e345d6b32a110fd95c96b192f97c8eb73c70cc7184c21bc71200177500e85`  
		Last Modified: Thu, 02 Jul 2026 20:46:34 GMT  
		Size: 3.8 MB (3756637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb0dee5c21062acd11066b9b6cae5d73387417e8a92c5e29690d4918f51ec2f`  
		Last Modified: Thu, 02 Jul 2026 20:46:33 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d71119e7442a6e3462681a3870cd9e647dea0bd66c96d08e598a1a7fe29dc31c`  
		Last Modified: Thu, 02 Jul 2026 20:46:33 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:451007f9887c65cdd0415c37f5bd457f15b6988ca9f485b5abecfcdc05ed205e`  
		Last Modified: Thu, 02 Jul 2026 20:59:52 GMT  
		Size: 12.8 MB (12777757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33217b0507f7042643b7d230706f67de781e4349d673198f8240b86500e3e04`  
		Last Modified: Thu, 02 Jul 2026 20:59:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee1d120c9168d1e1e5693cc0f5226c9f33d9cee2e7991e80c7593f4cb7168a4`  
		Last Modified: Thu, 02 Jul 2026 20:59:52 GMT  
		Size: 10.1 MB (10073961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c5bcfd7a652fd7c49aeaa429cca91ec3a4bc3a07cff89388f69b725954bc84`  
		Last Modified: Thu, 02 Jul 2026 20:59:52 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:008c47026f1a70027604b29bd9bc55f399b35ae6416efe9c581b1183ce66fa14`  
		Last Modified: Thu, 02 Jul 2026 20:59:53 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ec4a70d51eeae8e766c167a56323437907507c7a586dc249ca61938b7f272b5`  
		Last Modified: Thu, 02 Jul 2026 20:59:53 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8aa91c34a9e5a5349fb67dac50154d00e4e0622e06161ffd442ac4e7e48742a`  
		Last Modified: Thu, 02 Jul 2026 20:59:54 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88caf2e5896dcfb05820b6fb9e2233b7aab2732f900e40f40ada66f883269d42`  
		Last Modified: Thu, 02 Jul 2026 21:48:05 GMT  
		Size: 25.9 MB (25925570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:371883ddeb8e9f79008f7461afcd492f9e7549686faf9ef9f38bd3c2bf1f46f0`  
		Last Modified: Thu, 02 Jul 2026 21:48:05 GMT  
		Size: 41.2 MB (41244610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf8ca7208dcc5550714aa7148b2b7b5cfc34bf057e55f886e1311bbbc3d80c2`  
		Last Modified: Thu, 02 Jul 2026 21:48:03 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01024df13a5c3d9466463049064cf9621d854dc10120adc72f8b47fea606f77f`  
		Last Modified: Thu, 02 Jul 2026 21:48:03 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:839c885d8ea9ce9f198e436ca33179c165d6aa7889f3c7a4eb307dd3313b971f`  
		Last Modified: Thu, 02 Jul 2026 21:48:05 GMT  
		Size: 18.8 KB (18801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d50fcc69a809d764cb90ed08b2ba7b6ff87a3d8c97f41229123f105b7cb0c0a`  
		Last Modified: Thu, 02 Jul 2026 21:48:05 GMT  
		Size: 28.4 MB (28375349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd4356b3aa7feae79d9b99378b670cf978a6f071b122e11f2331104c8213d090`  
		Last Modified: Thu, 02 Jul 2026 21:48:06 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d392897e424df8cb0e73ece8ef6e8e4a424fda200f035a6d4dc4415a67c64e07`  
		Last Modified: Thu, 02 Jul 2026 21:48:06 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.3-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:b24f8a9cce98608bbb6abe2e9510cef9014cb8409cd399604a8c7e6d4bc6ab81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 KB (57917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c53250b5a340957fdd966fdd7b1ffe59a0cb421c984e7c1f75bebeea8fca2e`

```dockerfile
```

-	Layers:
	-	`sha256:07010d1d83d78bb31a71a434ca7729ee0404c26bd62b0455ab9b4a1afaa8f172`  
		Last Modified: Thu, 02 Jul 2026 21:48:03 GMT  
		Size: 57.9 KB (57917 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.3-apache` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:7b6c62bb088c847681965921395cde5a0d48eb02be1ff8668debe09a6f5b6821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.6 MB (268573527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06c218daefe0c0dd400c3d3960f1f4a17153a84c9afc9a11e36dd1318938a01b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:41:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:42:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:42:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:42:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:42:18 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:42:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 02 Jul 2026 20:42:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 02 Jul 2026 20:42:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 02 Jul 2026 20:42:25 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 02 Jul 2026 20:42:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 02 Jul 2026 20:42:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:42:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:42:25 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:42:25 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 02 Jul 2026 20:42:25 GMT
ENV PHP_VERSION=8.3.32
# Thu, 02 Jul 2026 20:42:25 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Thu, 02 Jul 2026 20:42:25 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Thu, 02 Jul 2026 20:42:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 20:42:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:46:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:46:33 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:46:33 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:46:33 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:46:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:46:33 GMT
STOPSIGNAL SIGWINCH
# Thu, 02 Jul 2026 20:46:33 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:46:33 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:46:33 GMT
EXPOSE map[80/tcp:{}]
# Thu, 02 Jul 2026 20:46:33 GMT
CMD ["apache2-foreground"]
# Thu, 02 Jul 2026 21:23:49 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 21:23:49 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 21:23:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 21:26:14 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 21:26:15 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:26:15 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 21:26:15 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 02 Jul 2026 21:26:15 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:26:15 GMT
ENV JOOMLA_VERSION=6.1.1
# Thu, 02 Jul 2026 21:26:15 GMT
ENV JOOMLA_SHA512=73ecfd0f94e04a563d55293df741770b47cc3fcfdb75c383bc9c909d2071d2b212723a2546dae0978a866b0b90da31aec301ae66467722848657696b870ae7a9
# Thu, 02 Jul 2026 21:26:16 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.1/Joomla_6.1.1-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 21:26:16 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:26:16 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 21:26:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:26:16 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e612b8585f9247b1e0b312c06eef62b19a262e5185185c49f31975e090407455`  
		Last Modified: Thu, 02 Jul 2026 20:46:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fcd6fc3cfca4ddafea3e8e429cbcffcaffb71fbf3672d78adc730025d127c6c`  
		Last Modified: Thu, 02 Jul 2026 20:46:57 GMT  
		Size: 110.2 MB (110169635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8397f6aa52207a9e9338790bbe96e039dc23a403d76186a9940017065aa070`  
		Last Modified: Thu, 02 Jul 2026 20:46:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d151b148de11aa3e5d5125cf98ffd17f352f6eaaf386dc6c49f97c612401de3a`  
		Last Modified: Thu, 02 Jul 2026 20:46:55 GMT  
		Size: 4.3 MB (4307995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d28a51892b6e5bd7cd6ef2f1e03ec6ca70e0a582fb9973a294a4f46c033c6c30`  
		Last Modified: Thu, 02 Jul 2026 20:46:56 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5e78ea4ba63157ff5773e5533fbee6cd0fb358d52872276ed255789f809c2ad`  
		Last Modified: Thu, 02 Jul 2026 20:46:56 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7cc566ccc0c90c51ba524e6efff95fe365757d37904393611a93616efbf7005`  
		Last Modified: Thu, 02 Jul 2026 20:46:56 GMT  
		Size: 12.8 MB (12772024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39e28ba6707b11ac7133ecad8101a73bbbad281d22b487495692f8eadcfbd6a8`  
		Last Modified: Thu, 02 Jul 2026 20:46:57 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfef324f265a80950a757afaee027d695e6a78097f7fdb6ff56a1b921fdf40ea`  
		Last Modified: Thu, 02 Jul 2026 20:46:57 GMT  
		Size: 11.7 MB (11733985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f26069c2f09b9db83063adf43fabfb3b6c2cfdf7be4e0e65d372e9d687c998`  
		Last Modified: Thu, 02 Jul 2026 20:46:58 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af90211fb2fb2f4e70e8ba6c0a03f7cdab2724d99fefe4984825599c18571840`  
		Last Modified: Thu, 02 Jul 2026 20:46:58 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c368939f265cb0c6007682d39d8463f3a3335b9d803561253583e43e18dcf0`  
		Last Modified: Thu, 02 Jul 2026 20:46:59 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab0fc74076c8e1ca3ace873478a0a3144e0e5879cf27dd32484433397520cdd`  
		Last Modified: Thu, 02 Jul 2026 20:46:59 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14142eca6adfd2a7f26eb1ff484479928c97accbb5dbdcd8de5bbce92599fca`  
		Last Modified: Thu, 02 Jul 2026 21:26:27 GMT  
		Size: 27.1 MB (27101608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa9a3dec28ef14e8729d55cb066ad608e728cd4c8f015b225aeb6e95b48c9768`  
		Last Modified: Thu, 02 Jul 2026 21:26:27 GMT  
		Size: 43.9 MB (43934420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad01ac3be6d742bddc1f2bd5d8f546fa9e1bd0549b9d492c89ac70fea0ed48b1`  
		Last Modified: Thu, 02 Jul 2026 21:26:25 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5596b880d6400a413b961c6bd7a0b931626eef1668dfd5ddcecbf9f73787a9f`  
		Last Modified: Thu, 02 Jul 2026 21:26:25 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d34101dbb5ebef74c1ffa77367330511962fd08ce7aa687cceea0e5d03e043`  
		Last Modified: Thu, 02 Jul 2026 21:26:26 GMT  
		Size: 18.8 KB (18797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60724948268cf08a5a71ba21e727f86bcce8653c54a0899d1d9d64d9abc8f6a`  
		Last Modified: Thu, 02 Jul 2026 21:26:27 GMT  
		Size: 28.4 MB (28375350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b29550f6a8e0f23c66673acec68722ebd121568c86b0985aff5bc23aa8d431a`  
		Last Modified: Thu, 02 Jul 2026 21:26:28 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa78ece4e0f7b2fc1c39d9e5548ed7e0d335cb3c14ef2462798b2be398be3db9`  
		Last Modified: Thu, 02 Jul 2026 21:26:28 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.3-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:29e40b48af19d05deb064cdbea6bb135eb9ce86b8b7750892b5d0c559ab46e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.0 KB (57960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8738510f0fc5fd5b2ccb863c5c2ca2728463593deb3378860dcfd5266464c2b`

```dockerfile
```

-	Layers:
	-	`sha256:901766b3a7bfce1d18bb1a447fd917ac9f574bd0447346fcba659641c013b7f0`  
		Last Modified: Thu, 02 Jul 2026 21:26:24 GMT  
		Size: 58.0 KB (57960 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.3-apache` - linux; 386

```console
$ docker pull joomla@sha256:7488f35c4f7f019c8f4d96d38015b9b7f86a8004b752094e3d5499a62aa24c90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277984930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2599c582111b3a9953cc01e8461ec76c00faacd685f7b49059d7ced5b0aa2399`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:42:16 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:42:34 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:42:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:42:34 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:42:35 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:42:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 02 Jul 2026 20:42:35 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 02 Jul 2026 20:42:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 02 Jul 2026 20:42:41 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 02 Jul 2026 20:42:41 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 02 Jul 2026 20:42:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:42:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:42:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:42:41 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 02 Jul 2026 20:42:41 GMT
ENV PHP_VERSION=8.3.32
# Thu, 02 Jul 2026 20:42:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Thu, 02 Jul 2026 20:42:41 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Thu, 02 Jul 2026 20:42:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 20:42:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:45:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:45:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:45:57 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:45:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:45:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:45:57 GMT
STOPSIGNAL SIGWINCH
# Thu, 02 Jul 2026 20:45:57 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:45:57 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:45:57 GMT
EXPOSE map[80/tcp:{}]
# Thu, 02 Jul 2026 20:45:57 GMT
CMD ["apache2-foreground"]
# Thu, 02 Jul 2026 21:19:59 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 21:19:59 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 21:19:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 21:22:07 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 21:22:08 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:22:08 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 21:22:08 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 02 Jul 2026 21:22:08 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:22:08 GMT
ENV JOOMLA_VERSION=6.1.1
# Thu, 02 Jul 2026 21:22:08 GMT
ENV JOOMLA_SHA512=73ecfd0f94e04a563d55293df741770b47cc3fcfdb75c383bc9c909d2071d2b212723a2546dae0978a866b0b90da31aec301ae66467722848657696b870ae7a9
# Thu, 02 Jul 2026 21:22:09 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.1/Joomla_6.1.1-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 21:22:09 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:22:09 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 21:22:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:22:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b78cd63d19e2ae383c38ef472b905db83c34594451666a19785e610b09e6bc`  
		Last Modified: Thu, 02 Jul 2026 20:46:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8e0002d40fee8f516d7f029a5cd19b4ff0c191afcb2daa0056d6fe5454d37c`  
		Last Modified: Thu, 02 Jul 2026 20:46:22 GMT  
		Size: 116.1 MB (116142740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a04eafaacdd0e37c017ee779d7cc91be99ca0c2237dd3106f8158a7a8acd2c0`  
		Last Modified: Thu, 02 Jul 2026 20:46:19 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f471eb6c3642a2c5d065a4d8010a08ce8e366347c72b76303eea2db8de9605f4`  
		Last Modified: Thu, 02 Jul 2026 20:46:20 GMT  
		Size: 4.5 MB (4459126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb640f7cb8aadd5cd4ba6972f2bce0a220ad80ea8575f43099061170ac388daa`  
		Last Modified: Thu, 02 Jul 2026 20:46:21 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9b140c26a996f88fcb7e9340b41c8829fd9cd013b792e5beed3a833b7f0656`  
		Last Modified: Thu, 02 Jul 2026 20:46:21 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba7bc55cb2b3f81f6c6a400abf5a17a03a73e7c9e122437e14c119c526b40f82`  
		Last Modified: Thu, 02 Jul 2026 20:46:22 GMT  
		Size: 12.8 MB (12771314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02255bf4352d3f6b3bb2e25ac7e8df3acead6665c642d1f08cd8d6f8e9cd5796`  
		Last Modified: Thu, 02 Jul 2026 20:46:22 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9b2b2f19eb787f74f983091fc55f6c4f5b9c0fca8e747fe643c85ad6faf0c2f`  
		Last Modified: Thu, 02 Jul 2026 20:46:22 GMT  
		Size: 11.9 MB (11928801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5b3924fa35cdcb81a675e1af8214dcbdf789a1affe61b4ddbf4644dcab1741`  
		Last Modified: Thu, 02 Jul 2026 20:46:23 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd4e4720e8d9d142d9f30f0e9a846c94693f161bdbaf50d1128f04dc8be88f3`  
		Last Modified: Thu, 02 Jul 2026 20:46:23 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e7a25d6144169f5bbb94d1db864ccc79de109079934d2223411adf695fbcc64`  
		Last Modified: Thu, 02 Jul 2026 20:46:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b6dddc3db7b4099f40a97325f41a0d50cd9a8cce6f9a1fdcd3565eda13aeb7`  
		Last Modified: Thu, 02 Jul 2026 20:46:24 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c0afe134aeab7d66aa5e4dd4cbbd8d2d81095a7b0441e00b21a1f1221e66509`  
		Last Modified: Thu, 02 Jul 2026 21:22:19 GMT  
		Size: 27.7 MB (27720517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d70dcb2fb31363c1e422b392377681c9454f7385663f198b4eda373bb5183ef`  
		Last Modified: Thu, 02 Jul 2026 21:22:20 GMT  
		Size: 45.3 MB (45255919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca0aef822fc82a902f3520189d4c521f57dd5682cd91146cc9921e766e5ddd5`  
		Last Modified: Thu, 02 Jul 2026 21:22:18 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1df44175857a7a6bd90cb59b43795d3c7ec9dd217f92c2bfd4138bf604119c`  
		Last Modified: Thu, 02 Jul 2026 21:22:18 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a06f98b2eeea30286c9469792b805ff0e6e0321b412384ee3f22a4b09199e238`  
		Last Modified: Thu, 02 Jul 2026 21:22:19 GMT  
		Size: 18.8 KB (18792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac9ee605129d3776f1729e2133f227e4b044c83ccc1fe8d6e3b9b895660e09f`  
		Last Modified: Thu, 02 Jul 2026 21:22:20 GMT  
		Size: 28.4 MB (28375350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a45cc43b7829a1f02ee205b89d5922323868512634f02b4787f3c1a02f5bf52`  
		Last Modified: Thu, 02 Jul 2026 21:22:20 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cea410cc96e3de30865b831581b9b7ae3ad414a97ea6c7e8b19c5e960686be6`  
		Last Modified: Thu, 02 Jul 2026 21:22:21 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.3-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:902e5c3a0b6e8bb600b2b7fac2fb8a694ba9297af8c6daca2c246fb783652693
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 KB (57739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ba4a7ae9afea89a0c96ccb0dde0716fc2393ccb9d88711acba5b836cb8b9362`

```dockerfile
```

-	Layers:
	-	`sha256:629ed6b681758108195ff53a6e99b6bad212a76b25e490201d8f1469a34695ff`  
		Last Modified: Thu, 02 Jul 2026 21:22:18 GMT  
		Size: 57.7 KB (57739 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.3-apache` - linux; ppc64le

```console
$ docker pull joomla@sha256:2a91eaef0a361e8bd7f294f65f176675c4a4aab2fedf2961808c9174141967df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276629234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ff6af7d41edf95c615a681f4515c41510f19bacd348a39f5793e8f676e0fed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 02 Jul 2026 20:32:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 02 Jul 2026 20:32:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 02 Jul 2026 20:32:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 02 Jul 2026 20:32:36 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 02 Jul 2026 20:32:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:32:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:32:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:32:36 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 02 Jul 2026 20:32:36 GMT
ENV PHP_VERSION=8.3.32
# Thu, 02 Jul 2026 20:32:36 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Thu, 02 Jul 2026 20:32:36 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Thu, 02 Jul 2026 21:54:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 21:54:28 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:59:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 21:59:24 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:59:25 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 21:59:25 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 21:59:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 21:59:25 GMT
STOPSIGNAL SIGWINCH
# Thu, 02 Jul 2026 21:59:25 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:59:26 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 21:59:26 GMT
EXPOSE map[80/tcp:{}]
# Thu, 02 Jul 2026 21:59:26 GMT
CMD ["apache2-foreground"]
# Fri, 03 Jul 2026 00:11:50 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Fri, 03 Jul 2026 00:11:50 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 03 Jul 2026 00:11:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 03 Jul 2026 00:16:29 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 03 Jul 2026 00:16:29 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Fri, 03 Jul 2026 00:16:30 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Fri, 03 Jul 2026 00:16:30 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Fri, 03 Jul 2026 00:16:30 GMT
VOLUME [/var/www/html]
# Fri, 03 Jul 2026 00:16:30 GMT
ENV JOOMLA_VERSION=6.1.1
# Fri, 03 Jul 2026 00:16:30 GMT
ENV JOOMLA_SHA512=73ecfd0f94e04a563d55293df741770b47cc3fcfdb75c383bc9c909d2071d2b212723a2546dae0978a866b0b90da31aec301ae66467722848657696b870ae7a9
# Fri, 03 Jul 2026 00:16:33 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.1/Joomla_6.1.1-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Fri, 03 Jul 2026 00:16:34 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Fri, 03 Jul 2026 00:16:34 GMT
COPY makedb.php /makedb.php # buildkit
# Fri, 03 Jul 2026 00:16:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Jul 2026 00:16:34 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b9a4260dee62432bdfdd3d73b03a72fdca02854ed7e84f1026cc6d34b8993f83`  
		Last Modified: Thu, 02 Jul 2026 20:38:21 GMT  
		Size: 4.9 MB (4883610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c3878b41c59a45de0ecf79c6ae623fc169ff63be3617874b5b126e527ef618`  
		Last Modified: Thu, 02 Jul 2026 20:38:20 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3febe6d2db22efb0a95d78324b834b8e0bba172a58670d3ba73a743f9e27000c`  
		Last Modified: Thu, 02 Jul 2026 20:38:20 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65d5cccbf7fc9f8fbaef8db2f2e15dca66196e5e676cba458e6cddd174d5e6e4`  
		Last Modified: Thu, 02 Jul 2026 21:59:49 GMT  
		Size: 12.8 MB (12779575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c7352c684d85b0c1183ed94d3983c130a39ca0a03003dea1a006591314a030`  
		Last Modified: Thu, 02 Jul 2026 21:59:48 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e196015888f9d1e71310e21e461055b8d471cedaab8b5dfcdd3b020f338fd8`  
		Last Modified: Thu, 02 Jul 2026 21:59:48 GMT  
		Size: 12.1 MB (12125264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbab5a9c0ad323275ccb51746f43de07cebd89495f248d1e359f08c215c5117`  
		Last Modified: Thu, 02 Jul 2026 21:59:48 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab98e171169ec3851c5b3c5456027fcd416563c7f8bac8c31ac066e4472a9080`  
		Last Modified: Thu, 02 Jul 2026 21:59:49 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cd3a4221f7519eb4da7c3287eeff5cec6c0d0b8fe2275545ab928a26a29acad`  
		Last Modified: Thu, 02 Jul 2026 21:59:49 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c1ff1bb51023770abdedd4d71501e563786cc6f41322f9034e945902e47d0b`  
		Last Modified: Thu, 02 Jul 2026 21:59:50 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56bbfe90dc8d442cc5c2ddfd09e7c09683229baf39e2a169ec89ceee7aa34e29`  
		Last Modified: Fri, 03 Jul 2026 00:16:51 GMT  
		Size: 28.4 MB (28420196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf3329889e66e2e73524df9aa0157700143ab2931a535c00a420ebcbaf13615`  
		Last Modified: Fri, 03 Jul 2026 00:16:52 GMT  
		Size: 46.8 MB (46809841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:834d313f3f466f191a65ea6719a8bec90ca636420968c71440919c4e7a5f8346`  
		Last Modified: Fri, 03 Jul 2026 00:16:50 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e005cc1edfc25fe9a9138e82fc29d36b95efa51a3332a49afecf1762333e7acc`  
		Last Modified: Fri, 03 Jul 2026 00:16:50 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c3fc76b158727103d1f6f03a29f38c87f86a1b63bc96a13537770cbfd9d9b35`  
		Last Modified: Fri, 03 Jul 2026 00:16:51 GMT  
		Size: 18.8 KB (18797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:908a8e503ca0e08fc4031282a7d902b81fd85ad2d855f5861f5d7d8da366ab54`  
		Last Modified: Fri, 03 Jul 2026 00:16:52 GMT  
		Size: 28.4 MB (28375336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0617c4514ca1ec3b1b0c226e063090a9d5476d3f220a95bbba6a15ba36ba07eb`  
		Last Modified: Fri, 03 Jul 2026 00:16:53 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9800b3551ee2fd9870ca824b5259cd7a8d27363a185d8e377d46b8ba3e39fa`  
		Last Modified: Fri, 03 Jul 2026 00:16:53 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.3-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:321be51b88b4cfabebdc7216aa36817c9a39bc22a5f9aa30f22ec4ff7894988c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 KB (57835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d248ea7e6e9da763aa4cb6391ba6260c9f4ad1c7a54ebfbe5c7451a69b430393`

```dockerfile
```

-	Layers:
	-	`sha256:962611195de8335be49a4a6f75043753cba0fbbfe4e017199b78c16cbf63b574`  
		Last Modified: Fri, 03 Jul 2026 00:16:49 GMT  
		Size: 57.8 KB (57835 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.3-apache` - linux; riscv64

```console
$ docker pull joomla@sha256:eea76104a02990dd00bd7b218a91ef15644dd52f343a0ec45c782865686701cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.3 MB (311250980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f78c538c0f9cc62ab68769ac8852f2de34b9bcce3dbe01b286aab7f76a81db9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 25 Jun 2026 03:12:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 25 Jun 2026 04:17:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 25 Jun 2026 04:17:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 25 Jun 2026 04:17:57 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 25 Jun 2026 04:17:57 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_VERSION=8.3.31
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.31.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.31.tar.xz.asc
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_SHA256=66410cee07f4b2baeb0843140bb2a2b52ef930b5cf9b3d6e6d158b33aae8fa37
# Thu, 25 Jun 2026 11:38:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 25 Jun 2026 11:38:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 25 Jun 2026 12:27:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 25 Jun 2026 12:27:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 25 Jun 2026 12:28:00 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 25 Jun 2026 12:28:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 25 Jun 2026 12:28:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 25 Jun 2026 12:28:01 GMT
STOPSIGNAL SIGWINCH
# Thu, 25 Jun 2026 12:28:01 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 25 Jun 2026 12:28:01 GMT
WORKDIR /var/www/html
# Thu, 25 Jun 2026 12:28:01 GMT
EXPOSE map[80/tcp:{}]
# Thu, 25 Jun 2026 12:28:01 GMT
CMD ["apache2-foreground"]
# Sat, 27 Jun 2026 21:51:38 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 27 Jun 2026 21:51:38 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 27 Jun 2026 21:51:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 27 Jun 2026 22:18:38 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 27 Jun 2026 22:18:39 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sat, 27 Jun 2026 22:18:39 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Sat, 27 Jun 2026 22:18:41 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Sat, 27 Jun 2026 22:18:41 GMT
VOLUME [/var/www/html]
# Sat, 27 Jun 2026 22:18:41 GMT
ENV JOOMLA_VERSION=6.1.1
# Sat, 27 Jun 2026 22:18:41 GMT
ENV JOOMLA_SHA512=73ecfd0f94e04a563d55293df741770b47cc3fcfdb75c383bc9c909d2071d2b212723a2546dae0978a866b0b90da31aec301ae66467722848657696b870ae7a9
# Sat, 27 Jun 2026 22:18:53 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.1/Joomla_6.1.1-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Sat, 27 Jun 2026 22:18:54 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 27 Jun 2026 22:18:54 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 27 Jun 2026 22:18:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 27 Jun 2026 22:18:54 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:e95831264abc60a3f07564bb5393bf0e76a18c06fc1f7da49e2dd9340443ceb1`  
		Last Modified: Thu, 25 Jun 2026 05:18:49 GMT  
		Size: 4.0 MB (4031691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90b8452a4ae99b2c1ea4b5be2c73f7ee19e4f5bfff9df4094f6c977d9ccbc33`  
		Last Modified: Thu, 25 Jun 2026 05:18:48 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d22038771f1f4ac1ae52191f35203cab88f8acf6df4f9bb0fe74ee00e8870a10`  
		Last Modified: Thu, 25 Jun 2026 05:18:48 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:841ec92f4b13fb1adebf29922664c85d4eb2e72fda1db62a14313e3788e26b97`  
		Last Modified: Thu, 25 Jun 2026 12:31:09 GMT  
		Size: 12.8 MB (12776763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2d5cb6a85ede0cdeeb0106096e8d830f181b17da725c08e095fe9709cf9aac6`  
		Last Modified: Thu, 25 Jun 2026 12:31:04 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f3cb1a2621cf962717c33b54ad1838a7f511be934dea2994df208e43a2f285`  
		Last Modified: Thu, 25 Jun 2026 12:31:08 GMT  
		Size: 11.3 MB (11255883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d706b1b7e9dc51c7847f63cf16fba2c41bb2a942ae834da1a52f460c35d886`  
		Last Modified: Thu, 25 Jun 2026 12:31:04 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff8c66c67234696e76c0196e19b3e2fad0fec9aa5aa3e4a4757e6d1c86c8530`  
		Last Modified: Thu, 25 Jun 2026 12:31:07 GMT  
		Size: 255.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be51b7f1695348e8988968a7bc4ff1c438e4fe09a3f88ef2d88ac5be31ae28e9`  
		Last Modified: Thu, 25 Jun 2026 12:31:07 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b6c323fcf93db6fdc54bcd8cee4f153352d3b9958ee26b61b3459f5665d9fd`  
		Last Modified: Thu, 25 Jun 2026 12:31:09 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53f0e06a0689a26d53e395ace50b3489fb5e82c379f222531721c76a4802f8e`  
		Last Modified: Sat, 27 Jun 2026 22:21:11 GMT  
		Size: 27.2 MB (27210725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81fd3bd500395675077ed6fdc5a9b91a975e644eb5ef26583a9ab57c2ec4c58e`  
		Last Modified: Sat, 27 Jun 2026 22:21:16 GMT  
		Size: 52.7 MB (52702981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f57c55b333074ded442506fd67ca25958b410758bf0912554c52abb4507b054c`  
		Last Modified: Sat, 27 Jun 2026 22:21:00 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f1673140ead0a066e54d8bb2c9306869be00a60f364dbcc47b6108e4772b4b`  
		Last Modified: Sat, 27 Jun 2026 22:21:01 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79402b2b4de5605d27dfd648762e41ebb657bc8eac680344658dbd91dc5b5e24`  
		Last Modified: Sat, 27 Jun 2026 22:21:03 GMT  
		Size: 18.8 KB (18818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:038735423e7f9fffa79bc633e18bd86be8f00a8a5ebf0e128f04864817194ac8`  
		Last Modified: Sat, 27 Jun 2026 22:21:13 GMT  
		Size: 28.4 MB (28375355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc278c18f95899e6b1948e6e6f47bd310888bb5509ee164644295c2a2a22c2c`  
		Last Modified: Sat, 27 Jun 2026 22:21:05 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2cd2f229bf9e3295d0758d91df2a581d4a5f630b65d4444dc2330593e65525a`  
		Last Modified: Sat, 27 Jun 2026 22:21:08 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.3-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:13ebabb77bdeef48c4c64c64949915e74f54216c894a25a2317426ebcc60789e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 KB (57835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d856a2897097c0d5fefb31abe2c5da065e1b870dea80c60dbeac812450006a`

```dockerfile
```

-	Layers:
	-	`sha256:4f41c083ba9ef2af65592873952654f1e5f3c7bd0866308f18e78956c13d71e6`  
		Last Modified: Sat, 27 Jun 2026 22:21:00 GMT  
		Size: 57.8 KB (57835 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.3-apache` - linux; s390x

```console
$ docker pull joomla@sha256:7db35f640b2971bdfba3113a7a80249f26e2ec4be90b7c4bb497db9f3f630858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251623241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc50d18124b27da14f5f36f1a13fc5744c676553bc2aba22d3c8d34e9ca4b9e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 02 Jul 2026 20:31:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 02 Jul 2026 20:48:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 02 Jul 2026 20:48:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 02 Jul 2026 20:48:01 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 02 Jul 2026 20:48:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:48:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:48:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:48:01 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 02 Jul 2026 20:48:01 GMT
ENV PHP_VERSION=8.3.32
# Thu, 02 Jul 2026 20:48:01 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Thu, 02 Jul 2026 20:48:01 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Thu, 02 Jul 2026 21:09:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 21:09:07 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:13:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 21:13:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:13:14 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 21:13:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 21:13:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 21:13:14 GMT
STOPSIGNAL SIGWINCH
# Thu, 02 Jul 2026 21:13:15 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:13:15 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 21:13:15 GMT
EXPOSE map[80/tcp:{}]
# Thu, 02 Jul 2026 21:13:15 GMT
CMD ["apache2-foreground"]
# Thu, 02 Jul 2026 22:32:47 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 22:32:47 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 22:32:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 22:35:06 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 22:35:06 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 22:35:06 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 22:35:06 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 02 Jul 2026 22:35:06 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 22:35:06 GMT
ENV JOOMLA_VERSION=6.1.1
# Thu, 02 Jul 2026 22:35:06 GMT
ENV JOOMLA_SHA512=73ecfd0f94e04a563d55293df741770b47cc3fcfdb75c383bc9c909d2071d2b212723a2546dae0978a866b0b90da31aec301ae66467722848657696b870ae7a9
# Thu, 02 Jul 2026 22:35:08 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.1/Joomla_6.1.1-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 22:35:08 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 22:35:08 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 22:35:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 22:35:08 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:e4aebae971d9a9e36cab7c617d9e33a23ec2d0069a0d71cfab401dd66671ce3c`  
		Last Modified: Thu, 02 Jul 2026 20:53:06 GMT  
		Size: 4.3 MB (4331397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f230d713b5b0fae28d8c290a04bfe5abb1f2ee3e0741b89ce102b53a00dc28`  
		Last Modified: Thu, 02 Jul 2026 20:53:06 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d426532eea365b2d0b7c5101027b5e9db9baacc2b2229ab9d35de96e1af2f119`  
		Last Modified: Thu, 02 Jul 2026 20:53:06 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821615e8eb88ae4c6fb63742c3cdd90f5a52b9bbf73aeaea970baeba896473de`  
		Last Modified: Thu, 02 Jul 2026 21:13:33 GMT  
		Size: 12.8 MB (12778742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d89e11d99f48cb1580dbfa5f48d062c6a7d4a67dd0f76a398029edcda607d776`  
		Last Modified: Thu, 02 Jul 2026 21:13:32 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c39b9823b673d1b2f69601a6eeca6edb11ba6b7aea4bd1dc582573cfd628485`  
		Last Modified: Thu, 02 Jul 2026 21:13:33 GMT  
		Size: 11.6 MB (11572514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:414225e10fcb1973aa562d3d3317d5cf12b925d02dd773615925caafd464f84b`  
		Last Modified: Thu, 02 Jul 2026 21:13:33 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b9a6c7c3dc27f8468a56b8d2cb1ffb88caa50cd820d07c2d61cd36cafe8832f`  
		Last Modified: Thu, 02 Jul 2026 21:13:33 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b06d925f61dde4696290c3780d409d339e5529fad9e0e015e71fca159f1f7c`  
		Last Modified: Thu, 02 Jul 2026 21:13:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc0369404aeb874cc7f617fc2a488add680b0a2695e65da4229042e2112c27bb`  
		Last Modified: Thu, 02 Jul 2026 21:13:34 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d034629f59433b2b944ecac9adda49916abf02c7c8030a07926b09bd92b5426`  
		Last Modified: Thu, 02 Jul 2026 22:35:22 GMT  
		Size: 27.6 MB (27551731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd2284c6c983507a81c31031d3513223e046a5ea4aa07232570f556194a1644a`  
		Last Modified: Thu, 02 Jul 2026 22:35:23 GMT  
		Size: 44.6 MB (44559895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bed8282b212b5853655b1930cfa6f66e393917dd69d8d64cb2592b3cae5b46e`  
		Last Modified: Thu, 02 Jul 2026 22:35:22 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c286fdb7ba30c9ac2201ae91690c90114f41cc394ac1afdfd7c383d9480fdf`  
		Last Modified: Thu, 02 Jul 2026 22:35:22 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc7ab928d6bd333e700f0250f9923601cc47c94f3d08a2164c6c779d774b230e`  
		Last Modified: Thu, 02 Jul 2026 22:35:23 GMT  
		Size: 18.8 KB (18795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624e44418072878daa4afc8b77a4680b2e80e1494226d1c25da2904b599727b4`  
		Last Modified: Thu, 02 Jul 2026 22:35:23 GMT  
		Size: 28.4 MB (28375334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b99d6c3b62be7e2c62858c503100cac5ee2bf85e5a30f2fb19f43a53ae211661`  
		Last Modified: Thu, 02 Jul 2026 22:35:23 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82c5c0274b8482032b36cf1a856aeb63cccbf83674915ccae8d8e04da0b4498`  
		Last Modified: Thu, 02 Jul 2026 22:35:24 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.3-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:1b4edf6acd919479cb67b4a56b912f115d28e2e1eaeca6bb5b70e5f626db7e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 KB (57772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d84a499959291a3f65190f7ca3b21990cebf29f024774343405170481d07fda`

```dockerfile
```

-	Layers:
	-	`sha256:fbeadada70c4f2ed1fb96b683ecb7d9182590a05be5a885b1750162c788d6a28`  
		Last Modified: Thu, 02 Jul 2026 22:35:21 GMT  
		Size: 57.8 KB (57772 bytes)  
		MIME: application/vnd.in-toto+json
