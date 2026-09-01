## `postfixadmin:apache`

```console
$ docker pull postfixadmin@sha256:b1a9d7ac214b8b2dcb1fea62443bfdb525b46efa0dd9d9fb3366d8f55b0f4954
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `postfixadmin:apache` - linux; amd64

```console
$ docker pull postfixadmin@sha256:5d99cf5a7dd249219f3c934d3061186a890ef42ee949838417065a56516a60e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.2 MB (208220708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:967c4559f595e4fef91b828c0418cfe4f9dd01e9f1fdf59c0a7db2b634045761`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:36:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:36:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:36:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:36:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:36:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:36:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Aug 2026 00:36:38 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Aug 2026 00:36:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 25 Aug 2026 00:36:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 25 Aug 2026 00:36:44 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 25 Aug 2026 00:36:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:36:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:36:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:36:44 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 00:36:44 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 00:36:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 00:36:44 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 25 Aug 2026 00:36:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:36:52 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:39:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:39:18 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:39:18 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 25 Aug 2026 00:39:18 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:39:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:39:18 GMT
STOPSIGNAL SIGWINCH
# Tue, 25 Aug 2026 00:39:18 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:39:18 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 00:39:18 GMT
EXPOSE map[80/tcp:{}]
# Tue, 25 Aug 2026 00:39:18 GMT
CMD ["apache2-foreground"]
# Mon, 31 Aug 2026 21:16:00 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Mon, 31 Aug 2026 21:16:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 21:16:18 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:16:18 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:16:18 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:16:18 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:16:18 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:16:18 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Mon, 31 Aug 2026 21:16:18 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf # buildkit
# Mon, 31 Aug 2026 21:16:19 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Mon, 31 Aug 2026 21:16:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:16:19 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:16:19 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 21:16:27 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:16:27 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 21:16:27 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26099c2520af8e1b16a1ee2db88099e14821eea4bd3b62c382dbd4821fade533`  
		Last Modified: Tue, 25 Aug 2026 00:39:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:932b172a46b4529965ff9d9fd1e2f4de4078c03239d44e48da218493b5d7db07`  
		Last Modified: Tue, 25 Aug 2026 00:39:42 GMT  
		Size: 117.8 MB (117839084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94598c0333c24c6b16f08f9f2b48557c7795dd31f842fee4d8575810a3eb1f41`  
		Last Modified: Tue, 25 Aug 2026 00:39:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7a8575cd8da75371ec92584e66f2251f12390eadc40343ac902881f80cfdb7c`  
		Last Modified: Tue, 25 Aug 2026 00:39:39 GMT  
		Size: 4.2 MB (4238998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee23f701a6399e2dbf833f0de5332c9e34fe36f2c67dd4551cae1134f2a0681`  
		Last Modified: Tue, 25 Aug 2026 00:39:40 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1890dc62d4f10a4abfb7e76f6d1bd7726b86574ee1c0bfd8cb1d51aa41510c2`  
		Last Modified: Tue, 25 Aug 2026 00:39:41 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fffa43530262f5f545225d4f8081c7ed8ea9e0946d36502da8291b218056784a`  
		Last Modified: Tue, 25 Aug 2026 00:39:41 GMT  
		Size: 12.8 MB (12779562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71dc02b0c4456cac8b7287ea2acdc0bef6d8cec3f2e103fea498a52a0ec469b0`  
		Last Modified: Tue, 25 Aug 2026 00:39:41 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56ba9ea3138fcf2117fb3de4aad982679663bcb9c25550199679f3aac7d9d68`  
		Last Modified: Tue, 25 Aug 2026 00:39:42 GMT  
		Size: 11.7 MB (11715978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aba2157579c6ead4fbdeb0e9e5b9b03a6eed07931088bff88c87d73343f2274b`  
		Last Modified: Tue, 25 Aug 2026 00:39:43 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42778c36a165d4cff1cd1def7bc0cd5f57061640c7a6ffaf8e40d0e49793c6e6`  
		Last Modified: Tue, 25 Aug 2026 00:39:43 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d96e675fc118ae238737110d6c7bf8e9003897d76f3ea0061cb5c2dd929e786`  
		Last Modified: Tue, 25 Aug 2026 00:39:43 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf99494936e32388461fc26f0446387761243a09fd9f331cc47f22b849ae814`  
		Last Modified: Tue, 25 Aug 2026 00:39:44 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2545fe525b4f7e2dec684d7dd4f03d1553746ff9f2807ff253c18d15805c6249`  
		Last Modified: Mon, 31 Aug 2026 21:16:33 GMT  
		Size: 1.4 MB (1352384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:306cbaba03774273cbe4e13de003f8bfc8d9f239efd989ee51c8c8eeebf8acaa`  
		Last Modified: Mon, 31 Aug 2026 21:16:33 GMT  
		Size: 3.9 MB (3880985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc1456d401dd3550c8b330e334889c4387452747878458c13e7da4d10c81605`  
		Last Modified: Mon, 31 Aug 2026 21:16:33 GMT  
		Size: 7.5 KB (7480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc88685b5651fb5fcf924415ff636ddaa2910dbef35ec20a0742b217e7630e2`  
		Last Modified: Mon, 31 Aug 2026 21:16:33 GMT  
		Size: 2.6 MB (2604062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67dd357a70a17ddaf93e491371744516cfa7a10d8d19431b6227a7f425262fa3`  
		Last Modified: Mon, 31 Aug 2026 21:16:34 GMT  
		Size: 1.7 KB (1656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c7aa55636ab7c8be1b09574ebc0f19a24a5d7e6838d16dd126cd2a5f327192`  
		Last Modified: Mon, 31 Aug 2026 21:16:34 GMT  
		Size: 832.3 KB (832291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29af1c04f3addd4a00d0d805e81e00f4ea1fe696b79e88ec51f1bad07adb117`  
		Last Modified: Mon, 31 Aug 2026 21:16:35 GMT  
		Size: 23.2 MB (23169837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:apache` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:584d91173273d2b16adf724628d6de9ced775d0d635579f1a995781d20dada34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 KB (49981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0441cbdb485e5b18aafcab088fe1593023143a5366ed52cfeeb9dc018413fa`

```dockerfile
```

-	Layers:
	-	`sha256:469aec70344917dc8976accd31306622ffed391b984c83a1cd8c03bb0498875c`  
		Last Modified: Mon, 31 Aug 2026 21:16:33 GMT  
		Size: 50.0 KB (49981 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:apache` - linux; arm variant v7

```console
$ docker pull postfixadmin@sha256:afb907d9798cd890e5570ff819d893b47b23a966dfb5bf320ee8a6b5b25bb490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170041858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40c5945746b0f578ed740f5d3ace88770b493fc7523646bf9e80540e35068a3`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:02:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 01:02:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 01:02:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:02:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 01:02:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 01:02:37 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Aug 2026 01:02:37 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Aug 2026 01:09:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 25 Aug 2026 01:09:27 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 25 Aug 2026 01:09:27 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 25 Aug 2026 01:09:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 01:09:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 01:09:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 01:09:27 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 01:09:27 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 01:09:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 01:09:27 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 25 Aug 2026 01:09:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 01:09:37 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:12:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 01:12:10 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:12:10 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 25 Aug 2026 01:12:10 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 01:12:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 01:12:10 GMT
STOPSIGNAL SIGWINCH
# Tue, 25 Aug 2026 01:12:10 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:12:10 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 01:12:10 GMT
EXPOSE map[80/tcp:{}]
# Tue, 25 Aug 2026 01:12:10 GMT
CMD ["apache2-foreground"]
# Mon, 31 Aug 2026 21:21:04 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Mon, 31 Aug 2026 21:21:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 21:21:30 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:21:30 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:21:30 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:21:30 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:21:30 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:21:30 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Mon, 31 Aug 2026 21:21:30 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf # buildkit
# Mon, 31 Aug 2026 21:21:31 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Mon, 31 Aug 2026 21:21:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:21:31 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:21:31 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 21:21:40 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:21:40 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 21:21:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8cdb124443ecd8a533f771c70609538127766eb2a37677776842d71a0931de1`  
		Last Modified: Tue, 25 Aug 2026 01:05:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76012760659866f668f37d91818930c8e0573d8a34ec0664330d0941c34ee249`  
		Last Modified: Tue, 25 Aug 2026 01:05:44 GMT  
		Size: 86.3 MB (86260780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4e4bfaf6886505fb54d3d62a1bf51cd643db38882c86917855ff7d5ba8bbb0`  
		Last Modified: Tue, 25 Aug 2026 01:05:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318cd1475285f71a96d7a85f21dc5bb81ff476069f7cb25a9aa7ec61b7918357`  
		Last Modified: Tue, 25 Aug 2026 01:12:20 GMT  
		Size: 3.8 MB (3763855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba306cb99b547360b7faefb924c35635d9622997b2c63cc89c2f524394217cc0`  
		Last Modified: Tue, 25 Aug 2026 01:12:20 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7589ac9fda4360c292214ddef7193128d76bd02c7f206a70f36a96db81c1f5e`  
		Last Modified: Tue, 25 Aug 2026 01:12:20 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4700f16156dae4ce80170b68a7a924c52bd7a99b406f1b86f08ca9e5cc4780`  
		Last Modified: Tue, 25 Aug 2026 01:12:21 GMT  
		Size: 12.8 MB (12777128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d392c4a953a6655643cb988851b1a3e893f8830fa04fdecb97f7f0baea5ded4f`  
		Last Modified: Tue, 25 Aug 2026 01:12:21 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d5c1d8cfef9f9530663f09578f0be7337c93a0b4a80ece1c5180a7de2ba96d`  
		Last Modified: Tue, 25 Aug 2026 01:12:22 GMT  
		Size: 10.1 MB (10074094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c090ada405939b38a91d1e5aadeccca1661b713503767440b282f68382c0c36f`  
		Last Modified: Tue, 25 Aug 2026 01:12:22 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3881e12f577e09df6c7ef901f9cb8a09eb5a4dd688b448bb8657750e65188cd7`  
		Last Modified: Tue, 25 Aug 2026 01:12:22 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:404fb9653b839ced870ae7f039f658e7ee7616f66c028a8b6d7ec1c65fe487e2`  
		Last Modified: Tue, 25 Aug 2026 01:12:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149c11da4e5708dc4bd20a27cde5a0edcd8419d76d013adb286307c607185045`  
		Last Modified: Tue, 25 Aug 2026 01:12:23 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5e16f456569bee31623597921cd6e1f45198264783b818295c76b55cbef89e7`  
		Last Modified: Mon, 31 Aug 2026 21:21:47 GMT  
		Size: 1.3 MB (1289548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d22330da5dcca8b84ed5d5c417e5a4144b8a3cea1d598fc0dcbeaf6900deaf6`  
		Last Modified: Mon, 31 Aug 2026 21:21:47 GMT  
		Size: 3.0 MB (3038636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52cd01feb16bcd3646144eb533bcd6eb1b330f8da62f129f6de5732f7bca4633`  
		Last Modified: Mon, 31 Aug 2026 21:21:47 GMT  
		Size: 7.5 KB (7479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14b31e7bebcebe3683f82fc5fb89662894bf63f757d3ecf47d189b7168ee45bd`  
		Last Modified: Mon, 31 Aug 2026 21:21:47 GMT  
		Size: 2.6 MB (2604052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b3c234b74231045b5fc108f9fc9dc3dba2a924c79fd6996d3bb08993fc71d8`  
		Last Modified: Mon, 31 Aug 2026 21:21:48 GMT  
		Size: 1.7 KB (1657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dc0b9dcad944ae2198c452d09e13fc0be734d671610ef7503489c4bf28c3b93`  
		Last Modified: Mon, 31 Aug 2026 21:21:48 GMT  
		Size: 832.3 KB (832285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5a86db3ab95877ada678e14ad4da2ba79e140d206f75da36d755cb97efd437`  
		Last Modified: Mon, 31 Aug 2026 21:21:49 GMT  
		Size: 23.2 MB (23167468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:apache` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:c0a8c1c27b3c516b9c89d91b40811282db5cc8c7609ab0fd10afecaf29d54967
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 KB (50159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49819de7d8aa2f39eebc4a2fbec5d3fa477ddecb833619a0dc5666f7aecb667e`

```dockerfile
```

-	Layers:
	-	`sha256:4ab59fdd6dcec180edb3441a27ea8afdab59ad3bab727d86b3e85e4dff7ed224`  
		Last Modified: Mon, 31 Aug 2026 21:21:46 GMT  
		Size: 50.2 KB (50159 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:apache` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:81664ec856e50ccc2cefe063a531db9ca76b8e3ddbb941b0ef7f548a87514f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201273819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ad1dae3f85fecd18e421a019326e66b36dd21519a82b8267c21671fc25ce375`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:23:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:23:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:23:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:23:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:23:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:23:39 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Aug 2026 00:23:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Aug 2026 00:37:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 25 Aug 2026 00:37:34 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 25 Aug 2026 00:37:34 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 25 Aug 2026 00:37:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:37:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:37:34 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:37:34 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 00:37:34 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 00:37:34 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 00:37:34 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 25 Aug 2026 00:37:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:37:42 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:41:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:41:29 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:41:29 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 25 Aug 2026 00:41:29 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:41:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:41:29 GMT
STOPSIGNAL SIGWINCH
# Tue, 25 Aug 2026 00:41:29 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:41:29 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 00:41:29 GMT
EXPOSE map[80/tcp:{}]
# Tue, 25 Aug 2026 00:41:29 GMT
CMD ["apache2-foreground"]
# Mon, 31 Aug 2026 21:16:18 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Mon, 31 Aug 2026 21:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 21:16:41 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:16:41 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:16:41 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:16:41 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:16:41 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:16:41 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Mon, 31 Aug 2026 21:16:41 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf # buildkit
# Mon, 31 Aug 2026 21:16:41 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Mon, 31 Aug 2026 21:16:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:16:42 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:16:42 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 21:16:49 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:16:49 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 21:16:49 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:151b74e9284221a6eeffeb6d22631732e347bf65a09b2dcebaff07a770621186`  
		Last Modified: Tue, 25 Aug 2026 00:26:57 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0bc57db5bb713394b2c8c7e149476c57cfd666ab21900f09fa679fd3ef935e`  
		Last Modified: Tue, 25 Aug 2026 00:27:01 GMT  
		Size: 110.2 MB (110171913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e47c788d56a7545a5f3e25d2c1a57711f5f500c9939bc176b6283c33919342`  
		Last Modified: Tue, 25 Aug 2026 00:26:57 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e255129277eebc355226160bdf0d814e72efd715165e3b4abb436f6d4c346435`  
		Last Modified: Tue, 25 Aug 2026 00:41:40 GMT  
		Size: 4.3 MB (4322043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4315bdbbc2f739b25dd3dd053ed6c1a3f1cb2f7aa93a1b7eb878d068efa6026`  
		Last Modified: Tue, 25 Aug 2026 00:41:40 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f22755a213c5a907a18f1814200fab8c757b6077054c46228705636c985f66e`  
		Last Modified: Tue, 25 Aug 2026 00:41:40 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fc85e802130ece328fb9bef01f39536b175c3da98bc08472e2c5f29c076546`  
		Last Modified: Tue, 25 Aug 2026 00:41:41 GMT  
		Size: 12.8 MB (12779190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b6859e1172b406e83dc0e03229e69b6b4e28b62aad66456eb731e55774536d`  
		Last Modified: Tue, 25 Aug 2026 00:41:41 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:806b0dd2b4aa53ae1928a62d299f6bb3edee58c9c1065480074599f972ee856a`  
		Last Modified: Tue, 25 Aug 2026 00:41:41 GMT  
		Size: 11.7 MB (11734892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:211a480fbcad98bfe77bd20e72e89602ea38efd3493463515500b4fe2fbb9b4f`  
		Last Modified: Tue, 25 Aug 2026 00:41:42 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f919933e42c1e9572f7de9766a63b5666f128dff3f793c2c81db1b4ba0296721`  
		Last Modified: Tue, 25 Aug 2026 00:41:42 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f9e47470e97656269b47b61b44b1b7c49f98db4048518c6848c0cb243e5f9d`  
		Last Modified: Tue, 25 Aug 2026 00:41:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e72a41ce34cd93bb1e0298641a284cbe00ca816c3718dc292f7f87cf315a1d9e`  
		Last Modified: Tue, 25 Aug 2026 00:41:43 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bb461ed3acc7afcf10625eef2bef25db8820e1d0d47bf19ea134ddc326f6154`  
		Last Modified: Mon, 31 Aug 2026 21:16:56 GMT  
		Size: 1.3 MB (1266188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2560741f3cddcf1c8c261336aa0925c14e5e7df515a6efd210373d1fbcb0c342`  
		Last Modified: Mon, 31 Aug 2026 21:16:56 GMT  
		Size: 4.2 MB (4219314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faeb6d279811da9e3ec82de4dced42a507848bf92ca7715bb8f7b44fd913317d`  
		Last Modified: Mon, 31 Aug 2026 21:16:56 GMT  
		Size: 7.5 KB (7480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26818acf6ee2a47efeaa0bab448b3a73f8ef38d98770866d37edfc5d00ad9a1`  
		Last Modified: Mon, 31 Aug 2026 21:16:56 GMT  
		Size: 2.6 MB (2604062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7072fc356c65c09828b2213299c064ed445aca13c75928cf44b98c262a9e5fd3`  
		Last Modified: Mon, 31 Aug 2026 21:16:57 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8868d655c26534cf2786ef361014b89617d16ffba90822f42de2ecc1b1605d2d`  
		Last Modified: Mon, 31 Aug 2026 21:16:57 GMT  
		Size: 832.3 KB (832285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11950e2892ee01414d8249e4a25d1ccebe551f5699222347e7568fb7c7b8274a`  
		Last Modified: Mon, 31 Aug 2026 21:16:57 GMT  
		Size: 23.2 MB (23169477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:apache` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:ce0aacdc83146438eb6f1e6495f62a054e1190ed3d4b93f1f3858a6db7fff280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 KB (50219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c3f121320d4a6f97532091bd8c508f9934f2d272ef4774f3626a53c76f2203`

```dockerfile
```

-	Layers:
	-	`sha256:df129c5c1c97438341fa96b4adf7242e78fe45aff5361b395395db14bd52dcfb`  
		Last Modified: Mon, 31 Aug 2026 21:16:55 GMT  
		Size: 50.2 KB (50219 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:apache` - linux; 386

```console
$ docker pull postfixadmin@sha256:ab5fc27551981f313310f9e9c0e941dc274cd546942869b06abbeb032d3bd6f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.4 MB (208402525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c05b5a16e33466cf7f2d192dd16d695a2c0e7fbca86dd1551d0e36ec667571`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:27 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:19:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:19:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:19:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:19:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:19:46 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Aug 2026 00:19:46 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Aug 2026 00:33:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 25 Aug 2026 00:33:08 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 25 Aug 2026 00:33:08 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 25 Aug 2026 00:33:08 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:33:08 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:33:08 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:33:08 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 00:33:08 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 00:33:08 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 00:33:08 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 25 Aug 2026 00:33:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:33:17 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:36:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:36:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:36:14 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 25 Aug 2026 00:36:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:36:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:36:14 GMT
STOPSIGNAL SIGWINCH
# Tue, 25 Aug 2026 00:36:14 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:36:14 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 00:36:14 GMT
EXPOSE map[80/tcp:{}]
# Tue, 25 Aug 2026 00:36:14 GMT
CMD ["apache2-foreground"]
# Mon, 31 Aug 2026 21:15:59 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Mon, 31 Aug 2026 21:15:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 21:16:18 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:16:18 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:16:18 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:16:18 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:16:18 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:16:18 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Mon, 31 Aug 2026 21:16:18 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf # buildkit
# Mon, 31 Aug 2026 21:16:19 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Mon, 31 Aug 2026 21:16:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:16:19 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:16:19 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 21:16:27 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:16:27 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 21:16:27 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2428906b47a405765aec01dea03f2e05e6bd17de86b4743501043e73bf9cf951`  
		Last Modified: Tue, 25 Aug 2026 00:22:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3278243a69132ab636865b4e327dc40727391baa3aaa7c79af15749dad0972c`  
		Last Modified: Tue, 25 Aug 2026 00:25:27 GMT  
		Size: 116.1 MB (116143525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0e67b44c6f54a18dbd19ea6949694d2b8e94fac5b6559bf245df6d0be281d64`  
		Last Modified: Tue, 25 Aug 2026 00:25:23 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236a2d0238a63f03f90269f890d5e63e4d1654a9e231e4f001c82fdb74c2413a`  
		Last Modified: Tue, 25 Aug 2026 00:36:24 GMT  
		Size: 4.5 MB (4478817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:382162293f7072f046f1eb47bbfc3bb86d067dab8be64b3088ab2bc4f605e381`  
		Last Modified: Tue, 25 Aug 2026 00:36:24 GMT  
		Size: 435.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34954cb3c118c1250d061c4e89229b429b883a559ef76ce5e279b86a2609e95e`  
		Last Modified: Tue, 25 Aug 2026 00:36:24 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8996375ea6958835464744387c3831f74a4b353b4640a18eaf81df867a540a06`  
		Last Modified: Tue, 25 Aug 2026 00:36:25 GMT  
		Size: 12.8 MB (12778512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a60ba8a721c9d87fcf9b9f8b71b821b01e1f3c8b097bb7b6f370650e6f09739f`  
		Last Modified: Tue, 25 Aug 2026 00:36:25 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0412943bfbfe8f365ab3230b3cf7c6d15cca726b1568ac6dc383d91c49e96ffd`  
		Last Modified: Tue, 25 Aug 2026 00:36:26 GMT  
		Size: 11.9 MB (11929533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b5fafcfb55d95bc64d63f34bc99bc54b52b3c89738e8d07a7f235473159710`  
		Last Modified: Tue, 25 Aug 2026 00:36:26 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2330da6854cd9d09cfe5dac0db08120093e198b996bfc21a41c60a8190319f9b`  
		Last Modified: Tue, 25 Aug 2026 00:36:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc614a34840cffbaa91a7562ff51bd24b8acd35d44fcc15a6d57fcd742a342f5`  
		Last Modified: Tue, 25 Aug 2026 00:36:26 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a5c5dce3afafdfe36c9cb5b9fa33dfd6ddba9a9d2087f235dc7743633ea8e5`  
		Last Modified: Tue, 25 Aug 2026 00:36:27 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9fdd21b20a20c42bfdf5bf8672232c033e0be1abecf3d50ac3f092f68d85d2`  
		Last Modified: Mon, 31 Aug 2026 21:16:33 GMT  
		Size: 1.3 MB (1311218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10ce90cd541216e57d4b6d4803a0863e09082eab17e2ebda5e303ab8044fd258`  
		Last Modified: Mon, 31 Aug 2026 21:16:33 GMT  
		Size: 3.8 MB (3837295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc1456d401dd3550c8b330e334889c4387452747878458c13e7da4d10c81605`  
		Last Modified: Mon, 31 Aug 2026 21:16:33 GMT  
		Size: 7.5 KB (7480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc88685b5651fb5fcf924415ff636ddaa2910dbef35ec20a0742b217e7630e2`  
		Last Modified: Mon, 31 Aug 2026 21:16:33 GMT  
		Size: 2.6 MB (2604062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:901ab2d3e03acf1904db72074f3d46cefde3301474777a6cb39bfca8bcc40bea`  
		Last Modified: Mon, 31 Aug 2026 21:16:34 GMT  
		Size: 1.7 KB (1652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e4e56bed13251c0520f029e3b5cb33c7942d56ca17ecde7a928493f204768a`  
		Last Modified: Mon, 31 Aug 2026 21:16:34 GMT  
		Size: 832.3 KB (832288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b658c9c37dff7bd66135ef5209595f3cb6ca880c1cfef8ecc1fe066d9492676`  
		Last Modified: Mon, 31 Aug 2026 21:16:35 GMT  
		Size: 23.2 MB (23169008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:apache` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:b666cb97117dd7e2b1aa68d1c38147d6d92c8ee4bcbb0bc68d66fce9777fca3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 KB (49914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5008ec33c54589b51b8ad0bc998be5cc8e0d4349071fc7c4a0b7404848ce461c`

```dockerfile
```

-	Layers:
	-	`sha256:7f4e14076d0e04773e8a98498506737b8b4ea8726002df536ffda94a0d97d5d9`  
		Last Modified: Mon, 31 Aug 2026 21:16:33 GMT  
		Size: 49.9 KB (49914 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:apache` - linux; ppc64le

```console
$ docker pull postfixadmin@sha256:ff2081d5705f05f28162ac65e91ba4c819cd33c49e540dc1bce8d4c439ad348c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.1 MB (205094304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa71585e1ae584ef5e822d6a6aa66feba7e9886f59c95f2cb23f79b2f09afac6`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:45:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:46:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:46:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:46:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:46:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:46:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Aug 2026 00:46:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Aug 2026 00:48:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 25 Aug 2026 00:48:07 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 25 Aug 2026 00:48:08 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:48:08 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 25 Aug 2026 02:33:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 02:33:49 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 02:38:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 02:38:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 02:38:47 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 25 Aug 2026 02:38:48 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 02:38:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 02:38:48 GMT
STOPSIGNAL SIGWINCH
# Tue, 25 Aug 2026 02:38:48 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 02:38:48 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 02:38:48 GMT
EXPOSE map[80/tcp:{}]
# Tue, 25 Aug 2026 02:38:48 GMT
CMD ["apache2-foreground"]
# Mon, 31 Aug 2026 22:41:20 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Mon, 31 Aug 2026 22:41:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 22:42:11 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 22:42:11 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 22:42:11 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 22:42:11 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 22:42:11 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 22:42:11 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Mon, 31 Aug 2026 22:42:11 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf # buildkit
# Mon, 31 Aug 2026 22:42:12 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Mon, 31 Aug 2026 22:42:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 22:42:13 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 22:42:13 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 22:42:28 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 22:42:28 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 22:42:28 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:885224ce44af93ea4dccfafa299151884dc46c11ad64d674fd2ba80305810472`  
		Last Modified: Tue, 25 Aug 2026 00:51:29 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a6823b5a4d064828b76b76e09984ab87742c5cbee856fcba92358bb8a7493d`  
		Last Modified: Tue, 25 Aug 2026 00:51:33 GMT  
		Size: 109.6 MB (109601439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218e67ededf9f504cc5aa397a83521f96e71e1acefa9345936c925f269a24cec`  
		Last Modified: Tue, 25 Aug 2026 00:51:29 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7baf8e783fe0af865d7a2b42e03fc5ff2fd8783eac0d1606ed71779572552ed`  
		Last Modified: Tue, 25 Aug 2026 00:53:06 GMT  
		Size: 4.9 MB (4896923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d7f285b69c6b6e05120463401f2005b48ccff04f0e89b7690e5fa989f57c93`  
		Last Modified: Tue, 25 Aug 2026 00:53:05 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6194ce864a158bf2728ae3cd95b22ecca7efca59ea59dcbf161041d23dff36e1`  
		Last Modified: Tue, 25 Aug 2026 00:53:05 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816f03e597575f2464450416bc27176fc9b4aa8a3a1de582d888be4373f01305`  
		Last Modified: Tue, 25 Aug 2026 02:39:12 GMT  
		Size: 12.8 MB (12778616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36471167dfe1b89432bf38975aa050afb41e41778628f743f3fa3b119f37961`  
		Last Modified: Tue, 25 Aug 2026 02:39:12 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1caa9aec9c9854c766aeee7d7d55636b84e52aae28c5a6d920a5de58e2c140b1`  
		Last Modified: Tue, 25 Aug 2026 02:39:12 GMT  
		Size: 12.1 MB (12125522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b83e345e764b7623ac04a5a4d21aebbd4fdf4db96101ccaef13764a3f3ded0`  
		Last Modified: Tue, 25 Aug 2026 02:39:12 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37893e86e9f1a30e32d5e6b774e9113e7b7303b7e0ff2fa4d259f4fe3a6e316`  
		Last Modified: Tue, 25 Aug 2026 02:39:13 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8dbf4b5f8ec8319aa3901fb662e7f9b14bd5bd585046835f08f4c8dc9581d7`  
		Last Modified: Tue, 25 Aug 2026 02:39:13 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe35511d97047828ca2d453d17fcfc7c2e182b9577b82155fd2efd2b0a1099a`  
		Last Modified: Tue, 25 Aug 2026 02:39:14 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1bb4ac7842d2b14a683eab79eebd5361d42b8ef4dec2f979838cbe19a0d988b`  
		Last Modified: Mon, 31 Aug 2026 22:42:40 GMT  
		Size: 1.3 MB (1268509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d751caf1941281d9f9bf813e883407a3fe1c8112473a3ab884abb0d06b3e30f`  
		Last Modified: Mon, 31 Aug 2026 22:42:40 GMT  
		Size: 4.2 MB (4187497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb0ba1e2060e9fb712604482bc4f63432d6a4996e44f8816131d4b2701074eb`  
		Last Modified: Mon, 31 Aug 2026 22:42:40 GMT  
		Size: 7.5 KB (7481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600ab2b552c8e97cecc802eec5dcacc3a5e7f3e1dc9f12eec80021552807e06e`  
		Last Modified: Mon, 31 Aug 2026 22:42:40 GMT  
		Size: 2.6 MB (2604059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c21e874c00de92e8c7aa89c68ba7873ac5ddb048bfeb5bbdbf857c0a5274b86`  
		Last Modified: Mon, 31 Aug 2026 22:42:41 GMT  
		Size: 1.7 KB (1657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d79edb043de2d49d686d222d0c427e6edb4694962f2bbcf81a2568e56d6a05`  
		Last Modified: Mon, 31 Aug 2026 22:42:41 GMT  
		Size: 832.3 KB (832290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f5ceb15ad7645739b404e4c3ed07b7767db735445e09b02b7dfa64714ef7764`  
		Last Modified: Mon, 31 Aug 2026 22:42:42 GMT  
		Size: 23.2 MB (23169105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:apache` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:bd547886d45758186f9d47e2daec3b536f8ff246ce35ce1f9a912e53b5c38706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 KB (50066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47f8f9912dda33e7234341a4b105ad6aa3dacf42aff2d429aad041076956a136`

```dockerfile
```

-	Layers:
	-	`sha256:da8ebf3daa87fdeee266f57104bad807639496edaf8155e77d60f9f36d1bc09a`  
		Last Modified: Mon, 31 Aug 2026 22:42:40 GMT  
		Size: 50.1 KB (50066 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:apache` - linux; riscv64

```console
$ docker pull postfixadmin@sha256:05a5b48c7a879e8be131424b6007911802560e550bbf954bea725f6e62391229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.4 MB (234372279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6a502b4db81a4405554a150d8afd48136e1235423dc87216dfa42c3d470d05`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Wed, 26 Aug 2026 05:56:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 26 Aug 2026 05:56:05 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 06:46:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 26 Aug 2026 06:46:23 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 06:46:24 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 26 Aug 2026 06:46:25 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 26 Aug 2026 06:46:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 26 Aug 2026 06:46:25 GMT
STOPSIGNAL SIGWINCH
# Wed, 26 Aug 2026 06:46:25 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 06:46:25 GMT
WORKDIR /var/www/html
# Wed, 26 Aug 2026 06:46:25 GMT
EXPOSE map[80/tcp:{}]
# Wed, 26 Aug 2026 06:46:25 GMT
CMD ["apache2-foreground"]
# Sat, 29 Aug 2026 12:56:19 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Sat, 29 Aug 2026 12:56:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 29 Aug 2026 13:00:30 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 13:00:30 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Sat, 29 Aug 2026 13:00:30 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Sat, 29 Aug 2026 13:00:30 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Sat, 29 Aug 2026 13:00:30 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Sat, 29 Aug 2026 13:00:30 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Sat, 29 Aug 2026 13:00:30 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf # buildkit
# Sat, 29 Aug 2026 13:00:32 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Sat, 29 Aug 2026 13:00:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 29 Aug 2026 13:00:33 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Sat, 29 Aug 2026 13:00:33 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 29 Aug 2026 13:01:52 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 13:01:52 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Sat, 29 Aug 2026 13:01:52 GMT
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
	-	`sha256:7f0601715a55a6ccdc2be9c57ea859bbefce61ebdf4884548635ea3ef39bfaa1`  
		Last Modified: Wed, 26 Aug 2026 06:49:35 GMT  
		Size: 12.8 MB (12795302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7866222a3b092335098aed62ab991509ae1ef6c7d07995d06972707b9a8f9cae`  
		Last Modified: Wed, 26 Aug 2026 06:49:31 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4042e10e1387ac42a94b2878ce9c71110e476d70c0e951d22cbaf7e992c4c785`  
		Last Modified: Wed, 26 Aug 2026 06:49:36 GMT  
		Size: 14.3 MB (14304084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed1206f9be7e4ed76e05b380771c45654ea203f48d7fb9f21377eb832af24283`  
		Last Modified: Wed, 26 Aug 2026 06:49:31 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ff7d3c4b291595fa39cf2394f5ce00e00b835f94a71d228f1f7b1983c5a058`  
		Last Modified: Wed, 26 Aug 2026 06:49:33 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29842cb9bbae90e233fc83e28a71d309b3f18908e87fc00660eb271750b977df`  
		Last Modified: Wed, 26 Aug 2026 06:49:34 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e217d4af853ffeff414fc8216842794aae50b7bff4d54f2abbc5d0b7bda08107`  
		Last Modified: Wed, 26 Aug 2026 06:49:35 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e4a180255f69fc1c6797b018fbe638e540f4e6dece798f88acff412e249869`  
		Last Modified: Sat, 29 Aug 2026 13:03:04 GMT  
		Size: 1.3 MB (1266253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3b03d870dcf08ffd064334977105effee5692b2287833b62b24a726e43f4b0`  
		Last Modified: Sat, 29 Aug 2026 13:03:04 GMT  
		Size: 458.0 KB (457994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ebfb84100e3f7f81c058b71a80fb7a721d84540f90933291a47fe131423628`  
		Last Modified: Sat, 29 Aug 2026 13:03:04 GMT  
		Size: 7.5 KB (7480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f389354ffdb347284565e74cc5d6bf9c203f2ebe9a7a43752179a76f97847c3d`  
		Last Modified: Sat, 29 Aug 2026 13:03:05 GMT  
		Size: 2.6 MB (2604063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0000c0e09945b359746d16e3774666df5fbf538cb2365dd2ed67ef084b941e15`  
		Last Modified: Sat, 29 Aug 2026 13:03:06 GMT  
		Size: 1.7 KB (1657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b93ff096af5d3b92580168219f3bffaeb99efad28d61c0cea270c30ebae1a61`  
		Last Modified: Sat, 29 Aug 2026 13:03:06 GMT  
		Size: 832.3 KB (832291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5362cbc0ffeb0fdb14fadb59aff66e9a0899bd5d3f3ea234874d19f40e702de8`  
		Last Modified: Sat, 29 Aug 2026 13:03:09 GMT  
		Size: 23.2 MB (23169091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:apache` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:6ab902cf32e21a64dc60e7fb1f92e812b50289a99c4dc5c18729f89e8f07554e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 KB (50061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9880bcb199cb63adf2212af5cbee166921213ce5ec320e3013fb4a41e7289538`

```dockerfile
```

-	Layers:
	-	`sha256:0464b6fbc46c4ca0f4f8682b68562722c8225ce5f0c5c1d29a49cde794bf869c`  
		Last Modified: Sat, 29 Aug 2026 13:03:04 GMT  
		Size: 50.1 KB (50061 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:apache` - linux; s390x

```console
$ docker pull postfixadmin@sha256:7b8712657491bee23de800ff8b1de2fa7d9d7bb3405ee847a16aadb19354ab2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182605018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aeb53746f1c8e2c31a9b33eaafef94f3075c7caf3fb4ed797c9d77e0d47c59c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:28:55 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:29:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:29:15 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Aug 2026 00:29:15 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Aug 2026 00:33:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 25 Aug 2026 00:33:26 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 25 Aug 2026 00:33:27 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 25 Aug 2026 00:33:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:33:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:33:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:33:27 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 00:33:27 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 00:33:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 00:33:27 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 25 Aug 2026 00:55:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:55:12 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:58:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:58:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:58:14 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 25 Aug 2026 00:58:15 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:58:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:58:15 GMT
STOPSIGNAL SIGWINCH
# Tue, 25 Aug 2026 00:58:15 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:58:15 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 00:58:15 GMT
EXPOSE map[80/tcp:{}]
# Tue, 25 Aug 2026 00:58:15 GMT
CMD ["apache2-foreground"]
# Mon, 31 Aug 2026 21:18:45 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Mon, 31 Aug 2026 21:18:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 21:19:13 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:19:13 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:19:13 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:19:13 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:19:13 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:19:13 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Mon, 31 Aug 2026 21:19:13 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf # buildkit
# Mon, 31 Aug 2026 21:19:14 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Mon, 31 Aug 2026 21:19:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:19:14 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:19:14 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 21:19:28 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:19:28 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 21:19:28 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b412cfe4760bdc7b56e741c7fe164da58050ce82034f50bf9549fe3d2a93fd5f`  
		Last Modified: Tue, 25 Aug 2026 00:32:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4520d77388744535c3707d5e6aeb9234458a611ab746b67e0d45f3a23d2e415`  
		Last Modified: Tue, 25 Aug 2026 00:32:58 GMT  
		Size: 92.6 MB (92572172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa86077d502df76a732077dd006459b037305fdfdba4c251caa06d6b9af520db`  
		Last Modified: Tue, 25 Aug 2026 00:32:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5cc1a03ca5e7dbd1f7ccf650cf5f98e89371fff830ca523430379e787a5aa5a`  
		Last Modified: Tue, 25 Aug 2026 00:37:40 GMT  
		Size: 4.3 MB (4338367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede5f1c4d99cec3aa2948f9667186cfa1b32b21e2543bd86ec205d39f40adda6`  
		Last Modified: Tue, 25 Aug 2026 00:37:39 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f292335483fef7e0f98bf48a5b306a4d7d9ddbc96d9e4e3e5d9d9f49b67788d9`  
		Last Modified: Tue, 25 Aug 2026 00:37:39 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bcbb81d40a620cae701f134af3515c3de1f963be72040f2a34bec3b56f719f`  
		Last Modified: Tue, 25 Aug 2026 00:58:34 GMT  
		Size: 12.8 MB (12777915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4234d144ebae39706050b5cf380fbe8bd1656ee2f37fd8f11f8b212eb0afe014`  
		Last Modified: Tue, 25 Aug 2026 00:58:34 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddb5dd19cb932d6ea0f91e59d0a7a1df0f0249b9388b2d531d31a500d7fd4f7d`  
		Last Modified: Tue, 25 Aug 2026 00:58:34 GMT  
		Size: 11.6 MB (11573230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db2a1cfd60cdb0a0a55325ebe70cf8404b19eb3e2b4460f686f956fb0d079365`  
		Last Modified: Tue, 25 Aug 2026 00:58:34 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9744c8ce1664e3da0a4c53d8f7c3b50e174fd6be1671b2434e1777ac2349146e`  
		Last Modified: Tue, 25 Aug 2026 00:58:35 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bb236fc9e618c1dd9e7ca9c1a179f20d6992351a3081ea7f77c4832e8cb9de0`  
		Last Modified: Tue, 25 Aug 2026 00:58:35 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630c22f5cc4d04d37f599954983c4e1a6214180795f81309bc3611740da05a75`  
		Last Modified: Tue, 25 Aug 2026 00:58:36 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbff7060cc20a60320e6b1441b79fb5551865fdc9465d22854ed2fc5d6fb20be`  
		Last Modified: Mon, 31 Aug 2026 21:19:40 GMT  
		Size: 1.3 MB (1307714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2fc30088880b4173983ca5a7112c053fa563487bf21672fdc43e2b29f2c5f6`  
		Last Modified: Mon, 31 Aug 2026 21:19:40 GMT  
		Size: 3.5 MB (3548588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f979591b56253743a5cd9d4d057dcd3295cbbffc7bea532b79f3a2f8efa0add`  
		Last Modified: Mon, 31 Aug 2026 21:19:39 GMT  
		Size: 7.5 KB (7480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a8897bc990ab34f73d8dddb2fc78da6ae323a0fe7ad1d8298e63c54a4f9c37`  
		Last Modified: Mon, 31 Aug 2026 21:19:40 GMT  
		Size: 2.6 MB (2604062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93567297029ddbf0132d84381ab491ac4244d89e118df83408c4b6952b08cd6b`  
		Last Modified: Mon, 31 Aug 2026 21:19:40 GMT  
		Size: 1.7 KB (1652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252ddff2b3025a695788e8b84ef5990451fa5a05830d248b3a9dc8268349b325`  
		Last Modified: Mon, 31 Aug 2026 21:19:41 GMT  
		Size: 832.3 KB (832288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:042d45c407619666df9edfe080a32789f7b06adf80f6f9d4e25304966dbd6411`  
		Last Modified: Mon, 31 Aug 2026 21:19:41 GMT  
		Size: 23.2 MB (23168098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:apache` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:e421c018e95849b9f2c952f0cd499c79ec80162911d2a653f4f263cf361fd0ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 KB (49973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26c33bd378d38b5a05ef44b4b3028411975e2e6a4f114349e382b0a3d125124`

```dockerfile
```

-	Layers:
	-	`sha256:5d2f7ddcf55148cfeae52bc0b941ba7c155f1953662ac980cc032e4df5e3cd8b`  
		Last Modified: Mon, 31 Aug 2026 21:19:39 GMT  
		Size: 50.0 KB (49973 bytes)  
		MIME: application/vnd.in-toto+json
