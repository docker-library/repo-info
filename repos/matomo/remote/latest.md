## `matomo:latest`

```console
$ docker pull matomo@sha256:70b23dfb55d25a32538009f75a0222adf2322515b626512a9228c1b97e51b020
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

### `matomo:latest` - linux; amd64

```console
$ docker pull matomo@sha256:5e567977961a397a3f4f4ccb31defda99293f7d78ed53dd23b6901d173cf07b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.9 MB (203853972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d7c02e4ffc6f7f8460f295e1e4aa57e8b23611f9177c0be0bbd46ac423a47b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 19:05:27 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 24 Sep 2026 19:05:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 24 Sep 2026 19:05:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:05:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:05:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:05:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 24 Sep 2026 19:05:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 24 Sep 2026 19:09:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 24 Sep 2026 19:09:42 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 24 Sep 2026 19:09:42 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 24 Sep 2026 19:09:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:09:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:09:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:09:42 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 24 Sep 2026 19:09:42 GMT
ENV PHP_VERSION=8.4.26
# Thu, 24 Sep 2026 19:09:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Thu, 24 Sep 2026 19:09:42 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 19:09:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 24 Sep 2026 19:09:50 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:12:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:12:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:12:42 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:12:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:12:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:12:42 GMT
STOPSIGNAL SIGWINCH
# Thu, 24 Sep 2026 19:12:42 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:12:42 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:12:42 GMT
EXPOSE map[80/tcp:{}]
# Thu, 24 Sep 2026 19:12:42 GMT
CMD ["apache2-foreground"]
# Thu, 24 Sep 2026 19:37:56 GMT
ENV PHP_MEMORY_LIMIT=256M
# Thu, 24 Sep 2026 19:37:56 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 		libzip-dev 		procps 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		gd 		bcmath 		ldap 		mysqli 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.28; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:37:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 24 Sep 2026 19:37:56 GMT
ENV MATOMO_VERSION=5.14.0
# Thu, 24 Sep 2026 19:38:06 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o matomo.tar.gz 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o matomo.tar.gz.asc 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys F529A27008477483777FC23D63BB30D0E5D2C749; 	gpg --batch --verify matomo.tar.gz.asc matomo.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" matomo.tar.gz.asc; 	tar -xzf matomo.tar.gz -C /usr/src/; 	rm matomo.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:38:06 GMT
COPY php.ini /usr/local/etc/php/conf.d/php-matomo.ini # buildkit
# Thu, 24 Sep 2026 19:38:06 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 19:38:06 GMT
VOLUME [/var/www/html]
# Thu, 24 Sep 2026 19:38:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 19:38:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6666d6cafafbea03b8d45f975507d4a255bb9e3c94fd962d0bb71624e5b2f9`  
		Last Modified: Thu, 24 Sep 2026 19:09:23 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc6216db09a26a4e25f6a97a1fee3c6da3ed7a07ac41552fc03baa461adf53ec`  
		Last Modified: Thu, 24 Sep 2026 19:09:27 GMT  
		Size: 117.8 MB (117842511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee78f6ca36f8fb6dc5f5aaeac5dfbf494275b7f2719316733dcd2c9b506cc58`  
		Last Modified: Thu, 24 Sep 2026 19:09:14 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e97d2e05cb74b862e7828a5d944259c9eaa48ec8d87745753f0ef7d68a88be52`  
		Last Modified: Thu, 24 Sep 2026 19:12:53 GMT  
		Size: 4.2 MB (4246504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5f0edf04c5e463017fc12540b87acc959e69e4ff303b00818455fffab29cbb`  
		Last Modified: Thu, 24 Sep 2026 19:12:53 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ee8df04554f89e50988b5f6b5abe198081445f60cac0e4ca5bd1e99a47b6c9`  
		Last Modified: Thu, 24 Sep 2026 19:12:53 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fe1352118692a11789dcbc8087606af26f5f0cc4f1d385f1402317e937a449b`  
		Last Modified: Thu, 24 Sep 2026 19:12:54 GMT  
		Size: 14.0 MB (13958056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2822c5aa27f3d7f4356a1d80557cb0e34401a1c5b80891032b9998ade22ef979`  
		Last Modified: Thu, 24 Sep 2026 19:12:54 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e207687cd5fc2851b6fa01cc11c04a9c4f777d5780c7d4303945dd82d35836`  
		Last Modified: Thu, 24 Sep 2026 19:12:55 GMT  
		Size: 13.7 MB (13711914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26aa61cc642a6f1bca30a9e6b6d63665d3ba5de7bbd8548f590e23cb84d829c`  
		Last Modified: Thu, 24 Sep 2026 19:12:55 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e8893af84eb9876e0eb0a95096d0a94d29b38a3f7865be6b9bcd55990837149`  
		Last Modified: Thu, 24 Sep 2026 19:12:55 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de211e43ae155e882da3f524ee753fd7c75710f551ba3c7658afea1f5dc48f4`  
		Last Modified: Thu, 24 Sep 2026 19:12:56 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77be155b6261c1c00e6fd6bda471040395329252bbac174ca69d9b0094a57892`  
		Last Modified: Thu, 24 Sep 2026 19:12:56 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2678c10c170ce65203341e5d35be9997e457948b8981dfd7a1d3d1ab21fa76`  
		Last Modified: Thu, 24 Sep 2026 19:38:13 GMT  
		Size: 2.7 MB (2712770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee37104d2b1a504ab8250d2cdac8155c4882565d23b31cb61be256d6ecfd050`  
		Last Modified: Thu, 24 Sep 2026 19:38:13 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0790c1d9d1f8f2f3c0a56af028ec0b329efa09c514edb62f6ddc4b64e5538448`  
		Last Modified: Thu, 24 Sep 2026 19:38:14 GMT  
		Size: 21.5 MB (21544586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db4ba752994096449b26ac9298e973910a0161059c4ef2b9f35b64e92167543`  
		Last Modified: Thu, 24 Sep 2026 19:38:13 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3626ff9c3a386a4ca1e738ab7a387575fa27bebe33f545723e07edfbb21d66`  
		Last Modified: Thu, 24 Sep 2026 19:38:14 GMT  
		Size: 823.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `matomo:latest` - unknown; unknown

```console
$ docker pull matomo@sha256:192d3b57ee2de3546fbacc31db50ac1f97ecd31f19b7c9441aea056a3e19970b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 KB (37479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed519ecbf5f361d161def785d7bea86bed080027e87b936a11cb2fed1a4b6525`

```dockerfile
```

-	Layers:
	-	`sha256:8de049c094e81dc904d17c8d2d9944ef39d1c577f25b524c44f7e1d036e644cc`  
		Last Modified: Thu, 24 Sep 2026 19:38:13 GMT  
		Size: 37.5 KB (37479 bytes)  
		MIME: application/vnd.in-toto+json

### `matomo:latest` - linux; arm variant v5

```console
$ docker pull matomo@sha256:2f37494837083103f1babd338eb7d112ee766af68002dd5336e557049e23e2a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.3 MB (177337975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3bd2d2de57cf3f2091f17d58338e0e002c88eb547194b797f0fed346ef7b1fb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 19:04:55 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 24 Sep 2026 19:05:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 24 Sep 2026 19:05:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:05:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:05:17 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:05:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 24 Sep 2026 19:05:17 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 24 Sep 2026 19:05:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 24 Sep 2026 19:05:26 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 24 Sep 2026 19:05:27 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 24 Sep 2026 19:05:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:05:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:05:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:05:27 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 24 Sep 2026 19:05:27 GMT
ENV PHP_VERSION=8.4.26
# Thu, 24 Sep 2026 19:05:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Thu, 24 Sep 2026 19:05:27 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 19:13:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 24 Sep 2026 19:13:25 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:16:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:41 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:16:41 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:16:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:16:41 GMT
STOPSIGNAL SIGWINCH
# Thu, 24 Sep 2026 19:16:41 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:41 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:16:41 GMT
EXPOSE map[80/tcp:{}]
# Thu, 24 Sep 2026 19:16:41 GMT
CMD ["apache2-foreground"]
# Thu, 24 Sep 2026 19:47:19 GMT
ENV PHP_MEMORY_LIMIT=256M
# Thu, 24 Sep 2026 19:47:19 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 		libzip-dev 		procps 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		gd 		bcmath 		ldap 		mysqli 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.28; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:47:19 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 24 Sep 2026 19:47:19 GMT
ENV MATOMO_VERSION=5.14.0
# Thu, 24 Sep 2026 19:47:36 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o matomo.tar.gz 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o matomo.tar.gz.asc 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys F529A27008477483777FC23D63BB30D0E5D2C749; 	gpg --batch --verify matomo.tar.gz.asc matomo.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" matomo.tar.gz.asc; 	tar -xzf matomo.tar.gz -C /usr/src/; 	rm matomo.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:47:36 GMT
COPY php.ini /usr/local/etc/php/conf.d/php-matomo.ini # buildkit
# Thu, 24 Sep 2026 19:47:36 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 19:47:36 GMT
VOLUME [/var/www/html]
# Thu, 24 Sep 2026 19:47:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 19:47:36 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dadb25619090b3ba9647fe83b7dba1b0a8da4684dfd743aad680785563115ba`  
		Last Modified: Thu, 24 Sep 2026 19:09:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df5d6d6b4c12ceb82dbf9fbb0f271dc91a0ed3589972902f2f35ea6c2329c1b`  
		Last Modified: Thu, 24 Sep 2026 19:09:04 GMT  
		Size: 94.9 MB (94876667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4bda78867e9797dbeb3f4a330c776470916313c9a6e451c34c70bc373030b56`  
		Last Modified: Thu, 24 Sep 2026 19:09:02 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8680915d5a5034bee785f29766cf086302326fff2844b511b2d037a68947eab2`  
		Last Modified: Thu, 24 Sep 2026 19:09:02 GMT  
		Size: 4.1 MB (4097280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00116e496288d90b9b5546032c9b5c7352acfdb49c7849bebe30ef0d22d2b348`  
		Last Modified: Thu, 24 Sep 2026 19:09:03 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d8d96d6ffe11a230b7a47af9b3fc1b4efe6ca9bdc8a66ec8478b1d4b9d0e10e`  
		Last Modified: Thu, 24 Sep 2026 19:09:03 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c23c4af9e51bd460edad2c46d964331650f1e8748285273491c33ec4dfab747`  
		Last Modified: Thu, 24 Sep 2026 19:16:52 GMT  
		Size: 14.0 MB (13964587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9189a2ef05b6f73ec4c7c6e2a95bffcad2c40da4e772dc932c62a3b04a16cefa`  
		Last Modified: Thu, 24 Sep 2026 19:16:51 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce788882d740f077a0c9f259852afc60d5bf9abd1b1d124b6c8d7b8147085f25`  
		Last Modified: Thu, 24 Sep 2026 19:16:52 GMT  
		Size: 12.3 MB (12316333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:065951eb08fbdcb9131a9959f37baf2872c5ca28678416e4cd347464054499de`  
		Last Modified: Thu, 24 Sep 2026 19:16:51 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ad20987d1954e299c5e30c0d3180d7078100b2d80ab37fcc5f8502743ddd26`  
		Last Modified: Thu, 24 Sep 2026 19:16:52 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd7a5e0da19ce3e14634f3dea301a21c8dfd357201cfe08370d86037ae6916b4`  
		Last Modified: Thu, 24 Sep 2026 19:16:52 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29bac4d23a28dc7bff9d67929dd0d8f52af19d9ed9f7d74fdc64e8215d6d703f`  
		Last Modified: Thu, 24 Sep 2026 19:16:53 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8805a26b6d42e2a9e697956f47eb468a9ac7391b7df6add451b585ded9884a4`  
		Last Modified: Thu, 24 Sep 2026 19:47:43 GMT  
		Size: 2.5 MB (2535935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4fe7b932b5596e9dc11b8428fe7cd913d5be3c3722bdb40d830fd3674bf73b2`  
		Last Modified: Thu, 24 Sep 2026 19:47:43 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6121a9f5c6bac2b47b021f98f3f2f06c55e6dd5a60452a43ef5e221388996b8e`  
		Last Modified: Thu, 24 Sep 2026 19:47:44 GMT  
		Size: 21.5 MB (21541911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef99425a45a92d2682439424ae350af7ace7b2668f501e9f44e234fd5fa98f8`  
		Last Modified: Thu, 24 Sep 2026 19:47:43 GMT  
		Size: 342.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff3a9f1d43a0960f6949d831434e5cc0be1745b481b4a0297051c71bf3642ae`  
		Last Modified: Thu, 24 Sep 2026 19:47:44 GMT  
		Size: 823.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `matomo:latest` - unknown; unknown

```console
$ docker pull matomo@sha256:50d9ac87cb39f20ec35dbf83e90eafc194244ff466cfed6952f01d76da1b1b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71f35771aa3c8e94becd462ea0671bc59befdd92c8ee70bb4b90bacbeaa4c3db`

```dockerfile
```

-	Layers:
	-	`sha256:30139e501b9342e4f130617d778f3e48c56db5075ec480bb923dee905f72f42f`  
		Last Modified: Thu, 24 Sep 2026 19:47:42 GMT  
		Size: 37.6 KB (37613 bytes)  
		MIME: application/vnd.in-toto+json

### `matomo:latest` - linux; arm variant v7

```console
$ docker pull matomo@sha256:7d66416bafa7902a674d3a893075d7084ef71417a8a65d9c21b24e4c9ba6c0d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.9 MB (165922491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edbc024ff9cba7b89a92a2b25b5ef701447b421e8c1092a574ae2c293e133776`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 19:24:43 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 24 Sep 2026 19:25:00 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 24 Sep 2026 19:25:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:25:00 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:25:00 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:25:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 24 Sep 2026 19:25:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 24 Sep 2026 19:25:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 24 Sep 2026 19:25:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 24 Sep 2026 19:25:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 24 Sep 2026 19:25:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:25:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:25:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:25:09 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 24 Sep 2026 19:25:09 GMT
ENV PHP_VERSION=8.4.26
# Thu, 24 Sep 2026 19:25:09 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Thu, 24 Sep 2026 19:25:09 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 19:25:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 24 Sep 2026 19:25:19 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:28:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:28:11 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:28:12 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:28:12 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:28:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:28:12 GMT
STOPSIGNAL SIGWINCH
# Thu, 24 Sep 2026 19:28:12 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:28:12 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:28:12 GMT
EXPOSE map[80/tcp:{}]
# Thu, 24 Sep 2026 19:28:12 GMT
CMD ["apache2-foreground"]
# Thu, 24 Sep 2026 20:27:20 GMT
ENV PHP_MEMORY_LIMIT=256M
# Thu, 24 Sep 2026 20:27:20 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 		libzip-dev 		procps 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		gd 		bcmath 		ldap 		mysqli 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.28; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 20:27:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 24 Sep 2026 20:27:21 GMT
ENV MATOMO_VERSION=5.14.0
# Thu, 24 Sep 2026 20:27:33 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o matomo.tar.gz 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o matomo.tar.gz.asc 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys F529A27008477483777FC23D63BB30D0E5D2C749; 	gpg --batch --verify matomo.tar.gz.asc matomo.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" matomo.tar.gz.asc; 	tar -xzf matomo.tar.gz -C /usr/src/; 	rm matomo.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 20:27:34 GMT
COPY php.ini /usr/local/etc/php/conf.d/php-matomo.ini # buildkit
# Thu, 24 Sep 2026 20:27:34 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 20:27:34 GMT
VOLUME [/var/www/html]
# Thu, 24 Sep 2026 20:27:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 20:27:34 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af5be9a51a9d187c1f4fdf70b7ec7a4c4bfcf01541d2ae666d871ed03a8d9c9`  
		Last Modified: Thu, 24 Sep 2026 19:28:29 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea0e8a0fc75eac6f284aada2a1cb5baf0593a01d6956ed6fa338d97e8bec4d6`  
		Last Modified: Thu, 24 Sep 2026 19:28:31 GMT  
		Size: 86.3 MB (86264788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a332b6542d89d0bdfbf35b911d60b1617e0d9dc0981e815b07e783ae46dc97`  
		Last Modified: Thu, 24 Sep 2026 19:28:29 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:599ef2a921578b9bcaed166f6393d73d480c63960280c211060b11501dd609d7`  
		Last Modified: Thu, 24 Sep 2026 19:28:29 GMT  
		Size: 3.8 MB (3763922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd130d26a0c59b47c1b048db4c0bd9ae19a7b1548c95a820527cd2cfb868b43`  
		Last Modified: Thu, 24 Sep 2026 19:28:30 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14d90a6c723108357b5af8313522fa21e1b76aeba462a691d9537634e2191aa9`  
		Last Modified: Thu, 24 Sep 2026 19:28:30 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a43fdf32ba4e01b6e3ebbd70d90034d9e3a10094e72e971f4c7fa0d751f9487`  
		Last Modified: Thu, 24 Sep 2026 19:28:31 GMT  
		Size: 14.0 MB (13955628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceb738c1f39ea4edb94845f3326aee914d4a57876695f9eb00260f90754283b0`  
		Last Modified: Thu, 24 Sep 2026 19:28:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9781a5e89d099eef59d035b7bab96f29168fa335c45b1be4055b03e37b942691`  
		Last Modified: Thu, 24 Sep 2026 19:28:32 GMT  
		Size: 11.7 MB (11722082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:825b358d9853d4963ecac49e55d27c5e3e8d726696b7537727d9b569060436d3`  
		Last Modified: Thu, 24 Sep 2026 19:28:32 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56305b56fec1ad3f0ed4f75603242fdbc4735f9edc1d5c92808b6297506f33bf`  
		Last Modified: Thu, 24 Sep 2026 19:28:32 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa873d52d1248773fb65a4c0597f53698d9c3da742a20b07e333a1787a029415`  
		Last Modified: Thu, 24 Sep 2026 19:28:33 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da811e3c28ed0654f22e80bb94ea9cd3e3d869e0b22e47dfcb6af86ae505d3e`  
		Last Modified: Thu, 24 Sep 2026 19:28:33 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:331575beec1caaf78ce6ce776ba77b4f6a1e413037478c658106425158ec97b3`  
		Last Modified: Thu, 24 Sep 2026 20:27:41 GMT  
		Size: 2.4 MB (2417791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ca3b040c53b609f34a6997e0d2d76b552d25ba314f81d32e87c2c51be24a6d`  
		Last Modified: Thu, 24 Sep 2026 20:27:41 GMT  
		Size: 323.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f29ba4a2734d153cf02c1c6ce4b312416aed8bf5eba3da47d4808413f243dd`  
		Last Modified: Thu, 24 Sep 2026 20:27:42 GMT  
		Size: 21.5 MB (21542131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a41dff7cc3bceaf543b33746afaa8db5d70def3ae524853d19fa95419f258e0`  
		Last Modified: Thu, 24 Sep 2026 20:27:41 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196ebb2659c85f830087eb471f80449acce167b54af15cbe78e423056a8dcaba`  
		Last Modified: Thu, 24 Sep 2026 20:27:42 GMT  
		Size: 823.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `matomo:latest` - unknown; unknown

```console
$ docker pull matomo@sha256:bc98b942e35cde2548c4d3f5e05923b2b7d3b977a65256ab7e38fc1915a8b49c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b92c91d8c433d7786814a4fac63868e7bd41541a0112091887eed7f7160f50c`

```dockerfile
```

-	Layers:
	-	`sha256:cef2d3dc68a9ee14d65e42a94dd4e407148b49291587f666716d8fffee952205`  
		Last Modified: Thu, 24 Sep 2026 20:27:41 GMT  
		Size: 37.6 KB (37612 bytes)  
		MIME: application/vnd.in-toto+json

### `matomo:latest` - linux; arm64 variant v8

```console
$ docker pull matomo@sha256:0e8281d2c3aed2267faeba0c451e075763857e575a5ef2a5498d3e09c0346dd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.2 MB (196245639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:562add7f7a1e5fad00b35a8ce76142f6e141026f78f20a0468f5598a57a69066`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 19:05:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 24 Sep 2026 19:05:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 24 Sep 2026 19:05:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:05:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:05:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:05:39 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 24 Sep 2026 19:05:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 24 Sep 2026 19:09:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 24 Sep 2026 19:09:42 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 24 Sep 2026 19:09:42 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 24 Sep 2026 19:09:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:09:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:09:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:09:42 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 24 Sep 2026 19:09:42 GMT
ENV PHP_VERSION=8.4.26
# Thu, 24 Sep 2026 19:09:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Thu, 24 Sep 2026 19:09:42 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 19:09:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 24 Sep 2026 19:09:50 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:13:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:13:00 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:13:00 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:13:00 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:13:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:13:00 GMT
STOPSIGNAL SIGWINCH
# Thu, 24 Sep 2026 19:13:00 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:13:00 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:13:00 GMT
EXPOSE map[80/tcp:{}]
# Thu, 24 Sep 2026 19:13:00 GMT
CMD ["apache2-foreground"]
# Thu, 24 Sep 2026 19:37:39 GMT
ENV PHP_MEMORY_LIMIT=256M
# Thu, 24 Sep 2026 19:37:39 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 		libzip-dev 		procps 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		gd 		bcmath 		ldap 		mysqli 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.28; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:37:39 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 24 Sep 2026 19:37:39 GMT
ENV MATOMO_VERSION=5.14.0
# Thu, 24 Sep 2026 19:37:50 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o matomo.tar.gz 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o matomo.tar.gz.asc 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys F529A27008477483777FC23D63BB30D0E5D2C749; 	gpg --batch --verify matomo.tar.gz.asc matomo.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" matomo.tar.gz.asc; 	tar -xzf matomo.tar.gz -C /usr/src/; 	rm matomo.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:37:50 GMT
COPY php.ini /usr/local/etc/php/conf.d/php-matomo.ini # buildkit
# Thu, 24 Sep 2026 19:37:50 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 19:37:50 GMT
VOLUME [/var/www/html]
# Thu, 24 Sep 2026 19:37:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 19:37:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29653093f3e66fe1c9abde75721e66b4cd9f286295fe49dc04e61ad198a48801`  
		Last Modified: Thu, 24 Sep 2026 19:09:18 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ea0980e3afb6f8236161bffb5b7bc3af4c81156b016b061cb4933af3208b49`  
		Last Modified: Thu, 24 Sep 2026 19:09:29 GMT  
		Size: 110.2 MB (110177780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee7a710f3dc42b6df36ccedbc9f06ef0619151cecff19da08f51c74b2e6682f`  
		Last Modified: Thu, 24 Sep 2026 19:09:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5bfe179462cc2f3e665afac2a2775bee2f692a292df7249d9011e0c50cb8ef`  
		Last Modified: Thu, 24 Sep 2026 19:13:12 GMT  
		Size: 4.3 MB (4322044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff455d217ea9ff94925cbd8fda0410f37ea3dd4521e2dd07b76c0150cd77168f`  
		Last Modified: Thu, 24 Sep 2026 19:13:11 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fca6b6aae6424eb40b068490da8186e9cef17a2dc7d34ff0903a51be2870075`  
		Last Modified: Thu, 24 Sep 2026 19:13:11 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bde9240f7bfb2a7ca0d84e9e4cb99f91994af36ccc4177b4bb3b2a19a629b08`  
		Last Modified: Thu, 24 Sep 2026 19:13:12 GMT  
		Size: 14.0 MB (13957587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f408132d2fe7c61dfb8d5ea1a9d60b66cecb44970b5d9f4dc1b4720e2a0e268f`  
		Last Modified: Thu, 24 Sep 2026 19:13:12 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e471dece6f4a1411c07d4cf370aea354c3b67c7b7c73cede067d2bd07a0825`  
		Last Modified: Thu, 24 Sep 2026 19:13:13 GMT  
		Size: 13.4 MB (13354501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3b8a71b9759c7c9c0bf622245f37d62208d46c41de4c0277f5442a55abeb2d`  
		Last Modified: Thu, 24 Sep 2026 19:13:13 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea21185378f438369164ec72d4ddf3a7fcee8f9ba45b676f871c037d2c8c78ca`  
		Last Modified: Thu, 24 Sep 2026 19:13:13 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9503db41e5b3322e44737bf805220322f98790c983654b8a7c6c990f9b3772a4`  
		Last Modified: Thu, 24 Sep 2026 19:13:14 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d052834900058b7bb7bd7f72afb238dacd7b9be6ca54be1c73e8ac89222597`  
		Last Modified: Thu, 24 Sep 2026 19:13:14 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a36b5975b872ffd9592ba66806e2e0afb72a77f5037dba9d0178d5844756a04f`  
		Last Modified: Thu, 24 Sep 2026 19:37:58 GMT  
		Size: 2.7 MB (2692820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d1cf6caa3d2f5ac61223f64d497fec59e4d4152435e7c61f5628a039ebc425b`  
		Last Modified: Thu, 24 Sep 2026 19:37:57 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05cdb0ae23cf33a65f7775b1afb28fba0be0c3f31d86d66ff6f57ca9b3a108b5`  
		Last Modified: Thu, 24 Sep 2026 19:37:58 GMT  
		Size: 21.5 MB (21544000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332050c721b6ab836c5b8c51c62aade3bd85ddfa78b029f403297356137e0f4e`  
		Last Modified: Thu, 24 Sep 2026 19:37:58 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee90f3a234e3deb8088a34aa56112cd3d30b03964cff4b083e65f98febd55715`  
		Last Modified: Thu, 24 Sep 2026 19:37:59 GMT  
		Size: 823.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `matomo:latest` - unknown; unknown

```console
$ docker pull matomo@sha256:6a1541b3d1fa3583466f4265271d0ce50cb87bb441f9d4ea98348f03f2313f89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f069d2c5bdabc118acfb66d1d84c01363b343a4075119947e014a02a84b74ab`

```dockerfile
```

-	Layers:
	-	`sha256:e11714c19cc15308de14cc5f965b0d2c57dcfcbfc9d170583efad39c6800a623`  
		Last Modified: Thu, 24 Sep 2026 19:37:57 GMT  
		Size: 37.7 KB (37663 bytes)  
		MIME: application/vnd.in-toto+json

### `matomo:latest` - linux; 386

```console
$ docker pull matomo@sha256:7f1232955baf33e76369859f783996de8eaa76d7d125c53de0784e27971d4f52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 MB (204218099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dce754f77a81160fed0a2c3d5e5aa6897e158325ae1251e65b112c801162de7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 19:10:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 24 Sep 2026 19:10:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 24 Sep 2026 19:10:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:10:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:10:59 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:10:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 24 Sep 2026 19:10:59 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 24 Sep 2026 19:11:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 24 Sep 2026 19:11:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 24 Sep 2026 19:11:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 24 Sep 2026 19:11:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:11:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:11:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:11:06 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 24 Sep 2026 19:11:06 GMT
ENV PHP_VERSION=8.4.26
# Thu, 24 Sep 2026 19:11:06 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Thu, 24 Sep 2026 19:11:06 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 19:11:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 24 Sep 2026 19:11:15 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:14:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:14:40 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:14:40 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:14:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:14:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:14:40 GMT
STOPSIGNAL SIGWINCH
# Thu, 24 Sep 2026 19:14:40 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:14:40 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:14:40 GMT
EXPOSE map[80/tcp:{}]
# Thu, 24 Sep 2026 19:14:40 GMT
CMD ["apache2-foreground"]
# Thu, 24 Sep 2026 19:32:34 GMT
ENV PHP_MEMORY_LIMIT=256M
# Thu, 24 Sep 2026 19:32:34 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 		libzip-dev 		procps 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		gd 		bcmath 		ldap 		mysqli 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.28; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:32:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 24 Sep 2026 19:32:34 GMT
ENV MATOMO_VERSION=5.14.0
# Thu, 24 Sep 2026 19:32:44 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o matomo.tar.gz 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o matomo.tar.gz.asc 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys F529A27008477483777FC23D63BB30D0E5D2C749; 	gpg --batch --verify matomo.tar.gz.asc matomo.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" matomo.tar.gz.asc; 	tar -xzf matomo.tar.gz -C /usr/src/; 	rm matomo.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:32:44 GMT
COPY php.ini /usr/local/etc/php/conf.d/php-matomo.ini # buildkit
# Thu, 24 Sep 2026 19:32:44 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 19:32:44 GMT
VOLUME [/var/www/html]
# Thu, 24 Sep 2026 19:32:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 19:32:44 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e5883b355432e15d60d01bf3dbed5c94aed6fb9036e1914c4e71d959d8b673`  
		Last Modified: Thu, 24 Sep 2026 19:15:02 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8a4e1e83279a6a316fa6b2507bd29d2117dc05a9cec0d3fbfbc66fd5b9d93b`  
		Last Modified: Thu, 24 Sep 2026 19:15:05 GMT  
		Size: 116.1 MB (116148309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:962acbf65813d8f9dbe563d4971e6fe1fdac68c10a9870540cddfc7f75c98a7b`  
		Last Modified: Thu, 24 Sep 2026 19:15:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea8ad0e29fe214b5b5aab06a36833253d6796655f4241e6aa1164e927300a72`  
		Last Modified: Thu, 24 Sep 2026 19:15:02 GMT  
		Size: 4.5 MB (4471233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d275777ed3eb0f9cce0cb798a60c3834f8a5b3054933c387c15d5d995383bc56`  
		Last Modified: Thu, 24 Sep 2026 19:15:03 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77dc526e5e5ba524d7f636b45a6262262a3ef509e066730edfd00269e8eec3af`  
		Last Modified: Thu, 24 Sep 2026 19:15:03 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c5ead18525c022834da5040b5b2f7df8e745e0b750f8f8e0380be472456989`  
		Last Modified: Thu, 24 Sep 2026 19:15:04 GMT  
		Size: 14.0 MB (13956803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7c60e8932f3b34ce426cb7afc961a5bd72d58bd1d70eded05e49413769e889`  
		Last Modified: Thu, 24 Sep 2026 19:15:04 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4eade7a35871350cf8c4804aabe3b6e898406a6ac9aa5226e95a54c79c6868f`  
		Last Modified: Thu, 24 Sep 2026 19:15:05 GMT  
		Size: 14.1 MB (14062428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee274d6c517cace5b3aaed7d383ddcaa28ab940a72ec0e2ab65375617ab7bcca`  
		Last Modified: Thu, 24 Sep 2026 19:15:06 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bce1e4d3cda923b739dcda4e3ccef5ee8d885a760e789d78314cc20593c0a84`  
		Last Modified: Thu, 24 Sep 2026 19:15:05 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2809eca2b3864571971b59fbe6af30b87963e5613ca739fee624768e0859696b`  
		Last Modified: Thu, 24 Sep 2026 19:15:06 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac00eeb048359d1efda358685572c89de9bafb815890f9ec193fd5b72746a4a`  
		Last Modified: Thu, 24 Sep 2026 19:15:06 GMT  
		Size: 888.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16a7fcc48e13a25a3cf8eaf1bdc02f8e762fa1db3a13c1c33489d4887719968`  
		Last Modified: Thu, 24 Sep 2026 19:32:51 GMT  
		Size: 2.7 MB (2688393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e757092e63015857e85b766c105882938be18b2500f072b462f6f9cdf5d65df`  
		Last Modified: Thu, 24 Sep 2026 19:32:51 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b82c5fce0e649f4547c0f8beebc0ccb88805027ac3d6795a0d1b3790055c19`  
		Last Modified: Thu, 24 Sep 2026 19:32:51 GMT  
		Size: 21.5 MB (21543322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ccad995eddf31966b305a5c6cb395b65c1359482ddda407902a695a44b558a`  
		Last Modified: Thu, 24 Sep 2026 19:32:51 GMT  
		Size: 342.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742abf70f43e1ec16ba1cbb84963f6ea15a3f57824e38725c2fc82562c27bee4`  
		Last Modified: Thu, 24 Sep 2026 19:32:52 GMT  
		Size: 823.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `matomo:latest` - unknown; unknown

```console
$ docker pull matomo@sha256:81eb3fe6cf0be6bf98b9e962e8ce6894cf135b6a59984c4b393145acc7a51ef2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 KB (37425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a43269db7e1e307d5f1ce27c9786486ca2378bcd69435c18cdfdf1ff99f32d98`

```dockerfile
```

-	Layers:
	-	`sha256:a4474d294c6be595778f96491344d3d5b97117a4cb503815dca5ccafa818615c`  
		Last Modified: Thu, 24 Sep 2026 19:32:50 GMT  
		Size: 37.4 KB (37425 bytes)  
		MIME: application/vnd.in-toto+json

### `matomo:latest` - linux; ppc64le

```console
$ docker pull matomo@sha256:7d979cebcadda1657f2ba0ce891b2abd7eae5c768677f3987086113dd55ed8ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200764558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2efbe8cffb8a5faf389540570d3f10dafbed6b69f0729997882ef60a74cd6db7`
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
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_VERSION=8.4.26
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 20:18:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 24 Sep 2026 20:18:58 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 20:23:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 20:23:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 20:23:30 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 20:23:31 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 20:23:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 20:23:31 GMT
STOPSIGNAL SIGWINCH
# Thu, 24 Sep 2026 20:23:31 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 20:23:31 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 20:23:31 GMT
EXPOSE map[80/tcp:{}]
# Thu, 24 Sep 2026 20:23:31 GMT
CMD ["apache2-foreground"]
# Thu, 24 Sep 2026 22:54:00 GMT
ENV PHP_MEMORY_LIMIT=256M
# Thu, 24 Sep 2026 22:54:00 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 		libzip-dev 		procps 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		gd 		bcmath 		ldap 		mysqli 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.28; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 22:54:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 24 Sep 2026 22:54:01 GMT
ENV MATOMO_VERSION=5.14.0
# Thu, 24 Sep 2026 22:54:22 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o matomo.tar.gz 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o matomo.tar.gz.asc 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys F529A27008477483777FC23D63BB30D0E5D2C749; 	gpg --batch --verify matomo.tar.gz.asc matomo.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" matomo.tar.gz.asc; 	tar -xzf matomo.tar.gz -C /usr/src/; 	rm matomo.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 22:54:22 GMT
COPY php.ini /usr/local/etc/php/conf.d/php-matomo.ini # buildkit
# Thu, 24 Sep 2026 22:54:23 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 22:54:23 GMT
VOLUME [/var/www/html]
# Thu, 24 Sep 2026 22:54:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 22:54:23 GMT
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
	-	`sha256:aeebeb33ee17a8daa6d3ea83459a785307de38270fe3911f5c689e11363aecb2`  
		Last Modified: Thu, 24 Sep 2026 20:23:57 GMT  
		Size: 14.0 MB (13973402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63aeb8b87a8ce42801c14e91f700510cfa7010186348b04926bc51d84417dd56`  
		Last Modified: Thu, 24 Sep 2026 20:23:56 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732d4e46ce13c74fa5a935742f443598ccbd599a9981602f7785280681d9636b`  
		Last Modified: Thu, 24 Sep 2026 20:23:57 GMT  
		Size: 14.1 MB (14113507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:290b81666f21b9e3890deb8927e7aa3b0217cd7cefe03f9cd78475fc02fd2ccd`  
		Last Modified: Thu, 24 Sep 2026 20:23:56 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed5c82f02a6c5c84a42ae118b0ecce2183358a20acf0a429ef4efe1ad7f9778`  
		Last Modified: Thu, 24 Sep 2026 20:23:57 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a843d03c9342ac3bea57c8da88eff87120401aa9bdea86c164f1214e0eca6646`  
		Last Modified: Thu, 24 Sep 2026 20:23:57 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61af941f93311fc85ae57edb162426f935f91c700fe8e7cc927bca99141a589a`  
		Last Modified: Thu, 24 Sep 2026 20:23:58 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3a312910c7e12362a0fce72ec7402f55f3ae39e66c13739e1614a0381dc521`  
		Last Modified: Thu, 24 Sep 2026 22:54:37 GMT  
		Size: 3.0 MB (2976515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa08799b3c0d36cf1bbeef0c57648df67ea141c5f62a87a046851204ab1b9fa`  
		Last Modified: Thu, 24 Sep 2026 22:54:37 GMT  
		Size: 328.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7f2d1f19a39b8b9d48db0a5f378e017f143361440f35bf0e5f04ed083af7e9`  
		Last Modified: Thu, 24 Sep 2026 22:54:38 GMT  
		Size: 21.5 MB (21543915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9254931f7f4a1047f60cd4c741d230e21ce97cb139dc594c07414fd6c546148`  
		Last Modified: Thu, 24 Sep 2026 22:54:37 GMT  
		Size: 343.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b09041fbfe9cadcd1b2c23a303e4cfa4f4b634d3c17d2fd5938003f82af48c3`  
		Last Modified: Thu, 24 Sep 2026 22:54:38 GMT  
		Size: 823.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `matomo:latest` - unknown; unknown

```console
$ docker pull matomo@sha256:4fe1113a38e13870dbf2e39cb4b76296fdc7b5ec2d9f0d15c52cc14c2034c7ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1bc50493516eee97753590e35fabae11c10d86927619f86d1e353ff02c149b`

```dockerfile
```

-	Layers:
	-	`sha256:eeb1a058ad1d95fd75e6847a17e558feb4d51756430bf2bc6d7711b85d6e2cd6`  
		Last Modified: Thu, 24 Sep 2026 22:54:37 GMT  
		Size: 37.6 KB (37552 bytes)  
		MIME: application/vnd.in-toto+json

### `matomo:latest` - linux; riscv64

```console
$ docker pull matomo@sha256:f76a40740d4104483176d88c543e1db9638599599d48acb7e6960ef86e0d66d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233093512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01e71fd47f08f71e13350a27157e18726650e52c901c0a37ddd0238e887a108`
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
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_VERSION=8.4.25
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Sun, 30 Aug 2026 17:01:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sun, 30 Aug 2026 17:01:27 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sun, 30 Aug 2026 17:56:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sun, 30 Aug 2026 17:56:00 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sun, 30 Aug 2026 17:56:01 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sun, 30 Aug 2026 17:56:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sun, 30 Aug 2026 17:56:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sun, 30 Aug 2026 17:56:01 GMT
STOPSIGNAL SIGWINCH
# Sun, 30 Aug 2026 17:56:02 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sun, 30 Aug 2026 17:56:02 GMT
WORKDIR /var/www/html
# Sun, 30 Aug 2026 17:56:02 GMT
EXPOSE map[80/tcp:{}]
# Sun, 30 Aug 2026 17:56:02 GMT
CMD ["apache2-foreground"]
# Mon, 31 Aug 2026 04:00:05 GMT
ENV PHP_MEMORY_LIMIT=256M
# Mon, 31 Aug 2026 04:00:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 		libzip-dev 		procps 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		gd 		bcmath 		ldap 		mysqli 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.28; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 04:00:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 31 Aug 2026 04:00:06 GMT
ENV MATOMO_VERSION=5.13.0
# Mon, 31 Aug 2026 04:01:29 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o matomo.tar.gz 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o matomo.tar.gz.asc 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys F529A27008477483777FC23D63BB30D0E5D2C749; 	gpg --batch --verify matomo.tar.gz.asc matomo.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" matomo.tar.gz.asc; 	tar -xzf matomo.tar.gz -C /usr/src/; 	rm matomo.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 04:01:30 GMT
COPY php.ini /usr/local/etc/php/conf.d/php-matomo.ini # buildkit
# Mon, 31 Aug 2026 04:01:30 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Mon, 31 Aug 2026 04:01:30 GMT
VOLUME [/var/www/html]
# Mon, 31 Aug 2026 04:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Aug 2026 04:01:30 GMT
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
	-	`sha256:aec83e120e398ca89984885422d9104bb3b83c2c41172fc41f92d35dd0af00e6`  
		Last Modified: Sun, 30 Aug 2026 17:59:15 GMT  
		Size: 13.9 MB (13941323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0abf8e423a41f20cea7c5d3c6cabea644152a030305c775873546c8c939fb90`  
		Last Modified: Sun, 30 Aug 2026 17:59:11 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6a9caa4f0e1649d0e43f0b7e52fd9bef9256795c6bcfd06a26129c52eb52da3`  
		Last Modified: Sun, 30 Aug 2026 17:59:16 GMT  
		Size: 16.2 MB (16152939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e154615cbe8d22e2992bf3901064d540219554078c6c6c54007c1c9e1adfb84`  
		Last Modified: Sun, 30 Aug 2026 17:59:11 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e6efcba0f1359da7b97971c29041a0c4457119dcdef390a5e8010dec6dd894f`  
		Last Modified: Sun, 30 Aug 2026 17:59:13 GMT  
		Size: 254.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bd0682576abd9857129e6ededc80d2141aace2af020f66b311ef82dd401e4be`  
		Last Modified: Sun, 30 Aug 2026 17:59:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9721e5036622bc880c8d865f69553988c7dc40f020e2d07558a4f0f1f18cf01a`  
		Last Modified: Sun, 30 Aug 2026 17:59:15 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d5d5be4fc3eafea35e6befa62ae57889c5638449b4406b0fafb64017547a74`  
		Last Modified: Mon, 31 Aug 2026 04:02:47 GMT  
		Size: 2.6 MB (2616410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6731581ea39cc15e07d58a4c1eec9943766963c78d4fa3583722909b2d4374e9`  
		Last Modified: Mon, 31 Aug 2026 04:02:47 GMT  
		Size: 329.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026c995b3229ae692646af1b760d1e04a35babf0f515351916e9888a67ccab8c`  
		Last Modified: Mon, 31 Aug 2026 04:02:50 GMT  
		Size: 21.4 MB (21447280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b82e6d592b93eb72f82b60803c1379a64c443f862f74204bea5e6539223fb2e`  
		Last Modified: Mon, 31 Aug 2026 04:02:47 GMT  
		Size: 345.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff6ab8fcbe10da137547ec3271fbc68d62bffbde195149664a84f11642154196`  
		Last Modified: Mon, 31 Aug 2026 04:02:48 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `matomo:latest` - unknown; unknown

```console
$ docker pull matomo@sha256:cda2ffd4fda62ffdc38fd636973c53d7779efe723c62c63d446cbc764f250f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e4ef36bf31d9477b70ec8c30b7a4cbd510d0e0daa17e34e698fa935aa38b2f3`

```dockerfile
```

-	Layers:
	-	`sha256:51c12a98294280d363725b5c0493b27137947ba2eb8af37a2e2fa97dc770ce1f`  
		Last Modified: Mon, 31 Aug 2026 04:02:46 GMT  
		Size: 37.6 KB (37553 bytes)  
		MIME: application/vnd.in-toto+json

### `matomo:latest` - linux; s390x

```console
$ docker pull matomo@sha256:eb430dc0f4924dd67c39dcf3b76dc05927645ac7a5f940a41272fe0c3f1c84ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.5 MB (178539834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0eb7d7c04485eb7d71d9c2a807b424dcb7cd54d347d5b70302acda5b283e4c1`
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
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_VERSION=8.4.26
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 19:24:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 24 Sep 2026 19:24:11 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:27:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:27:45 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:27:45 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:27:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:27:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:27:45 GMT
STOPSIGNAL SIGWINCH
# Thu, 24 Sep 2026 19:27:45 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:27:45 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:27:45 GMT
EXPOSE map[80/tcp:{}]
# Thu, 24 Sep 2026 19:27:45 GMT
CMD ["apache2-foreground"]
# Thu, 24 Sep 2026 20:32:33 GMT
ENV PHP_MEMORY_LIMIT=256M
# Thu, 24 Sep 2026 20:32:33 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 		libzip-dev 		procps 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		gd 		bcmath 		ldap 		mysqli 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.28; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 20:32:33 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 24 Sep 2026 20:32:33 GMT
ENV MATOMO_VERSION=5.14.0
# Thu, 24 Sep 2026 20:32:42 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o matomo.tar.gz 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o matomo.tar.gz.asc 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys F529A27008477483777FC23D63BB30D0E5D2C749; 	gpg --batch --verify matomo.tar.gz.asc matomo.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" matomo.tar.gz.asc; 	tar -xzf matomo.tar.gz -C /usr/src/; 	rm matomo.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 20:32:42 GMT
COPY php.ini /usr/local/etc/php/conf.d/php-matomo.ini # buildkit
# Thu, 24 Sep 2026 20:32:43 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 20:32:43 GMT
VOLUME [/var/www/html]
# Thu, 24 Sep 2026 20:32:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 20:32:43 GMT
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
	-	`sha256:6138523ed71e8a7c0ed1ee569d95f3944a9d82c2e0a7f5f4640b57655d048550`  
		Last Modified: Thu, 24 Sep 2026 19:28:01 GMT  
		Size: 14.0 MB (13972686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c79dd55bcd3a93a92cdde0d9b7ee98a723c90cc2b92cb814c77c974ee213128`  
		Last Modified: Thu, 24 Sep 2026 19:28:01 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19e9224871aa4b7c95f94baf9ccabb3b1b9ec19df06c28decbbcb54d29d865b`  
		Last Modified: Thu, 24 Sep 2026 19:28:01 GMT  
		Size: 13.5 MB (13464040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5670467a3d45f2bc97f6735340c477328a5e2a601ed00396c768728310fae1b`  
		Last Modified: Thu, 24 Sep 2026 19:28:01 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a83896c533714d3b62888ca85e7e723ab4d81b6805c86ef23820ab0f214808`  
		Last Modified: Thu, 24 Sep 2026 19:28:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11634008cc36da59157fe0284387b4b26ce937757808d433a36f3824c819f99`  
		Last Modified: Thu, 24 Sep 2026 19:28:02 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e21ac5b86a337f09fad966a04ab3d66fcf62864f6248412d3c352bbac3508a`  
		Last Modified: Thu, 24 Sep 2026 19:28:02 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01fbccbaeb6ddd18f7ab13318d293d7450281309288f459a4be4df73889bc8`  
		Last Modified: Thu, 24 Sep 2026 20:32:53 GMT  
		Size: 2.7 MB (2741005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c669e97c7fa3b7de2288cfbbcd7b3956d79a86aa255f0e8a380690741dfdb7e`  
		Last Modified: Thu, 24 Sep 2026 20:32:53 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f720a51915fbe53eb2271249908da9d8f86070ee0638f1821608f1dbbfbf1cfc`  
		Last Modified: Thu, 24 Sep 2026 20:32:53 GMT  
		Size: 21.5 MB (21543044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfd5f5cbff21e8f0723d0fd25aebe8ab0c129872182ac68d51573e4bd25feac`  
		Last Modified: Thu, 24 Sep 2026 20:32:53 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7f4150a0e2ed7d011fbf9d55f0892fcb2f6c5c0bff21030e949137e753470bf`  
		Last Modified: Thu, 24 Sep 2026 20:32:54 GMT  
		Size: 823.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `matomo:latest` - unknown; unknown

```console
$ docker pull matomo@sha256:1c51191dc5a756cb98194506bcc829c19b23c7d55efe6121dd73ed69a781a310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 KB (37475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141e918db5fcba484d688f36a01ff73f1360c7e6a4f25bde807dd10a4d1de45a`

```dockerfile
```

-	Layers:
	-	`sha256:326028a56f75ed05eee50c584b39129a8feb47680b0401ec8c365181b860bb44`  
		Last Modified: Thu, 24 Sep 2026 20:32:53 GMT  
		Size: 37.5 KB (37475 bytes)  
		MIME: application/vnd.in-toto+json
