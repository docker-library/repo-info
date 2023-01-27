## `yourls:latest`

```console
$ docker pull yourls@sha256:ebcb25ea90b1723f8699c0a97574516a6a9f23b3689798874301b702d204f09f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 8
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; mips64le
	-	linux; ppc64le
	-	linux; s390x

### `yourls:latest` - linux; amd64

```console
$ docker pull yourls@sha256:32bb1cbfe6acad27277595675590ba150d0228fb0439b9655dcfc87b6dcd0cea
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169847305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a15fa3936e0ae35470ef41a89ae57fc8bd0df5a12ed0e97ffd24db4cb281c26`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 07:18:54 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 11 Jan 2023 07:18:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 11 Jan 2023 07:19:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 07:19:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 11 Jan 2023 07:19:16 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 11 Jan 2023 07:22:46 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 11 Jan 2023 07:22:46 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 11 Jan 2023 07:22:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 11 Jan 2023 07:22:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 11 Jan 2023 07:22:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 11 Jan 2023 07:22:59 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 11 Jan 2023 07:22:59 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 11 Jan 2023 07:22:59 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 11 Jan 2023 07:51:32 GMT
ENV GPG_KEYS=528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 39B641343D8C104B2B146DC3F9C39DC0B9698544 F1F692238FBC1666E5A5CCD4199F9DFEF6FFBAFD
# Wed, 11 Jan 2023 07:51:32 GMT
ENV PHP_VERSION=8.1.14
# Wed, 11 Jan 2023 07:51:32 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.1.14.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.1.14.tar.xz.asc
# Wed, 11 Jan 2023 07:51:32 GMT
ENV PHP_SHA256=e16e47a872d58685913ac848ce92ec49f42c1828110c98c65fb6265a08724a1a
# Wed, 11 Jan 2023 07:51:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg dirmngr; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 11 Jan 2023 07:51:45 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 11 Jan 2023 07:54:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version
# Wed, 11 Jan 2023 07:54:53 GMT
COPY multi:e11221d43af7136e4dbad5a74e659bcfa753214a9e615c3daf357f1633d9d3d1 in /usr/local/bin/ 
# Wed, 11 Jan 2023 07:54:54 GMT
RUN docker-php-ext-enable sodium
# Wed, 11 Jan 2023 07:54:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 11 Jan 2023 07:54:54 GMT
STOPSIGNAL SIGWINCH
# Wed, 11 Jan 2023 07:54:54 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 11 Jan 2023 07:54:54 GMT
WORKDIR /var/www/html
# Wed, 11 Jan 2023 07:54:54 GMT
EXPOSE 80
# Wed, 11 Jan 2023 07:54:55 GMT
CMD ["apache2-foreground"]
# Thu, 12 Jan 2023 00:24:51 GMT
LABEL org.opencontainers.image.title=YOURLS
# Thu, 12 Jan 2023 00:24:51 GMT
LABEL org.opencontainers.image.description=Your Own URL Shortener
# Thu, 12 Jan 2023 00:24:51 GMT
LABEL org.opencontainers.image.url=https://yourls.org/
# Thu, 12 Jan 2023 00:24:51 GMT
LABEL org.opencontainers.image.documentation=https://yourls.org/
# Thu, 12 Jan 2023 00:24:51 GMT
LABEL org.opencontainers.image.vendor=YOURLS Org
# Thu, 12 Jan 2023 00:24:51 GMT
LABEL org.opencontainers.image.authors=YOURLS
# Thu, 12 Jan 2023 00:24:51 GMT
LABEL org.opencontainers.image.licenses=MIT
# Thu, 12 Jan 2023 00:24:51 GMT
LABEL io.artifacthub.package.readme-url=https://raw.githubusercontent.com/YOURLS/YOURLS/master/README.md
# Thu, 12 Jan 2023 00:25:32 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)" bcmath opcache pdo_mysql mysqli
# Thu, 12 Jan 2023 00:25:32 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 12 Jan 2023 00:25:33 GMT
RUN a2enmod rewrite expires
# Thu, 12 Jan 2023 00:25:33 GMT
ARG YOURLS_VERSION=1.9.1
# Thu, 12 Jan 2023 00:25:33 GMT
ARG YOURLS_SHA256=0bf53290e8f86ea2e0121aac70f7c64d70d3dfb54823acb9dcc343dd7c5f455a
# Thu, 12 Jan 2023 00:25:33 GMT
LABEL org.opencontainers.image.version=1.9.1
# Thu, 12 Jan 2023 00:25:33 GMT
ENV YOURLS_VERSION=1.9.1
# Thu, 12 Jan 2023 00:25:33 GMT
ENV YOURLS_SHA256=0bf53290e8f86ea2e0121aac70f7c64d70d3dfb54823acb9dcc343dd7c5f455a
# Thu, 12 Jan 2023 00:25:35 GMT
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls
# Thu, 12 Jan 2023 00:25:36 GMT
COPY --chown=www-data:www-datafile:f5584b9849b80034920f4de5f1297cb1be461f765f3437b87ddf6c86daa6499d in /usr/src/yourls/user/ 
# Thu, 12 Jan 2023 00:25:36 GMT
COPY file:975ababf859e7cabd8184ab0b2b317a5d8d3ccb6f4922be7f2a5d28c20d075a2 in /usr/local/bin/ 
# Thu, 12 Jan 2023 00:25:36 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /usr/src/yourls/ 
# Thu, 12 Jan 2023 00:25:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 00:25:36 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1873be8582646883d25d54eaafb9afa7d778d378e04063e1f616cbdec129b9f4`  
		Last Modified: Wed, 11 Jan 2023 08:44:37 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce6a163d8c1d0c95101cdc4fa31cc6ef5846353b802f3885bc2756afb42d7f8`  
		Last Modified: Wed, 11 Jan 2023 08:44:51 GMT  
		Size: 91.6 MB (91634688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008a172010ba0e6c008f04b19dec142a3b41ef2bcdb59901c88a2a356f61b766`  
		Last Modified: Wed, 11 Jan 2023 08:44:37 GMT  
		Size: 270.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15353ae3d7776a586a9112c5222408676dd8d6d855c297bcba38c69664d1ce1`  
		Last Modified: Wed, 11 Jan 2023 08:45:35 GMT  
		Size: 19.2 MB (19244762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223eb1888c0fbca0a4c820165d5efdc1939df3dcf21e44f0190962cce43d10bf`  
		Last Modified: Wed, 11 Jan 2023 08:45:31 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83374c2a967a33ec2fc5a1ed9078748776b1d11dbd7a87b8e15ee4f1874a1e2a`  
		Last Modified: Wed, 11 Jan 2023 08:45:32 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdc86711b266860f74d4740622b49e0bd958801d087d01ee6ce8363d27e7db7`  
		Last Modified: Wed, 11 Jan 2023 08:48:59 GMT  
		Size: 12.1 MB (12093594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c0224c39b85d9baf452ef0273b6814112d62bce92fc19f9116451674961585`  
		Last Modified: Wed, 11 Jan 2023 08:48:57 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915d82c7f5c566ef2949f948ea9e662b39b3ea2a228873055fc81f75ca65cfb1`  
		Last Modified: Wed, 11 Jan 2023 08:48:59 GMT  
		Size: 11.0 MB (11048914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc037a9c9035fab146ca226b0e96802973e3bf04f3554a9c8a5e793f25727429`  
		Last Modified: Wed, 11 Jan 2023 08:48:57 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768542e0b637a14b3528e17d92f5a48a48fe5399e85fbd5af0948a1fb7731b97`  
		Last Modified: Wed, 11 Jan 2023 08:48:57 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ade602d94fdc59123352759736ee35edba75af6e617124befa8e798b1429ee`  
		Last Modified: Wed, 11 Jan 2023 08:48:57 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9561ac0b9e4b10ab410eaffd1fee5bb5d340454a427f92662c1b3cdcadead23`  
		Last Modified: Thu, 12 Jan 2023 00:26:49 GMT  
		Size: 514.7 KB (514653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443828e56edb5db0bc3977f3375e84ba083ede16894fa00f83851187f6ab897e`  
		Last Modified: Thu, 12 Jan 2023 00:26:48 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9e6fe90a4e3bd6a24e466994981fc8735688451f2e19a9f287217b1863c96d`  
		Last Modified: Thu, 12 Jan 2023 00:26:46 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130f6e64a1e2fc1733ac42319bde5bb223ac25926eb60d10690e9ee69c67c1ef`  
		Last Modified: Thu, 12 Jan 2023 00:26:47 GMT  
		Size: 3.9 MB (3903530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a3e84531e841b57d8778cd8f0156d1335ebf38f680a5950d4d25475f5b669`  
		Last Modified: Thu, 12 Jan 2023 00:26:47 GMT  
		Size: 2.1 KB (2054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f11474148c115f8a371020395f0f36e640f65b80fb854a9d82b9011339f21`  
		Last Modified: Thu, 12 Jan 2023 00:26:46 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2c5eb6e4a41ab3df2d8355cbe048758374bec42fd840142ade376c5a2c2a96`  
		Last Modified: Thu, 12 Jan 2023 00:26:47 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:latest` - linux; arm variant v5

```console
$ docker pull yourls@sha256:194ef8e4ddd795e4735a504c38ae52a5b84bcee0b365039bec7fa920320e38b8
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.4 MB (147361291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c638b333ad57efc6b4b0a0040a332d49c26b7b5a9cf42d867ae579f7e862ce8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 11 Jan 2023 01:55:36 GMT
ADD file:f279d5ada9c5980d920c7b9ff126ce11ec9499a532ea3bfd8b717de3348c8439 in / 
# Wed, 11 Jan 2023 01:55:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 05:01:48 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 11 Jan 2023 05:01:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 11 Jan 2023 05:02:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 05:02:10 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 11 Jan 2023 05:02:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 11 Jan 2023 05:06:16 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 11 Jan 2023 05:06:16 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 11 Jan 2023 05:06:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 11 Jan 2023 05:06:30 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 11 Jan 2023 05:06:31 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 11 Jan 2023 05:06:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 11 Jan 2023 05:06:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 11 Jan 2023 05:06:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 11 Jan 2023 05:21:09 GMT
ENV GPG_KEYS=528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 39B641343D8C104B2B146DC3F9C39DC0B9698544 F1F692238FBC1666E5A5CCD4199F9DFEF6FFBAFD
# Wed, 11 Jan 2023 05:21:09 GMT
ENV PHP_VERSION=8.1.14
# Wed, 11 Jan 2023 05:21:09 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.1.14.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.1.14.tar.xz.asc
# Wed, 11 Jan 2023 05:21:09 GMT
ENV PHP_SHA256=e16e47a872d58685913ac848ce92ec49f42c1828110c98c65fb6265a08724a1a
# Wed, 11 Jan 2023 05:21:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg dirmngr; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 11 Jan 2023 05:21:22 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 11 Jan 2023 05:24:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version
# Wed, 11 Jan 2023 05:24:58 GMT
COPY multi:e11221d43af7136e4dbad5a74e659bcfa753214a9e615c3daf357f1633d9d3d1 in /usr/local/bin/ 
# Wed, 11 Jan 2023 05:24:58 GMT
RUN docker-php-ext-enable sodium
# Wed, 11 Jan 2023 05:24:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 11 Jan 2023 05:24:59 GMT
STOPSIGNAL SIGWINCH
# Wed, 11 Jan 2023 05:24:59 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 11 Jan 2023 05:24:59 GMT
WORKDIR /var/www/html
# Wed, 11 Jan 2023 05:24:59 GMT
EXPOSE 80
# Wed, 11 Jan 2023 05:24:59 GMT
CMD ["apache2-foreground"]
# Wed, 11 Jan 2023 14:52:57 GMT
LABEL org.opencontainers.image.title=YOURLS
# Wed, 11 Jan 2023 14:52:57 GMT
LABEL org.opencontainers.image.description=Your Own URL Shortener
# Wed, 11 Jan 2023 14:52:57 GMT
LABEL org.opencontainers.image.url=https://yourls.org/
# Wed, 11 Jan 2023 14:52:57 GMT
LABEL org.opencontainers.image.documentation=https://yourls.org/
# Wed, 11 Jan 2023 14:52:57 GMT
LABEL org.opencontainers.image.vendor=YOURLS Org
# Wed, 11 Jan 2023 14:52:57 GMT
LABEL org.opencontainers.image.authors=YOURLS
# Wed, 11 Jan 2023 14:52:57 GMT
LABEL org.opencontainers.image.licenses=MIT
# Wed, 11 Jan 2023 14:52:57 GMT
LABEL io.artifacthub.package.readme-url=https://raw.githubusercontent.com/YOURLS/YOURLS/master/README.md
# Wed, 11 Jan 2023 14:53:18 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)" bcmath opcache pdo_mysql mysqli
# Wed, 11 Jan 2023 14:53:19 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 11 Jan 2023 14:53:19 GMT
RUN a2enmod rewrite expires
# Wed, 11 Jan 2023 14:53:19 GMT
ARG YOURLS_VERSION=1.9.1
# Wed, 11 Jan 2023 14:53:19 GMT
ARG YOURLS_SHA256=0bf53290e8f86ea2e0121aac70f7c64d70d3dfb54823acb9dcc343dd7c5f455a
# Wed, 11 Jan 2023 14:53:19 GMT
LABEL org.opencontainers.image.version=1.9.1
# Wed, 11 Jan 2023 14:53:20 GMT
ENV YOURLS_VERSION=1.9.1
# Wed, 11 Jan 2023 14:53:20 GMT
ENV YOURLS_SHA256=0bf53290e8f86ea2e0121aac70f7c64d70d3dfb54823acb9dcc343dd7c5f455a
# Wed, 11 Jan 2023 14:53:22 GMT
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls
# Wed, 11 Jan 2023 14:53:22 GMT
COPY --chown=www-data:www-datafile:f5584b9849b80034920f4de5f1297cb1be461f765f3437b87ddf6c86daa6499d in /usr/src/yourls/user/ 
# Wed, 11 Jan 2023 14:53:22 GMT
COPY file:975ababf859e7cabd8184ab0b2b317a5d8d3ccb6f4922be7f2a5d28c20d075a2 in /usr/local/bin/ 
# Wed, 11 Jan 2023 14:53:22 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /usr/src/yourls/ 
# Wed, 11 Jan 2023 14:53:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 14:53:23 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:77f56a6f12b7a55a95e6f2c8beadc0eb0243b5881f73f45d09c343f2a8926d62`  
		Last Modified: Wed, 11 Jan 2023 02:00:42 GMT  
		Size: 28.9 MB (28898675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c5b723fc66fa808bf3e95e160eddbb34d501768aa06351cb13a176338b0c67`  
		Last Modified: Wed, 11 Jan 2023 05:50:50 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c64e5d27e468b9e1355061f5994104d82c05ef9cd2fd5bc0305a23413281483`  
		Last Modified: Wed, 11 Jan 2023 05:51:07 GMT  
		Size: 73.7 MB (73686394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54976da88b23a41ca8f85d0de2db7fa496e083695ba38549d4760bc4f1afd75`  
		Last Modified: Wed, 11 Jan 2023 05:50:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8730ea7b311c3e6f61c6d60eae4123353dd550f9bfb61ff0d4e94a7fdea521`  
		Last Modified: Wed, 11 Jan 2023 05:52:11 GMT  
		Size: 18.6 MB (18554248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f6141566a50f53cd8dea9b9fd25c9a66f3a4ab715811a38f52280e29ef3d8e`  
		Last Modified: Wed, 11 Jan 2023 05:52:07 GMT  
		Size: 438.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a42b9eaa5949ad68d06b574497c2031f50923f29df3bb6a613456b9cd1fb6b`  
		Last Modified: Wed, 11 Jan 2023 05:52:07 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0166649844ba65e0a9a6b37ec81b207411b988784e317b2c164d33c0a2d6a033`  
		Last Modified: Wed, 11 Jan 2023 05:54:38 GMT  
		Size: 12.1 MB (12091918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab18d8b0eb815b7c304b34c1174be9b19fe51481e0883a94d3b2d551e39ae1ec`  
		Last Modified: Wed, 11 Jan 2023 05:54:35 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:977155e0d068350e49bb746049b67ca013285217db945f4954ace1bb33d394e2`  
		Last Modified: Wed, 11 Jan 2023 05:54:37 GMT  
		Size: 10.1 MB (10065736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1646f7267c2678fa2ac73ed4f4af43fb5bb43d66bf5131abcc35d564513813f1`  
		Last Modified: Wed, 11 Jan 2023 05:54:35 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bb4f2f64a19ce72cb09a64d6be46a767060d484c5f588655ce66e826815ce7`  
		Last Modified: Wed, 11 Jan 2023 05:54:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14dd542108c588bb55a42fa7d08b713d6e504363e3f6862cfc85fd660e8ffee7`  
		Last Modified: Wed, 11 Jan 2023 05:54:35 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274f5fe6c95ba1b07c5dc510819505312b8f4d935e0836ec100902501f80f54f`  
		Last Modified: Wed, 11 Jan 2023 14:54:35 GMT  
		Size: 150.7 KB (150712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996ef3d724fc9567440c1620d5e4041bf6ce13cac68315c9724547792fbd1eb3`  
		Last Modified: Wed, 11 Jan 2023 14:54:34 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c90e0a9dc7830f5055a5e3542213672632ed301a3a94b5dd0fd80cc727b5e4`  
		Last Modified: Wed, 11 Jan 2023 14:54:33 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3960c28b2458bc27205cfa72f65186be0f27bd34053df56d53733944927cec6c`  
		Last Modified: Wed, 11 Jan 2023 14:54:34 GMT  
		Size: 3.9 MB (3903532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39ff1d255018e790852e76679415dcf9c92a1c07b1350fa7821f55e82c72e23`  
		Last Modified: Wed, 11 Jan 2023 14:54:32 GMT  
		Size: 2.1 KB (2052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce5f45564fe75498a683f256f69f2bf0adb6ebed95264d247874186bee50087`  
		Last Modified: Wed, 11 Jan 2023 14:54:32 GMT  
		Size: 1.6 KB (1554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0f5879e6fa129ff71f7eef443bbc903c01004ab1e79ac2586fb65f3afef1e6`  
		Last Modified: Wed, 11 Jan 2023 14:54:33 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:latest` - linux; arm variant v7

```console
$ docker pull yourls@sha256:95af5da080479744a8e92956d9ef50f2d9f31ef93c6b73d6a45a2e494fee9f58
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.6 MB (139560079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9655fffd3bd60b01c48727b85ea8252e98f392da8d1bd72ca171150408517837`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 11 Jan 2023 04:00:36 GMT
ADD file:3fb94bfd628f3ebd91db74501bd297a817977cc066664f0fa342442b3352e0be in / 
# Wed, 11 Jan 2023 04:00:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 10:36:19 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 11 Jan 2023 10:36:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 11 Jan 2023 10:36:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 10:36:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 11 Jan 2023 10:36:42 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 11 Jan 2023 10:39:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 11 Jan 2023 10:39:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 11 Jan 2023 10:40:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 11 Jan 2023 10:40:02 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 11 Jan 2023 10:40:03 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 11 Jan 2023 10:40:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 11 Jan 2023 10:40:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 11 Jan 2023 10:40:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 11 Jan 2023 11:06:44 GMT
ENV GPG_KEYS=528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 39B641343D8C104B2B146DC3F9C39DC0B9698544 F1F692238FBC1666E5A5CCD4199F9DFEF6FFBAFD
# Wed, 11 Jan 2023 11:06:44 GMT
ENV PHP_VERSION=8.1.14
# Wed, 11 Jan 2023 11:06:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.1.14.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.1.14.tar.xz.asc
# Wed, 11 Jan 2023 11:06:44 GMT
ENV PHP_SHA256=e16e47a872d58685913ac848ce92ec49f42c1828110c98c65fb6265a08724a1a
# Wed, 11 Jan 2023 11:06:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg dirmngr; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 11 Jan 2023 11:06:56 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 11 Jan 2023 11:10:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version
# Wed, 11 Jan 2023 11:10:27 GMT
COPY multi:e11221d43af7136e4dbad5a74e659bcfa753214a9e615c3daf357f1633d9d3d1 in /usr/local/bin/ 
# Wed, 11 Jan 2023 11:10:29 GMT
RUN docker-php-ext-enable sodium
# Wed, 11 Jan 2023 11:10:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 11 Jan 2023 11:10:29 GMT
STOPSIGNAL SIGWINCH
# Wed, 11 Jan 2023 11:10:30 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 11 Jan 2023 11:10:30 GMT
WORKDIR /var/www/html
# Wed, 11 Jan 2023 11:10:30 GMT
EXPOSE 80
# Wed, 11 Jan 2023 11:10:30 GMT
CMD ["apache2-foreground"]
# Thu, 12 Jan 2023 03:19:48 GMT
LABEL org.opencontainers.image.title=YOURLS
# Thu, 12 Jan 2023 03:19:48 GMT
LABEL org.opencontainers.image.description=Your Own URL Shortener
# Thu, 12 Jan 2023 03:19:48 GMT
LABEL org.opencontainers.image.url=https://yourls.org/
# Thu, 12 Jan 2023 03:19:48 GMT
LABEL org.opencontainers.image.documentation=https://yourls.org/
# Thu, 12 Jan 2023 03:19:49 GMT
LABEL org.opencontainers.image.vendor=YOURLS Org
# Thu, 12 Jan 2023 03:19:49 GMT
LABEL org.opencontainers.image.authors=YOURLS
# Thu, 12 Jan 2023 03:19:49 GMT
LABEL org.opencontainers.image.licenses=MIT
# Thu, 12 Jan 2023 03:19:49 GMT
LABEL io.artifacthub.package.readme-url=https://raw.githubusercontent.com/YOURLS/YOURLS/master/README.md
# Thu, 12 Jan 2023 03:20:08 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)" bcmath opcache pdo_mysql mysqli
# Thu, 12 Jan 2023 03:20:08 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 12 Jan 2023 03:20:09 GMT
RUN a2enmod rewrite expires
# Thu, 12 Jan 2023 03:20:09 GMT
ARG YOURLS_VERSION=1.9.1
# Thu, 12 Jan 2023 03:20:09 GMT
ARG YOURLS_SHA256=0bf53290e8f86ea2e0121aac70f7c64d70d3dfb54823acb9dcc343dd7c5f455a
# Thu, 12 Jan 2023 03:20:09 GMT
LABEL org.opencontainers.image.version=1.9.1
# Thu, 12 Jan 2023 03:20:09 GMT
ENV YOURLS_VERSION=1.9.1
# Thu, 12 Jan 2023 03:20:10 GMT
ENV YOURLS_SHA256=0bf53290e8f86ea2e0121aac70f7c64d70d3dfb54823acb9dcc343dd7c5f455a
# Thu, 12 Jan 2023 03:20:12 GMT
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls
# Thu, 12 Jan 2023 03:20:12 GMT
COPY --chown=www-data:www-datafile:f5584b9849b80034920f4de5f1297cb1be461f765f3437b87ddf6c86daa6499d in /usr/src/yourls/user/ 
# Thu, 12 Jan 2023 03:20:12 GMT
COPY file:975ababf859e7cabd8184ab0b2b317a5d8d3ccb6f4922be7f2a5d28c20d075a2 in /usr/local/bin/ 
# Thu, 12 Jan 2023 03:20:12 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /usr/src/yourls/ 
# Thu, 12 Jan 2023 03:20:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 03:20:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:330ad28688ae3fa5f3b241fef3efd076299bec9874e0597b1c16dcf8a165a53d`  
		Last Modified: Wed, 11 Jan 2023 04:07:49 GMT  
		Size: 26.6 MB (26559488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882df4fa64e915a7e386d041f1cda73bb332b579e57d62638e74cbc293a1a162`  
		Last Modified: Wed, 11 Jan 2023 12:19:25 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e271639575d818d64605a0144af7d5e22a62dc19f38ec2d13aab6713f2a86d`  
		Last Modified: Wed, 11 Jan 2023 12:19:37 GMT  
		Size: 69.3 MB (69321270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60c5e170798d756882d1721e2ee63afb99a31eabe5c6da7c22b3765b21b53a`  
		Last Modified: Wed, 11 Jan 2023 12:19:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:180f0bab662ee2514bc06a26e122f93c52aabf41ef7473d6e667e618e88e53e2`  
		Last Modified: Wed, 11 Jan 2023 12:20:40 GMT  
		Size: 18.0 MB (17997659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e801572cb7e383e72fd7636fca449f89d8a14e4d4e4380363b046aa11228d74`  
		Last Modified: Wed, 11 Jan 2023 12:20:36 GMT  
		Size: 438.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8eb50c8218a36c863d029762d989c4468717969cdce509ebf64490bf88dc65d`  
		Last Modified: Wed, 11 Jan 2023 12:20:36 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7526f57d32f6fa5a82a16e395a0b5259ae91134963a5d618e4d1e2d15c7a75c`  
		Last Modified: Wed, 11 Jan 2023 12:25:57 GMT  
		Size: 12.1 MB (12091951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ab07e62ebfbb0ba7383ac0dfa5bc9b03b727799bf514a355ca145ec12627a8`  
		Last Modified: Wed, 11 Jan 2023 12:25:54 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e770c65ab93cfa006d732bac29869e12875b14afc86ab9cb24b490b28d6de21f`  
		Last Modified: Wed, 11 Jan 2023 12:25:56 GMT  
		Size: 9.5 MB (9537697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cc5e1ca118f3d22a925e11c1884521209f21bb702d90b808c42480f044402b`  
		Last Modified: Wed, 11 Jan 2023 12:25:54 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fd255f7fc1aa453ceb3fc488457ef3ef6b4e985f48c0444bb426df9fd66d9f`  
		Last Modified: Wed, 11 Jan 2023 12:25:54 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b678e25553f31d242032bd7e17a6907d9656a104ced6478b0f6cba6a5ce138a2`  
		Last Modified: Wed, 11 Jan 2023 12:25:54 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651d44d9650ae59823440a9f9c3f254c452cb1674e9f5c919b57440524c4cadc`  
		Last Modified: Thu, 12 Jan 2023 03:21:41 GMT  
		Size: 138.4 KB (138405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09200d6be14b2c5f0e7f66fef12f95adbf09f3c21fc1cba63fff70b80aa8081b`  
		Last Modified: Thu, 12 Jan 2023 03:21:40 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158da07b8085e43d664b5e0e37cba2238e11026b714064e91e0d645775530394`  
		Last Modified: Thu, 12 Jan 2023 03:21:38 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5e12fd4d9aabc6554d925c73c086a37112bc60369c37a209df9d1483f07a88`  
		Last Modified: Thu, 12 Jan 2023 03:21:39 GMT  
		Size: 3.9 MB (3903530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77599a6d5f124da200d685e4b6e66fd43347ea531cdc99afe3755e9e65ea444d`  
		Last Modified: Thu, 12 Jan 2023 03:21:38 GMT  
		Size: 2.0 KB (2050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a7e535f6d255968b2b40fd5dca6b3320aaec491b6d13d9d097b04ee0404e50`  
		Last Modified: Thu, 12 Jan 2023 03:21:38 GMT  
		Size: 1.6 KB (1552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8248d20a29f47416bc37eac9897691373b1f2012d77959a2bd8a7565bd80bb52`  
		Last Modified: Thu, 12 Jan 2023 03:21:38 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:latest` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:8f8b2002946c37eaad244dd7263872de3ff896c826c2776f77cb51d636cb5a93
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.1 MB (164050334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:804c4794b6710f2862f26473c69e364c585eaa8ab564be37514f9b6f8bec7069`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 08:18:18 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 11 Jan 2023 08:18:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 11 Jan 2023 08:18:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 08:18:34 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 11 Jan 2023 08:18:35 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 11 Jan 2023 08:21:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 11 Jan 2023 08:21:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 11 Jan 2023 08:21:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 11 Jan 2023 08:21:48 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 11 Jan 2023 08:21:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 11 Jan 2023 08:21:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 11 Jan 2023 08:21:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 11 Jan 2023 08:21:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 11 Jan 2023 08:46:51 GMT
ENV GPG_KEYS=528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 39B641343D8C104B2B146DC3F9C39DC0B9698544 F1F692238FBC1666E5A5CCD4199F9DFEF6FFBAFD
# Wed, 11 Jan 2023 08:46:51 GMT
ENV PHP_VERSION=8.1.14
# Wed, 11 Jan 2023 08:46:52 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.1.14.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.1.14.tar.xz.asc
# Wed, 11 Jan 2023 08:46:52 GMT
ENV PHP_SHA256=e16e47a872d58685913ac848ce92ec49f42c1828110c98c65fb6265a08724a1a
# Wed, 11 Jan 2023 08:47:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg dirmngr; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 11 Jan 2023 08:47:03 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 11 Jan 2023 08:49:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version
# Wed, 11 Jan 2023 08:49:54 GMT
COPY multi:e11221d43af7136e4dbad5a74e659bcfa753214a9e615c3daf357f1633d9d3d1 in /usr/local/bin/ 
# Wed, 11 Jan 2023 08:49:54 GMT
RUN docker-php-ext-enable sodium
# Wed, 11 Jan 2023 08:49:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 11 Jan 2023 08:49:54 GMT
STOPSIGNAL SIGWINCH
# Wed, 11 Jan 2023 08:49:54 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 11 Jan 2023 08:49:55 GMT
WORKDIR /var/www/html
# Wed, 11 Jan 2023 08:49:55 GMT
EXPOSE 80
# Wed, 11 Jan 2023 08:49:55 GMT
CMD ["apache2-foreground"]
# Wed, 11 Jan 2023 20:13:33 GMT
LABEL org.opencontainers.image.title=YOURLS
# Wed, 11 Jan 2023 20:13:33 GMT
LABEL org.opencontainers.image.description=Your Own URL Shortener
# Wed, 11 Jan 2023 20:13:33 GMT
LABEL org.opencontainers.image.url=https://yourls.org/
# Wed, 11 Jan 2023 20:13:33 GMT
LABEL org.opencontainers.image.documentation=https://yourls.org/
# Wed, 11 Jan 2023 20:13:34 GMT
LABEL org.opencontainers.image.vendor=YOURLS Org
# Wed, 11 Jan 2023 20:13:34 GMT
LABEL org.opencontainers.image.authors=YOURLS
# Wed, 11 Jan 2023 20:13:34 GMT
LABEL org.opencontainers.image.licenses=MIT
# Wed, 11 Jan 2023 20:13:34 GMT
LABEL io.artifacthub.package.readme-url=https://raw.githubusercontent.com/YOURLS/YOURLS/master/README.md
# Wed, 11 Jan 2023 20:14:29 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)" bcmath opcache pdo_mysql mysqli
# Wed, 11 Jan 2023 20:14:30 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 11 Jan 2023 20:14:30 GMT
RUN a2enmod rewrite expires
# Wed, 11 Jan 2023 20:14:30 GMT
ARG YOURLS_VERSION=1.9.1
# Wed, 11 Jan 2023 20:14:30 GMT
ARG YOURLS_SHA256=0bf53290e8f86ea2e0121aac70f7c64d70d3dfb54823acb9dcc343dd7c5f455a
# Wed, 11 Jan 2023 20:14:30 GMT
LABEL org.opencontainers.image.version=1.9.1
# Wed, 11 Jan 2023 20:14:30 GMT
ENV YOURLS_VERSION=1.9.1
# Wed, 11 Jan 2023 20:14:31 GMT
ENV YOURLS_SHA256=0bf53290e8f86ea2e0121aac70f7c64d70d3dfb54823acb9dcc343dd7c5f455a
# Wed, 11 Jan 2023 20:14:32 GMT
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls
# Wed, 11 Jan 2023 20:14:32 GMT
COPY --chown=www-data:www-datafile:f5584b9849b80034920f4de5f1297cb1be461f765f3437b87ddf6c86daa6499d in /usr/src/yourls/user/ 
# Wed, 11 Jan 2023 20:14:33 GMT
COPY file:975ababf859e7cabd8184ab0b2b317a5d8d3ccb6f4922be7f2a5d28c20d075a2 in /usr/local/bin/ 
# Wed, 11 Jan 2023 20:14:33 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /usr/src/yourls/ 
# Wed, 11 Jan 2023 20:14:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 20:14:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783d22fac3eac4a07011a625ea45f42515d634508d0c225ac059d5c7735f1446`  
		Last Modified: Wed, 11 Jan 2023 09:28:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4aa0709519156981b3de2c39cc2fec319758a1097840b73cd25bf113bd5215a`  
		Last Modified: Wed, 11 Jan 2023 09:29:06 GMT  
		Size: 86.9 MB (86926666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdf93b070c8b7a97115750cc9fdd5c981b52c9b188e2ebd105ad95aeec094c5`  
		Last Modified: Wed, 11 Jan 2023 09:28:56 GMT  
		Size: 270.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912de44aeacd7f21682afd57fd074032ca8b0410e725a1d4958ee3ebddf78130`  
		Last Modified: Wed, 11 Jan 2023 09:29:49 GMT  
		Size: 19.2 MB (19166244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf79b4d3197a9b7fc8d94e1cf13a3a94719d79203be84cad435b041c88e8e8e`  
		Last Modified: Wed, 11 Jan 2023 09:29:47 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbde8f77b317080fe0b6405c41c11d942c055f098081740943cb72010852399`  
		Last Modified: Wed, 11 Jan 2023 09:29:46 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88041b4b71ea54e8c1c01825d829a5777fa770cdeb84dac90c355a321a5d376`  
		Last Modified: Wed, 11 Jan 2023 09:33:09 GMT  
		Size: 12.1 MB (12092856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bd0e66a4c14ad2c720e0c1adbbdfd2da8ac78ba5f7a78a7be84ac324cf6ad6`  
		Last Modified: Wed, 11 Jan 2023 09:33:07 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaaa65b7aba5d71a06f80b3eddf16e8373dea34a54d162b17a5d7d10faa7a7c1`  
		Last Modified: Wed, 11 Jan 2023 09:33:08 GMT  
		Size: 11.1 MB (11112998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e0631a1acd43f917677e603a3723c338b20c252af38669c8fd613df45228c9`  
		Last Modified: Wed, 11 Jan 2023 09:33:07 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e975826235c41c074c59bbf53dc7a90bcbb27029dafdf10432ffe986ba04c991`  
		Last Modified: Wed, 11 Jan 2023 09:33:07 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04d9ab3b043c9dd04b05a7abb8e1eae20a036dd00528875a9f7a42ecbcfefaf`  
		Last Modified: Wed, 11 Jan 2023 09:33:07 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595e861b768b4a57c72d31963e7c2de6662f3ef28517db94e11d36d72dc421db`  
		Last Modified: Wed, 11 Jan 2023 20:16:13 GMT  
		Size: 793.0 KB (793049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9784201b0b063846a302e3f36961bcbf0e6920a125026f824ab2e1d85bfe0e`  
		Last Modified: Wed, 11 Jan 2023 20:16:13 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148ffb8631183367f41a7fc349ce56644aa4ea4e4dac658f2b099157a94c081a`  
		Last Modified: Wed, 11 Jan 2023 20:16:11 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf4ed7658f504cb49f63da4c7403283c85e0f43ff207e356cbbd3389d57b48a`  
		Last Modified: Wed, 11 Jan 2023 20:16:12 GMT  
		Size: 3.9 MB (3903531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff73b0f55140ebb27e481cab9c6c320be21ef4e90e5f2601405c3f7e5651c252`  
		Last Modified: Wed, 11 Jan 2023 20:16:11 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7513d82ed60631a232d6c5b4e9dca848c455379104c84368416c3a00714f23`  
		Last Modified: Wed, 11 Jan 2023 20:16:11 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7711aa4a34e538ceb3c92d7d39a16d6088e4fd0c156b4547c8fe2404d9fe555c`  
		Last Modified: Wed, 11 Jan 2023 20:16:11 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:latest` - linux; 386

```console
$ docker pull yourls@sha256:55080a43767051036ab9c1786c230bda6ef56f9b4eb55f11c1c091da35d57be6
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.2 MB (172165014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:284bbca0de65064252ad965dfe3a9878be7696e0a6dacc7065592ba8a801ef49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 11 Jan 2023 03:16:08 GMT
ADD file:68afc7c49a947a9fb253ffeba9950cdc39e241f8a5cf0133043cfc612447f597 in / 
# Wed, 11 Jan 2023 03:16:08 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 09:04:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 11 Jan 2023 09:04:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 11 Jan 2023 09:04:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 09:04:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 11 Jan 2023 09:04:25 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 11 Jan 2023 09:07:44 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 11 Jan 2023 09:07:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 11 Jan 2023 09:07:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 11 Jan 2023 09:07:55 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 11 Jan 2023 09:07:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 11 Jan 2023 09:07:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 11 Jan 2023 09:07:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 11 Jan 2023 09:07:59 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 11 Jan 2023 09:34:45 GMT
ENV GPG_KEYS=528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 39B641343D8C104B2B146DC3F9C39DC0B9698544 F1F692238FBC1666E5A5CCD4199F9DFEF6FFBAFD
# Wed, 11 Jan 2023 09:34:45 GMT
ENV PHP_VERSION=8.1.14
# Wed, 11 Jan 2023 09:34:46 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.1.14.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.1.14.tar.xz.asc
# Wed, 11 Jan 2023 09:34:47 GMT
ENV PHP_SHA256=e16e47a872d58685913ac848ce92ec49f42c1828110c98c65fb6265a08724a1a
# Wed, 11 Jan 2023 09:34:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg dirmngr; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 11 Jan 2023 09:35:01 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 11 Jan 2023 09:37:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version
# Wed, 11 Jan 2023 09:37:49 GMT
COPY multi:e11221d43af7136e4dbad5a74e659bcfa753214a9e615c3daf357f1633d9d3d1 in /usr/local/bin/ 
# Wed, 11 Jan 2023 09:37:49 GMT
RUN docker-php-ext-enable sodium
# Wed, 11 Jan 2023 09:37:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 11 Jan 2023 09:37:51 GMT
STOPSIGNAL SIGWINCH
# Wed, 11 Jan 2023 09:37:53 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 11 Jan 2023 09:37:53 GMT
WORKDIR /var/www/html
# Wed, 11 Jan 2023 09:37:54 GMT
EXPOSE 80
# Wed, 11 Jan 2023 09:37:55 GMT
CMD ["apache2-foreground"]
# Wed, 11 Jan 2023 21:52:34 GMT
LABEL org.opencontainers.image.title=YOURLS
# Wed, 11 Jan 2023 21:52:35 GMT
LABEL org.opencontainers.image.description=Your Own URL Shortener
# Wed, 11 Jan 2023 21:52:36 GMT
LABEL org.opencontainers.image.url=https://yourls.org/
# Wed, 11 Jan 2023 21:52:37 GMT
LABEL org.opencontainers.image.documentation=https://yourls.org/
# Wed, 11 Jan 2023 21:52:38 GMT
LABEL org.opencontainers.image.vendor=YOURLS Org
# Wed, 11 Jan 2023 21:52:39 GMT
LABEL org.opencontainers.image.authors=YOURLS
# Wed, 11 Jan 2023 21:52:40 GMT
LABEL org.opencontainers.image.licenses=MIT
# Wed, 11 Jan 2023 21:52:41 GMT
LABEL io.artifacthub.package.readme-url=https://raw.githubusercontent.com/YOURLS/YOURLS/master/README.md
# Wed, 11 Jan 2023 21:53:18 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)" bcmath opcache pdo_mysql mysqli
# Wed, 11 Jan 2023 21:53:19 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 11 Jan 2023 21:53:19 GMT
RUN a2enmod rewrite expires
# Wed, 11 Jan 2023 21:53:20 GMT
ARG YOURLS_VERSION=1.9.1
# Wed, 11 Jan 2023 21:53:21 GMT
ARG YOURLS_SHA256=0bf53290e8f86ea2e0121aac70f7c64d70d3dfb54823acb9dcc343dd7c5f455a
# Wed, 11 Jan 2023 21:53:22 GMT
LABEL org.opencontainers.image.version=1.9.1
# Wed, 11 Jan 2023 21:53:23 GMT
ENV YOURLS_VERSION=1.9.1
# Wed, 11 Jan 2023 21:53:24 GMT
ENV YOURLS_SHA256=0bf53290e8f86ea2e0121aac70f7c64d70d3dfb54823acb9dcc343dd7c5f455a
# Wed, 11 Jan 2023 21:53:27 GMT
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls
# Wed, 11 Jan 2023 21:53:28 GMT
COPY --chown=www-data:www-datafile:f5584b9849b80034920f4de5f1297cb1be461f765f3437b87ddf6c86daa6499d in /usr/src/yourls/user/ 
# Wed, 11 Jan 2023 21:53:29 GMT
COPY file:975ababf859e7cabd8184ab0b2b317a5d8d3ccb6f4922be7f2a5d28c20d075a2 in /usr/local/bin/ 
# Wed, 11 Jan 2023 21:53:30 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /usr/src/yourls/ 
# Wed, 11 Jan 2023 21:53:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 21:53:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:165165b78fad597abd0883f40adcaa0edcfe981a358deea181323680a07b7011`  
		Last Modified: Wed, 11 Jan 2023 03:22:01 GMT  
		Size: 32.4 MB (32375738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a84a4150e372653724ca463ad7086fea342fc6712cc3c99fe069842eb452663`  
		Last Modified: Wed, 11 Jan 2023 10:29:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59f5a3efb63feb7448a39ebe0fa9067e07e2ae3ca03ff866f0a7177cfa8eb82`  
		Last Modified: Wed, 11 Jan 2023 10:29:18 GMT  
		Size: 92.7 MB (92716565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5b3b707043ac8815a0b4eda0fff0327772a22183d7ef7ac4b2e0a1cc98b58a`  
		Last Modified: Wed, 11 Jan 2023 10:29:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24dd7bdc95578778973bdd6b9cb569cd9579c438a9f47deeec82ef418c7452c`  
		Last Modified: Wed, 11 Jan 2023 10:30:14 GMT  
		Size: 19.5 MB (19515903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6066fa7f065a5de2666364bb9e4ce0c6413e35a1d2610ba8b36573a7f000d521`  
		Last Modified: Wed, 11 Jan 2023 10:30:11 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dbb9c4f107646c27b1f45d874acad6f80b3aa461e9816435499e7759f3fe6a`  
		Last Modified: Wed, 11 Jan 2023 10:30:11 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f2d901e644041e0a1178ef051ca62f48496ac9059b7e28339eb49e7adab37c`  
		Last Modified: Wed, 11 Jan 2023 10:34:33 GMT  
		Size: 11.9 MB (11876367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e096897067d03883816a0177669f76488503cc7f64a8d9f825b544c2aee2fb4`  
		Last Modified: Wed, 11 Jan 2023 10:34:30 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce026bab6bc0a2cb71e2e3bada911c581271a01ac40ae241fdda2d2e9ff2573`  
		Last Modified: Wed, 11 Jan 2023 10:34:32 GMT  
		Size: 11.3 MB (11272034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0818925eeb15ef9567af0446a33a52a7d7a9437a485dde2fc2930a43b09556c0`  
		Last Modified: Wed, 11 Jan 2023 10:34:30 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd8c8f41e7a4f771c9d41b0ff2f75cd25892d961eb6813d4a4720bb51d63565`  
		Last Modified: Wed, 11 Jan 2023 10:34:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4dc07a337b27d524a4db9d7ff876c757618fa74318abc35f8ed550b1cc211d`  
		Last Modified: Wed, 11 Jan 2023 10:34:30 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81105cadb51e9cd5c72f4b5ad443fa5c1fd4af7e0806e55b34f4e19e6bf147a2`  
		Last Modified: Wed, 11 Jan 2023 21:55:16 GMT  
		Size: 494.9 KB (494920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d12b3143a5b2b0098ec36e078f48e989bf91553e7b6458e12df958d0deef6fe`  
		Last Modified: Wed, 11 Jan 2023 21:55:15 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cee7e75e64cf44494c2ccf02c1bd11c6d5803e41ca4480400d6ea61744ebcbe`  
		Last Modified: Wed, 11 Jan 2023 21:55:13 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6f3710eedb55092d3f10a78175c1b5cd1dd56c9f2e7a3db2ed6f76703fe333`  
		Last Modified: Wed, 11 Jan 2023 21:55:14 GMT  
		Size: 3.9 MB (3903424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e80de89be27c6c72e2988480d596d74657bd2f356fb4aed4c4237710c7d467e`  
		Last Modified: Wed, 11 Jan 2023 21:55:13 GMT  
		Size: 2.1 KB (2052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bb99bf749d5eb806840b7e46273eed41b6bc112f63305bfa80276f7f8de02`  
		Last Modified: Wed, 11 Jan 2023 21:55:13 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9389296200433fa8a17820de222629197366eceafd023cc0f66833fb214dd4`  
		Last Modified: Wed, 11 Jan 2023 21:55:13 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:latest` - linux; mips64le

```console
$ docker pull yourls@sha256:bd558c91b3952270506ec6565302e3e24baf6fb225dfea5c4ac559e057280b8b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.7 MB (146713049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b241e3c1f257b6766510a3634026e4bf57a57b7405adce7bc4841f63c64fbc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 11 Jan 2023 16:34:24 GMT
ADD file:295faaf493f6a8d3e2a3eecb28c8f5ac765a1281656221d0a3ab482312a5ee28 in / 
# Wed, 11 Jan 2023 16:34:29 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 21:33:54 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 11 Jan 2023 21:33:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 11 Jan 2023 21:35:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 21:35:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 11 Jan 2023 21:35:44 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 11 Jan 2023 21:50:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 11 Jan 2023 21:50:47 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 11 Jan 2023 21:51:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 11 Jan 2023 21:51:53 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 11 Jan 2023 21:51:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 11 Jan 2023 21:52:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 11 Jan 2023 21:52:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 11 Jan 2023 21:52:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 11 Jan 2023 22:50:03 GMT
ENV GPG_KEYS=528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 39B641343D8C104B2B146DC3F9C39DC0B9698544 F1F692238FBC1666E5A5CCD4199F9DFEF6FFBAFD
# Wed, 11 Jan 2023 22:50:06 GMT
ENV PHP_VERSION=8.1.14
# Wed, 11 Jan 2023 22:50:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.1.14.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.1.14.tar.xz.asc
# Wed, 11 Jan 2023 22:50:13 GMT
ENV PHP_SHA256=e16e47a872d58685913ac848ce92ec49f42c1828110c98c65fb6265a08724a1a
# Wed, 11 Jan 2023 22:51:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg dirmngr; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 11 Jan 2023 22:51:08 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 11 Jan 2023 23:04:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version
# Wed, 11 Jan 2023 23:04:59 GMT
COPY multi:e11221d43af7136e4dbad5a74e659bcfa753214a9e615c3daf357f1633d9d3d1 in /usr/local/bin/ 
# Wed, 11 Jan 2023 23:05:05 GMT
RUN docker-php-ext-enable sodium
# Wed, 11 Jan 2023 23:05:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 11 Jan 2023 23:05:12 GMT
STOPSIGNAL SIGWINCH
# Wed, 11 Jan 2023 23:05:15 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 11 Jan 2023 23:05:19 GMT
WORKDIR /var/www/html
# Wed, 11 Jan 2023 23:05:23 GMT
EXPOSE 80
# Wed, 11 Jan 2023 23:05:26 GMT
CMD ["apache2-foreground"]
# Fri, 13 Jan 2023 02:24:00 GMT
LABEL org.opencontainers.image.title=YOURLS
# Fri, 13 Jan 2023 02:24:03 GMT
LABEL org.opencontainers.image.description=Your Own URL Shortener
# Fri, 13 Jan 2023 02:24:07 GMT
LABEL org.opencontainers.image.url=https://yourls.org/
# Fri, 13 Jan 2023 02:24:10 GMT
LABEL org.opencontainers.image.documentation=https://yourls.org/
# Fri, 13 Jan 2023 02:24:14 GMT
LABEL org.opencontainers.image.vendor=YOURLS Org
# Fri, 13 Jan 2023 02:24:17 GMT
LABEL org.opencontainers.image.authors=YOURLS
# Fri, 13 Jan 2023 02:24:21 GMT
LABEL org.opencontainers.image.licenses=MIT
# Fri, 13 Jan 2023 02:24:24 GMT
LABEL io.artifacthub.package.readme-url=https://raw.githubusercontent.com/YOURLS/YOURLS/master/README.md
# Fri, 13 Jan 2023 02:25:30 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)" bcmath opcache pdo_mysql mysqli
# Fri, 13 Jan 2023 02:25:36 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 13 Jan 2023 02:25:42 GMT
RUN a2enmod rewrite expires
# Fri, 13 Jan 2023 02:25:45 GMT
ARG YOURLS_VERSION=1.9.1
# Fri, 13 Jan 2023 02:25:49 GMT
ARG YOURLS_SHA256=0bf53290e8f86ea2e0121aac70f7c64d70d3dfb54823acb9dcc343dd7c5f455a
# Fri, 13 Jan 2023 02:25:52 GMT
LABEL org.opencontainers.image.version=1.9.1
# Fri, 13 Jan 2023 02:25:55 GMT
ENV YOURLS_VERSION=1.9.1
# Fri, 13 Jan 2023 02:25:59 GMT
ENV YOURLS_SHA256=0bf53290e8f86ea2e0121aac70f7c64d70d3dfb54823acb9dcc343dd7c5f455a
# Fri, 13 Jan 2023 02:26:08 GMT
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls
# Fri, 13 Jan 2023 02:26:11 GMT
COPY --chown=www-data:www-datafile:f5584b9849b80034920f4de5f1297cb1be461f765f3437b87ddf6c86daa6499d in /usr/src/yourls/user/ 
# Fri, 13 Jan 2023 02:26:14 GMT
COPY file:975ababf859e7cabd8184ab0b2b317a5d8d3ccb6f4922be7f2a5d28c20d075a2 in /usr/local/bin/ 
# Fri, 13 Jan 2023 02:26:17 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /usr/src/yourls/ 
# Fri, 13 Jan 2023 02:26:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2023 02:26:24 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9d653aeb7081a0b221d1160bd67b030696ca49b7ca91912bf298835f8f75ac7b`  
		Last Modified: Wed, 11 Jan 2023 16:43:17 GMT  
		Size: 29.6 MB (29619870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc73c71862dcd0c375cf5dd147119bea79b9499acd0667ae4bc44dbb3a55aa5`  
		Last Modified: Thu, 12 Jan 2023 00:29:25 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e915da70291bf241a28a36b751b4019b9d07004282c1f50286050ba2a29b776`  
		Last Modified: Thu, 12 Jan 2023 00:30:17 GMT  
		Size: 72.0 MB (72018931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94df2c401e2e9f5b6abfe51f7d4f63b54dc1f977e6c5c298c7cfc9222b6eb176`  
		Last Modified: Thu, 12 Jan 2023 00:29:25 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b40ae2e4279f656a32f1f81e500f41dd229a77c734f7928c544d9fb2b6da3`  
		Last Modified: Thu, 12 Jan 2023 00:31:15 GMT  
		Size: 18.9 MB (18940136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7c80a0ad5381322a4912ae573255998f661be2a7f83b50aebceea77ef7204c`  
		Last Modified: Thu, 12 Jan 2023 00:31:02 GMT  
		Size: 438.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2017a13da4e6ada0fcf2f8b6e0e1325ef67ebc460bc562d027ad89322ecc8bf`  
		Last Modified: Thu, 12 Jan 2023 00:31:02 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4f1641d1d7657066c2097a7e73d6a6ba2d55273edf29b67c7f584deb5110a4`  
		Last Modified: Thu, 12 Jan 2023 00:33:50 GMT  
		Size: 11.9 MB (11875645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626caca2c76427781e32a779ef5d63c53f6e5c70f03252bd699660d332f5debb`  
		Last Modified: Thu, 12 Jan 2023 00:33:45 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8420179710a7c1f184993888796ddf91f9aa3be689012b342f52249f67351f29`  
		Last Modified: Thu, 12 Jan 2023 00:33:53 GMT  
		Size: 10.2 MB (10195963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ae31719f2c971c7d9f474df941110b5846e180b978e6f25311958389f102f4`  
		Last Modified: Thu, 12 Jan 2023 00:33:45 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07241ab7c11801b081daaf622a4c346354eb7feb62f623cc8d4d1cf2b76e9828`  
		Last Modified: Thu, 12 Jan 2023 00:33:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec768aff789f6bb77d9cf07a3bb0aef64f9fe67a3677b3783256c5d463d1886f`  
		Last Modified: Thu, 12 Jan 2023 00:33:45 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f68bfba29b71a97f8d0acda8c77b80c02480a68a0c2e2e525f8934449b23ff`  
		Last Modified: Fri, 13 Jan 2023 02:29:21 GMT  
		Size: 149.0 KB (148980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61915243e025965a5d1e3fca66a6e5dd1d9503a7e0f7319689b6acbaf93d5672`  
		Last Modified: Fri, 13 Jan 2023 02:29:21 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820cf98ad1a799f6842a47ec33dfa9713d578715caf53abbc2823bf292044be2`  
		Last Modified: Fri, 13 Jan 2023 02:29:19 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4017d94fdae3017e64b2e6930b75668e0228df77b6b455a3f0537851da6032a9`  
		Last Modified: Fri, 13 Jan 2023 02:29:22 GMT  
		Size: 3.9 MB (3903423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186f9eee9e8b582bcb8302419df6558e49ff3c7c262c86a2107f538fafce2d3f`  
		Last Modified: Fri, 13 Jan 2023 02:29:19 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c824c11b2421704138e08dcc1ad8ce7ca0073339030744acdb489789b30225e9`  
		Last Modified: Fri, 13 Jan 2023 02:29:19 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ba62f60ad48a8bf539644d32f918b965ff696b9e717ef28101a0be7064d16f`  
		Last Modified: Fri, 13 Jan 2023 02:29:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:latest` - linux; ppc64le

```console
$ docker pull yourls@sha256:24743029242a68fcd20492fd6d1076c7c9d683a6b6dc41539f5f293b53bd6555
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170000929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13fa8f5b92b63fe2a7ad94fe546d9e7023c31315d2d64ee258ff039b5e80926f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 11 Jan 2023 03:49:30 GMT
ADD file:3c7553fb5eda606d574ff6c08bc2213f9e6a68910043fe3087e4c1a04b65a18e in / 
# Wed, 11 Jan 2023 03:49:32 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 05:41:42 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 11 Jan 2023 05:41:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 11 Jan 2023 05:42:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 05:42:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 11 Jan 2023 05:42:26 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 11 Jan 2023 05:46:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 11 Jan 2023 05:46:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 11 Jan 2023 05:47:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 11 Jan 2023 05:47:14 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 11 Jan 2023 05:47:15 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 11 Jan 2023 05:47:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 11 Jan 2023 05:47:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 11 Jan 2023 05:47:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 11 Jan 2023 06:05:11 GMT
ENV GPG_KEYS=528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 39B641343D8C104B2B146DC3F9C39DC0B9698544 F1F692238FBC1666E5A5CCD4199F9DFEF6FFBAFD
# Wed, 11 Jan 2023 06:05:12 GMT
ENV PHP_VERSION=8.1.14
# Wed, 11 Jan 2023 06:05:12 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.1.14.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.1.14.tar.xz.asc
# Wed, 11 Jan 2023 06:05:13 GMT
ENV PHP_SHA256=e16e47a872d58685913ac848ce92ec49f42c1828110c98c65fb6265a08724a1a
# Wed, 11 Jan 2023 06:05:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg dirmngr; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 11 Jan 2023 06:05:35 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 11 Jan 2023 06:09:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version
# Wed, 11 Jan 2023 06:09:37 GMT
COPY multi:e11221d43af7136e4dbad5a74e659bcfa753214a9e615c3daf357f1633d9d3d1 in /usr/local/bin/ 
# Wed, 11 Jan 2023 06:09:38 GMT
RUN docker-php-ext-enable sodium
# Wed, 11 Jan 2023 06:09:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 11 Jan 2023 06:09:39 GMT
STOPSIGNAL SIGWINCH
# Wed, 11 Jan 2023 06:09:39 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 11 Jan 2023 06:09:39 GMT
WORKDIR /var/www/html
# Wed, 11 Jan 2023 06:09:40 GMT
EXPOSE 80
# Wed, 11 Jan 2023 06:09:40 GMT
CMD ["apache2-foreground"]
# Wed, 11 Jan 2023 19:48:22 GMT
LABEL org.opencontainers.image.title=YOURLS
# Wed, 11 Jan 2023 19:48:22 GMT
LABEL org.opencontainers.image.description=Your Own URL Shortener
# Wed, 11 Jan 2023 19:48:22 GMT
LABEL org.opencontainers.image.url=https://yourls.org/
# Wed, 11 Jan 2023 19:48:23 GMT
LABEL org.opencontainers.image.documentation=https://yourls.org/
# Wed, 11 Jan 2023 19:48:23 GMT
LABEL org.opencontainers.image.vendor=YOURLS Org
# Wed, 11 Jan 2023 19:48:24 GMT
LABEL org.opencontainers.image.authors=YOURLS
# Wed, 11 Jan 2023 19:48:25 GMT
LABEL org.opencontainers.image.licenses=MIT
# Wed, 11 Jan 2023 19:48:25 GMT
LABEL io.artifacthub.package.readme-url=https://raw.githubusercontent.com/YOURLS/YOURLS/master/README.md
# Wed, 11 Jan 2023 19:48:57 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)" bcmath opcache pdo_mysql mysqli
# Wed, 11 Jan 2023 19:48:58 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 11 Jan 2023 19:49:00 GMT
RUN a2enmod rewrite expires
# Wed, 11 Jan 2023 19:49:00 GMT
ARG YOURLS_VERSION=1.9.1
# Wed, 11 Jan 2023 19:49:00 GMT
ARG YOURLS_SHA256=0bf53290e8f86ea2e0121aac70f7c64d70d3dfb54823acb9dcc343dd7c5f455a
# Wed, 11 Jan 2023 19:49:01 GMT
LABEL org.opencontainers.image.version=1.9.1
# Wed, 11 Jan 2023 19:49:01 GMT
ENV YOURLS_VERSION=1.9.1
# Wed, 11 Jan 2023 19:49:02 GMT
ENV YOURLS_SHA256=0bf53290e8f86ea2e0121aac70f7c64d70d3dfb54823acb9dcc343dd7c5f455a
# Wed, 11 Jan 2023 19:49:05 GMT
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls
# Wed, 11 Jan 2023 19:49:06 GMT
COPY --chown=www-data:www-datafile:f5584b9849b80034920f4de5f1297cb1be461f765f3437b87ddf6c86daa6499d in /usr/src/yourls/user/ 
# Wed, 11 Jan 2023 19:49:06 GMT
COPY file:975ababf859e7cabd8184ab0b2b317a5d8d3ccb6f4922be7f2a5d28c20d075a2 in /usr/local/bin/ 
# Wed, 11 Jan 2023 19:49:07 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /usr/src/yourls/ 
# Wed, 11 Jan 2023 19:49:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 19:49:08 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:bbf81328aca90b7ddb122fc175443f5323674a9e51bbb00d5b1d683ef0b858f4`  
		Last Modified: Wed, 11 Jan 2023 03:55:33 GMT  
		Size: 35.3 MB (35268773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4379437c86e610929801c4b002ebb0e16e22386c100c3572876389b662ef919`  
		Last Modified: Wed, 11 Jan 2023 06:40:37 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c872424ad6e42db6d62b5ecf528da108f30b96fd3a50c09dcc034ec3c1046c`  
		Last Modified: Wed, 11 Jan 2023 06:41:01 GMT  
		Size: 86.6 MB (86632852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938343d42556b0999a8c10c21195617ddd37b298b164adc36a426137e969ac19`  
		Last Modified: Wed, 11 Jan 2023 06:40:37 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba4fc85f5fd29d8514078facf03448e82c7d0260702b06b9601aab8ea162286`  
		Last Modified: Wed, 11 Jan 2023 06:42:06 GMT  
		Size: 20.5 MB (20464227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff83dd786fd9ac5a1878be807e593f7e97db4ede8fee76217d113531a82de5c`  
		Last Modified: Wed, 11 Jan 2023 06:42:01 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89200773d3355ca9a42b6f52558b48c3e65f54cd1db7949bbbe06f7c0d7f6fb0`  
		Last Modified: Wed, 11 Jan 2023 06:42:01 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1b1ff6211f1a7ea526c052ef8a638be6ab4c1322034d03b217bd7ff7fb7e05`  
		Last Modified: Wed, 11 Jan 2023 06:45:09 GMT  
		Size: 12.1 MB (12093460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af1ff9281f42d2b339020439e2fdde3cb73eec02576b79180f62fed23fc31e5`  
		Last Modified: Wed, 11 Jan 2023 06:45:06 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2a08ad9e7dd15c661a8d070313bb2d7b5c00969a49a5f913f61f9611422126`  
		Last Modified: Wed, 11 Jan 2023 06:45:10 GMT  
		Size: 11.4 MB (11444084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255a2a75eefa6c26da5e81823e0bc3adbb94cd82bc9f704037de6acbbe0e1b6a`  
		Last Modified: Wed, 11 Jan 2023 06:45:06 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408a09f37a8cadc55f713167e2d89a32db80fa2c4a49a8657ddccccc89b31dcc`  
		Last Modified: Wed, 11 Jan 2023 06:45:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0ad6ea448d0bd0bc5b82ae3e1a5cce0a46adbf4ddbb3b485cbc5fe3f3ae984`  
		Last Modified: Wed, 11 Jan 2023 06:45:06 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685f248c27af997921891cf19a996278d5a52adc2abaf3f5a2a41291ff26973b`  
		Last Modified: Wed, 11 Jan 2023 19:50:54 GMT  
		Size: 183.8 KB (183808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7126ebcef8d79623845148bdd8742c6dd4f46fbbcd6758320c95a92172eec5f`  
		Last Modified: Wed, 11 Jan 2023 19:50:53 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a340531dc7055b8162e4bc05a2022111fda482938666c5438b95370bf18fd4d4`  
		Last Modified: Wed, 11 Jan 2023 19:50:51 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca3fa43efff796bfc98f80d1338cf4cf3b0e70a56c12fb83fa094bace1770b1`  
		Last Modified: Wed, 11 Jan 2023 19:50:53 GMT  
		Size: 3.9 MB (3903532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a6d7d03edf9cf2f5241d752b7bdc7d43e55f5fec7f45bd5dba2b9245900813`  
		Last Modified: Wed, 11 Jan 2023 19:50:51 GMT  
		Size: 2.1 KB (2053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856b3b54ffecdc08ea6d15b48377fafd7f18dc4f55b9cad71e1549b45a9701fe`  
		Last Modified: Wed, 11 Jan 2023 19:50:51 GMT  
		Size: 1.6 KB (1553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1aff1ae0e4bb29100191259b5c1ef9bf983e0cd9b1b1ede9f805f277178113`  
		Last Modified: Wed, 11 Jan 2023 19:50:51 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:latest` - linux; s390x

```console
$ docker pull yourls@sha256:6ada5c6488f81b59db759ab3baaecf5c5ba9a723d6611803f24b3219729b2807
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.7 MB (146675505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7afd86cf2f1e9b5fe618c1d34f3d9ae2e73fe3ef0e339cbe53d915505665ad25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 11 Jan 2023 02:22:23 GMT
ADD file:14f332233d8fa1ca519992e52aaf550bcee52d346c375e94ee73d36864933f8e in / 
# Wed, 11 Jan 2023 02:22:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 05:36:29 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 11 Jan 2023 05:36:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 11 Jan 2023 05:36:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 05:36:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 11 Jan 2023 05:36:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 11 Jan 2023 05:39:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 11 Jan 2023 05:39:33 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 11 Jan 2023 05:39:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 11 Jan 2023 05:39:45 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 11 Jan 2023 05:39:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 11 Jan 2023 05:39:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 11 Jan 2023 05:39:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 11 Jan 2023 05:39:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 11 Jan 2023 05:51:41 GMT
ENV GPG_KEYS=528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 39B641343D8C104B2B146DC3F9C39DC0B9698544 F1F692238FBC1666E5A5CCD4199F9DFEF6FFBAFD
# Wed, 11 Jan 2023 05:51:41 GMT
ENV PHP_VERSION=8.1.14
# Wed, 11 Jan 2023 05:51:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.1.14.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.1.14.tar.xz.asc
# Wed, 11 Jan 2023 05:51:41 GMT
ENV PHP_SHA256=e16e47a872d58685913ac848ce92ec49f42c1828110c98c65fb6265a08724a1a
# Wed, 11 Jan 2023 05:51:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg dirmngr; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 11 Jan 2023 05:51:52 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 11 Jan 2023 05:54:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version
# Wed, 11 Jan 2023 05:54:11 GMT
COPY multi:e11221d43af7136e4dbad5a74e659bcfa753214a9e615c3daf357f1633d9d3d1 in /usr/local/bin/ 
# Wed, 11 Jan 2023 05:54:11 GMT
RUN docker-php-ext-enable sodium
# Wed, 11 Jan 2023 05:54:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 11 Jan 2023 05:54:12 GMT
STOPSIGNAL SIGWINCH
# Wed, 11 Jan 2023 05:54:12 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 11 Jan 2023 05:54:13 GMT
WORKDIR /var/www/html
# Wed, 11 Jan 2023 05:54:13 GMT
EXPOSE 80
# Wed, 11 Jan 2023 05:54:13 GMT
CMD ["apache2-foreground"]
# Wed, 11 Jan 2023 15:01:25 GMT
LABEL org.opencontainers.image.title=YOURLS
# Wed, 11 Jan 2023 15:01:25 GMT
LABEL org.opencontainers.image.description=Your Own URL Shortener
# Wed, 11 Jan 2023 15:01:25 GMT
LABEL org.opencontainers.image.url=https://yourls.org/
# Wed, 11 Jan 2023 15:01:25 GMT
LABEL org.opencontainers.image.documentation=https://yourls.org/
# Wed, 11 Jan 2023 15:01:25 GMT
LABEL org.opencontainers.image.vendor=YOURLS Org
# Wed, 11 Jan 2023 15:01:25 GMT
LABEL org.opencontainers.image.authors=YOURLS
# Wed, 11 Jan 2023 15:01:25 GMT
LABEL org.opencontainers.image.licenses=MIT
# Wed, 11 Jan 2023 15:01:25 GMT
LABEL io.artifacthub.package.readme-url=https://raw.githubusercontent.com/YOURLS/YOURLS/master/README.md
# Wed, 11 Jan 2023 15:01:37 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)" bcmath opcache pdo_mysql mysqli
# Wed, 11 Jan 2023 15:01:38 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 11 Jan 2023 15:01:38 GMT
RUN a2enmod rewrite expires
# Wed, 11 Jan 2023 15:01:38 GMT
ARG YOURLS_VERSION=1.9.1
# Wed, 11 Jan 2023 15:01:38 GMT
ARG YOURLS_SHA256=0bf53290e8f86ea2e0121aac70f7c64d70d3dfb54823acb9dcc343dd7c5f455a
# Wed, 11 Jan 2023 15:01:38 GMT
LABEL org.opencontainers.image.version=1.9.1
# Wed, 11 Jan 2023 15:01:39 GMT
ENV YOURLS_VERSION=1.9.1
# Wed, 11 Jan 2023 15:01:39 GMT
ENV YOURLS_SHA256=0bf53290e8f86ea2e0121aac70f7c64d70d3dfb54823acb9dcc343dd7c5f455a
# Wed, 11 Jan 2023 15:01:41 GMT
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls
# Wed, 11 Jan 2023 15:01:41 GMT
COPY --chown=www-data:www-datafile:f5584b9849b80034920f4de5f1297cb1be461f765f3437b87ddf6c86daa6499d in /usr/src/yourls/user/ 
# Wed, 11 Jan 2023 15:01:41 GMT
COPY file:975ababf859e7cabd8184ab0b2b317a5d8d3ccb6f4922be7f2a5d28c20d075a2 in /usr/local/bin/ 
# Wed, 11 Jan 2023 15:01:41 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /usr/src/yourls/ 
# Wed, 11 Jan 2023 15:01:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 15:01:41 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5895b3b9300287ac4aca79440c1c4979b6d4fad1ceb06fba32443d012c83cc37`  
		Last Modified: Wed, 11 Jan 2023 02:26:52 GMT  
		Size: 29.6 MB (29629731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46739b5e342705d87e956551b94a4293567f93b87294ea6230885a9e858fc4e1`  
		Last Modified: Wed, 11 Jan 2023 06:15:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b7e3dfc171ac8a890c6f6cbae546440e66dfeb4da57ab3dd89beb4a9560257`  
		Last Modified: Wed, 11 Jan 2023 06:16:07 GMT  
		Size: 71.6 MB (71626761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365b1de7a4314c02dc967cb9909fd47c236937c2eae2f61f3cff1c938395eedf`  
		Last Modified: Wed, 11 Jan 2023 06:15:57 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecc3433d4468511f01df3d702d77d73ec2ff6822b57cfb022baa84a0bc89da4`  
		Last Modified: Wed, 11 Jan 2023 06:16:44 GMT  
		Size: 19.1 MB (19071926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04048bc3c2940622c31d2e0b567487ffbf109b95ab83a6c486bd9b52c4efcbc5`  
		Last Modified: Wed, 11 Jan 2023 06:16:41 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288c83fb89bffc7cd17db7a0b389a7cd1e022bdddf061376411b88bae1d85b28`  
		Last Modified: Wed, 11 Jan 2023 06:16:41 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57466ae64dc0fe885db78f05dbf563bea5d3aae740aee4058dc2e989a7bf98e6`  
		Last Modified: Wed, 11 Jan 2023 06:18:47 GMT  
		Size: 12.1 MB (12092436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f229aab7daea1009db229f0cc2e0c7687051f8775af1c0c2177dbadb847e2ef`  
		Last Modified: Wed, 11 Jan 2023 06:18:46 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49ff15a3b23857c5e0e121c5dc0f88c2dd8a374b2233c91a140e392e5e6c4c1`  
		Last Modified: Wed, 11 Jan 2023 06:18:47 GMT  
		Size: 10.2 MB (10182724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5239ee223599c63ec53f3aeed174ffa2a819e7b006db7c873c3ccd004e0cca6f`  
		Last Modified: Wed, 11 Jan 2023 06:18:46 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ac417a078a3538faaa83eaada484cce46a6cc8de799ccd36a6bec2a619ba54`  
		Last Modified: Wed, 11 Jan 2023 06:18:46 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ea7c9a975d50b9b65026b402a5c2c0cb4fa681fc7fe2f747e6363749bb8942`  
		Last Modified: Wed, 11 Jan 2023 06:18:46 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d6f8a2864645a2d2619324d6c069d5fc40776109fee0c40356cea46d98559b`  
		Last Modified: Wed, 11 Jan 2023 15:02:49 GMT  
		Size: 158.2 KB (158216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f688a606f26bf3cbebfbd051e2b4b71f9c5a3f0fb2fca0593d36be198bab78f`  
		Last Modified: Wed, 11 Jan 2023 15:02:48 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898916712b623b96a6528be446d55cb3aa732878ea80e88b8f3020bd2fcfb1b0`  
		Last Modified: Wed, 11 Jan 2023 15:02:47 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6febe2950713427fb15a5d733ddf8eb29daca99a6fb2bcd0bb7227b5caa5a6b`  
		Last Modified: Wed, 11 Jan 2023 15:02:48 GMT  
		Size: 3.9 MB (3903534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c40fe34d832942064ecb8f118e19ae831acc7af667ef6cbd357521b146f9579`  
		Last Modified: Wed, 11 Jan 2023 15:02:47 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fd6218304b337906f24d49708f039ec62ac939f0b955e60d722d9266694961`  
		Last Modified: Wed, 11 Jan 2023 15:02:47 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b99529263bb33b3652861b643e64ab14bdcee560b1e0ade5a0def84f4b6d6e8`  
		Last Modified: Wed, 11 Jan 2023 15:02:47 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
