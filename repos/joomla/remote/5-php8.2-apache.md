## `joomla:5-php8.2-apache`

```console
$ docker pull joomla@sha256:ad02f7af0afb2bbdca49c0da230f285eda1d463ea92df9b63a453892a6df791e
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
$ docker pull joomla@sha256:bf181b8c6eba307fca5928d7b6641bea197f018b3abcbc9e6926593cf6b58d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.8 MB (275751195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4868c6e341d81cd5d69b719dec3e3c186c584b6c30a46cedc4ee390befefa69e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:22:54 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:23:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:23:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:23:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:23:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:23:11 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 19 Sep 2026 00:23:11 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 19 Sep 2026 00:23:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Sat, 19 Sep 2026 00:23:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Sat, 19 Sep 2026 00:23:16 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Sat, 19 Sep 2026 00:23:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:23:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:23:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:23:16 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Sat, 19 Sep 2026 00:23:16 GMT
ENV PHP_VERSION=8.2.33
# Sat, 19 Sep 2026 00:23:16 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Sat, 19 Sep 2026 00:23:16 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Sat, 19 Sep 2026 00:33:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:33:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:35:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:35:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:35:56 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 00:35:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:35:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:35:56 GMT
STOPSIGNAL SIGWINCH
# Sat, 19 Sep 2026 00:35:56 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:35:56 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:35:56 GMT
EXPOSE map[80/tcp:{}]
# Sat, 19 Sep 2026 00:35:56 GMT
CMD ["apache2-foreground"]
# Sat, 19 Sep 2026 01:30:22 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 19 Sep 2026 01:30:22 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 19 Sep 2026 01:30:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:32:16 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.26; 	pecl install memcached-3.3.0; 	pecl install redis-6.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 19 Sep 2026 01:32:16 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sat, 19 Sep 2026 01:32:16 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Sat, 19 Sep 2026 01:32:16 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Sat, 19 Sep 2026 01:32:16 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 01:32:16 GMT
ENV JOOMLA_VERSION=5.4.8
# Sat, 19 Sep 2026 01:32:16 GMT
ENV JOOMLA_SHA512=84fe04fe224a376209a85f36781c73db7c7787ee572b633ae1b31739af39a1e8e310f10faaac30f8bf8181536dc118182e873143346c4f47cd33b7d785c86b6e
# Sat, 19 Sep 2026 01:32:18 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Sat, 19 Sep 2026 01:32:18 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:32:18 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 19 Sep 2026 01:32:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 01:32:18 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb048fb87269758147674ec826cde89888b31678eacdf906531cc628043e4d25`  
		Last Modified: Sat, 19 Sep 2026 00:26:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9cd8b624fa75cec8fa45b4415617d15464d8070a1a212d2631f31cbee69f885`  
		Last Modified: Sat, 19 Sep 2026 00:26:36 GMT  
		Size: 117.8 MB (117842278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b9fb004ed73fc78fa0eaf4062b853a91ac37fbb3ba1e7b772b1163eb3c1bca`  
		Last Modified: Sat, 19 Sep 2026 00:26:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2ef19b17e93c61f918c29af27cb52475c60fb50b21748b60ddc3b11c47df7a2`  
		Last Modified: Sat, 19 Sep 2026 00:26:33 GMT  
		Size: 4.2 MB (4239013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2688fbc92224c810910cd5268ee690e605afd0c12e6385d85a9546b9a0b300a5`  
		Last Modified: Sat, 19 Sep 2026 00:26:34 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98568aa8c67088bb05182084e7a036bf951060dbe7833d747073667edd1a5c41`  
		Last Modified: Sat, 19 Sep 2026 00:26:34 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57bd85d7ddf5c67c654cb6249214d8733c67db56de0fff951114ce62210ed8d2`  
		Last Modified: Sat, 19 Sep 2026 00:36:07 GMT  
		Size: 12.3 MB (12332594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6a7fd03ab93344c579f1881fcefe1003da7d34e9e707b6bcdaba743c79cb1e4`  
		Last Modified: Sat, 19 Sep 2026 00:36:07 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f613a945cbace441235d94538a73e83dfbaf802d1c5961e0d5b51f40f9c9b0`  
		Last Modified: Sat, 19 Sep 2026 00:36:07 GMT  
		Size: 11.5 MB (11460800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:747d3275d865199113645704dfa50a899b58a3564b4cb65fce194b9deca563dd`  
		Last Modified: Sat, 19 Sep 2026 00:36:07 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43daaacb5470e31cc3bf96a9cd678c96fadd111eb604c96ea9f17266d2ad4b0`  
		Last Modified: Sat, 19 Sep 2026 00:36:08 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ad7b58566ea5ec32eec4c3783f3120b3cea1daafdba2cc88101882e5766bc3`  
		Last Modified: Sat, 19 Sep 2026 00:36:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9837639488f39da4dd0a86194282e88c846934fad9c50e5336710de40caa9e54`  
		Last Modified: Sat, 19 Sep 2026 00:36:09 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff3efa7aaba76e2c3afd68aa453bfca4c4caf0980b99fa4c24debfb813f4077`  
		Last Modified: Sat, 19 Sep 2026 01:32:27 GMT  
		Size: 27.3 MB (27274669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e57f83e79be3ef0cb37f7bcb5ea8683a6296b1d1cbbbf96c4406cc37700e4a8e`  
		Last Modified: Sat, 19 Sep 2026 01:32:28 GMT  
		Size: 45.2 MB (45176641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a8dff33c56f3ed8cc7fa39c2d92bc18126a14a3cebe9223c5fda165bdce41c`  
		Last Modified: Sat, 19 Sep 2026 01:32:26 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc10334c5804c45ac729fc0ae7a6f3cadd78cc528281e5c45fa100a6ea8d709e`  
		Last Modified: Sat, 19 Sep 2026 01:32:26 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8d3a96a895e01f6a69eee93c6b9c49973f293276b853f2c2b88772973ba2c8c`  
		Last Modified: Sat, 19 Sep 2026 01:32:27 GMT  
		Size: 18.8 KB (18801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6fa79999903fbe6b3791c56a1c0544cca53bc812a292b4b423355d30d58411`  
		Last Modified: Sat, 19 Sep 2026 01:32:28 GMT  
		Size: 27.6 MB (27564820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2723737c99b90933a52bc1d470617d6da8dff890245cc662c83f6a3ee3b12b27`  
		Last Modified: Sat, 19 Sep 2026 01:32:29 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28bf22ab2b974803389c4550071e648147ffaa470d77bf2fa0f8b647aa893dc2`  
		Last Modified: Sat, 19 Sep 2026 01:32:29 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:5ccae5b5b783c15ceeaf2ad8910424bb9f81ed1ee96d358cc1c6d55647f881e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 KB (57469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6b83edbfe1cbfa9d15151fa8a607722966385a87657cc3ebee1a3365c5477dd`

```dockerfile
```

-	Layers:
	-	`sha256:5584daf33a557b428a30048b7e60f2b8767458ba11ab75e1b967d632b35e2152`  
		Last Modified: Sat, 19 Sep 2026 01:32:26 GMT  
		Size: 57.5 KB (57469 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-apache` - linux; arm variant v5

```console
$ docker pull joomla@sha256:18949ffb6a8ac53603105805193de1b9221b981191d9967b56ef772751587787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.0 MB (246954515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dba98d53cdc01bba4be563a5814bd2652f14c1d083001326ca91e30120e1a89`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:22:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:22:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:22:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:22:35 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:22:35 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:22:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 19 Sep 2026 00:22:35 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 19 Sep 2026 00:26:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Sat, 19 Sep 2026 00:26:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Sat, 19 Sep 2026 00:26:16 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Sat, 19 Sep 2026 00:26:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:26:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:26:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:26:16 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Sat, 19 Sep 2026 00:26:16 GMT
ENV PHP_VERSION=8.2.33
# Sat, 19 Sep 2026 00:26:16 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Sat, 19 Sep 2026 00:26:16 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Sat, 19 Sep 2026 00:37:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:37:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:40:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:40:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:40:52 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 00:40:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:40:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:40:52 GMT
STOPSIGNAL SIGWINCH
# Sat, 19 Sep 2026 00:40:52 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:40:52 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:40:52 GMT
EXPOSE map[80/tcp:{}]
# Sat, 19 Sep 2026 00:40:52 GMT
CMD ["apache2-foreground"]
# Sat, 19 Sep 2026 02:12:05 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 19 Sep 2026 02:12:05 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 19 Sep 2026 02:12:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:15:13 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.26; 	pecl install memcached-3.3.0; 	pecl install redis-6.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 19 Sep 2026 02:15:13 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sat, 19 Sep 2026 02:15:13 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Sat, 19 Sep 2026 02:15:13 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Sat, 19 Sep 2026 02:15:13 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 02:15:13 GMT
ENV JOOMLA_VERSION=5.4.8
# Sat, 19 Sep 2026 02:15:13 GMT
ENV JOOMLA_SHA512=84fe04fe224a376209a85f36781c73db7c7787ee572b633ae1b31739af39a1e8e310f10faaac30f8bf8181536dc118182e873143346c4f47cd33b7d785c86b6e
# Sat, 19 Sep 2026 02:15:15 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Sat, 19 Sep 2026 02:15:15 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 02:15:15 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 19 Sep 2026 02:15:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 02:15:15 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24c559b0d04e0683d78b09f50cb309a7899f1d2e117ac3a232a9eeae4a646961`  
		Last Modified: Sat, 19 Sep 2026 00:25:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d92a2694e1bdd7d3d2a88018f5f509a37a697bcc24d56430dafdb117e6dc5c0`  
		Last Modified: Sat, 19 Sep 2026 00:26:01 GMT  
		Size: 94.9 MB (94876759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46bf41ada33e60b208b04152cd937768247dab9dba24c66053af2d5aec5e127d`  
		Last Modified: Sat, 19 Sep 2026 00:25:58 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afc84fe5eaaca6bd93bf12fc5b6ae617499cbaafd1447bd0caee7162fce7d4e`  
		Last Modified: Sat, 19 Sep 2026 00:30:03 GMT  
		Size: 4.1 MB (4097275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa7d672b1b0c041b828c672676fddb34f7394565cc3447587cc5ee56d3f3eec`  
		Last Modified: Sat, 19 Sep 2026 00:30:03 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca03c28f65516f343d236d2a7a6bf8a63d2043a3451ff9be4a496cd06c73ea2`  
		Last Modified: Sat, 19 Sep 2026 00:30:03 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79ae6848d4f6b1390869415efe74377519dc5be074e4ecde0a42cb1c1217349`  
		Last Modified: Sat, 19 Sep 2026 00:41:03 GMT  
		Size: 12.3 MB (12330013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fd6c9addc100ade6c8a1d7fafba3ca2e14c801a390a6fd69e18777869fb663c`  
		Last Modified: Sat, 19 Sep 2026 00:41:02 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e1a6d6674c50e17ad3e0dc596e31b3b563808caabcc270f097050a9b657e13`  
		Last Modified: Sat, 19 Sep 2026 00:41:03 GMT  
		Size: 10.4 MB (10369008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459ce4e0d2c10eacb65ddecb0105057063a1dd047f0ed6aa3e09944b2a12cc5a`  
		Last Modified: Sat, 19 Sep 2026 00:41:02 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88516110af4ef9a20fcc82dfbe015ce764edab2ae543c3daecbab2eeca8ad9ed`  
		Last Modified: Sat, 19 Sep 2026 00:41:03 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a18aed85c11589147d10974404c5cd4a2d8ec6f51014b36adc9f67cd1a59c769`  
		Last Modified: Sat, 19 Sep 2026 00:41:04 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd88a8876f0229489812fe61669a5a8b3a6851525ed3b8f69fe2663f48c5d991`  
		Last Modified: Sat, 19 Sep 2026 00:41:04 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5f9e1c495f630876dd0d47599055c52f57f0f128482164ee153a937a9c23f2`  
		Last Modified: Sat, 19 Sep 2026 02:15:24 GMT  
		Size: 26.7 MB (26711010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f1c755a65946510928342df1506a4a03bfdb99dd66fb6774046a9d7564f750`  
		Last Modified: Sat, 19 Sep 2026 02:15:25 GMT  
		Size: 43.0 MB (42977258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f42c48d776cd01deb9943981dc66f370dfd97a0369eb13f30905bf92e94c5067`  
		Last Modified: Sat, 19 Sep 2026 02:15:23 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e83d6ee2c44f1d9dea0275856c94ecc6f1cc9daad7c0789a933bc137eec417b8`  
		Last Modified: Sat, 19 Sep 2026 02:15:23 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:861c649c397f02c25e1db6345a1028e6107c9758e083a779b1b35cc030b6852d`  
		Last Modified: Sat, 19 Sep 2026 02:15:25 GMT  
		Size: 18.8 KB (18797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48cd30d1e856a7636e6b05682e9bf918e6dbcd1254353aabc9f1f784b4b6150d`  
		Last Modified: Sat, 19 Sep 2026 02:15:25 GMT  
		Size: 27.6 MB (27565203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44cdd39cd412e1b238459afee48017d0afcd069bf88b7bcfd0f990681330f92`  
		Last Modified: Sat, 19 Sep 2026 02:15:26 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa8101e7a47ad3483e248e39fee52fb4c2fe1c3f05c633eb07d34b85f53c8ab`  
		Last Modified: Sat, 19 Sep 2026 02:15:26 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:4935b21c130eb668cdfe4ea3b7ee897c0cff047b1f1858f411ddd6c2dd281719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 KB (57597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d07482934a5de5e896dcb08adb1e413a4a6c6bf3732fbf6cf4f9955c4a6a18`

```dockerfile
```

-	Layers:
	-	`sha256:956bc9f5b753b9beb07e4c1bc0cc3be31df788c1712f1c0a9645e55dd25ba223`  
		Last Modified: Sat, 19 Sep 2026 02:15:23 GMT  
		Size: 57.6 KB (57597 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-apache` - linux; arm variant v7

```console
$ docker pull joomla@sha256:ec2c94ac1b684cdfa2b7f1a87706e4397e5aee315fd97401908cf0302dd4a42a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.3 MB (233322082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d4fff64dda4c83caf04e5372c5faa7b96ea8e766d50ce1c0dd7acb17c37b02`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:58:16 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:58:34 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:58:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:58:34 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:58:34 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:58:34 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 19 Sep 2026 00:58:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 19 Sep 2026 00:58:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Sat, 19 Sep 2026 00:58:41 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Sat, 19 Sep 2026 00:58:41 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Sat, 19 Sep 2026 00:58:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:58:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:58:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:58:41 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Sat, 19 Sep 2026 00:58:41 GMT
ENV PHP_VERSION=8.2.33
# Sat, 19 Sep 2026 00:58:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Sat, 19 Sep 2026 00:58:41 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Sat, 19 Sep 2026 00:58:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:58:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:01:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 01:01:28 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:01:28 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 01:01:28 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 01:01:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 01:01:28 GMT
STOPSIGNAL SIGWINCH
# Sat, 19 Sep 2026 01:01:28 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:01:28 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 01:01:28 GMT
EXPOSE map[80/tcp:{}]
# Sat, 19 Sep 2026 01:01:28 GMT
CMD ["apache2-foreground"]
# Sat, 19 Sep 2026 02:34:22 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 19 Sep 2026 02:34:22 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 19 Sep 2026 02:34:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:37:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.26; 	pecl install memcached-3.3.0; 	pecl install redis-6.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 19 Sep 2026 02:37:06 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sat, 19 Sep 2026 02:37:06 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Sat, 19 Sep 2026 02:37:06 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Sat, 19 Sep 2026 02:37:06 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 02:37:06 GMT
ENV JOOMLA_VERSION=5.4.8
# Sat, 19 Sep 2026 02:37:06 GMT
ENV JOOMLA_SHA512=84fe04fe224a376209a85f36781c73db7c7787ee572b633ae1b31739af39a1e8e310f10faaac30f8bf8181536dc118182e873143346c4f47cd33b7d785c86b6e
# Sat, 19 Sep 2026 02:37:07 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Sat, 19 Sep 2026 02:37:07 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 02:37:08 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 19 Sep 2026 02:37:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 02:37:08 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a6adf8e7fb46e7e172b411875f3e90e001e1d91c9792c522868e47b2355018b`  
		Last Modified: Sat, 19 Sep 2026 01:01:45 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53b99826863ac55de948e35ccd5192be9fa278ac082bb88345eb79ce8815c692`  
		Last Modified: Sat, 19 Sep 2026 01:01:47 GMT  
		Size: 86.3 MB (86264969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd54f593c043c4ecdb4d82c00fabb6c5980e8061df340de95273e8738ff896e4`  
		Last Modified: Sat, 19 Sep 2026 01:01:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea956f4b10ec031b9182e6bf974acd5275d28185bdba6faa76cc1f3a0a9d5f8`  
		Last Modified: Sat, 19 Sep 2026 01:01:45 GMT  
		Size: 3.8 MB (3763776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9e5701b7728ff6014313e8ea59ebaade56497f0f08dadb03fe005e3aed9f314`  
		Last Modified: Sat, 19 Sep 2026 01:01:46 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37909fa7dab7f56a4d953fc64973c4f0d66a77e07a303a3cfb2a36463d222aa0`  
		Last Modified: Sat, 19 Sep 2026 01:01:46 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfcd1fcff1de740b599ca23692d727081c138eb476f0a28787acb77fbb2b85a`  
		Last Modified: Sat, 19 Sep 2026 01:01:47 GMT  
		Size: 12.3 MB (12330120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a7be9f45972af6949cc09c9af1ca492d7dc185fe5ba83f179ba2d95e7360d6`  
		Last Modified: Sat, 19 Sep 2026 01:01:47 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f0d054938316fd2b6228527e3b9eb119f5175eb7e26e8fe9390484825e4d3f`  
		Last Modified: Sat, 19 Sep 2026 01:01:47 GMT  
		Size: 9.8 MB (9843242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3547b9df70141d4914cf174ce453f3f26cafbea23a8803e641b6a60183cd25e7`  
		Last Modified: Sat, 19 Sep 2026 01:01:48 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:519fa5a58aa5368affcd9944550d82aa204a150b4cd5f81f3f5f545df5f6d922`  
		Last Modified: Sat, 19 Sep 2026 01:01:48 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2c5ee800a3180f9657406495226a880201bd170448ef8a56f765bc202e2d0f`  
		Last Modified: Sat, 19 Sep 2026 01:01:49 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ef0e89d640563c07147952526d3a59ac6ff63f10915ad9a1862f7accd440711`  
		Last Modified: Sat, 19 Sep 2026 01:01:49 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0cf962717b2a3269058ecbcc0766d21ca8cf1d475daac8dd3a1cb288821e52f`  
		Last Modified: Sat, 19 Sep 2026 02:37:17 GMT  
		Size: 25.9 MB (25925075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e70062b9cd5f51a2a3e3c9f1435123335f8e90aa0dff3eea0446bfa9642a3f5`  
		Last Modified: Sat, 19 Sep 2026 02:37:17 GMT  
		Size: 41.4 MB (41350878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac36b58dc5bcda0880e610ece6b84b822b73eccfab5e0d70d7efa632080cc520`  
		Last Modified: Sat, 19 Sep 2026 02:37:15 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bbdfae846e2422c3ce96550ccaa0d45b3dd0f7c31b4ab3a487bc3ad5ac65acd`  
		Last Modified: Sat, 19 Sep 2026 02:37:15 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25fb3d6cc120f832322c99b7a6bda7ef6ea494cfa0e35e97dee90beae7e430a0`  
		Last Modified: Sat, 19 Sep 2026 02:37:17 GMT  
		Size: 18.8 KB (18792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d7612366490632a7e57060f59830fe00a4f98ef066d285fe77f3f6ccd9d07a0`  
		Last Modified: Sat, 19 Sep 2026 02:37:18 GMT  
		Size: 27.6 MB (27565136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b217ee46b8aa6317840ce83a89dca9b61b8b8693fee4f1e8f2abcf7943eae292`  
		Last Modified: Sat, 19 Sep 2026 02:37:18 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af79070f1c025e63ea4f7ef065215298c9ee5b0cfc2cab311f423a9a7ae7c8eb`  
		Last Modified: Sat, 19 Sep 2026 02:37:18 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:96eb0cd0640deb06ef48bc0179c3443d0517189038e4520bc8bdc3b31a70aeec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 KB (57588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1428040fdd789ed75dd15603ff1a9c6a6ae1a497aac86becff9016694abef7e3`

```dockerfile
```

-	Layers:
	-	`sha256:ddeeaa91eccfd100ea32f20256744800dad1880cd476a78c755703b14bafcb6b`  
		Last Modified: Sat, 19 Sep 2026 02:37:15 GMT  
		Size: 57.6 KB (57588 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-apache` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:7130e1a853c4b50642f8fc35a19231b08691459dc52d8654da319792878af7cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267300029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b18e7fbd12912e07877130baa88d58b9e1983de3f87af4832b4b13d94b76f4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:24:00 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:24:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:24:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:24:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:24:18 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:24:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 19 Sep 2026 00:24:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 19 Sep 2026 00:24:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Sat, 19 Sep 2026 00:24:24 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Sat, 19 Sep 2026 00:24:24 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Sat, 19 Sep 2026 00:24:24 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:24:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:24:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:24:24 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Sat, 19 Sep 2026 00:24:24 GMT
ENV PHP_VERSION=8.2.33
# Sat, 19 Sep 2026 00:24:24 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Sat, 19 Sep 2026 00:24:24 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Sat, 19 Sep 2026 00:36:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:36:11 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:39:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:53 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 00:39:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:39:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:39:53 GMT
STOPSIGNAL SIGWINCH
# Sat, 19 Sep 2026 00:39:53 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:53 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:39:53 GMT
EXPOSE map[80/tcp:{}]
# Sat, 19 Sep 2026 00:39:53 GMT
CMD ["apache2-foreground"]
# Sat, 19 Sep 2026 01:38:56 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 19 Sep 2026 01:38:56 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 19 Sep 2026 01:38:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:41:25 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.26; 	pecl install memcached-3.3.0; 	pecl install redis-6.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 19 Sep 2026 01:41:26 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sat, 19 Sep 2026 01:41:26 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Sat, 19 Sep 2026 01:41:26 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Sat, 19 Sep 2026 01:41:26 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 01:41:26 GMT
ENV JOOMLA_VERSION=5.4.8
# Sat, 19 Sep 2026 01:41:26 GMT
ENV JOOMLA_SHA512=84fe04fe224a376209a85f36781c73db7c7787ee572b633ae1b31739af39a1e8e310f10faaac30f8bf8181536dc118182e873143346c4f47cd33b7d785c86b6e
# Sat, 19 Sep 2026 01:41:27 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Sat, 19 Sep 2026 01:41:27 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:41:27 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 19 Sep 2026 01:41:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 01:41:27 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:738f7d8f678eaae491fd686d1c86a4a398257a316ddb21d6f7db39c5983bfd6b`  
		Last Modified: Sat, 19 Sep 2026 00:28:23 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a82c3c833948eb54d8ca382845613f35f60d8d0edd28075dce7958d15a6aa9`  
		Last Modified: Sat, 19 Sep 2026 00:28:26 GMT  
		Size: 110.2 MB (110179569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cbf9437dedf4c402e8723a899294ebc56d2e1a8c9ce13402c13916b7ea300c1`  
		Last Modified: Sat, 19 Sep 2026 00:28:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5915885c5c53e48e4799abeef7da94bca2adcbc6a3a304f8f20f38ed82c6079c`  
		Last Modified: Sat, 19 Sep 2026 00:28:23 GMT  
		Size: 4.3 MB (4314392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf5d81746c33d96fd499f1707c49bd71443235e4d3286a4e01dc92fdf0fc6dc`  
		Last Modified: Sat, 19 Sep 2026 00:28:24 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e8c9985ee6323ffc9ece81ec71b53323185cdcc96581e2598d32ddeb014ed47`  
		Last Modified: Sat, 19 Sep 2026 00:28:24 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df3676db572777fed68915489ec13aa25149c250eff75fa70c79748bfdce4a9`  
		Last Modified: Sat, 19 Sep 2026 00:40:05 GMT  
		Size: 12.3 MB (12332238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c7721d42aaaff13663c6e184ec981f3ed5b9908a72dd0fc7483bf1468cb720f`  
		Last Modified: Sat, 19 Sep 2026 00:40:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db642a92f8eed01b8947f512616f63ec4d373739f39775150d0bbfb7a34a7ca`  
		Last Modified: Sat, 19 Sep 2026 00:40:05 GMT  
		Size: 11.5 MB (11494522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412d5f8ef31f27c4b16fe2505541ef1a61e5dbc48d983d9e8995874ac21a8a77`  
		Last Modified: Sat, 19 Sep 2026 00:40:04 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17fc9fed33bd4e32b9cc2175300ff6b07ec8d64765b3776e3d778de837ebc762`  
		Last Modified: Sat, 19 Sep 2026 00:40:05 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0283dfce20ab4abedde1cfcdc6bf123512583665f535433df3cb2134f3dc3862`  
		Last Modified: Sat, 19 Sep 2026 00:40:05 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc3200efd15814217f1af271e3754dddf0d78162c1d996d56f893b5c2a4956b`  
		Last Modified: Sat, 19 Sep 2026 00:40:06 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c64fc031d0578c0fa1a2652dc4bcd8bf53ada26a81fd520b76f7870f406225e8`  
		Last Modified: Sat, 19 Sep 2026 01:41:38 GMT  
		Size: 27.1 MB (27101374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba19623d3bf538a4b7f67578626a8661f287af5667d62ad84be508f0fc05c1dd`  
		Last Modified: Sat, 19 Sep 2026 01:41:38 GMT  
		Size: 44.1 MB (44093049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd9f0077f6dc9bd31a80d6945ede2614c7be19b2637489682ba6d00770548d0`  
		Last Modified: Sat, 19 Sep 2026 01:41:37 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b7de0aadee7a0602fa07ea0da1a8b6ebeb28b86e86b6f4c39123140ddc6cbb`  
		Last Modified: Sat, 19 Sep 2026 01:41:37 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f31712f0a83352c521cf48fedf2549ffd76c945cb61102636137302d8faec61`  
		Last Modified: Sat, 19 Sep 2026 01:41:38 GMT  
		Size: 18.8 KB (18798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3c5455965eacafcf5cecf8aebcd83770e4ec835258f639ac13b74f22be88d5`  
		Last Modified: Sat, 19 Sep 2026 01:41:39 GMT  
		Size: 27.6 MB (27565242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba852047e14d9807821576c8a88e506016bbddc6717fdceda1db49385ff8014e`  
		Last Modified: Sat, 19 Sep 2026 01:41:35 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:997a7957c78ae5bf20aac1435471472656fcd51330b2194a0861ace67c31c4d0`  
		Last Modified: Sat, 19 Sep 2026 01:41:36 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:d240d554de6d46a56577bbc039f9af7201fce6d10402f4699ed0a71ba92cbdb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 KB (57635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17738c6e3dd6f638f976e926304d7bb66b744695ec76a088af2e8066451132a`

```dockerfile
```

-	Layers:
	-	`sha256:71858fa4197876467be368cc8dfd0765029d42aa46e8ecae06f67c383a0a0628`  
		Last Modified: Sat, 19 Sep 2026 01:41:36 GMT  
		Size: 57.6 KB (57635 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-apache` - linux; 386

```console
$ docker pull joomla@sha256:7f780eecb0dfb2e28aa768e7041509e9efa28321acb24c92a7c1d4b357010c36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.8 MB (276770003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15243c72979e81304f8970d97d56b6698a1573b900995a84549d2055759bd93f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:18:30 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:18:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:18:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:18:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:18:49 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:18:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 19 Sep 2026 00:18:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 19 Sep 2026 00:18:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Sat, 19 Sep 2026 00:18:55 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Sat, 19 Sep 2026 00:18:55 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Sat, 19 Sep 2026 00:18:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:18:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:18:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:18:55 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Sat, 19 Sep 2026 00:18:55 GMT
ENV PHP_VERSION=8.2.33
# Sat, 19 Sep 2026 00:18:55 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Sat, 19 Sep 2026 00:18:55 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Sat, 19 Sep 2026 00:35:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:35:32 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:38:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:38:18 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:38:18 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 00:38:18 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:38:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:38:18 GMT
STOPSIGNAL SIGWINCH
# Sat, 19 Sep 2026 00:38:18 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:38:18 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:38:18 GMT
EXPOSE map[80/tcp:{}]
# Sat, 19 Sep 2026 00:38:18 GMT
CMD ["apache2-foreground"]
# Sat, 19 Sep 2026 01:42:24 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 19 Sep 2026 01:42:24 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 19 Sep 2026 01:42:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:44:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.26; 	pecl install memcached-3.3.0; 	pecl install redis-6.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 19 Sep 2026 01:44:48 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sat, 19 Sep 2026 01:44:48 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Sat, 19 Sep 2026 01:44:48 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Sat, 19 Sep 2026 01:44:48 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 01:44:48 GMT
ENV JOOMLA_VERSION=5.4.8
# Sat, 19 Sep 2026 01:44:48 GMT
ENV JOOMLA_SHA512=84fe04fe224a376209a85f36781c73db7c7787ee572b633ae1b31739af39a1e8e310f10faaac30f8bf8181536dc118182e873143346c4f47cd33b7d785c86b6e
# Sat, 19 Sep 2026 01:44:50 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Sat, 19 Sep 2026 01:44:50 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:44:50 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 19 Sep 2026 01:44:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 01:44:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c393b6f93fb2f2503fecf2e1ce2c633122f6d688bea337e13c524572d1b0675f`  
		Last Modified: Sat, 19 Sep 2026 00:22:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca6454f1c1840d2ad33bcf8df706ab759112126b41f1dde7b8bcff1ce8caa7d`  
		Last Modified: Sat, 19 Sep 2026 00:22:19 GMT  
		Size: 116.1 MB (116148685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef38d4f114c69338128a6914f3d1fa714b5303867fafeb1ee3b5b3c670afd1f`  
		Last Modified: Sat, 19 Sep 2026 00:22:16 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94670f204664428246bd9b349989f56bd0cc06abdcbfab3ff63a7e6a54f16dc`  
		Last Modified: Sat, 19 Sep 2026 00:22:16 GMT  
		Size: 4.5 MB (4471226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47bfbec0a4ef755288870ad10c78df5c9d42df45a090d56fdec89f0e05fdaca9`  
		Last Modified: Sat, 19 Sep 2026 00:22:16 GMT  
		Size: 427.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ce356b6f370e51fbfe7186c0160ca16960f7860640cf50859a990818ef6f1b`  
		Last Modified: Sat, 19 Sep 2026 00:22:17 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b1f42d2ee89a69412848023491ace74f1b50cc13300a242a8cfd478b684ec8`  
		Last Modified: Sat, 19 Sep 2026 00:38:28 GMT  
		Size: 12.3 MB (12331409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8505c78c130d9a98265841c25d8f440c94860f39269a4a36d5c4a1aa3deff10`  
		Last Modified: Sat, 19 Sep 2026 00:38:28 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d10fd9e94a4780326a89cf19ab05b59131d7739fb2c2aec5cb16b35c65a77e`  
		Last Modified: Sat, 19 Sep 2026 00:38:28 GMT  
		Size: 11.7 MB (11736434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad84c18fd920d53eb5a8381c080ab9afea31ed31e202551da40fd7a500550d08`  
		Last Modified: Sat, 19 Sep 2026 00:38:28 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56f5801f07b3b2c6699238466fbc2d29a0c53cd845f2a249ff334a782e9be930`  
		Last Modified: Sat, 19 Sep 2026 00:38:29 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6424cc2823ac06fbfe33dce21ea7d1cf7326f5315429eca135fefd4ef7d9bb1`  
		Last Modified: Sat, 19 Sep 2026 00:38:29 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f46c9f7e511a2095cdbdacb24fd0139c6c5c36b7abad8c2b425ef628544e2c51`  
		Last Modified: Sat, 19 Sep 2026 00:38:30 GMT  
		Size: 888.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c97fc47347c5fb68e4c7680a2d46c8744f65b82cc8e123d2f455c0b89d9d349`  
		Last Modified: Sat, 19 Sep 2026 01:45:00 GMT  
		Size: 27.7 MB (27720859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4be7f818467333e15015864b51b265732c81f1661ddfc947014b00cde6e4ffb9`  
		Last Modified: Sat, 19 Sep 2026 01:45:00 GMT  
		Size: 45.4 MB (45425700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117329c59435e760470e2c887d5771ef1bb1a255de536167591acecd0693b910`  
		Last Modified: Sat, 19 Sep 2026 01:44:59 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fb2d76b9843f183755f574ea05bd6ea86402409217a15881326cdf0938e9d86`  
		Last Modified: Sat, 19 Sep 2026 01:44:59 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca959460600706511e3d944b7c3c3b2da507875d64415c8cc6f8b192736e426`  
		Last Modified: Sat, 19 Sep 2026 01:45:00 GMT  
		Size: 18.8 KB (18794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd7cffc0fae1d280539b8da9b4157c2db84c8e6da33d5e272b6b2afc3405c953`  
		Last Modified: Sat, 19 Sep 2026 01:45:01 GMT  
		Size: 27.6 MB (27565360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573928cfc056f16e755702e69c7dc8ccdc4ef584255056ea270cb20e954c782f`  
		Last Modified: Sat, 19 Sep 2026 01:45:01 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d27cd79ee8bbeba8ad314481bc3a8f73a6d5c90235d770544748c9df40ec1b`  
		Last Modified: Sat, 19 Sep 2026 01:45:01 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:244d7821f96423fa899e2c6e92352fa283da1af5e9fad4ff92574b9573a07e2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 KB (57432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be936c7114d3774130a78fd81a2e11a4888f67672786fe8ee7a4fc1d4638e64a`

```dockerfile
```

-	Layers:
	-	`sha256:0ceb99ac288932129d4a2b72c2769b5a07ed6025307850f144ff38169573c163`  
		Last Modified: Sat, 19 Sep 2026 01:44:58 GMT  
		Size: 57.4 KB (57432 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-apache` - linux; ppc64le

```console
$ docker pull joomla@sha256:68685637cb8ced9ded4e36f3d68d216339f0e76b78b129a800b898919b67b428
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275320481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d416e195eadf518ac82417e5aae71488908c1c7cc1aa4f84117a997ae15040`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:43:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:43:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:43:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:43:06 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:43:06 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 19 Sep 2026 00:43:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 19 Sep 2026 00:46:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Sat, 19 Sep 2026 00:46:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Sat, 19 Sep 2026 00:46:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:46:54 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_VERSION=8.2.33
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Sat, 19 Sep 2026 02:30:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 02:30:32 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:34:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 02:34:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:34:45 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 02:34:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 02:34:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 02:34:45 GMT
STOPSIGNAL SIGWINCH
# Sat, 19 Sep 2026 02:34:45 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:34:45 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 02:34:45 GMT
EXPOSE map[80/tcp:{}]
# Sat, 19 Sep 2026 02:34:45 GMT
CMD ["apache2-foreground"]
# Sat, 19 Sep 2026 10:06:42 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 19 Sep 2026 10:06:42 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 19 Sep 2026 10:06:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 10:12:36 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.26; 	pecl install memcached-3.3.0; 	pecl install redis-6.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 19 Sep 2026 10:12:36 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sat, 19 Sep 2026 10:12:38 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Sat, 19 Sep 2026 10:12:40 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Sat, 19 Sep 2026 10:12:40 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 10:12:40 GMT
ENV JOOMLA_VERSION=5.4.8
# Sat, 19 Sep 2026 10:12:40 GMT
ENV JOOMLA_SHA512=84fe04fe224a376209a85f36781c73db7c7787ee572b633ae1b31739af39a1e8e310f10faaac30f8bf8181536dc118182e873143346c4f47cd33b7d785c86b6e
# Sat, 19 Sep 2026 10:12:46 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Sat, 19 Sep 2026 10:12:47 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 10:12:47 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 19 Sep 2026 10:12:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 10:12:47 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39813ba793924296ebb8a62bded13028ed4037275a1d470f32703e0ccc4e7f4b`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3c40dc91528490cb81f134f22f60fa756eb5d16a8a925f10c3efb88701bc7b`  
		Last Modified: Sat, 19 Sep 2026 00:47:53 GMT  
		Size: 109.6 MB (109611682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94404758e516a5835de93374f7b058e4f7c2d2e9bcacfc223e317bd6d1149f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c37a53d0015d74c7d9d5a1942065b06101aa8d52cfa0fd8d382390a56310f016`  
		Last Modified: Sat, 19 Sep 2026 00:51:49 GMT  
		Size: 4.9 MB (4897066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65218b57ac04ac3c508328839fe82553a76fd174f4df57da2673f69a1df79d2e`  
		Last Modified: Sat, 19 Sep 2026 00:51:49 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d6f87c5441ebb5347e44c7f073ff31b914b3f93e4e68c733858061aae1c965`  
		Last Modified: Sat, 19 Sep 2026 00:51:49 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59030000bb1531d65602c5d51e278c6dd376c6015e90df203d0e93f0ae182f70`  
		Last Modified: Sat, 19 Sep 2026 02:35:08 GMT  
		Size: 12.3 MB (12331599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2134e3f3de92694ebe9ea89501c68b445e98670100690289e774ecf04da0cf3b`  
		Last Modified: Sat, 19 Sep 2026 02:35:07 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1555400071c1e830de4ac473c8d356ba000e7da0798e13638f9d9cf42bcdd836`  
		Last Modified: Sat, 19 Sep 2026 02:35:08 GMT  
		Size: 11.9 MB (11874042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3f13d38df20cd3cb5af487b286bb96e067b4e5a5ff99eb463c2cacfe821851`  
		Last Modified: Sat, 19 Sep 2026 02:35:07 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:166a5bab81f9bf817fcfe359b73cd0a808f4190ab1fcb3280268e130bacfc985`  
		Last Modified: Sat, 19 Sep 2026 02:35:08 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04a4b36030ee51befd4a52b0b797b0d57d85744ce21b08cdd799eb9fa335cd6d`  
		Last Modified: Sat, 19 Sep 2026 02:35:08 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97606b1d29a51f566b9a33838f78ab6524497dd45b4f65cde215fcb7cecd4c2`  
		Last Modified: Sat, 19 Sep 2026 02:35:09 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9695513c0872f4b5ef78fdc3525f0b35fe92f420d842f9b51dcef8eba62f7160`  
		Last Modified: Sat, 19 Sep 2026 10:13:04 GMT  
		Size: 28.4 MB (28419929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c4196772e62870afa2cece9d7c4087fa79853928175c1c2a012daa7b755f417`  
		Last Modified: Sat, 19 Sep 2026 10:13:05 GMT  
		Size: 46.9 MB (46949821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca51f46d1d95c440a4c98e80b11fdbd08e1a7cef67cbfb63b1a8ad76c999858`  
		Last Modified: Sat, 19 Sep 2026 10:13:03 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb0d9e4c117b989e622bc2dce1333633e758006f7abc92cda40dab60e218ee2f`  
		Last Modified: Sat, 19 Sep 2026 10:13:03 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b280a262ebb0bddbd80fc368faeb4ca1bafee0a48ebdba10b7599f120dcfdd`  
		Last Modified: Sat, 19 Sep 2026 10:13:05 GMT  
		Size: 18.8 KB (18798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b40ceaf4ebdbc6aa9425b1c5796f3536e42903a6a9f31f35c09242c640b2c886`  
		Last Modified: Sat, 19 Sep 2026 10:13:05 GMT  
		Size: 27.6 MB (27565147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ef0c8723fbce9a53119f694f489dc1aea7ebc009dfc04519e136b5e58393ab6`  
		Last Modified: Sat, 19 Sep 2026 10:13:06 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebc0211b8726b5cbab490067bf87ec09372757bfdd3aa224a31e1a3b8bce599`  
		Last Modified: Sat, 19 Sep 2026 10:13:06 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:ce36d599a91016f84fb7f4c7781f3bcc483201e48a03929c4dd037aabdac76bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 KB (57516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b3fe61875746a56c9205294204d4f404a35c372ee153ed9b05af129f0838af6`

```dockerfile
```

-	Layers:
	-	`sha256:17f2cf634b8ac50de95c4cc978912d1ae99388348cc4b8b41b74018f462cc53a`  
		Last Modified: Sat, 19 Sep 2026 10:13:03 GMT  
		Size: 57.5 KB (57516 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-apache` - linux; riscv64

```console
$ docker pull joomla@sha256:e9f903e9a22c83201c77e4514f807959444fcf4334ae7fb264bdf92418e65d4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.7 MB (312747834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a1afa498b6cb451b6af39d05368a9ff529ef18656366e652b245c3e18caa61`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:59:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 09:01:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 09:01:42 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 09:01:42 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Aug 2026 09:01:42 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Aug 2026 10:02:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 25 Aug 2026 10:02:26 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 25 Aug 2026 10:02:27 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 10:02:27 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_VERSION=8.2.33
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Wed, 26 Aug 2026 09:29:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 26 Aug 2026 09:29:22 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 10:14:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 26 Aug 2026 10:14:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 10:14:31 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 26 Aug 2026 10:14:32 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 26 Aug 2026 10:14:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 26 Aug 2026 10:14:32 GMT
STOPSIGNAL SIGWINCH
# Wed, 26 Aug 2026 10:14:32 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 10:14:32 GMT
WORKDIR /var/www/html
# Wed, 26 Aug 2026 10:14:32 GMT
EXPOSE map[80/tcp:{}]
# Wed, 26 Aug 2026 10:14:32 GMT
CMD ["apache2-foreground"]
# Sat, 29 Aug 2026 07:03:19 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 29 Aug 2026 07:03:19 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 29 Aug 2026 07:03:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 29 Aug 2026 07:30:39 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.26; 	pecl install memcached-3.3.0; 	pecl install redis-6.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 29 Aug 2026 07:30:41 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sat, 29 Aug 2026 07:30:41 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Sat, 29 Aug 2026 07:30:42 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Sat, 29 Aug 2026 07:30:42 GMT
VOLUME [/var/www/html]
# Sat, 29 Aug 2026 07:30:42 GMT
ENV JOOMLA_VERSION=5.4.8
# Sat, 29 Aug 2026 07:30:42 GMT
ENV JOOMLA_SHA512=84fe04fe224a376209a85f36781c73db7c7787ee572b633ae1b31739af39a1e8e310f10faaac30f8bf8181536dc118182e873143346c4f47cd33b7d785c86b6e
# Sat, 29 Aug 2026 07:30:55 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Sat, 29 Aug 2026 07:30:56 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 29 Aug 2026 07:30:56 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 29 Aug 2026 07:30:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Aug 2026 07:30:56 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ed1f058e041d97ac1f23c511dfbdcbda29ca286b8f0506fbf2a4b5b2bcf462`  
		Last Modified: Tue, 25 Aug 2026 10:00:12 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688c7db522e3fe4f249a63f14f9c5d5e910778c5bda8855e2c1fb2158e676de0`  
		Last Modified: Tue, 25 Aug 2026 10:00:38 GMT  
		Size: 146.6 MB (146592877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f643464284211cc08fd66fb85b4ffba1378df3b209243d0ce8e08b11652df73`  
		Last Modified: Tue, 25 Aug 2026 10:00:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c5a9194fcb1259f9ca52ca755bc0b94019ef1c136445faf6bfa714ba3174d9f`  
		Last Modified: Tue, 25 Aug 2026 10:58:30 GMT  
		Size: 4.0 MB (4038964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9412a00bd6ea5f1d96d4cbf882ee061353d2819ec06c32fccdb423d81f21ab6c`  
		Last Modified: Tue, 25 Aug 2026 10:58:29 GMT  
		Size: 439.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cfdcc7c18452e521252f2720b790a390be42a44250c01c56a49af9794fd1fc`  
		Last Modified: Tue, 25 Aug 2026 10:58:29 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e00f512302ebd58c581541f91d1d8fb32aa9b716a28c7b7d953ab7e4cfadd7c`  
		Last Modified: Wed, 26 Aug 2026 10:17:40 GMT  
		Size: 12.3 MB (12347676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe17cc6912725164eb19a75a4d8558501a451d4835e819d5b67766b8e84df2e1`  
		Last Modified: Wed, 26 Aug 2026 10:17:36 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a2f7c80bcdf8d2f46756fdc817f045237bd291bfe765b0c97edd4201ac3e74b`  
		Last Modified: Wed, 26 Aug 2026 10:17:40 GMT  
		Size: 13.8 MB (13829523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2bb908d44f6f293d085adf8e5f2101b4a0e2e1aa5defebafcadefa734d5b488`  
		Last Modified: Wed, 26 Aug 2026 10:17:36 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c66accea49b5c0c8e6581a6268e9156658fb4d1ede0e1b255ff9622201f6e952`  
		Last Modified: Wed, 26 Aug 2026 10:17:38 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4132ce2b466f2659f6e51af824a17c3fb6c287514149315ef2f309dc6089f1b9`  
		Last Modified: Wed, 26 Aug 2026 10:17:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cf10b5e6046f8166206d608501ae97f17f5d1347e495f0c6d362fb8de56f24`  
		Last Modified: Wed, 26 Aug 2026 10:17:40 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ae0d0a6bfed048a7234e72c9bf88720166de4de85b702c4fdc490f6a6f01d1`  
		Last Modified: Sat, 29 Aug 2026 07:33:16 GMT  
		Size: 27.2 MB (27211900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22bc2aa4aa6818f8621a8aa8bd037aaea5b120050108b3950a26a5891e6f0c21`  
		Last Modified: Sat, 29 Aug 2026 07:33:21 GMT  
		Size: 52.8 MB (52834735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6182550462c99b01373b3783d0827beb9ef816931f79584355f55968a695192`  
		Last Modified: Sat, 29 Aug 2026 07:33:06 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61ddd9dd841cb7a5c169a1f3b08f9c6a9a7ea7014abe3b0bb3189b3edea021c`  
		Last Modified: Sat, 29 Aug 2026 07:33:06 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c50af4f179a17267665193ce55c7202972e9a1795fa3d6d1521657d64a5cf83e`  
		Last Modified: Sat, 29 Aug 2026 07:33:08 GMT  
		Size: 18.8 KB (18807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772d42114645683b01df89654e7ac200e341fee7aaa7300d55da1c5a806c6bc3`  
		Last Modified: Sat, 29 Aug 2026 07:33:18 GMT  
		Size: 27.6 MB (27565703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752d19f87dc917befeabc6bb3bad24497edde55cd794b94f94de69ee143a36f7`  
		Last Modified: Sat, 29 Aug 2026 07:33:10 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180489f044916d8d07de29db6b6c4f417052f2fcd5871819c95ff8c169b57fc9`  
		Last Modified: Sat, 29 Aug 2026 07:33:13 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:41f8b26a15f0f6b7fd5dbabe0a0b04e9fb116171f461c69b2f2700762fdb71d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 KB (57517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731a2112ebd7e3a54c528840edf35468c64656ee52598299103989ba778628c8`

```dockerfile
```

-	Layers:
	-	`sha256:247957d9dee2219d43b7bbb571f01f162279185415667674eb771cb6bd502385`  
		Last Modified: Sat, 29 Aug 2026 07:33:05 GMT  
		Size: 57.5 KB (57517 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-apache` - linux; s390x

```console
$ docker pull joomla@sha256:c9cffd54f885d27456991d37194a6a11f4e997dbced50823cf7ed25f8c0de6b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250323370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d3f54be2ec42c94de4570cd6ea56ff8edd35861012fc1c87c8ba391d5c9892`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:17:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:17:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:17:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:17:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:17:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:17:15 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 19 Sep 2026 00:17:15 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 19 Sep 2026 00:37:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Sat, 19 Sep 2026 00:37:12 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Sat, 19 Sep 2026 00:37:13 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:37:13 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_VERSION=8.2.33
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Sat, 19 Sep 2026 00:37:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:37:20 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:39:34 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:34 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 00:39:34 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:39:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:39:34 GMT
STOPSIGNAL SIGWINCH
# Sat, 19 Sep 2026 00:39:34 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:34 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:39:34 GMT
EXPOSE map[80/tcp:{}]
# Sat, 19 Sep 2026 00:39:34 GMT
CMD ["apache2-foreground"]
# Sat, 19 Sep 2026 01:48:30 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 19 Sep 2026 01:48:30 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 19 Sep 2026 01:48:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:50:14 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.26; 	pecl install memcached-3.3.0; 	pecl install redis-6.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 19 Sep 2026 01:50:15 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sat, 19 Sep 2026 01:50:15 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Sat, 19 Sep 2026 01:50:15 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Sat, 19 Sep 2026 01:50:15 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 01:50:15 GMT
ENV JOOMLA_VERSION=5.4.8
# Sat, 19 Sep 2026 01:50:15 GMT
ENV JOOMLA_SHA512=84fe04fe224a376209a85f36781c73db7c7787ee572b633ae1b31739af39a1e8e310f10faaac30f8bf8181536dc118182e873143346c4f47cd33b7d785c86b6e
# Sat, 19 Sep 2026 01:50:16 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Sat, 19 Sep 2026 01:50:16 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:50:16 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 19 Sep 2026 01:50:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 01:50:16 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c0e61c94591c110f2e62332ff3f2cdadfe5499c360b4cf071c1ddbcd39cd9b`  
		Last Modified: Sat, 19 Sep 2026 00:19:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7161f69fce6836e8e60ba148679d3d27df97711b7f3276ec70bcbad124ab0981`  
		Last Modified: Sat, 19 Sep 2026 00:19:51 GMT  
		Size: 92.6 MB (92574270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0e8f0efb80a2928aaaaa19f9bc22c9f004fd9e4493bb4361e7ec1db1597ca3`  
		Last Modified: Sat, 19 Sep 2026 00:19:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f9a41fca30b5b548987e8d6ea11235385a4e3ad5e1c5d5b392ce66fddd4a1c`  
		Last Modified: Sat, 19 Sep 2026 00:39:50 GMT  
		Size: 4.3 MB (4338418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb9bc67db22602ff266a5a2240367fdbf7b94dbae4005f6923348875661b685`  
		Last Modified: Sat, 19 Sep 2026 00:39:50 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b32d6a0549be326d1e79a4c235f753a7cde20927f7ea47500f0191d3fe978c66`  
		Last Modified: Sat, 19 Sep 2026 00:39:50 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff39e234f4e3429aa6717587d613fbc4d3e445d63925f2e76e45e770fb31fad`  
		Last Modified: Sat, 19 Sep 2026 00:39:50 GMT  
		Size: 12.3 MB (12330747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8429fd84fffe2e36a3df18d1f18195491e721be7ca97aedd13862f3e4dc0178`  
		Last Modified: Sat, 19 Sep 2026 00:39:51 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9dbbd17024595c715c0ac326bb5d8d8df398851e9a4f969d02cc0bbd8c2877d`  
		Last Modified: Sat, 19 Sep 2026 00:39:51 GMT  
		Size: 11.3 MB (11328060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b3fd6c8fbcdcb0c4d16925cc90e036227c108091e6b2bfdb43d9de4d309dccf`  
		Last Modified: Sat, 19 Sep 2026 00:39:51 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc5531efcde09833c57eb61350f7e132e4e8fcc20ce4a321385fdf2cdc674d23`  
		Last Modified: Sat, 19 Sep 2026 00:39:51 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8207d3230b00714071e7642099620c785f0c1afe604b9649248c9d44ee9a3c9`  
		Last Modified: Sat, 19 Sep 2026 00:39:52 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4845ee5c1193c5be8bafc08aa6592b9408275897520405c5d3ec5dc054d6e72d`  
		Last Modified: Sat, 19 Sep 2026 00:39:52 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2ca35b56790dea2e48e98a5b5f20ee6c421d0a274b28aaa29510fc3b2151b8`  
		Last Modified: Sat, 19 Sep 2026 01:50:30 GMT  
		Size: 27.6 MB (27551572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b08aa841a223d9ffde7d593da4803a7af30fe78b2765af5f3988072ef96f8a67`  
		Last Modified: Sat, 19 Sep 2026 01:50:30 GMT  
		Size: 44.7 MB (44706020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4ae9fcd9cc38f05c72a491c4801acccf4463c366e55d76c7cd2da2b6385b0d`  
		Last Modified: Sat, 19 Sep 2026 01:50:29 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f19e1cd3254c81a48a59cf05a22e09e992fef4847de09d929bbf0bbf459270`  
		Last Modified: Sat, 19 Sep 2026 01:50:29 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875786aae77fd848ffd3065ef99ddb92a7fd8f63ed484b5d1500aec439053dc4`  
		Last Modified: Sat, 19 Sep 2026 01:50:30 GMT  
		Size: 18.8 KB (18799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb4963cbbc99ecadc988121f56c52548cadbdf37d1b3205394d982724366a78`  
		Last Modified: Sat, 19 Sep 2026 01:50:30 GMT  
		Size: 27.6 MB (27565173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d64af4dcf581d95b5368dfe9ab6b6e9bd2a03b3c08571316c658c3e957437ae`  
		Last Modified: Sat, 19 Sep 2026 01:50:31 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf64b38d107ca3c78d7a5fc0f081c8faf3bad254b8fa525b714b5fdaa4760b`  
		Last Modified: Sat, 19 Sep 2026 01:50:31 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:a03f8e8ededeb3a9fab4c2e65a15a73db1e444ec4b61b8b4b1219eac2689df4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 KB (57460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae11340b8392fb3c57bb136c4bb85808a4ed74ca309f57298d7f0779e30749d6`

```dockerfile
```

-	Layers:
	-	`sha256:15c1d832fdd9a25da9b9762564a4ddc2b61046279aaa2fdcce01be0be86236b6`  
		Last Modified: Sat, 19 Sep 2026 01:50:29 GMT  
		Size: 57.5 KB (57460 bytes)  
		MIME: application/vnd.in-toto+json
