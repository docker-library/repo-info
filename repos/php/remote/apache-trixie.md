## `php:apache-trixie`

```console
$ docker pull php@sha256:ede24dfd13fe79fb8ea0d0bac0ac45827a9a540d2a16e45c047f9afaf69c3eaf
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

### `php:apache-trixie` - linux; amd64

```console
$ docker pull php@sha256:aa275c245aad6758b1ef7272b933e467152e6b8f0c39730b372f13cff8a8d6f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.6 MB (181610877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643360892347f250d74aabf0f60ceb8782cb7b9b95ccdc3cabc9606e70f6a601`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 16:47:18 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:47:34 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:47:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 16:47:34 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:47:35 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:47:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 06 Jul 2026 16:47:35 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 06 Jul 2026 16:47:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Mon, 06 Jul 2026 16:47:41 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Mon, 06 Jul 2026 16:47:41 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Mon, 06 Jul 2026 16:47:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:47:41 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:47:41 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:47:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:47:41 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:47:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:47:49 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:50:43 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:43 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:50:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:50:43 GMT
STOPSIGNAL SIGWINCH
# Mon, 06 Jul 2026 16:50:43 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:44 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 16:50:44 GMT
EXPOSE map[80/tcp:{}]
# Mon, 06 Jul 2026 16:50:44 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e8a04ecd2437e4192c5a1b7ac37f3c321897631ed2ba854941c08eebb1bf15`  
		Last Modified: Mon, 06 Jul 2026 16:51:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4753f235102bacac6b8202165acf0d5843226c4c949a5f9efecde5189f02f51`  
		Last Modified: Mon, 06 Jul 2026 16:51:10 GMT  
		Size: 117.8 MB (117839713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23b50832db2e2f9120cd789325f05e96dc47395bda289216a54108a79d2e38c8`  
		Last Modified: Mon, 06 Jul 2026 16:51:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff1a204dacc4d07ded741b91d277fdf6e96755a9ba9032af68e7daef7fc7821`  
		Last Modified: Mon, 06 Jul 2026 16:51:06 GMT  
		Size: 4.2 MB (4227810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e36c81e3dccd64b85674dcd2c6e77f59268e8445847762ba87f2d162e3fdb0ce`  
		Last Modified: Mon, 06 Jul 2026 16:51:07 GMT  
		Size: 434.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f975c7b5735446f994e00f5bd7c3cf46444d9da0c3aa63ed0f5babf468cb60d`  
		Last Modified: Mon, 06 Jul 2026 16:51:07 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d4d4e910f2ff6f0a2d741a37238fa65fd27c9b356372912eed4a68a8fc805b`  
		Last Modified: Mon, 06 Jul 2026 16:51:09 GMT  
		Size: 14.6 MB (14576391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a42d7ab3c0ee1e494bed0d20d58e91c193dc017f2a2e96467e16eb2307b88b6`  
		Last Modified: Mon, 06 Jul 2026 16:51:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99687fd055ba426a47674d4740105853b1f1922b25ab28bb1e4a61b96eab14ec`  
		Last Modified: Mon, 06 Jul 2026 16:51:09 GMT  
		Size: 15.2 MB (15176051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e57336fa0722e10a4660a620af9d1462eea1422096fd062d4b9e546a25488cc`  
		Last Modified: Mon, 06 Jul 2026 16:51:10 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1387c5f35a5d7b9ebe329e13e53913ca7177f7ceaf834b44a6b52384c2d6ca47`  
		Last Modified: Mon, 06 Jul 2026 16:51:10 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a38a7eed6bffc4f6a853afd1fcbffa9f902879eb371ebdfc6b922cadfb78fceb`  
		Last Modified: Mon, 06 Jul 2026 16:51:11 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:apache-trixie` - unknown; unknown

```console
$ docker pull php@sha256:f991bc468aa16ac77b98680bd73b37f678c49ec0b5f676ad2ba6b68355e85b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7273071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8f7bb316b07a7aace3f7305a01181b9b689294bec834b23e3e4b0b65c211ba`

```dockerfile
```

-	Layers:
	-	`sha256:781042d9f9b8b2ad91f4aa8eb524adb1d128fc1534d288bad4f8fb78f3a8a163`  
		Last Modified: Mon, 06 Jul 2026 16:51:06 GMT  
		Size: 7.2 MB (7213367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1e345e2a9b60ab97097118e50b3a151899ddcf86faf20d179734510e80aa118`  
		Last Modified: Mon, 06 Jul 2026 16:51:06 GMT  
		Size: 59.7 KB (59704 bytes)  
		MIME: application/vnd.in-toto+json

### `php:apache-trixie` - linux; arm variant v5

```console
$ docker pull php@sha256:938597871eb50158593b3adb06aa2ed11aa37a25aced2ad86bcb76e8cb66f715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.8 MB (154757807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e5c9852fe854e85d537c7411c02903c4838e35e680311dba3eda10ba4436a4`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 16:47:15 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:47:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:47:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 16:47:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:47:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:47:37 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 06 Jul 2026 16:47:37 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 06 Jul 2026 16:47:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Mon, 06 Jul 2026 16:47:48 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Mon, 06 Jul 2026 16:47:48 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Mon, 06 Jul 2026 16:47:48 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:47:48 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:47:48 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:47:48 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:47:48 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:48:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:48:00 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:51:27 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:27 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:51:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:51:27 GMT
STOPSIGNAL SIGWINCH
# Mon, 06 Jul 2026 16:51:27 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:27 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 16:51:27 GMT
EXPOSE map[80/tcp:{}]
# Mon, 06 Jul 2026 16:51:27 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76c86fa524a29676538a69a6ed8aaa6b44404902a65bd33d7ed4e3ec3f8a16fe`  
		Last Modified: Mon, 06 Jul 2026 16:51:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d2a3370cfb503980663a86e5b1206e224ef6297bdea20d5e2fc32b114bc1ee`  
		Last Modified: Mon, 06 Jul 2026 16:51:49 GMT  
		Size: 94.9 MB (94887182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c1572f339c34346b9e65cfb00aa9f7d2312ba8cc8e04cc697a954bdd6588182`  
		Last Modified: Mon, 06 Jul 2026 16:51:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b8b34134ea80b96748358b7c2733404ac40c69efd2f0c0816a35c3e3ea3841`  
		Last Modified: Mon, 06 Jul 2026 16:51:46 GMT  
		Size: 4.1 MB (4090092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:195666118465d58e824bd5e267c1ef37d16061dd80f61979e4cc7faae660e1b8`  
		Last Modified: Mon, 06 Jul 2026 16:51:48 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad610486871ef4689a82f1794c59e9ae3ca58019b839145f1db0cb075a544ca5`  
		Last Modified: Mon, 06 Jul 2026 16:51:48 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73dba4de713c2198bb9d5b7a5a7c8f0f24677596e368228f5d7c3fda3ffa652b`  
		Last Modified: Mon, 06 Jul 2026 16:51:49 GMT  
		Size: 14.6 MB (14574279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387b91b1c3673842584f7a9bbcf05b432efebc0a159e8daa35ff6d09ec82cac4`  
		Last Modified: Mon, 06 Jul 2026 16:51:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf7b8541d965c61e439f3200dfe96ceafeeec63c3534a84cbaca71885d31730`  
		Last Modified: Mon, 06 Jul 2026 16:51:50 GMT  
		Size: 13.2 MB (13241546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2508622d807c0579d5b8ddea7b968b0310fc0e102018bf998405242dde4f9b`  
		Last Modified: Mon, 06 Jul 2026 16:51:50 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f891396d0f565f1472a29d3c8a02a56486cc90da8e2c9c86e4a7cfd5dfbb3465`  
		Last Modified: Mon, 06 Jul 2026 16:51:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437a0fe0438ee7b0ce2921b51280666f16323ceb8816af2cfe758e50e2ad28bd`  
		Last Modified: Mon, 06 Jul 2026 16:51:51 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:apache-trixie` - unknown; unknown

```console
$ docker pull php@sha256:e5a587daa5bd542bca3024cd18e2e86fb05f2c589095b7e26bf73e622a87dbe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7073137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed55150930fd7c5b811de8f1ace9f5d9b17868cfbcd2de85696b5fc74274a1f2`

```dockerfile
```

-	Layers:
	-	`sha256:c140ddff7947e87b043d04aa167c75cbe89f2bd4e162e4a7e30ba071a6d43389`  
		Last Modified: Mon, 06 Jul 2026 16:51:47 GMT  
		Size: 7.0 MB (7013229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cdd5c8abd259e037dbbe0900e3ec5a3839a34cc70af70941c7f29535bb208f5`  
		Last Modified: Mon, 06 Jul 2026 16:51:46 GMT  
		Size: 59.9 KB (59908 bytes)  
		MIME: application/vnd.in-toto+json

### `php:apache-trixie` - linux; arm variant v7

```console
$ docker pull php@sha256:006143d72d08350ebc9e12f950fb56db4ce1f0213b9b379b2cfbf5604335f9a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143430465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd35b1f197547902d9cab7d5ffd4a351fdca1429c6e7fff688cda9988aff5e7`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 16:47:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:47:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:47:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 16:47:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:47:36 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:47:36 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 06 Jul 2026 16:47:36 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 06 Jul 2026 16:47:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Mon, 06 Jul 2026 16:47:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Mon, 06 Jul 2026 16:47:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Mon, 06 Jul 2026 16:47:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:45 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:47:45 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:47:45 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:47:45 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:47:45 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:47:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:47:54 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:51:23 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:23 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:51:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:51:23 GMT
STOPSIGNAL SIGWINCH
# Mon, 06 Jul 2026 16:51:23 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:23 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 16:51:23 GMT
EXPOSE map[80/tcp:{}]
# Mon, 06 Jul 2026 16:51:23 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1a8053e521c93f09638e62df6aa986aaac08e99f0c9cf6a0facb5dc60c8a619`  
		Last Modified: Mon, 06 Jul 2026 16:51:40 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2082dff11714520646019d2b5b529f5fd5520646f03af9d37ef5d46502af398d`  
		Last Modified: Mon, 06 Jul 2026 16:51:42 GMT  
		Size: 86.3 MB (86256096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094bd64e1115f780c12f61810eadff6a8fa32e7b5103ac326c92a39b787a280d`  
		Last Modified: Mon, 06 Jul 2026 16:51:40 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73de50eed85f1ae81776a59ab5a9715de8638115c5ab59d1cc475826bd010860`  
		Last Modified: Mon, 06 Jul 2026 16:51:40 GMT  
		Size: 3.8 MB (3756664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b608718d45ee0f351e84c585d2ff9bb04fc75eedd85476cad27d79419e6dda`  
		Last Modified: Mon, 06 Jul 2026 16:51:41 GMT  
		Size: 427.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa3c8c6bf8f9daf3b0e1cbc8f34692c174fd58778a7a273783160b276de294e`  
		Last Modified: Mon, 06 Jul 2026 16:51:42 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:992cfd28801bebb39621485aa95f8be2f9a312210e6f877dbc3e9c1292b633ff`  
		Last Modified: Mon, 06 Jul 2026 16:51:42 GMT  
		Size: 14.6 MB (14574408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc0a653ef557ca22c25dc44f0ffd56196bd2107999420d63832b5d467b4c2cd`  
		Last Modified: Mon, 06 Jul 2026 16:51:43 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0440077da3418472b1b71015cdfaabeef05390a5500e44f15e66f99f3fd1e058`  
		Last Modified: Mon, 06 Jul 2026 16:51:43 GMT  
		Size: 12.6 MB (12626757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2fa6353c9e01f5d58863bcc1d392841851f8758c7581fcb8e23c85a1605e4f9`  
		Last Modified: Mon, 06 Jul 2026 16:51:44 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1bfd6d587b7107db62f07c6cad79354ef69768d61171cd1c1123de96ac7ea30`  
		Last Modified: Mon, 06 Jul 2026 16:51:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12cb6fc846c6e14a9a9d9525c088e096b1efa779d2fa6a819ee3e02763cfc4f0`  
		Last Modified: Mon, 06 Jul 2026 16:51:44 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:apache-trixie` - unknown; unknown

```console
$ docker pull php@sha256:8484e9ccde651d83b13aaaec6bc6635644560df81f3c836fdecc3bed53bd7ced
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7077135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1247ed42f81ea0eab56d7ef783c73cf71a039a39aca889354098b86288458742`

```dockerfile
```

-	Layers:
	-	`sha256:10003f36d6221c0871a8e0f5565186de7b638c1d26acdfafeda6198200630f25`  
		Last Modified: Mon, 06 Jul 2026 16:51:41 GMT  
		Size: 7.0 MB (7017227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed20dc62220482bca3bff500cb4926a9f802f1e4e9175165890bca563bca9ea1`  
		Last Modified: Mon, 06 Jul 2026 16:51:40 GMT  
		Size: 59.9 KB (59908 bytes)  
		MIME: application/vnd.in-toto+json

### `php:apache-trixie` - linux; arm64 variant v8

```console
$ docker pull php@sha256:34cf630a2d7517af1e68fa7cbbc99edc4bb0dc23ad9215ccf886bc63992b7aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173942791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22abfbde9a18f2ad67fdd11649aadb4140b8411377458c910e4a1c4206061a6b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 16:47:10 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:47:27 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:47:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 16:47:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:47:27 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:47:27 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 06 Jul 2026 16:47:27 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 06 Jul 2026 16:47:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Mon, 06 Jul 2026 16:47:33 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Mon, 06 Jul 2026 16:47:33 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Mon, 06 Jul 2026 16:47:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:47:33 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:47:33 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:47:33 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:47:33 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:47:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:47:41 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:50:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:50:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:50:57 GMT
STOPSIGNAL SIGWINCH
# Mon, 06 Jul 2026 16:50:57 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:57 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 16:50:57 GMT
EXPOSE map[80/tcp:{}]
# Mon, 06 Jul 2026 16:50:57 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc5244b7bc90df7e6ab389767dc9d45d5c41a892e7081cb494eb3c48a97a63a0`  
		Last Modified: Mon, 06 Jul 2026 16:51:18 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0779788593ca0a1ea5a89ae700d25f26e8ce9826e289cacffd33e94e0d749f2b`  
		Last Modified: Mon, 06 Jul 2026 16:51:21 GMT  
		Size: 110.2 MB (110170014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e3a355210adbdf223dd4bff156ed4dbc3e7063719e89a3ebda20d97f0d250a`  
		Last Modified: Mon, 06 Jul 2026 16:51:18 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba5ab13ed1be2c7c8bfd9748263716aba7479250db97631725d2cadeacc4a8`  
		Last Modified: Mon, 06 Jul 2026 16:51:18 GMT  
		Size: 4.3 MB (4308070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73bf7a6d116cfdbe12cd6590251bc73eaf3baa057fa4e6373d3726ce7c4fe1aa`  
		Last Modified: Mon, 06 Jul 2026 16:51:19 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411e1ea716ebcc5969ff4a3a4d23966397f44585815371f2283846ab8b6d415a`  
		Last Modified: Mon, 06 Jul 2026 16:51:19 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fed1176cc880bb75db0ec285715496aa6fd000166237e9fec00db0614901fd9`  
		Last Modified: Mon, 06 Jul 2026 16:51:21 GMT  
		Size: 14.6 MB (14576135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab1d751c7c18fe39796faaff52b6ca6939aa3d9ba3141d746fbf5a57e619eda5`  
		Last Modified: Mon, 06 Jul 2026 16:51:21 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8fa3764aff144b77359097b748f704d7ccab2842991bd9d0a59d4093b95850a`  
		Last Modified: Mon, 06 Jul 2026 16:51:21 GMT  
		Size: 14.7 MB (14734533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3ed70326b4b725ffd0638519bcec115f854c87cd2ca64767b81bc8bca69e8f`  
		Last Modified: Mon, 06 Jul 2026 16:51:22 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:261d4671af28fbbb5d91ae679f35fc3c1fa2e4bcca8afc444f836138487ed283`  
		Last Modified: Mon, 06 Jul 2026 16:51:22 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ff07a5036cf876ea6a0c2ddde6cdd787d850804b25d6c17d3c3a3f2f0e135e`  
		Last Modified: Mon, 06 Jul 2026 16:51:23 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:apache-trixie` - unknown; unknown

```console
$ docker pull php@sha256:d0032cf60a99151072b2923b2a0792430e48d8ace653de04aa22f93460d2fb7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7370678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cab5e42b882946bece7259bd5c39a53b0b5b081a5336b89177c41af3b09d4029`

```dockerfile
```

-	Layers:
	-	`sha256:606f79245ab1b450ca89959eb25d3bfd3fd11b5d7fca8997c8448ead81ad72f7`  
		Last Modified: Mon, 06 Jul 2026 16:51:18 GMT  
		Size: 7.3 MB (7310702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:160305fcbb5dbcc64cf98535905d02ca76f7f44cd18a4b15ce3c17c5bd3c32d3`  
		Last Modified: Mon, 06 Jul 2026 16:51:18 GMT  
		Size: 60.0 KB (59976 bytes)  
		MIME: application/vnd.in-toto+json

### `php:apache-trixie` - linux; 386

```console
$ docker pull php@sha256:15592faee25a22440b6607bcaf08584f83053fa8c3e8842a3b3299b6d7e89a77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.0 MB (182014617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfe1597423f06ac69ce892122988b36b7e85420cdb7b98543de46572afefe656`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 16:47:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:47:42 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:47:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 16:47:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:47:42 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:47:42 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 06 Jul 2026 16:47:42 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 06 Jul 2026 16:47:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Mon, 06 Jul 2026 16:47:49 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Mon, 06 Jul 2026 16:47:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Mon, 06 Jul 2026 16:47:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:47:49 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:47:49 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:47:49 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:47:49 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:47:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:47:58 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:51:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:51:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:51:22 GMT
STOPSIGNAL SIGWINCH
# Mon, 06 Jul 2026 16:51:22 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:22 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 16:51:22 GMT
EXPOSE map[80/tcp:{}]
# Mon, 06 Jul 2026 16:51:22 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412da6cf5a1601660273c556b1e7960157bd3b1a5e912f55ca90e7b833cc7696`  
		Last Modified: Mon, 06 Jul 2026 16:51:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0d8b345595d88a6451ba7dde64ba703947d39a3e95dfe0403cd0cde063e482`  
		Last Modified: Mon, 06 Jul 2026 16:51:47 GMT  
		Size: 116.1 MB (116142629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bb2c412dc2aa1e82523cd0c563d4ab61f61a581b6878ed371d67818973ab11b`  
		Last Modified: Mon, 06 Jul 2026 16:50:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54b2807c11e7cce08dfe055b88f7d2c215bd28c06be64a27a949780afcd50fc6`  
		Last Modified: Mon, 06 Jul 2026 16:51:43 GMT  
		Size: 4.5 MB (4459112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e581e1c62938e00c11cd9652ea2b03127ebf4689c064935bed215135610220be`  
		Last Modified: Mon, 06 Jul 2026 16:51:44 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156ddc7ab16e9ece4c1dd3fd840f4a4fd308969abe1292223dd1c890fde02d1c`  
		Last Modified: Mon, 06 Jul 2026 16:51:45 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:093937fda06b45cdc94678dc3e5b00ad495944e95fa27c691cf3460e36315cbe`  
		Last Modified: Mon, 06 Jul 2026 16:51:46 GMT  
		Size: 14.6 MB (14575569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b43e4b8a28399444dc97104e8681f962b9439fdde3031fce289f9c263aebe43`  
		Last Modified: Mon, 06 Jul 2026 16:51:46 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d61c2145f7e70f5ba880baf1d942eaba74c924f647383520e00cbd195d18c6e`  
		Last Modified: Mon, 06 Jul 2026 16:51:46 GMT  
		Size: 15.5 MB (15530606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1719bbd03cf18c841a80a8a245c47623bb45f2f14faf51020bf559ccad03a5`  
		Last Modified: Mon, 06 Jul 2026 16:51:47 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107231cc9d764e2170d9dc2b982a9ab40bbd0421689136e9c14952bf63f6fbbd`  
		Last Modified: Mon, 06 Jul 2026 16:51:47 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:652a44651d79849a1a25c851bc9ff07bd3cc720a057781d6e0077e91d8344afc`  
		Last Modified: Mon, 06 Jul 2026 16:51:48 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:apache-trixie` - unknown; unknown

```console
$ docker pull php@sha256:d0cf4287bfbd9af4026e0ff091da8a9fb3d53ec4539dd109cf0a18c3ec976fa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7246849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b327239ec945518e65ac34e722e1e93a13025a06160e8b6ba992f9eee67a2c9`

```dockerfile
```

-	Layers:
	-	`sha256:845cbac1ebc748a01bd61f533148683946fabbbebbc74cee1651eb77561aeb9a`  
		Last Modified: Mon, 06 Jul 2026 16:51:43 GMT  
		Size: 7.2 MB (7187213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf0150f9fe2027e4ceb337c9aa28834d208587c7225745d51c15fc907338863b`  
		Last Modified: Mon, 06 Jul 2026 16:51:43 GMT  
		Size: 59.6 KB (59636 bytes)  
		MIME: application/vnd.in-toto+json

### `php:apache-trixie` - linux; ppc64le

```console
$ docker pull php@sha256:8e52a21c77ed693e804350c0e2fcbca7d3ad6ddf2bd8116db7f075e7e4e32aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.9 MB (177851311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88a7eb59195627b55597c48f35020922a00878e26afd87ed7e73af21b402f2e9`
-	Entrypoint: `["docker-php-entrypoint"]`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 02 Jul 2026 20:32:36 GMT
ENV PHP_VERSION=8.5.8
# Thu, 02 Jul 2026 20:32:36 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 02 Jul 2026 20:32:36 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:46:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:46:11 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:51:27 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:27 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:51:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:51:27 GMT
STOPSIGNAL SIGWINCH
# Mon, 06 Jul 2026 16:51:28 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:28 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 16:51:28 GMT
EXPOSE map[80/tcp:{}]
# Mon, 06 Jul 2026 16:51:28 GMT
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
	-	`sha256:ff8c16b1c01a4558c3cea0b0d95fdc56ca8ed8dbb3f364f02cfc4c01594da405`  
		Last Modified: Mon, 06 Jul 2026 16:51:52 GMT  
		Size: 14.6 MB (14590886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a222d707e91c1dea8555d3f3da7257c3c253ad71a5a639320f124c4640153744`  
		Last Modified: Mon, 06 Jul 2026 16:51:35 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe75a55247fc451be540bc1b9eb8ecbb40cad498d25f229f485aac372d97feb`  
		Last Modified: Mon, 06 Jul 2026 16:51:52 GMT  
		Size: 15.2 MB (15165873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f76e87fcb074e03f48fdadea16dfa3a4f6ce76490af7061ad3d873535c3618df`  
		Last Modified: Mon, 06 Jul 2026 16:51:52 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb5d41f8a2069c055adf44487c557556b8df9d81d8b52bd96c504e68198247e`  
		Last Modified: Mon, 06 Jul 2026 16:51:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1abef3f384579cfcd6d8b23bfebb3f130b78b66606cf0f4f0f682d43aeb2f6e`  
		Last Modified: Mon, 06 Jul 2026 16:51:53 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:apache-trixie` - unknown; unknown

```console
$ docker pull php@sha256:6125b211b060d4607068b42c1e3b4a28350ac800c6203f7e2de0d64e8b602e5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7272941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c02aa3faaa5d901e4b72ee9f3f00fe2e883983ea4dbfba67b493f57608b6da94`

```dockerfile
```

-	Layers:
	-	`sha256:c2139d6ac6f70d33190d6fcb8d13af7c1ee8b83b9d04cca5d2a070180cbc6a76`  
		Last Modified: Mon, 06 Jul 2026 16:51:52 GMT  
		Size: 7.2 MB (7213153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b77456c4e725e4f46e568fbe81f152969cc31d7c1b97eb447e2b51eb2c92d140`  
		Last Modified: Mon, 06 Jul 2026 16:51:51 GMT  
		Size: 59.8 KB (59788 bytes)  
		MIME: application/vnd.in-toto+json

### `php:apache-trixie` - linux; riscv64

```console
$ docker pull php@sha256:d4139b80795702b627f01d5f843a035a590cf1199d19179ea728adc099430f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.7 MB (207716697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2fe0d052d2827758de3c13ac73f32fbe8da5dd713a58d71d1d7acd1343058e6`
-	Entrypoint: `["docker-php-entrypoint"]`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_VERSION=8.5.8
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 17:49:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 17:49:50 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 18:47:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 18:47:12 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 18:47:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 18:47:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 18:47:13 GMT
STOPSIGNAL SIGWINCH
# Mon, 06 Jul 2026 18:47:13 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 18:47:13 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 18:47:13 GMT
EXPOSE map[80/tcp:{}]
# Mon, 06 Jul 2026 18:47:13 GMT
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
	-	`sha256:cc1947999d222c9ab58e896faac99751df2e632a6be7761d0f561590b4fdafd4`  
		Last Modified: Mon, 06 Jul 2026 18:50:27 GMT  
		Size: 14.6 MB (14590914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ec804618d296d396712434415c2d9cd37b154fede3877654e928966c81840d9`  
		Last Modified: Mon, 06 Jul 2026 18:50:22 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fc67ea78a0f428fc521a2766e441251db76e63aff563b00eaa93d2ca2f39c2`  
		Last Modified: Mon, 06 Jul 2026 18:50:27 GMT  
		Size: 14.2 MB (14221012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b262caf316285a77f0a426069ad450c8230bbe4a67002b35951286f0ae2348`  
		Last Modified: Mon, 06 Jul 2026 18:50:22 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7f433e334111d9ba5dcba0b2f207de29d3b538dd4e62c326d3ed12df9d8237a`  
		Last Modified: Mon, 06 Jul 2026 18:50:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f4ee49b7a41c0d172d50376a4f91e67b993c9ce56ff7b71246273c05744f49`  
		Last Modified: Mon, 06 Jul 2026 18:50:25 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:apache-trixie` - unknown; unknown

```console
$ docker pull php@sha256:deb9a1215e852fe222ca6b07995682c125a13d6034331c19e69d5c15b761cad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7344966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbeacb9f214473bf8370349991231b2a06d621ab0afbb6262b4b8613d72f0778`

```dockerfile
```

-	Layers:
	-	`sha256:9cf3b0f681a95b17cdf575c0f178d123572ad83b7ac92635ebce2133d1e25ee5`  
		Last Modified: Mon, 06 Jul 2026 18:50:25 GMT  
		Size: 7.3 MB (7285178 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f2e3cc39dad0fb48d589b411ed7909f5fc194e819d36ad989f2b9c6d0021221`  
		Last Modified: Mon, 06 Jul 2026 18:50:22 GMT  
		Size: 59.8 KB (59788 bytes)  
		MIME: application/vnd.in-toto+json

### `php:apache-trixie` - linux; s390x

```console
$ docker pull php@sha256:127fa4bcbe32048a8931f3adb928dcd90d28affb4e0cfffde3015291137a0cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.8 MB (155799752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00eb5a3f8ff0eac728b00a13bcc8748590c283b1a5ec21b3c9d759b17395b088`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:31:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:31:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:31:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:31:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 02 Jul 2026 20:31:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 02 Jul 2026 20:31:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 02 Jul 2026 20:31:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 02 Jul 2026 20:31:47 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 02 Jul 2026 20:31:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:31:47 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:31:47 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 02 Jul 2026 20:31:47 GMT
ENV PHP_VERSION=8.5.8
# Thu, 02 Jul 2026 20:31:47 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 02 Jul 2026 20:31:47 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:49:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:49:07 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:07:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 17:07:51 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:07:54 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 17:07:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 17:07:54 GMT
STOPSIGNAL SIGWINCH
# Mon, 06 Jul 2026 17:07:57 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:08:00 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 17:08:00 GMT
EXPOSE map[80/tcp:{}]
# Mon, 06 Jul 2026 17:08:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24549574cafa2d14758f9bad0b552d3186e9a87b47d125cf6f4e680109299ef5`  
		Last Modified: Thu, 02 Jul 2026 20:36:02 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b403cfa335a77323eea4ad7fa7bbad351654fd6d7e46de34561e1ae775e37e`  
		Last Modified: Thu, 02 Jul 2026 20:36:04 GMT  
		Size: 92.6 MB (92572435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39561fa42a7c5dbfbc6bf31633778e52d33970d79fc12092a8ccef1699c74a44`  
		Last Modified: Thu, 02 Jul 2026 20:36:02 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b52d3f9f366549ddfe97f19260376706a563b4eba434d96e31c7c2fc35f2b8c`  
		Last Modified: Thu, 02 Jul 2026 20:36:06 GMT  
		Size: 4.3 MB (4331432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8264386c28d7bcb37f30328c9779096219dce8791d75fecda50b879804c097a`  
		Last Modified: Thu, 02 Jul 2026 20:36:06 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ca63c23e67fbdd7e4aa895673fdba2efb52384153a74b9dd4c325018eced19`  
		Last Modified: Thu, 02 Jul 2026 20:36:06 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc43718a8a8b7e3e9ead7233e80c3eef1ab380d01c07637a946cc9b273ffd14`  
		Last Modified: Mon, 06 Jul 2026 17:09:21 GMT  
		Size: 14.6 MB (14590404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca13deb525547cd5f3e6d9652a240aeb3a0bc4892f86943968802341b94196f`  
		Last Modified: Mon, 06 Jul 2026 17:09:20 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebfa05836d8b20c6916b4724285056136b0f535fadca2dd1b16946abbd6d77d1`  
		Last Modified: Mon, 06 Jul 2026 17:09:21 GMT  
		Size: 14.4 MB (14448603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ad0aaacc847ea5e4789c22115b05420102955d861fb1c123feff4139a19931`  
		Last Modified: Mon, 06 Jul 2026 17:09:19 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763e82497cf288ec075beb6161cff21a12923c2e6493d20c01717517b826337b`  
		Last Modified: Mon, 06 Jul 2026 17:09:21 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1219f4e6a11f633de8a02ba971e4b666155d3f98b5e0e3aeac4044f24356146`  
		Last Modified: Mon, 06 Jul 2026 17:09:21 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:apache-trixie` - unknown; unknown

```console
$ docker pull php@sha256:8ac0e58e3400c769164a4640de3d545775d2c19077913e0ae14f42af564e7ad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7090316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f26c425fff259f7b36bf3463e5237317e76ba3e92363fa196e30195575dda9`

```dockerfile
```

-	Layers:
	-	`sha256:50160cd6009eb89001d265cfa49c43e0287c77fb70329178d3edb3a7ae61a333`  
		Last Modified: Mon, 06 Jul 2026 17:09:20 GMT  
		Size: 7.0 MB (7030624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab28a45a7b6726f14e0235196492bffed57753cd19b9009d4342a4a0c174ff79`  
		Last Modified: Mon, 06 Jul 2026 17:09:18 GMT  
		Size: 59.7 KB (59692 bytes)  
		MIME: application/vnd.in-toto+json
