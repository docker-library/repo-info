## `espocrm:apache`

```console
$ docker pull espocrm@sha256:b06418353bdfbcb45968a956a4a96ef130fb48cf7adcfb051a63fb2681709ae5
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

### `espocrm:apache` - linux; amd64

```console
$ docker pull espocrm@sha256:fa29c4444e956c8acb534e43cb04a17ec2757eb2b396d1161b383f25d92aecfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.9 MB (257909733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9cbd59842eef576cea3f9179712e26eebe39f6d611c48638b9db6156dfdaef0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 15:51:41 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 15:51:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 15:51:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:51:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:51:56 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:51:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Oct 2026 15:51:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Oct 2026 15:52:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 21 Oct 2026 15:52:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 21 Oct 2026 15:52:01 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 21 Oct 2026 15:52:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:52:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:52:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:52:01 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 15:52:01 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 15:52:01 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 15:52:01 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 15:52:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 15:52:09 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:54:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 15:54:32 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:54:32 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 15:54:32 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 15:54:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 15:54:32 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 15:54:32 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:54:32 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 15:54:32 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 15:54:32 GMT
CMD ["apache2-foreground"]
# Fri, 23 Oct 2026 18:24:11 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Fri, 23 Oct 2026 18:24:11 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Fri, 23 Oct 2026 18:24:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:25:12 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:25:12 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Fri, 23 Oct 2026 18:25:13 GMT
RUN set -eux; 	a2enmod rewrite ssl proxy proxy_wstunnel # buildkit
# Fri, 23 Oct 2026 18:25:13 GMT
ENV ESPOCRM_VERSION=10.0.11
# Fri, 23 Oct 2026 18:25:13 GMT
ENV ESPOCRM_SHA256=cdd04f7efa52a59025ef824c75b06e0a84cf986724a8c5bc4b56fcd2ce8e0ab1
# Fri, 23 Oct 2026 18:25:13 GMT
WORKDIR /var/www/html
# Fri, 23 Oct 2026 18:25:20 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.11.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Fri, 23 Oct 2026 18:25:20 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 18:25:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Oct 2026 18:25:20 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d099cf6567e1e90d7b5bd54c2272c540acca82a68e18ef072c74c03b2a4d26`  
		Last Modified: Wed, 21 Oct 2026 15:54:53 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4fde230b8e3dbe07f3afffca3d388591207f1a8e39549db5ebbc628ff1e7194`  
		Last Modified: Wed, 21 Oct 2026 15:54:56 GMT  
		Size: 117.8 MB (117839146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ba538ce88212e5e9e9152c7b95656e02b4d4f22f8b7e13a09ed1ea369e0d5b`  
		Last Modified: Wed, 21 Oct 2026 15:54:53 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d96ac943e6f2d2db2cae578552078af21f422f536e5626f87372f659e4158f68`  
		Last Modified: Wed, 21 Oct 2026 15:54:53 GMT  
		Size: 4.2 MB (4244078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc87e5dcec55fface97f90b4462cf5774346115263fbf31730dfe9524e7c20dd`  
		Last Modified: Wed, 21 Oct 2026 15:54:54 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:141797b11b62bae742783a0b124afe57f69d23656b3cfad6eeb2b5f621fe2b20`  
		Last Modified: Wed, 21 Oct 2026 15:54:54 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:561abd24154ca81e7da8a184b9efbc2cfcf80725758a862963fd3b28be004e07`  
		Last Modified: Wed, 21 Oct 2026 15:54:55 GMT  
		Size: 14.0 MB (14030185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc98440918ace210c726e23341d2e5033dda90f36e7a790152e758d7b981965`  
		Last Modified: Wed, 21 Oct 2026 15:54:55 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:507af3f036de8728510cc62ad3674c58f88890e0e6ecdbb334ec318a27c7e45b`  
		Last Modified: Wed, 21 Oct 2026 15:54:56 GMT  
		Size: 13.8 MB (13755678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d102fcc60825080cf8dd2e233a8ca91108f9944bf0744138356fa144708ab819`  
		Last Modified: Wed, 21 Oct 2026 15:54:57 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23591e043e99a2b76af3cad1e607783b571fdbab60c0ec179d8d1f002c5040a0`  
		Last Modified: Wed, 21 Oct 2026 15:54:57 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b19019ee98691646a9cd82fe8c4234e26fb9ef0a49c6ea013c7b335dd04b330`  
		Last Modified: Wed, 21 Oct 2026 15:54:57 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa95057f1229ea0d052c5177268c5b6fe9ecfac5e8499ecedcb56da40973889`  
		Last Modified: Wed, 21 Oct 2026 15:54:58 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:346e372fe90d55d3d94a18613e21abac126af75f6185a29d52ef34bd09ae33d7`  
		Last Modified: Fri, 23 Oct 2026 18:25:30 GMT  
		Size: 288.5 KB (288537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:833ab8ad67c224e91691d2aad37f98dd7250c9eef0458c020c1ec60b74de7126`  
		Last Modified: Fri, 23 Oct 2026 18:25:30 GMT  
		Size: 4.2 MB (4159829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1fbc9e8873689efa05222f2a4270a59c77c3e4d212972c3a3c2109766b47e8`  
		Last Modified: Fri, 23 Oct 2026 18:25:30 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbd85659a47c767aa3e14f43323e95375bfc6a617dcd4bd5fa60d1c85e169846`  
		Last Modified: Fri, 23 Oct 2026 18:25:30 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af2336702e508e199c3045963c33699482dd324e5613d210cc63e8ba5de473df`  
		Last Modified: Fri, 23 Oct 2026 18:25:33 GMT  
		Size: 73.7 MB (73738634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48df9139e4a73429b4f93bfcd7c9332cde28114c5545205b7f18540d05423367`  
		Last Modified: Fri, 23 Oct 2026 18:25:31 GMT  
		Size: 3.4 KB (3407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:apache` - unknown; unknown

```console
$ docker pull espocrm@sha256:c0436f459ad3b898bb5696785265ac8c3d50e067535344995311231b8b8ff12f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 KB (51345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60242a63a6e5ca54e65ae3f09530f1e897d01ae0e54eedd9fb19290543de420`

```dockerfile
```

-	Layers:
	-	`sha256:a038c41afc86e79985b36789c1a58264ea0b944c72e086b6672510dae1f5a579`  
		Last Modified: Fri, 23 Oct 2026 18:25:30 GMT  
		Size: 51.3 KB (51345 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:apache` - linux; arm variant v5

```console
$ docker pull espocrm@sha256:292fa321f57858484c84ed5c62eb14e5d27450d9a9b9b56713260f56733df51b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.2 MB (231247370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cb8fda16d7d18f4767cbfc67243ac957802da100e2d18d1b9501c2598dc1777`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 15:41:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 15:42:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 15:42:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:42:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:42:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:42:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Oct 2026 15:42:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Oct 2026 15:42:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 21 Oct 2026 15:42:30 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 21 Oct 2026 15:42:30 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 21 Oct 2026 15:42:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:42:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:42:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:42:30 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 15:42:30 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 15:42:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 15:42:30 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 15:42:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 15:42:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:46:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 15:46:05 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:46:05 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 15:46:05 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 15:46:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 15:46:05 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 15:46:06 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:46:06 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 15:46:06 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 15:46:06 GMT
CMD ["apache2-foreground"]
# Fri, 23 Oct 2026 18:24:16 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Fri, 23 Oct 2026 18:24:16 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Fri, 23 Oct 2026 18:24:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:25:55 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:25:55 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Fri, 23 Oct 2026 18:25:55 GMT
RUN set -eux; 	a2enmod rewrite ssl proxy proxy_wstunnel # buildkit
# Fri, 23 Oct 2026 18:25:55 GMT
ENV ESPOCRM_VERSION=10.0.11
# Fri, 23 Oct 2026 18:25:55 GMT
ENV ESPOCRM_SHA256=cdd04f7efa52a59025ef824c75b06e0a84cf986724a8c5bc4b56fcd2ce8e0ab1
# Fri, 23 Oct 2026 18:25:55 GMT
WORKDIR /var/www/html
# Fri, 23 Oct 2026 18:26:03 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.11.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Fri, 23 Oct 2026 18:26:03 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 18:26:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Oct 2026 18:26:03 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1509a4c0fbeb16a4ee83f77df06c4aa10ecda41b668be5876be76ac09f30f22f`  
		Last Modified: Wed, 21 Oct 2026 15:45:45 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:803effd6c6bfd67c94e7ffe9eccc16d5063f27b30ae5ef1827b7bf6b4e19bf3c`  
		Last Modified: Wed, 21 Oct 2026 15:46:28 GMT  
		Size: 94.9 MB (94885944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af2df91c02b0aa4cb4bcdad8c9da8c1ae77ab07bd6430597d7c27109d959541`  
		Last Modified: Wed, 21 Oct 2026 15:46:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5f8468d037533944bb679f866da0ed8de1d6762bb938c7deebe28036c584632`  
		Last Modified: Wed, 21 Oct 2026 15:46:25 GMT  
		Size: 4.1 MB (4099953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c96dd32a428a2ce7944e24ec967221d826e3e269692e87b81eabbb92e770688`  
		Last Modified: Wed, 21 Oct 2026 15:46:25 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a848cf32f2eb44e3c695ce26351b567507e35bf4008adf43d37b0a6180484d84`  
		Last Modified: Wed, 21 Oct 2026 15:46:26 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3007e5e093b5b43ad0deaef4b45ad7779e5bcb112abc04032550406182f66768`  
		Last Modified: Wed, 21 Oct 2026 15:46:27 GMT  
		Size: 14.0 MB (14027312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a51f649c47e066d28180b37bb65720f2c292add9dc5832c4b53025c5744e29a3`  
		Last Modified: Wed, 21 Oct 2026 15:46:26 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b5e0ec88bc8bf6973710d98993c56e257a8705a8b4684209f30efd680ef70cc`  
		Last Modified: Wed, 21 Oct 2026 15:46:27 GMT  
		Size: 12.4 MB (12360260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a854f9f9ae1ec97733ebc4b0204599252f3ee34044c3a402cfb3fee9a92f6dd`  
		Last Modified: Wed, 21 Oct 2026 15:46:28 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:045ad36e9d0ba8dc9347b27cea1f9a48250c121d8ff80a63c7a5d694dde06a46`  
		Last Modified: Wed, 21 Oct 2026 15:46:28 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff03ac502fa0e331eeee95cc2bb41c6d204faa7dd01bd50a0d56e9097380956`  
		Last Modified: Wed, 21 Oct 2026 15:46:29 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f691d40c24c0aef8a1ea73f23bf43f4eab0bdd99b65e27d4369b4ec2ac0238`  
		Last Modified: Wed, 21 Oct 2026 15:46:29 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:137b64fb52237120c6d80c9e0df930162a65e3b3c9fa4905b670b7b2e6386652`  
		Last Modified: Fri, 23 Oct 2026 18:26:15 GMT  
		Size: 279.8 KB (279773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3cde11de5c4a057e96ed7f3d8e7d0a005dd0b98be38a50cd69cf43f6888618f`  
		Last Modified: Fri, 23 Oct 2026 18:26:15 GMT  
		Size: 3.8 MB (3837642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16008a0496b5fd16fcac04509f07515318bb58e0d4f4d10525099920403c2ebe`  
		Last Modified: Fri, 23 Oct 2026 18:26:14 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e2dd2127a61a23200b0a97d522a83697e990d212f0e92c5d75df70dc944f1e`  
		Last Modified: Fri, 23 Oct 2026 18:26:15 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a89fdfedf234efa6d255fd6956e14331c06ac7ef8cf8103de10931650e8fe34`  
		Last Modified: Fri, 23 Oct 2026 18:26:18 GMT  
		Size: 73.7 MB (73738633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0404dfbc15af4dc34b7be7c562705fd9b6b55de2e884087aaa308e36f55658dc`  
		Last Modified: Fri, 23 Oct 2026 18:26:16 GMT  
		Size: 3.4 KB (3409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:apache` - unknown; unknown

```console
$ docker pull espocrm@sha256:32689b072ea95af8ad4fd0025f3e461f302b0f9905f9c818dd703c219b8e498e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 KB (51533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ede7e6344abd1dcf4fc6849077c4f74ba4559f08b7aef665704a3e7506e141`

```dockerfile
```

-	Layers:
	-	`sha256:fdff2aee8a304529f38623d82d1cab53ea629ba2efc13dd11bb2740271b16652`  
		Last Modified: Fri, 23 Oct 2026 18:26:14 GMT  
		Size: 51.5 KB (51533 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:apache` - linux; arm variant v7

```console
$ docker pull espocrm@sha256:4b001eece01f1a1b1582d7d09743bcdf1d8a4e789678b80bd8d1ddf28bbc7548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.7 MB (219726544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:706aaa1ab1afbc9d2689a1c1f787cfc4a480ca10419ab2ec841bf95739aea3e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 15:51:50 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 15:52:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 15:52:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:52:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:52:09 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:52:09 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Oct 2026 15:52:09 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Oct 2026 15:59:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 21 Oct 2026 15:59:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 21 Oct 2026 15:59:43 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 21 Oct 2026 15:59:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:59:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:59:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:59:43 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 15:59:43 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 15:59:43 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 15:59:43 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 15:59:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 15:59:54 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:02:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 16:02:53 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:02:53 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 16:02:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 16:02:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 16:02:53 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 16:02:53 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:02:53 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 16:02:53 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 16:02:53 GMT
CMD ["apache2-foreground"]
# Fri, 23 Oct 2026 18:22:22 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Fri, 23 Oct 2026 18:22:22 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Fri, 23 Oct 2026 18:22:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:23:53 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:23:54 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Fri, 23 Oct 2026 18:23:54 GMT
RUN set -eux; 	a2enmod rewrite ssl proxy proxy_wstunnel # buildkit
# Fri, 23 Oct 2026 18:23:54 GMT
ENV ESPOCRM_VERSION=10.0.11
# Fri, 23 Oct 2026 18:23:54 GMT
ENV ESPOCRM_SHA256=cdd04f7efa52a59025ef824c75b06e0a84cf986724a8c5bc4b56fcd2ce8e0ab1
# Fri, 23 Oct 2026 18:23:54 GMT
WORKDIR /var/www/html
# Fri, 23 Oct 2026 18:24:02 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.11.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Fri, 23 Oct 2026 18:24:02 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 18:24:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Oct 2026 18:24:02 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05f9b8b3c2ab2271ed7a7304fc739d1b52d8faeb614c2158c1f6bf597f614da`  
		Last Modified: Wed, 21 Oct 2026 15:55:33 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9a1a23378e686c0965cd1367811c740e32339dbf82d54142d1e16f23e48b1a`  
		Last Modified: Wed, 21 Oct 2026 15:55:36 GMT  
		Size: 86.3 MB (86258140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70645fed3c0af63a23893fc37455171cd6b76eea8ebe96348e3b1bb7271d56d1`  
		Last Modified: Wed, 21 Oct 2026 15:55:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e76d0fddffbf4213aea59634a9b23c13ed27999f54c45945b3c5d9683244ec`  
		Last Modified: Wed, 21 Oct 2026 16:03:04 GMT  
		Size: 3.8 MB (3768342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aebf5dbdbcdc70750043f5fed9510d6146bcccb0cf273a105dfd98ff4f88ca1`  
		Last Modified: Wed, 21 Oct 2026 16:03:04 GMT  
		Size: 443.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52821369c3302e199327aedc081681412004c31ea9d9341d64d11e517966dabb`  
		Last Modified: Wed, 21 Oct 2026 16:03:04 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a77f77ae881feee31acda07fa480422cb7a28c75755c9f149bdb14a8f104a4e`  
		Last Modified: Wed, 21 Oct 2026 16:03:05 GMT  
		Size: 14.0 MB (14027517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f0cb46d967bb164f872fecab86af03dba5259a5b3c8487db8d17ac6f98a26bb`  
		Last Modified: Wed, 21 Oct 2026 16:03:05 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9c438242aa6c3863851a8c9eb70b079c1664e9a72c00fec1252a31b00b08b8`  
		Last Modified: Wed, 21 Oct 2026 16:03:05 GMT  
		Size: 11.8 MB (11762212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c21e4350cd04439f44bc65e7d05cd37c5def71b82cd45acecf7c311ce3dc6c8`  
		Last Modified: Wed, 21 Oct 2026 16:03:06 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00adb8331411dbb7cfcb71d80bb29d969e3fd51b0409e5cabc52153ae69a06aa`  
		Last Modified: Wed, 21 Oct 2026 16:03:06 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb5866b0619455d9043f15c2d87d75221e07decb7417454b6efa3ff6d7d7f48`  
		Last Modified: Wed, 21 Oct 2026 16:03:06 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6757ff808dfd7a22fa28a91193bfb80a821a24b5ee2c6af9a9aa47887e3b51a6`  
		Last Modified: Wed, 21 Oct 2026 16:03:07 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d667b5f24de1853ce6cb695b490264ed3c7209363d02902e2e6eff7eab777b6e`  
		Last Modified: Fri, 23 Oct 2026 18:24:13 GMT  
		Size: 267.2 KB (267163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f00c45a2a24abaa774ec59e7b829a47f54f04723110867932231b59250cd1834`  
		Last Modified: Fri, 23 Oct 2026 18:24:13 GMT  
		Size: 3.6 MB (3636072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3702403fb6dfee7a602276b056d70c7dbdc7932e0d554ebbfc7cf12679144a5a`  
		Last Modified: Fri, 23 Oct 2026 18:24:13 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86f6b93ff98ff5c3e6b1f88333d862d6bf79a2474533093ab267ad0b42415ac`  
		Last Modified: Fri, 23 Oct 2026 18:24:13 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11a012795eef3472be1bfb7fb592645cb60b9a442b4e6c80bd8add023091963`  
		Last Modified: Fri, 23 Oct 2026 18:24:16 GMT  
		Size: 73.7 MB (73738625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f891d2e393064b830e95e2e1353e1388b277abb1beb8bfc06792bd780ae4b17`  
		Last Modified: Fri, 23 Oct 2026 18:24:14 GMT  
		Size: 3.4 KB (3408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:apache` - unknown; unknown

```console
$ docker pull espocrm@sha256:00f50c4532983f5e58d2e7085503feed4ed84416297bbca332027b2957e19a9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 KB (51533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:027e79d4eba08266a012305c10dfe335ceac5a8cdb1686d0da2a30695be9f17d`

```dockerfile
```

-	Layers:
	-	`sha256:3674439a95ad222ea82ccd3a3ad861ebcca310d343f7c3b833fbe8c9ea4dc642`  
		Last Modified: Fri, 23 Oct 2026 18:24:13 GMT  
		Size: 51.5 KB (51533 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:apache` - linux; arm64 variant v8

```console
$ docker pull espocrm@sha256:f179a63f640d45174af8d6a4ce9241bdfb1bdb0ae0a12ea4f354eb0794fdb512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250232731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372b589513b7cb550244738fece075bb4c7d4ebd5d36e541c5278a0c0d362094`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 15:52:32 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 15:52:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 15:52:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:52:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:52:49 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:52:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Oct 2026 15:52:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Oct 2026 15:56:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 21 Oct 2026 15:56:27 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 21 Oct 2026 15:56:27 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 21 Oct 2026 15:56:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:56:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:56:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:56:27 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 15:56:27 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 15:56:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 15:56:27 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 15:56:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 15:56:36 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:59:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 15:59:36 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:59:36 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 15:59:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 15:59:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 15:59:36 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 15:59:36 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:59:36 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 15:59:36 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 15:59:36 GMT
CMD ["apache2-foreground"]
# Fri, 23 Oct 2026 18:24:24 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Fri, 23 Oct 2026 18:24:24 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Fri, 23 Oct 2026 18:24:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:25:45 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:25:45 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Fri, 23 Oct 2026 18:25:46 GMT
RUN set -eux; 	a2enmod rewrite ssl proxy proxy_wstunnel # buildkit
# Fri, 23 Oct 2026 18:25:46 GMT
ENV ESPOCRM_VERSION=10.0.11
# Fri, 23 Oct 2026 18:25:46 GMT
ENV ESPOCRM_SHA256=cdd04f7efa52a59025ef824c75b06e0a84cf986724a8c5bc4b56fcd2ce8e0ab1
# Fri, 23 Oct 2026 18:25:46 GMT
WORKDIR /var/www/html
# Fri, 23 Oct 2026 18:25:53 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.11.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Fri, 23 Oct 2026 18:25:54 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 18:25:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Oct 2026 18:25:54 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba83846aaed7760129dc7c98d83ec1a15f7bf524f7df9cf26decaa6316701b7`  
		Last Modified: Wed, 21 Oct 2026 15:56:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f11f862166ea7bbba526a27ce967bc759d983e49e564de1b0ef8b4831ddb6c0`  
		Last Modified: Wed, 21 Oct 2026 15:56:13 GMT  
		Size: 110.2 MB (110179080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec576da64daa608f90e2f4c9e697b69ab3f71ae4788444cb2336ce7959c9d753`  
		Last Modified: Wed, 21 Oct 2026 15:56:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0992bd9f03e407dc4dab700b3579135697aad6e66068813eb591c8b766eb50ce`  
		Last Modified: Wed, 21 Oct 2026 15:59:51 GMT  
		Size: 4.3 MB (4321152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9ce00c97096d3e73791bb809a396b62bce23de933dca89329f6348d1525d10`  
		Last Modified: Wed, 21 Oct 2026 15:59:51 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2898f2857863363d0a748c413b7273d923c988cade64de096ed559bfaf27cd0`  
		Last Modified: Wed, 21 Oct 2026 15:59:50 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f91795103899fcb5993142f63c22e3d7347e1849e5fb685e9dbfe8ca59452db`  
		Last Modified: Wed, 21 Oct 2026 15:59:51 GMT  
		Size: 14.0 MB (14029732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f361ad7e0121eb7e3a79be01fb13e00f620c9f55db8322b9757e0f219c33df1f`  
		Last Modified: Wed, 21 Oct 2026 15:59:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b039f350e97f519448f7cab4df0dc426b381172a97bf8748b0b7f0622750012`  
		Last Modified: Wed, 21 Oct 2026 15:59:52 GMT  
		Size: 13.4 MB (13401429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3c0e0f89c8deedda67ef79897d1586b2970b8b718464e5ae77c96f9338194b`  
		Last Modified: Wed, 21 Oct 2026 15:59:52 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec57d5786aa1f12375d79e0949f3c205e1f3235b9c858ff09f30ba6ce9011fef`  
		Last Modified: Wed, 21 Oct 2026 15:59:52 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef6ad1395e574e71198b7fc04fa86d45aa9791bfea48584ad72831db4d60b72`  
		Last Modified: Wed, 21 Oct 2026 15:59:52 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4e31161366471dbabe3974cfd9e4d1131b0661ac95ec940a1e19cfe7fbd59d9`  
		Last Modified: Wed, 21 Oct 2026 15:59:53 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee3c6a3564d6d481022151532d22da8efa7ecf354bdb168e30745e42d0f67ec`  
		Last Modified: Fri, 23 Oct 2026 18:26:04 GMT  
		Size: 284.6 KB (284567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64f42b7f27367c0c62f06c17a14978bf11fd50d26668d5a031e6089ba842ae9d`  
		Last Modified: Fri, 23 Oct 2026 18:26:05 GMT  
		Size: 4.1 MB (4067608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9ac2fc3d96909bc1ff10c31e6ce793e4887847bf6e2cbb967387312cae2f59`  
		Last Modified: Fri, 23 Oct 2026 18:26:04 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015a00dffe53f40d88a9647c6d8bab02a55b18d103c3b1190cc688e14af97dbd`  
		Last Modified: Fri, 23 Oct 2026 18:26:04 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8fce956475f77cfed002b7e5828a879b0c02a18a7c99d06a1f8dae8b975d7bb`  
		Last Modified: Fri, 23 Oct 2026 18:26:08 GMT  
		Size: 73.7 MB (73738623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3286dc14eb347b2e334f3d926d1866f6f50508bc6052685b156ff6b032f9d8`  
		Last Modified: Fri, 23 Oct 2026 18:26:06 GMT  
		Size: 3.4 KB (3408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:apache` - unknown; unknown

```console
$ docker pull espocrm@sha256:15940f574f159cd9c19e739e71ce727eba61147d6927e437ba7c24585f389b28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 KB (51605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f554446dc644d0964d3e3957e50fe3c036135193546832150217251f925d952a`

```dockerfile
```

-	Layers:
	-	`sha256:c4f731489e644bf40d3badb08657ce59fc4494e7a870107e1d13292ef1c6d011`  
		Last Modified: Fri, 23 Oct 2026 18:26:04 GMT  
		Size: 51.6 KB (51605 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:apache` - linux; 386

```console
$ docker pull espocrm@sha256:88ea4666a2cae663745c3888bb4a97b3b39cc2b0601eb310a60f026d55fea7d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258388042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:846b770ce8219402cee50532d2fb85f0809d9666c94553a8d131c8628d27aa30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 15:54:08 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 15:54:27 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 15:54:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:54:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:54:27 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:54:27 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Oct 2026 15:54:27 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Oct 2026 15:58:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 21 Oct 2026 15:58:30 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 21 Oct 2026 15:58:30 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 21 Oct 2026 15:58:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:58:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:58:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:58:30 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 15:58:30 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 15:58:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 15:58:30 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 15:58:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 15:58:39 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:01:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 16:01:31 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:01:31 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 16:01:31 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 16:01:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 16:01:31 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 16:01:31 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:01:31 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 16:01:31 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 16:01:31 GMT
CMD ["apache2-foreground"]
# Fri, 23 Oct 2026 18:23:46 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Fri, 23 Oct 2026 18:23:46 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Fri, 23 Oct 2026 18:23:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:24:53 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:24:53 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Fri, 23 Oct 2026 18:24:53 GMT
RUN set -eux; 	a2enmod rewrite ssl proxy proxy_wstunnel # buildkit
# Fri, 23 Oct 2026 18:24:53 GMT
ENV ESPOCRM_VERSION=10.0.11
# Fri, 23 Oct 2026 18:24:53 GMT
ENV ESPOCRM_SHA256=cdd04f7efa52a59025ef824c75b06e0a84cf986724a8c5bc4b56fcd2ce8e0ab1
# Fri, 23 Oct 2026 18:24:53 GMT
WORKDIR /var/www/html
# Fri, 23 Oct 2026 18:25:01 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.11.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Fri, 23 Oct 2026 18:25:01 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 18:25:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Oct 2026 18:25:01 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eab486c9eaec7ff28046843653bfa136b2fc8348388c00abd36f650ac22394f`  
		Last Modified: Wed, 21 Oct 2026 15:58:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2613bc76a635ac8b6b31a00c75ec4c8388a484fa39664562ab9d29cf45d92b5e`  
		Last Modified: Wed, 21 Oct 2026 15:58:14 GMT  
		Size: 116.1 MB (116140674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e45a9487dd6231483032ac37dd7daa81e7ab52ed2ba684971d71e8d0222aba1`  
		Last Modified: Wed, 21 Oct 2026 15:58:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0d5b8727455bc44f7e483b95a9fade97015c4242684eaf4882b15ee509619c`  
		Last Modified: Wed, 21 Oct 2026 16:01:42 GMT  
		Size: 4.5 MB (4476989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4a92c4e20a2209c5468650b3d1c646e387c70936d545c601f5844fd2a2b6bf`  
		Last Modified: Wed, 21 Oct 2026 16:01:41 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3aa6d95fcb0edc52045cfab95808b95c5134ee74968c3cb01819856009c63ed`  
		Last Modified: Wed, 21 Oct 2026 16:01:42 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9f7285e6822f1dcd540a67d4014ca8dfb854e521770ccd905f50a48f508ae55`  
		Last Modified: Wed, 21 Oct 2026 16:01:42 GMT  
		Size: 14.0 MB (14029043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f53599224d303c721af33128c9d799cd6ee26db90f51562aaffb31b3056e4b72`  
		Last Modified: Wed, 21 Oct 2026 16:01:43 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d429591740bcfaccdbea793f1415e0a57ec19528dd3ec1265adf6bc3a5ec8a`  
		Last Modified: Wed, 21 Oct 2026 16:01:43 GMT  
		Size: 14.1 MB (14136401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b53b46d84dc5b710e7362b8ec9ca21525c8be0da00abc7460e2f158ed02eaa`  
		Last Modified: Wed, 21 Oct 2026 16:01:43 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1b2019670d5915c240e20de902fe24f01d19c7a553d82bc83430fffa7e14be`  
		Last Modified: Wed, 21 Oct 2026 16:01:43 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c6ea10f2ea82c64af0508cf8434df24848534b8edc76a9e30a973d27bd4f8fa`  
		Last Modified: Wed, 21 Oct 2026 16:01:44 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f758284a51e2744cc2ab2436ddc36e0eb03d02e649f665962ea50749ff48c1e`  
		Last Modified: Wed, 21 Oct 2026 16:01:44 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7dd0265e7b88c715969079fa9c66c150b86005393e0462398d1831d06a196af`  
		Last Modified: Fri, 23 Oct 2026 18:25:11 GMT  
		Size: 292.1 KB (292084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e2194ab7895baf5fe37fc5ef01c554c3da30ec58ed96deb88017bdeef3508d`  
		Last Modified: Fri, 23 Oct 2026 18:25:11 GMT  
		Size: 4.2 MB (4210629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3805d5b251445b002259360bc767a7378df96450dea65b0b16994a2f03a5b921`  
		Last Modified: Fri, 23 Oct 2026 18:25:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00bbcf48f91fb36715497a197a95b1f759f32ddb9bc54bae067ca605db989406`  
		Last Modified: Fri, 23 Oct 2026 18:25:11 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e623cf130860b696664c50fc1fe53cbb891140fdac2c7452558722517efdc574`  
		Last Modified: Fri, 23 Oct 2026 18:25:14 GMT  
		Size: 73.7 MB (73738635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5446040114c64d6d3f8d95373a76dd43f937c1f013f98cae5ec021334332d6ae`  
		Last Modified: Fri, 23 Oct 2026 18:25:12 GMT  
		Size: 3.4 KB (3407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:apache` - unknown; unknown

```console
$ docker pull espocrm@sha256:2e7fcfffa30df669d238bfacf5ec19b218840803d8d32379d5a314c4b4d584cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 KB (51263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47a4fe5063437cc5e665fa701e32b64f8c9e3328ad3c62fc20e592cf5aed8245`

```dockerfile
```

-	Layers:
	-	`sha256:960384f15244a2b34961969dcc5e4fe48f4d70a3488518660b179ddc3f119a14`  
		Last Modified: Fri, 23 Oct 2026 18:25:11 GMT  
		Size: 51.3 KB (51263 bytes)  
		MIME: application/vnd.in-toto+json
