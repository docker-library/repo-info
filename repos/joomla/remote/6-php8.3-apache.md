## `joomla:6-php8.3-apache`

```console
$ docker pull joomla@sha256:429d121aeed01a78f3c5c272ad56579de0a28d06f340b861a56318aa861581a7
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
$ docker pull joomla@sha256:a7ad898b39fafa8384fa4a1c0bc3b739a2d6971dc7f896dce4ecc87e883aec58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.4 MB (280428415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:193062f735e1cdbcf5f48953fb279203ab65406aa46f8bc534f7c68a25f48531`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:23:18 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 05 Aug 2026 00:23:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Aug 2026 00:23:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 00:23:35 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Aug 2026 00:23:35 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 05 Aug 2026 00:23:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Aug 2026 00:23:35 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Aug 2026 00:30:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 05 Aug 2026 00:30:24 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 05 Aug 2026 00:30:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 05 Aug 2026 00:30:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 00:30:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 00:30:25 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 05 Aug 2026 00:30:25 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 05 Aug 2026 00:30:25 GMT
ENV PHP_VERSION=8.3.33
# Wed, 05 Aug 2026 00:30:25 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Wed, 05 Aug 2026 00:30:25 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Wed, 05 Aug 2026 00:30:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 05 Aug 2026 00:30:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:33:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 05 Aug 2026 00:33:08 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:33:08 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 05 Aug 2026 00:33:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 05 Aug 2026 00:33:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Aug 2026 00:33:08 GMT
STOPSIGNAL SIGWINCH
# Wed, 05 Aug 2026 00:33:08 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:33:08 GMT
WORKDIR /var/www/html
# Wed, 05 Aug 2026 00:33:08 GMT
EXPOSE map[80/tcp:{}]
# Wed, 05 Aug 2026 00:33:08 GMT
CMD ["apache2-foreground"]
# Wed, 19 Aug 2026 20:52:38 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Wed, 19 Aug 2026 20:52:38 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 19 Aug 2026 20:52:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:54:29 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 19 Aug 2026 20:54:29 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 19 Aug 2026 20:54:30 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Wed, 19 Aug 2026 20:54:30 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 19 Aug 2026 20:54:30 GMT
VOLUME [/var/www/html]
# Wed, 19 Aug 2026 20:54:30 GMT
ENV JOOMLA_VERSION=6.1.3
# Wed, 19 Aug 2026 20:54:30 GMT
ENV JOOMLA_SHA512=0378709fa1ebf06de26e32eeb635c46f0aa05971d206580a00dcde8038bebc6a4e04158e2e43a8f07edecffd62bfe2e07fe3869b8fddab124875c13391052f55
# Wed, 19 Aug 2026 20:54:31 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Wed, 19 Aug 2026 20:54:31 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 19 Aug 2026 20:54:31 GMT
COPY makedb.php /makedb.php # buildkit
# Wed, 19 Aug 2026 20:54:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Aug 2026 20:54:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0494d45beee55eb7cb3fb121e758be3624a01e3bdcea0155bdf2162a63b106b1`  
		Last Modified: Wed, 05 Aug 2026 00:26:32 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e3a14f5e693c6d0786534c1e645ada521f063b94cc3b30d6a25db1ab4af945`  
		Last Modified: Wed, 05 Aug 2026 00:26:35 GMT  
		Size: 117.8 MB (117839001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfabad6b2b28c90b0a67ca2d04ab9bbd17ad4fb6964825ce6927661f60df0fd`  
		Last Modified: Wed, 05 Aug 2026 00:26:32 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb855eea19d769303adc6828b6f444a68765365ada7b61cc09662cf802910394`  
		Last Modified: Wed, 05 Aug 2026 00:33:18 GMT  
		Size: 4.2 MB (4237237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84afdefd22c9c2ddc5e8da5c849c6bef42959d52f9277625d40f52f2dabd171d`  
		Last Modified: Wed, 05 Aug 2026 00:33:18 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4213aad90eb99f68945da81054502f6f0fdf058e19cec89196da2493b786a2e`  
		Last Modified: Wed, 05 Aug 2026 00:33:18 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:329c983b5eca641175515161f5e2d0990e0fa69eb2a23b3c13fb6583e381f8f4`  
		Last Modified: Wed, 05 Aug 2026 00:33:19 GMT  
		Size: 12.8 MB (12779577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9fcf2751ddcfaeabeed1706fd1effb3fac89376bdc67da4583b61420fae9a12`  
		Last Modified: Wed, 05 Aug 2026 00:33:19 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c04ad35fdccc201f4cb45a3ccfe82c738e374bae5a0eeb64c60c7b174ae657a7`  
		Last Modified: Wed, 05 Aug 2026 00:33:20 GMT  
		Size: 11.7 MB (11716000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f76894aae6ea6dd9fbf9b7945fb23bcf6882c24504818b42abf66d0df4296e8`  
		Last Modified: Wed, 05 Aug 2026 00:33:20 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f0f7142dcd02c7c7ae3c004df8a020f1ea27574408526e8d83e44cbd90bdfd3`  
		Last Modified: Wed, 05 Aug 2026 00:33:20 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d1a6e64d6a18201579f93164e7ff50f73a91e2fe3f45fd471f172847e6a23b`  
		Last Modified: Wed, 05 Aug 2026 00:33:20 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4401218f47e8080be469d19d3953e7c3a5402ac6b0208924201705e5d12a9507`  
		Last Modified: Wed, 05 Aug 2026 00:33:21 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9eb6d37c328a4d2f5df531fcc4a8e85ee7ae6f421b8f2240086b2f322caa5de`  
		Last Modified: Wed, 19 Aug 2026 20:54:41 GMT  
		Size: 27.3 MB (27274637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4fb5aacbfc8cf5f2013519bdc98deaba001a9815e551c2a85f2681c774fb7e`  
		Last Modified: Wed, 19 Aug 2026 20:54:42 GMT  
		Size: 47.9 MB (47917345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8440b61128968c075e5835965b5f737308c0645a106fcc78dd863d4740118a67`  
		Last Modified: Wed, 19 Aug 2026 20:54:40 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9647459f0b3b5c3378889dc6a1eeea4a855d5d385f8dd000d63eeb83cc0ae6`  
		Last Modified: Wed, 19 Aug 2026 20:54:40 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa0237b442bd8d0e44e8f839181f2c7b3c35aeb768ea5d5d777a50d7b0c70aa`  
		Last Modified: Wed, 19 Aug 2026 20:54:41 GMT  
		Size: 18.8 KB (18801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e230f80e70a5856eae0d341726856075097ef732fd2213950a9bf426405c6d49`  
		Last Modified: Wed, 19 Aug 2026 20:54:42 GMT  
		Size: 28.9 MB (28853889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53fde95c15a542a10aee51831263fa77636f7af1582ba32bde4f38b515aaa279`  
		Last Modified: Wed, 19 Aug 2026 20:54:42 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c348ed21e31fa8101032dca4fb889d1654e78a7a7c26bad5853f9605628c6f`  
		Last Modified: Wed, 19 Aug 2026 20:54:42 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.3-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:a8cca066c31c71e36543f071d5bcf19a25bd1b6b65135ec1bd0bdc986aff5a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 KB (57781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04dd82207ce36b515784fc1bfebe4b9588f9092e07c5c982a1449a7a3b08d828`

```dockerfile
```

-	Layers:
	-	`sha256:9a6eb0d3e6626c69c28f106ebf3c737870c8be19dc890d78617470086f45ba31`  
		Last Modified: Wed, 19 Aug 2026 20:54:39 GMT  
		Size: 57.8 KB (57781 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.3-apache` - linux; arm variant v5

```console
$ docker pull joomla@sha256:b00a7fa1f9b7fadcade7022cb74f6f81144c8238ee9fd5533acd9e37b463c5e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251544544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:869ad57806045b8314172767d851d771c8d7b5e153246d874311f0184816634e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:14:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 05 Aug 2026 00:14:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Aug 2026 00:14:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 00:14:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Aug 2026 00:14:51 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 05 Aug 2026 00:14:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Aug 2026 00:14:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Aug 2026 00:15:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 05 Aug 2026 00:15:02 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 05 Aug 2026 00:15:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 05 Aug 2026 00:15:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 00:15:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 00:15:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 05 Aug 2026 00:15:02 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 05 Aug 2026 00:15:02 GMT
ENV PHP_VERSION=8.3.33
# Wed, 05 Aug 2026 00:15:02 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Wed, 05 Aug 2026 00:15:02 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Wed, 05 Aug 2026 00:15:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 05 Aug 2026 00:15:15 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:18:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 05 Aug 2026 00:18:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:18:15 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 05 Aug 2026 00:18:16 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 05 Aug 2026 00:18:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Aug 2026 00:18:16 GMT
STOPSIGNAL SIGWINCH
# Wed, 05 Aug 2026 00:18:16 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:18:16 GMT
WORKDIR /var/www/html
# Wed, 05 Aug 2026 00:18:16 GMT
EXPOSE map[80/tcp:{}]
# Wed, 05 Aug 2026 00:18:16 GMT
CMD ["apache2-foreground"]
# Wed, 19 Aug 2026 20:53:23 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Wed, 19 Aug 2026 20:53:23 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 19 Aug 2026 20:53:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:56:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 19 Aug 2026 20:56:24 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 19 Aug 2026 20:56:24 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Wed, 19 Aug 2026 20:56:24 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 19 Aug 2026 20:56:24 GMT
VOLUME [/var/www/html]
# Wed, 19 Aug 2026 20:56:24 GMT
ENV JOOMLA_VERSION=6.1.3
# Wed, 19 Aug 2026 20:56:24 GMT
ENV JOOMLA_SHA512=0378709fa1ebf06de26e32eeb635c46f0aa05971d206580a00dcde8038bebc6a4e04158e2e43a8f07edecffd62bfe2e07fe3869b8fddab124875c13391052f55
# Wed, 19 Aug 2026 20:56:26 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Wed, 19 Aug 2026 20:56:26 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 19 Aug 2026 20:56:26 GMT
COPY makedb.php /makedb.php # buildkit
# Wed, 19 Aug 2026 20:56:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Aug 2026 20:56:26 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b90bfa38f83d14ce94f5a1bc9b1223b73e41d427d12849a110c2466d749e99e`  
		Last Modified: Wed, 05 Aug 2026 00:18:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f161af3d188f3bdb42ee0da5afce12e369ea981963d6bfffe7568f908b4af194`  
		Last Modified: Wed, 05 Aug 2026 00:18:38 GMT  
		Size: 94.9 MB (94887183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463ba000683d1af85c12b6d0575dc2c2b1b9cdc5ee505463d2eaf20668596544`  
		Last Modified: Wed, 05 Aug 2026 00:18:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dcf8e50af47b54c55f96922381995acc3377015fececa4fc1a3d3dd8af5c1a9`  
		Last Modified: Wed, 05 Aug 2026 00:18:36 GMT  
		Size: 4.1 MB (4097207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b949359cc0cce08a74d6076b6997bda032591dacb87d648f3642b4990f7a49`  
		Last Modified: Wed, 05 Aug 2026 00:18:37 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f7845e60a559ad511c049dabdcd5a79bbe3492a768cb1831bddbf54e5729e9`  
		Last Modified: Wed, 05 Aug 2026 00:18:37 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e85e7e906b3c84da19fb3196467472e3457954e25c553bd9a549d20817d988`  
		Last Modified: Wed, 05 Aug 2026 00:18:37 GMT  
		Size: 12.8 MB (12777017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a24f7e8c9eb281ee42fe7bea70fa0a1301b74fdd872a75386d05882d6da804bf`  
		Last Modified: Wed, 05 Aug 2026 00:18:38 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1789a2810cda89c26a8df1f9fe039acabbd1bf5b8892f6d62bb6ce8242548040`  
		Last Modified: Wed, 05 Aug 2026 00:18:38 GMT  
		Size: 10.6 MB (10603370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4e529683fe9596a84465383a771bf5ee96bc9921e023fca5e8b07954c56b196`  
		Last Modified: Wed, 05 Aug 2026 00:18:39 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca67b580542b7468307932d589f3b86d3fb8a1a26dccf8cca494c81dbbc04306`  
		Last Modified: Wed, 05 Aug 2026 00:18:39 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b095828455c7127c35206f6990804f60745e4878246690dc1632a40d29c07b`  
		Last Modified: Wed, 05 Aug 2026 00:18:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1550dfc8dac31cb849c1319c2bbf4fd861db244399f13012b49208425b743d4`  
		Last Modified: Wed, 05 Aug 2026 00:18:40 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53a7fbe78a85c1e00ee67870aa507b5d0199c3ff93a849090f0fbe2dcb9ac03f`  
		Last Modified: Wed, 19 Aug 2026 20:56:36 GMT  
		Size: 26.7 MB (26710519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e8bcbbdf1f1984ac5ecedfb51e33793b53868f2a1cc074cf5cdc51d86ccb7d5`  
		Last Modified: Wed, 19 Aug 2026 20:56:37 GMT  
		Size: 45.6 MB (45630726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:563497b12eb63546b35338acfa787368e8c9838b1ad49915a87de8256fdb3015`  
		Last Modified: Wed, 19 Aug 2026 20:56:35 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b167d05be6a15cef8605c1480fdde1c1a803266c3c53ca3cf05f6b1253cfe78`  
		Last Modified: Wed, 19 Aug 2026 20:56:35 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00cab64c2e71d3dfd4c4acf4906dd30d5779d80cc19f52e58a6251f20589d10a`  
		Last Modified: Wed, 19 Aug 2026 20:56:37 GMT  
		Size: 18.8 KB (18795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f0a0ef2647f611e0b4500d7c6c887e879a692e5e2f0393b761d53770e62689f`  
		Last Modified: Wed, 19 Aug 2026 20:56:37 GMT  
		Size: 28.9 MB (28853853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c92f185907ba298f9e2e8dc7da2d6ff3ab79c5e0171dcbea84feb91c17e8b4a5`  
		Last Modified: Wed, 19 Aug 2026 20:55:49 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdd9141f332183fc8d24fbada164de95f5962606f0f32670194bd7e09ae0d59`  
		Last Modified: Wed, 19 Aug 2026 20:55:49 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.3-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:5de91951525249dbc5ba1b375afa966b5104745edb335923632540ab138bbb4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 KB (57917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82b7705a564b8bae8046fda2035f8e22c4527bcf49ef0858274174d303990a09`

```dockerfile
```

-	Layers:
	-	`sha256:b01a80cf69eba4cf8c76ef9c7ae86bb1db6bcdf2f837bf834b5497af8533b0b8`  
		Last Modified: Wed, 19 Aug 2026 20:56:35 GMT  
		Size: 57.9 KB (57917 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.3-apache` - linux; arm variant v7

```console
$ docker pull joomla@sha256:4bc10a02aeed76a1cb4e2461da49d08781ce412bec7951f83b85f37ed1aee866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237662965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:851a22605c18223223c8b77aa96ec903359210674bc300f620294b746668f159`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:55:17 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 05 Aug 2026 00:55:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Aug 2026 00:55:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 00:55:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Aug 2026 00:55:36 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 05 Aug 2026 00:55:36 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Aug 2026 00:55:36 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Aug 2026 00:55:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 05 Aug 2026 00:55:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 05 Aug 2026 00:55:44 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 05 Aug 2026 00:55:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 00:55:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 00:55:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 05 Aug 2026 00:55:44 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 05 Aug 2026 00:55:44 GMT
ENV PHP_VERSION=8.3.33
# Wed, 05 Aug 2026 00:55:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Wed, 05 Aug 2026 00:55:44 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Wed, 05 Aug 2026 00:55:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 05 Aug 2026 00:55:54 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:58:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 05 Aug 2026 00:58:31 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:58:31 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 05 Aug 2026 00:58:31 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 05 Aug 2026 00:58:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Aug 2026 00:58:31 GMT
STOPSIGNAL SIGWINCH
# Wed, 05 Aug 2026 00:58:31 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:58:31 GMT
WORKDIR /var/www/html
# Wed, 05 Aug 2026 00:58:31 GMT
EXPOSE map[80/tcp:{}]
# Wed, 05 Aug 2026 00:58:31 GMT
CMD ["apache2-foreground"]
# Wed, 19 Aug 2026 20:54:08 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Wed, 19 Aug 2026 20:54:08 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 19 Aug 2026 20:54:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:57:04 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 19 Aug 2026 20:57:05 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 19 Aug 2026 20:57:05 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Wed, 19 Aug 2026 20:57:05 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 19 Aug 2026 20:57:05 GMT
VOLUME [/var/www/html]
# Wed, 19 Aug 2026 20:57:05 GMT
ENV JOOMLA_VERSION=6.1.3
# Wed, 19 Aug 2026 20:57:05 GMT
ENV JOOMLA_SHA512=0378709fa1ebf06de26e32eeb635c46f0aa05971d206580a00dcde8038bebc6a4e04158e2e43a8f07edecffd62bfe2e07fe3869b8fddab124875c13391052f55
# Wed, 19 Aug 2026 20:57:06 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Wed, 19 Aug 2026 20:57:06 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 19 Aug 2026 20:57:06 GMT
COPY makedb.php /makedb.php # buildkit
# Wed, 19 Aug 2026 20:57:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Aug 2026 20:57:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51756421088f5637325346689fcd6ddd32466e52e313685bc63d3635411572b`  
		Last Modified: Wed, 05 Aug 2026 00:58:48 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c9d9d9ee5f085fd47c4ff0b2cf5f32ccc46c80e0e9c25a49890257b228eedd1`  
		Last Modified: Wed, 05 Aug 2026 00:58:50 GMT  
		Size: 86.3 MB (86258191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c41335b9c697445aaf7d9b64afd3bc19f1c85ffc40b504445c2cd94adfcc024`  
		Last Modified: Wed, 05 Aug 2026 00:58:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068621bab92dc5c52c860414606d3a2553cfbed50b00d0c57706d3b309aaaac6`  
		Last Modified: Wed, 05 Aug 2026 00:58:48 GMT  
		Size: 3.8 MB (3762597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a16d2d79b170806790e0afa13fe9c08f3fd65ea8ebc98790c88a20c6c97cec3`  
		Last Modified: Wed, 05 Aug 2026 00:58:49 GMT  
		Size: 436.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e63d0e2cafef08240cd191ffd3da87569996ba2ba9bed01adf193607486ce30`  
		Last Modified: Wed, 05 Aug 2026 00:58:49 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64814fb7a321245e98aca5cd95679188f9484bee6009b1e3f8804963919c404c`  
		Last Modified: Wed, 05 Aug 2026 00:58:50 GMT  
		Size: 12.8 MB (12777122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea77ea13af351b956d393ec349cd77fcaffe0e10e5dc25a2b94c484f765575c`  
		Last Modified: Wed, 05 Aug 2026 00:58:50 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:528edc4990fa403882ad86063b60816c3378bbd5ca5e8db6a576bd39d44cd18d`  
		Last Modified: Wed, 05 Aug 2026 00:58:51 GMT  
		Size: 10.1 MB (10074046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:185dc11c4c1ba11ffff5acc8b6ecc12024c8a420f8fdc10ea826b3a53dab126f`  
		Last Modified: Wed, 05 Aug 2026 00:58:51 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fdd9d81ff6f26435d9530c8e6e56b86b186d07c06edafe174f1a5abe7c53fbe`  
		Last Modified: Wed, 05 Aug 2026 00:58:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7936ac55d9f979a2a110abeb011a25ddf35b79aceb9010e4d019ce39d211e98`  
		Last Modified: Wed, 05 Aug 2026 00:58:52 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6137a555c12336a9e667d4169bd66df18b5be4c71f8b1719699a978dd471e46a`  
		Last Modified: Wed, 05 Aug 2026 00:58:52 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14317aae4cb4b72b214d5e6cdb542d7f6fba5ef75a99b4edee5a01402b437efd`  
		Last Modified: Wed, 19 Aug 2026 20:57:16 GMT  
		Size: 25.9 MB (25925660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb6151d6365c8520e769ecec975a2d0f81b9c70785e29132746c4ec7409a8a0d`  
		Last Modified: Wed, 19 Aug 2026 20:57:17 GMT  
		Size: 43.8 MB (43775124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d686dacf6aa0f5b76c723e5fed400ddd724d388d05172367104a550de0801ca3`  
		Last Modified: Wed, 19 Aug 2026 20:57:15 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90899d901202f873ba2fc64314817ff6e63d80213a0bba91d2320ac69fa09cd`  
		Last Modified: Wed, 19 Aug 2026 20:57:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a7540b71ac1764d483f1a0ed7f35b7d8e413dc1608f7e8f3a31ad8703d53a77`  
		Last Modified: Wed, 19 Aug 2026 20:57:16 GMT  
		Size: 18.8 KB (18798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc1d308b76895875be2ced28168646b33bf3c4ec7c255174726149429b43731`  
		Last Modified: Wed, 19 Aug 2026 20:57:17 GMT  
		Size: 28.9 MB (28853889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1ac58f18db6fd56c3153dce933799fdef3de0febec996c0779279914eb9890`  
		Last Modified: Wed, 19 Aug 2026 20:56:41 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14466a355b85c8deed75fd12561305e4af941e2918056459550247d5d27e4eed`  
		Last Modified: Wed, 19 Aug 2026 20:56:41 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.3-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:43152fc82ff7e4f6091233ab315735f6dd349280b4e0867d674af2ddbc477287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 KB (57917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1e0ce3404f1fb54d57014880e0f9289c8e1a6024d046c29fe7032846915ae0`

```dockerfile
```

-	Layers:
	-	`sha256:be2c04a01f2c54d876b06b7142dfe54da8331e3c79839d3535695431c2e5a95f`  
		Last Modified: Wed, 19 Aug 2026 20:57:14 GMT  
		Size: 57.9 KB (57917 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.3-apache` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:76c1afb250fa600fe489505bc46b2c4e053fad8dec7279693d911bcf6e3ba008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272278182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5cbd50c9bc432c1835a37ded26da14cf73810d87e03b8bce29195afdaa63546`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:26:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 05 Aug 2026 00:26:53 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Aug 2026 00:26:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 00:26:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Aug 2026 00:26:54 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 05 Aug 2026 00:26:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Aug 2026 00:26:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Aug 2026 00:30:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 05 Aug 2026 00:30:53 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 05 Aug 2026 00:30:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 05 Aug 2026 00:30:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 00:30:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 00:30:53 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 05 Aug 2026 00:30:53 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 05 Aug 2026 00:30:53 GMT
ENV PHP_VERSION=8.3.33
# Wed, 05 Aug 2026 00:30:53 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Wed, 05 Aug 2026 00:30:53 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Wed, 05 Aug 2026 00:31:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 05 Aug 2026 00:31:02 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:34:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 05 Aug 2026 00:34:54 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:34:54 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 05 Aug 2026 00:34:54 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 05 Aug 2026 00:34:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Aug 2026 00:34:54 GMT
STOPSIGNAL SIGWINCH
# Wed, 05 Aug 2026 00:34:54 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:34:54 GMT
WORKDIR /var/www/html
# Wed, 05 Aug 2026 00:34:54 GMT
EXPOSE map[80/tcp:{}]
# Wed, 05 Aug 2026 00:34:54 GMT
CMD ["apache2-foreground"]
# Wed, 19 Aug 2026 20:52:38 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Wed, 19 Aug 2026 20:52:38 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 19 Aug 2026 20:52:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:55:08 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 19 Aug 2026 20:55:08 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 19 Aug 2026 20:55:08 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Wed, 19 Aug 2026 20:55:09 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 19 Aug 2026 20:55:09 GMT
VOLUME [/var/www/html]
# Wed, 19 Aug 2026 20:55:09 GMT
ENV JOOMLA_VERSION=6.1.3
# Wed, 19 Aug 2026 20:55:09 GMT
ENV JOOMLA_SHA512=0378709fa1ebf06de26e32eeb635c46f0aa05971d206580a00dcde8038bebc6a4e04158e2e43a8f07edecffd62bfe2e07fe3869b8fddab124875c13391052f55
# Wed, 19 Aug 2026 20:55:10 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Wed, 19 Aug 2026 20:55:10 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 19 Aug 2026 20:55:10 GMT
COPY makedb.php /makedb.php # buildkit
# Wed, 19 Aug 2026 20:55:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Aug 2026 20:55:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5cf6a0b94d219e2dc235ddffead751420b24d3988b2366fe625fbcfca859af8`  
		Last Modified: Wed, 05 Aug 2026 00:30:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:506d964adc354df4655dc9bb0eb6fcad1ba889a3559298c1f0ebc2fa7ea96b98`  
		Last Modified: Wed, 05 Aug 2026 00:30:39 GMT  
		Size: 110.2 MB (110170491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbf313da61c8ce60f846227e4fffcba14aca883360b754479c0acf89215ab55`  
		Last Modified: Wed, 05 Aug 2026 00:30:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c18951d62c2bb40c97e9337a3ebe3a0f310d2aa164a7a76ce8b17e42f2d379`  
		Last Modified: Wed, 05 Aug 2026 00:35:06 GMT  
		Size: 4.3 MB (4312831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e396d3c36252c73cc854308f2d867a167a25cc5ef16db7792d8b57a1976b1e89`  
		Last Modified: Wed, 05 Aug 2026 00:35:06 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87077ed91aa2d1bdf0bf2565030582fed440535127bc8682b1e67a58562aed48`  
		Last Modified: Wed, 05 Aug 2026 00:35:06 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1686d8fd9402701d2a1370a646182c3c46e5845b9ae6752479d84504b3d5eab2`  
		Last Modified: Wed, 05 Aug 2026 00:35:06 GMT  
		Size: 12.8 MB (12779135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfb30181fe6437216379086f7b8232c2bd4d57801f8c634eb0c462b7e38a872`  
		Last Modified: Wed, 05 Aug 2026 00:35:07 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321f9a024e3520a2b41f74b1aef1952ecc97fe51f4158e7114798c0b6b0daff2`  
		Last Modified: Wed, 05 Aug 2026 00:35:07 GMT  
		Size: 11.7 MB (11734785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ad4674682577d0ecdfa485efcb815e11d205599f58eceed516a7083199146b`  
		Last Modified: Wed, 05 Aug 2026 00:35:07 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7c6fc0d37b96d3b29f6b2800c1903629b5addff5e3835d93ac296ba6cefcb7d`  
		Last Modified: Wed, 05 Aug 2026 00:35:08 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1502f0e346b4ee7ed8f9f9eda7580911e0b6e38f502f639d7801a6cb3a6e19a`  
		Last Modified: Wed, 05 Aug 2026 00:35:08 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1ea060f07af5b7f4bebd3463c97892b181cb0eea45fa4a72d3e6a3ac95809c`  
		Last Modified: Wed, 05 Aug 2026 00:35:08 GMT  
		Size: 888.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257eee9f8ea156c99854a1a7cfb25404f1b105367df1698b102972121f28394b`  
		Last Modified: Wed, 19 Aug 2026 20:55:20 GMT  
		Size: 27.1 MB (27101780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b84363d36d2c719d95ff4c57b6ec583a80d74324e97848f53f2fe2877eb804`  
		Last Modified: Wed, 19 Aug 2026 20:55:21 GMT  
		Size: 47.2 MB (47151704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397ce287ac110a8737495d2869d967ab4a29bb8a2038ba434bdb103bc6299f36`  
		Last Modified: Wed, 19 Aug 2026 20:55:19 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc33b6b6d00ce0010568a2cee72897272b58e0de63fdd979fa5cc4c88223dd9b`  
		Last Modified: Wed, 19 Aug 2026 20:55:19 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f87ae73d32f25bbca45b40c96e38bdfd4decb2f45e26b7907aac1049e16d4455`  
		Last Modified: Wed, 19 Aug 2026 20:55:21 GMT  
		Size: 18.8 KB (18796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:976a52b1be271077f0681c02546e244caf288cc58cdd8afede65adf77e208951`  
		Last Modified: Wed, 19 Aug 2026 20:55:21 GMT  
		Size: 28.9 MB (28853895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b312e79f947cc27d661ad6a841db5de913ea99e826abf15c8728f0e27aeba57`  
		Last Modified: Wed, 19 Aug 2026 20:55:22 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ddc7d8d4cd8162c3aba8c1fca1d74d5c83943424372855212deca4b57d744eb`  
		Last Modified: Wed, 19 Aug 2026 20:55:22 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.3-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:1eb82790f8f8da17f4108f955bf7815214fb3d2756d657941dfb8b730a287fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.0 KB (57960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a6b6f7dfdc22207d63de8979216047e1ab16bcd997ee33f3af24a12055e3211`

```dockerfile
```

-	Layers:
	-	`sha256:e25d18951d8ea1d4b1226250c162254bb5b636391c8b1b2d6908d43b99d11a53`  
		Last Modified: Wed, 19 Aug 2026 20:55:19 GMT  
		Size: 58.0 KB (57960 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.3-apache` - linux; 386

```console
$ docker pull joomla@sha256:2ac73932ea2019222211dc67b290641873300df0259fda533ec7ca2930e7b699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.6 MB (281616475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00e6cfff30c0c9cf1a3fa10f2a9e79822ba1bdd82d1cc1fe05ac02a8a4042f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:18:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 05 Aug 2026 00:19:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Aug 2026 00:19:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 00:19:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Aug 2026 00:19:01 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 05 Aug 2026 00:19:01 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Aug 2026 00:19:01 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Aug 2026 00:26:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 05 Aug 2026 00:26:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 05 Aug 2026 00:26:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 05 Aug 2026 00:26:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 00:26:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 00:26:56 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 05 Aug 2026 00:26:56 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 05 Aug 2026 00:26:56 GMT
ENV PHP_VERSION=8.3.33
# Wed, 05 Aug 2026 00:26:56 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Wed, 05 Aug 2026 00:26:56 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Wed, 05 Aug 2026 00:27:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 05 Aug 2026 00:27:06 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:30:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 05 Aug 2026 00:30:03 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:30:03 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 05 Aug 2026 00:30:03 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 05 Aug 2026 00:30:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Aug 2026 00:30:03 GMT
STOPSIGNAL SIGWINCH
# Wed, 05 Aug 2026 00:30:03 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:30:03 GMT
WORKDIR /var/www/html
# Wed, 05 Aug 2026 00:30:03 GMT
EXPOSE map[80/tcp:{}]
# Wed, 05 Aug 2026 00:30:03 GMT
CMD ["apache2-foreground"]
# Wed, 19 Aug 2026 20:53:56 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Wed, 19 Aug 2026 20:53:56 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 19 Aug 2026 20:53:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:56:16 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 19 Aug 2026 20:56:16 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 19 Aug 2026 20:56:16 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Wed, 19 Aug 2026 20:56:16 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 19 Aug 2026 20:56:16 GMT
VOLUME [/var/www/html]
# Wed, 19 Aug 2026 20:56:16 GMT
ENV JOOMLA_VERSION=6.1.3
# Wed, 19 Aug 2026 20:56:16 GMT
ENV JOOMLA_SHA512=0378709fa1ebf06de26e32eeb635c46f0aa05971d206580a00dcde8038bebc6a4e04158e2e43a8f07edecffd62bfe2e07fe3869b8fddab124875c13391052f55
# Wed, 19 Aug 2026 20:56:17 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Wed, 19 Aug 2026 20:56:17 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 19 Aug 2026 20:56:17 GMT
COPY makedb.php /makedb.php # buildkit
# Wed, 19 Aug 2026 20:56:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Aug 2026 20:56:17 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d82eeb7802fba1fd3277469834e621ee7071ee5f2150c83b6492d38a284241`  
		Last Modified: Wed, 05 Aug 2026 00:22:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab01be3fd55d3a08df2306c4feee67d81771a5e92f8cfa2ee04af6b852486e4`  
		Last Modified: Wed, 05 Aug 2026 00:22:34 GMT  
		Size: 116.1 MB (116142620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8cb4e5010169d544252d2470638d3a09d4042b8f1db6ba87dab41d0888fc3ef`  
		Last Modified: Wed, 05 Aug 2026 00:22:30 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c80f9c4c491a31c6b66ac67d8076ba3216684c1dc038b9c7b444e647a51e7a5`  
		Last Modified: Wed, 05 Aug 2026 00:30:14 GMT  
		Size: 4.5 MB (4469976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3583041d23f53f752c8730e606a0338c0f469927eab3af776fa0d9e1d61b03b`  
		Last Modified: Wed, 05 Aug 2026 00:30:14 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3daedc7f206f835c129bd36cc63f3dc5567acbe58d392da80a92631bc0c92a7f`  
		Last Modified: Wed, 05 Aug 2026 00:30:14 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2904b261e90e9a05a9ff9fdaa300b6216d6f1f4844daaa0806f4980b0cf6ca34`  
		Last Modified: Wed, 05 Aug 2026 00:30:14 GMT  
		Size: 12.8 MB (12778481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b50e6561aa806e0bde74a8e64d774032923ecd7a979290daf9d35037eeb76bc5`  
		Last Modified: Wed, 05 Aug 2026 00:30:15 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbfa749d42c81164a3a93cb660720fbd7375344147ddd4942425521f31bc7b47`  
		Last Modified: Wed, 05 Aug 2026 00:30:15 GMT  
		Size: 11.9 MB (11929566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e1e204208cdd5007a3e921c558dbd61eb3887af4df6580c118d7300d578aa9`  
		Last Modified: Wed, 05 Aug 2026 00:30:15 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2efef51d2e4fec915a5c3c9385fbab61fb070d02d43ca296e881870ded8c28`  
		Last Modified: Wed, 05 Aug 2026 00:30:15 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57939d4ede0fd0ea198e6ccdbae93f13bb6d978dbc863d0decc4ef773172cf56`  
		Last Modified: Wed, 05 Aug 2026 00:30:16 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfce84f6641cc91f07a68f71d6b112c5f1ff50bcb6f4a4b5d2676d63475d2275`  
		Last Modified: Wed, 05 Aug 2026 00:30:16 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b4ba701784636c0577d9f6b159c7280015c9f04819563e9a46ad0f993e8c4f9`  
		Last Modified: Wed, 19 Aug 2026 20:56:27 GMT  
		Size: 27.7 MB (27720907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a3a202a7892e3965077e3507295303dc2c95d5dde72ae8972bebc6f4833e5e`  
		Last Modified: Wed, 19 Aug 2026 20:56:28 GMT  
		Size: 48.4 MB (48394808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b82dc5e9033f7b3fb6b3f48b8fedabe2a7bf91a487dbf18cd5a962f3020744`  
		Last Modified: Wed, 19 Aug 2026 20:56:26 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4ad79013643a1cd7b9b989e564ba541cffada836bd4782ddced7189dd5a6b4`  
		Last Modified: Wed, 19 Aug 2026 20:56:26 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708fe1321f2a780ecd7a7816ed6f6d4fdbfbc73356220d7581eeee0f362d16b4`  
		Last Modified: Wed, 19 Aug 2026 20:56:27 GMT  
		Size: 18.8 KB (18798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74178a36f4b66cf905b1c31b62915a4a827a366629a80cef0df75c0061b43651`  
		Last Modified: Wed, 19 Aug 2026 20:56:28 GMT  
		Size: 28.9 MB (28853894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81043de15259f5d8f982751344b574c8aea1b10850b786476792912c564db24c`  
		Last Modified: Wed, 19 Aug 2026 20:56:29 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40cae4f184e822aaa6f9e0a66d260107d934a5164ddda54c03d792e953dfcfb3`  
		Last Modified: Wed, 19 Aug 2026 20:56:29 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.3-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:78fb391a55fd5dc7669beeba3ff5436aa60e5be1a45f78e8a02ba58537568851
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 KB (57739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a094098200b527819997c7cd4f5b2e53e47684d18915db75e22f80e4dd80380b`

```dockerfile
```

-	Layers:
	-	`sha256:1d34d420c64ad5e8364283ce679185b4728a1d4c61800821770a470cb67cebdb`  
		Last Modified: Wed, 19 Aug 2026 20:56:26 GMT  
		Size: 57.7 KB (57739 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.3-apache` - linux; ppc64le

```console
$ docker pull joomla@sha256:f3a2f5ebc5b4cdd9f59103f84cda96ff312dd2dd2695b1234486b6e1e5e45442
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280577052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec60302e5bffd47f0f4b7c2a4460e1dcf8df4346b712f8c8379ae278ec309918`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 04:20:32 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 05 Aug 2026 04:21:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Aug 2026 04:21:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 04:21:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Aug 2026 04:21:16 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 05 Aug 2026 04:21:16 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Aug 2026 04:21:16 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Aug 2026 04:52:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 05 Aug 2026 04:52:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 05 Aug 2026 04:52:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 05 Aug 2026 04:52:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 04:52:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 04:52:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 05 Aug 2026 04:52:21 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 05 Aug 2026 04:52:21 GMT
ENV PHP_VERSION=8.3.33
# Wed, 05 Aug 2026 04:52:21 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Wed, 05 Aug 2026 04:52:21 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Wed, 05 Aug 2026 04:52:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 05 Aug 2026 04:52:37 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:56:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 05 Aug 2026 04:56:33 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:56:33 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 05 Aug 2026 04:56:34 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 05 Aug 2026 04:56:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Aug 2026 04:56:34 GMT
STOPSIGNAL SIGWINCH
# Wed, 05 Aug 2026 04:56:35 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:56:35 GMT
WORKDIR /var/www/html
# Wed, 05 Aug 2026 04:56:35 GMT
EXPOSE map[80/tcp:{}]
# Wed, 05 Aug 2026 04:56:35 GMT
CMD ["apache2-foreground"]
# Wed, 19 Aug 2026 21:46:38 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Wed, 19 Aug 2026 21:46:38 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 19 Aug 2026 21:46:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 21:51:11 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 19 Aug 2026 21:51:12 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 19 Aug 2026 21:51:12 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Wed, 19 Aug 2026 21:51:13 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 19 Aug 2026 21:51:13 GMT
VOLUME [/var/www/html]
# Wed, 19 Aug 2026 21:51:13 GMT
ENV JOOMLA_VERSION=6.1.3
# Wed, 19 Aug 2026 21:51:13 GMT
ENV JOOMLA_SHA512=0378709fa1ebf06de26e32eeb635c46f0aa05971d206580a00dcde8038bebc6a4e04158e2e43a8f07edecffd62bfe2e07fe3869b8fddab124875c13391052f55
# Wed, 19 Aug 2026 21:51:15 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Wed, 19 Aug 2026 21:51:16 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 19 Aug 2026 21:51:16 GMT
COPY makedb.php /makedb.php # buildkit
# Wed, 19 Aug 2026 21:51:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Aug 2026 21:51:16 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27fe546ae65dda7d859dc8fb3a8664faf445fe40997e80dbb3a9b5d9127f8913`  
		Last Modified: Wed, 05 Aug 2026 04:26:01 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c266847be7d627c828c7cb4521a83be7b0eacbd6209b7cfb479357496f547c`  
		Last Modified: Wed, 05 Aug 2026 04:26:05 GMT  
		Size: 109.6 MB (109599999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b906f6d236b028225a2d28728e20dd20a56ea0c25aef566ac81bf27fb0cd5d14`  
		Last Modified: Wed, 05 Aug 2026 04:26:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14d42a0340fc0cde5e94e8301439eeb4c5cc8bea154a8db86b24552eccf17012`  
		Last Modified: Wed, 05 Aug 2026 04:56:59 GMT  
		Size: 4.9 MB (4897129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333c9b680853ac0cd659888f6cc5d7035403ba7e875fb0c6c5d16c35a0014f72`  
		Last Modified: Wed, 05 Aug 2026 04:56:59 GMT  
		Size: 435.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490413a8369a56908913ebdc0910fe989e149c51e8b69830257cff8a3373501c`  
		Last Modified: Wed, 05 Aug 2026 04:56:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cab3d003a4c519b81b7db188e95f86872fa276da4025d36bf5a1cc278b47e6`  
		Last Modified: Wed, 05 Aug 2026 04:57:00 GMT  
		Size: 12.8 MB (12778664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bc2d25e6b788f0d214bb4135f5aee023f17553cefcb3142f4d36e2016fc518e`  
		Last Modified: Wed, 05 Aug 2026 04:57:00 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa75432f070fafbe981d581d6b1ad370d82e0c836c867307b21e38f591a8d8b`  
		Last Modified: Wed, 05 Aug 2026 04:57:01 GMT  
		Size: 12.1 MB (12125592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a4b865f0fdcc87c338f6ffcac7eca400b14519940bc9853b027a4ea78864d8`  
		Last Modified: Wed, 05 Aug 2026 04:57:01 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973daa396c0b93c9dda38ef711510bbcd4a9404d6594c1d135904629851ac256`  
		Last Modified: Wed, 05 Aug 2026 04:57:01 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1a70927df8d8c4c9694b3e16b7975602cc346d36a9269193f3dd4bfb0a2c9c`  
		Last Modified: Wed, 05 Aug 2026 04:57:01 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14c4427def1b2f049fa0f79d32fcfe57625dabf78d8676eeda583de6d920eabd`  
		Last Modified: Wed, 05 Aug 2026 04:57:02 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4deb04e4fafd189a4426c2250e7a769c4a17d116b8e79e13d94342acea6063b9`  
		Last Modified: Wed, 19 Aug 2026 21:51:37 GMT  
		Size: 28.4 MB (28420153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:353114ae9cfd0df78fa8841e0db12b820253dbaa7a2bbe90e4afd32906272bf5`  
		Last Modified: Wed, 19 Aug 2026 21:51:38 GMT  
		Size: 50.3 MB (50270288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556e27f1d275f5db5d45e9faa970ca4785546a15d6d31a5fe87cf3ab5af921b5`  
		Last Modified: Wed, 19 Aug 2026 21:51:36 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa76c42847d394cc6a177a6fd05c0671120e2ff19b0d20da70dc1b09fb4fd1ca`  
		Last Modified: Wed, 19 Aug 2026 21:51:36 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8519ac0863151fff8d3ddb2eaf7a3f28955bfffd701bf3e67105cb6a4fc7615a`  
		Last Modified: Wed, 19 Aug 2026 21:51:38 GMT  
		Size: 18.8 KB (18825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d25b5f5a7b267e3d7938bbd27f6f36701adfbdcf544d34dd8e2d7cf84fe83cd1`  
		Last Modified: Wed, 19 Aug 2026 21:51:39 GMT  
		Size: 28.9 MB (28853889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465a0de9f6e8a339dd02e38986aaee67c468e42df19ea6462d2cda889fb68354`  
		Last Modified: Wed, 19 Aug 2026 21:51:39 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c281ad8dbf75256f31a75b665d05c10c5febb82b30ea9d3bdf7a24b830f85d62`  
		Last Modified: Wed, 19 Aug 2026 21:51:39 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.3-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:2533e864048d57c1b47415c0205021e2345d0afee340255838311e70226a0b73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 KB (57835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a19b0ae8351241fcb0ad7c5a69613d4e3f5a3c9fd7be5adf14d30a4cadfc04a`

```dockerfile
```

-	Layers:
	-	`sha256:445b03305d9999df025c0c64cd817dd72b1ddb98aa0b390917ed1bb75a9e6e94`  
		Last Modified: Wed, 19 Aug 2026 21:51:36 GMT  
		Size: 57.8 KB (57835 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.3-apache` - linux; riscv64

```console
$ docker pull joomla@sha256:63ab60b7ad13dc23f622ca307060554741ebfaa7bed62f7246dc7d704cc6a133
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.0 MB (314972142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049c058a3a2fcb8da964e4c860fd68b7dc6354ad71b91a38edec4183d23266cb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 18:39:18 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 05 Aug 2026 18:41:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Aug 2026 18:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 18:41:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Aug 2026 18:41:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 05 Aug 2026 18:41:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Aug 2026 18:41:23 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Aug 2026 19:41:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 05 Aug 2026 19:41:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 05 Aug 2026 19:41:37 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 05 Aug 2026 19:41:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 19:41:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 19:41:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 05 Aug 2026 19:41:37 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 05 Aug 2026 19:41:37 GMT
ENV PHP_VERSION=8.3.33
# Wed, 05 Aug 2026 19:41:37 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Wed, 05 Aug 2026 19:41:37 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Thu, 06 Aug 2026 07:23:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 06 Aug 2026 07:23:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 06 Aug 2026 08:14:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 06 Aug 2026 08:14:12 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 06 Aug 2026 08:14:13 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 06 Aug 2026 08:14:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 06 Aug 2026 08:14:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 06 Aug 2026 08:14:13 GMT
STOPSIGNAL SIGWINCH
# Thu, 06 Aug 2026 08:14:13 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 06 Aug 2026 08:14:14 GMT
WORKDIR /var/www/html
# Thu, 06 Aug 2026 08:14:14 GMT
EXPOSE map[80/tcp:{}]
# Thu, 06 Aug 2026 08:14:14 GMT
CMD ["apache2-foreground"]
# Thu, 20 Aug 2026 03:33:24 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 20 Aug 2026 03:33:24 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 20 Aug 2026 03:33:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 03:59:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 20 Aug 2026 03:59:48 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 20 Aug 2026 03:59:48 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 20 Aug 2026 03:59:49 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 20 Aug 2026 03:59:49 GMT
VOLUME [/var/www/html]
# Thu, 20 Aug 2026 03:59:49 GMT
ENV JOOMLA_VERSION=6.1.3
# Thu, 20 Aug 2026 03:59:49 GMT
ENV JOOMLA_SHA512=0378709fa1ebf06de26e32eeb635c46f0aa05971d206580a00dcde8038bebc6a4e04158e2e43a8f07edecffd62bfe2e07fe3869b8fddab124875c13391052f55
# Thu, 20 Aug 2026 04:00:02 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 20 Aug 2026 04:00:03 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 20 Aug 2026 04:00:03 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 20 Aug 2026 04:00:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Aug 2026 04:00:03 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c64a122e5a324d1f88ab064980a19849b674e876b62592958c5a59e74c8145a1`  
		Last Modified: Wed, 05 Aug 2026 19:39:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a072ac95d9640d5a77c9097da0d27859364be9627d27affb58d27486bd1888f8`  
		Last Modified: Wed, 05 Aug 2026 19:39:53 GMT  
		Size: 146.6 MB (146587072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb0ef79e9b0ed5ab3a32ca7c2d7c104f7e4b4b85a624fcd775f0c5f9801f45d`  
		Last Modified: Wed, 05 Aug 2026 19:39:25 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be3927c3bf5bb2e008c3d77b40ec118bd1dff36467659b0e3f0818a7f76c3b8`  
		Last Modified: Wed, 05 Aug 2026 20:37:20 GMT  
		Size: 4.0 MB (4045863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43333c977f5363db213d3af270133f36869c30a2889524598ebb934aa538512`  
		Last Modified: Wed, 05 Aug 2026 20:37:19 GMT  
		Size: 437.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18b8ab5479d8c3f157ab0050da33a48b3fa43166d116f4f3816b383e66b14ec`  
		Last Modified: Wed, 05 Aug 2026 20:37:19 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a7ecbd77d2a2a143c1a90b1c006513be6875a0ff40a19d85ef94a0095746e0`  
		Last Modified: Thu, 06 Aug 2026 08:17:20 GMT  
		Size: 12.8 MB (12794015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34dc6acbf2a4ef838fe154563a1402373eb5e366219b1465c691960acbcc7781`  
		Last Modified: Thu, 06 Aug 2026 08:17:16 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00aa4fe4380e4a0336e36c00babcf85e682fe4f8765c2579370f8889f3b9e61a`  
		Last Modified: Thu, 06 Aug 2026 08:17:20 GMT  
		Size: 11.3 MB (11257529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62dd9cf8d69676555bbca7a778eea9d92b8220db309c8340c57f9d88d0c68ff6`  
		Last Modified: Thu, 06 Aug 2026 08:17:16 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab1ec8212cbb2ea96e484cbad4580700e848bc073acd91b2922f11a457bbaea4`  
		Last Modified: Thu, 06 Aug 2026 08:17:19 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76039fb7fd33c77be5b5f1c3374bb4f8fa2598f1790b8b1ced0fbf146d0629a9`  
		Last Modified: Thu, 06 Aug 2026 08:17:19 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5ade7db85aacc21b85ccfe15f39aa1a0604a482bedf6a0d5cb4fc4a5532d53`  
		Last Modified: Thu, 06 Aug 2026 08:17:20 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b135781df078d5f16f36dfd0595c1aaee43a1b39565c08f78d3db4096bb900d5`  
		Last Modified: Thu, 20 Aug 2026 04:02:28 GMT  
		Size: 27.2 MB (27211427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63b03e00377271817318d5b8bb3b35ee2f94129c57595f93db20154546ac368`  
		Last Modified: Thu, 20 Aug 2026 04:02:34 GMT  
		Size: 55.9 MB (55914237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8067d651ccec96210578b9f23d0a3b5bf9e63d920e881c8f2a63bfc0621274`  
		Last Modified: Thu, 20 Aug 2026 04:02:18 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c1ab688550e707de723d66975df2f97fd92adf7290957d0005eacedc670078`  
		Last Modified: Thu, 20 Aug 2026 04:02:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04e7bad206c9bc68dae30fb5e01fb600a8b475be5a1991f432aa8515562f4a67`  
		Last Modified: Thu, 20 Aug 2026 04:02:20 GMT  
		Size: 18.8 KB (18810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:508b9962f9fd5e6014013422f913aac1660c395dc753bf190e390273956f0660`  
		Last Modified: Thu, 20 Aug 2026 04:02:31 GMT  
		Size: 28.9 MB (28853889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49d245b79afd6dfc17c2a614431aa1d64fb21498bd8dfae45dd77b1b86d1ed13`  
		Last Modified: Thu, 20 Aug 2026 04:02:22 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36602a08caee46f37eb75e9692a7c4ef3abd97511377a27df856043e3b7c9ce6`  
		Last Modified: Thu, 20 Aug 2026 04:02:25 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.3-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:4f3f82053ae045f87b443223435af68442ea6e493313f00bb07be153f7a3b63a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 KB (57835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:253e40b00f433bc72080fc2cdbae0dff67786f208c7b8d8d253c5bda888154c4`

```dockerfile
```

-	Layers:
	-	`sha256:90e80461cee99b9ba308a7a8e86240e15131a78c7b6af3a37bbb125d23c3dc16`  
		Last Modified: Thu, 20 Aug 2026 04:02:17 GMT  
		Size: 57.8 KB (57835 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.3-apache` - linux; s390x

```console
$ docker pull joomla@sha256:4479fb7495739e029e1634da5b1bf3cdc0ac6eb4dba6ad80b3f2079c6198c4fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (255013110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7228394fd6d3b07dc004caa55f0a0b28dccd8ded77e03b78a006ef58b7c64a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:22:31 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 05 Aug 2026 00:22:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Aug 2026 00:22:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 00:22:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Aug 2026 00:22:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 05 Aug 2026 00:22:48 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Aug 2026 00:22:48 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Aug 2026 00:22:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 05 Aug 2026 00:22:57 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 05 Aug 2026 00:22:57 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 05 Aug 2026 00:22:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 00:22:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 00:22:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 05 Aug 2026 00:22:57 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 05 Aug 2026 00:22:57 GMT
ENV PHP_VERSION=8.3.33
# Wed, 05 Aug 2026 00:22:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Wed, 05 Aug 2026 00:22:57 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Wed, 05 Aug 2026 00:37:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 05 Aug 2026 00:37:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:41:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 05 Aug 2026 00:41:28 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:41:28 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 05 Aug 2026 00:41:29 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 05 Aug 2026 00:41:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Aug 2026 00:41:29 GMT
STOPSIGNAL SIGWINCH
# Wed, 05 Aug 2026 00:41:29 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:41:29 GMT
WORKDIR /var/www/html
# Wed, 05 Aug 2026 00:41:29 GMT
EXPOSE map[80/tcp:{}]
# Wed, 05 Aug 2026 00:41:29 GMT
CMD ["apache2-foreground"]
# Wed, 19 Aug 2026 20:52:34 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Wed, 19 Aug 2026 20:52:34 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 19 Aug 2026 20:52:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:54:50 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 19 Aug 2026 20:54:50 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 19 Aug 2026 20:54:50 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Wed, 19 Aug 2026 20:54:51 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 19 Aug 2026 20:54:51 GMT
VOLUME [/var/www/html]
# Wed, 19 Aug 2026 20:54:51 GMT
ENV JOOMLA_VERSION=6.1.3
# Wed, 19 Aug 2026 20:54:51 GMT
ENV JOOMLA_SHA512=0378709fa1ebf06de26e32eeb635c46f0aa05971d206580a00dcde8038bebc6a4e04158e2e43a8f07edecffd62bfe2e07fe3869b8fddab124875c13391052f55
# Wed, 19 Aug 2026 20:54:52 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Wed, 19 Aug 2026 20:54:52 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 19 Aug 2026 20:54:52 GMT
COPY makedb.php /makedb.php # buildkit
# Wed, 19 Aug 2026 20:54:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Aug 2026 20:54:52 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822f6607c45d5b4e84a690a15eebe5de788c10082308367fefa106164a743177`  
		Last Modified: Wed, 05 Aug 2026 00:26:45 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8207c4eb0b735ee4d11db62c5761d5fb47d64f7ddba0ebda3ceb80ec05ae9de1`  
		Last Modified: Wed, 05 Aug 2026 00:26:47 GMT  
		Size: 92.6 MB (92572381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc7795b52cd230444b78fa998a0d2b169d5e7e32d402a4f9e4f12de1fcc4e2c5`  
		Last Modified: Wed, 05 Aug 2026 00:26:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:779993ae211b11f7ebca01079ecc995d6ef9a1b5494fc99f4bb41c4a27991bd1`  
		Last Modified: Wed, 05 Aug 2026 00:26:45 GMT  
		Size: 4.3 MB (4337685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dc8ebfe5523a8e8b8df74b665118a43e30b8e1a1575db278abf73dfd9b550fd`  
		Last Modified: Wed, 05 Aug 2026 00:26:46 GMT  
		Size: 434.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1358c5cb1c4f2bee8b3f1bc31656dbfc3dbda86e7cde5b67f73475fb7c986da2`  
		Last Modified: Wed, 05 Aug 2026 00:26:46 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb84f23917594b41a3eb67a30a32e2afe8a0a6c3c4482c59fd0f2fead2c43e8`  
		Last Modified: Wed, 05 Aug 2026 00:41:47 GMT  
		Size: 12.8 MB (12777964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a09549119e3d26bed7cbf62e6fa4884695e1adf421d386c64f3145ab8b7efa`  
		Last Modified: Wed, 05 Aug 2026 00:41:47 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:211a4212523ac34e0ebf26ee20d9b1a2fd2ea579589ffc568e539c62788783cd`  
		Last Modified: Wed, 05 Aug 2026 00:41:47 GMT  
		Size: 11.6 MB (11573207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7899c868f8de4008c0c84929247c58639bfb1dba05738e5cef350521fd8fcf61`  
		Last Modified: Wed, 05 Aug 2026 00:41:47 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7cd0e3a4f2fb37d0a2a19ccdd76816f689340305987839922f204a36ffd71b4`  
		Last Modified: Wed, 05 Aug 2026 00:41:48 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4189a366e21cdcb7d5a95a187624994545f57a31cd4956e8a0bcc6a972333ef`  
		Last Modified: Wed, 05 Aug 2026 00:41:48 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21417698d5e9519f077c7a6265f949a1336c908bc70f80d353299a8b7c5997c1`  
		Last Modified: Wed, 05 Aug 2026 00:41:48 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1e0c3eca709b80634aa49b2376e699f47ebcac81249286cade6488003f1bf3`  
		Last Modified: Wed, 19 Aug 2026 20:55:06 GMT  
		Size: 27.6 MB (27552057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fb88db2e787fcc8451d109c79c4b85b0ecd8184ee5ea82eddb43748272aa3c1`  
		Last Modified: Wed, 19 Aug 2026 20:55:07 GMT  
		Size: 47.5 MB (47469396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fffb8c3e0486891be2f93bece49720ae239ef781d40334ac7ddc88bf9d64c8ce`  
		Last Modified: Wed, 19 Aug 2026 20:55:06 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12b41987797b8f0c9700ffec407a2a6decbc683fb899ed175a273da858b6d51`  
		Last Modified: Wed, 19 Aug 2026 20:55:06 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:941e25ba05c41270d12f7fde53ed6e097de5fbd7c63ca9e00ebde53312d581fd`  
		Last Modified: Wed, 19 Aug 2026 20:55:07 GMT  
		Size: 18.8 KB (18796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:736ca10f5eaabb8867ba705ef3da79a6581f61fe242296db29490365b2bef23e`  
		Last Modified: Wed, 19 Aug 2026 20:55:08 GMT  
		Size: 28.9 MB (28853888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48dfddc1a34ae537f943ea8fd54c10bb22dc9d6bb749e3c2e1ee557f0a5fef3a`  
		Last Modified: Wed, 19 Aug 2026 20:55:08 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d214e8eb1247ceada93ce2fd752dfb58e5aa9d12188f5aa4b8f9bf5cd34eaa9d`  
		Last Modified: Wed, 19 Aug 2026 20:55:08 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.3-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:6ea095d6292f3351882695dae1eede6314f76c1e54129925ec627b792a4db1fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 KB (57772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c09efb538418527849fa01b50333acb90d1790677bb4ef9bbe3f5d7022910b6`

```dockerfile
```

-	Layers:
	-	`sha256:ce4425ccbb80f73afd2e5f01d557b1f1dbbe77226fc9a045b8e1ee0115006d7c`  
		Last Modified: Wed, 19 Aug 2026 20:55:06 GMT  
		Size: 57.8 KB (57772 bytes)  
		MIME: application/vnd.in-toto+json
