## `friendica:latest`

```console
$ docker pull friendica@sha256:48637e14269e8eb8edfb99b586f14ffbcb5ae8bf4a0900b121074e012605f902
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

### `friendica:latest` - linux; amd64

```console
$ docker pull friendica@sha256:fa70e5aa7ed01a665396b5f69e1bd504e3245f439ef2fd59fed511648c90a9e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.5 MB (305454352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33af95573e9b7b09d37b21c237b314f74e6f00661c52eed9d6567d202aeb17b8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:23:42 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:23:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:23:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:23:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:23:58 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:23:58 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:23:58 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:27:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:27:08 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:27:08 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:27:08 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:27:08 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:27:08 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:27:08 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:27:08 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:27:08 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:27:08 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 01:30:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:30:09 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:32:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:32:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:32:30 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 01:32:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:32:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:32:30 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 01:32:30 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:32:30 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:32:30 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:32:30 GMT
CMD ["apache2-foreground"]
# Tue, 14 Jul 2026 02:32:29 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Tue, 14 Jul 2026 02:32:36 GMT
ENV GOSU_VERSION=1.17
# Tue, 14 Jul 2026 02:32:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:34:54 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:34:54 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 14 Jul 2026 02:34:54 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 14 Jul 2026 02:34:54 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Tue, 14 Jul 2026 02:34:54 GMT
RUN set -ex;     a2enmod headers rewrite remoteip;     {      echo RemoteIPHeader X-Forwarded-For;      echo RemoteIPTrustedProxy 127.0.0.0/8;      echo RemoteIPTrustedProxy 10.0.0.0/8;      echo RemoteIPTrustedProxy 172.16.0.0/12;      echo RemoteIPTrustedProxy 192.168.0.0/16;     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip; # buildkit
# Tue, 14 Jul 2026 02:34:55 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Tue, 14 Jul 2026 02:34:55 GMT
VOLUME [/var/www/html]
# Tue, 14 Jul 2026 02:34:55 GMT
VOLUME [/var/www/data]
# Tue, 14 Jul 2026 02:34:55 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Tue, 14 Jul 2026 02:34:55 GMT
ENV FRIENDICA_VERSION=2026.05
# Tue, 14 Jul 2026 02:34:55 GMT
ENV FRIENDICA_DOWNLOAD_SHA256=b0a1e218c4a5a30d25b8be5a66cb97a4f4f802b98e7cf3d0d34ce045b2714ab2
# Tue, 14 Jul 2026 02:35:08 GMT
RUN set -ex;     fetchDeps="         gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 08656443618E6567A39524083EE197EF3F9E4287;         curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz";     curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc";     gpg --batch --verify friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz;     echo "${FRIENDICA_DOWNLOAD_SHA256} *friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz" | sha256sum -c;     tar -xzf friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz -C /usr/src/;     rm friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc;     mv -f /usr/src/friendica-all-in-one-${FRIENDICA_VERSION}/ /usr/src/friendica;     chmod 777 /usr/src/friendica/view/smarty3;         gpgconf --kill all;     rm -rf "$GNUPGHOME";         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:35:09 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 14 Jul 2026 02:35:09 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Tue, 14 Jul 2026 02:35:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:35:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c83ca722545f310e4a1b34c5f1c39dd8d127308129447bbb75627d8c1a754f4`  
		Last Modified: Tue, 14 Jul 2026 01:26:52 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44386657f7940697f4653b79695ef528b2ee55fe80cce173276a3d7df7fc820c`  
		Last Modified: Tue, 14 Jul 2026 01:26:56 GMT  
		Size: 117.8 MB (117838927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037d650346c22f17db830e425848fe2622ec3db4e97bb8facdd1396ea148981e`  
		Last Modified: Tue, 14 Jul 2026 01:26:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2fb142004d601173c4eb0c4e196faa5394b7358dbb30a80530564eda432c04`  
		Last Modified: Tue, 14 Jul 2026 01:29:52 GMT  
		Size: 4.2 MB (4229582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcfd475a43ebee20111f5911afe6467bd2c2fcf581cb9b695c365a175acf1a3c`  
		Last Modified: Tue, 14 Jul 2026 01:29:52 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51dcd84fc19db7d8bc983fa22472cd6a2af2e1dcea10e7dd21dc432396021ba4`  
		Last Modified: Tue, 14 Jul 2026 01:29:52 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c106e34f24f0c18ca47d21bcd78b6b647effa500449a929741e91ace82df36ae`  
		Last Modified: Tue, 14 Jul 2026 01:32:41 GMT  
		Size: 12.8 MB (12772533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c9311450e929b76ac12b4006cf924b0dae959ac3e9d38a2b5178b270883421`  
		Last Modified: Tue, 14 Jul 2026 01:32:40 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca0a86e1fe83cd8962e17367f1dd244a3188b79e9fd75ef0d946e53d80756671`  
		Last Modified: Tue, 14 Jul 2026 01:32:41 GMT  
		Size: 11.7 MB (11715649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2a294cc6ea5597068d8b2f98096b99edca2603600afed10ecd82e4dc9c6f93a`  
		Last Modified: Tue, 14 Jul 2026 01:32:40 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39e8070c7837b7cb11c3db59841b846aeeb33fea46c2f63a7d07238e477f90b6`  
		Last Modified: Tue, 14 Jul 2026 01:32:42 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac333a3b680645c4c1d71a75c8b2e13b6b3729a04b340cc9d1b205c3318d066d`  
		Last Modified: Tue, 14 Jul 2026 01:32:42 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5edcad93d812efb33ea4caee3ba089921125c46199fea65582d226b7db622f2e`  
		Last Modified: Tue, 14 Jul 2026 01:32:43 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c2d519ea2125b8d1d8396965a4a6437e1f635dbd296266ede3a6ffa129e991`  
		Last Modified: Tue, 14 Jul 2026 02:35:19 GMT  
		Size: 20.8 MB (20751583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d7dc088f130b3b090066762fe6c3ae98885d9ef82460ac6c93b6a5a55d89bf`  
		Last Modified: Tue, 14 Jul 2026 02:35:18 GMT  
		Size: 1.1 MB (1133221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487926d1facf80131798adf633039fcb2adf7d6fabb85edec4e9249399741de7`  
		Last Modified: Tue, 14 Jul 2026 02:35:20 GMT  
		Size: 49.1 MB (49077063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14b0d2d830c64a0c678aca579c9791031ead87edb05f53a4babe1126c3afb143`  
		Last Modified: Tue, 14 Jul 2026 02:35:18 GMT  
		Size: 589.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee08f2c89372b842bd1dcaab3121a6404964858435549af041cb1daf47ff337a`  
		Last Modified: Tue, 14 Jul 2026 02:35:20 GMT  
		Size: 581.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c80b30912df1c116781b4f21b5b83e75ef112f1a9e18f03368ff4a4e61791c49`  
		Last Modified: Tue, 14 Jul 2026 02:35:20 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd82be690f7a1126720fd1b0639fb34e04c7c96bacb28545c42a20f95470fa10`  
		Last Modified: Tue, 14 Jul 2026 02:35:22 GMT  
		Size: 58.1 MB (58143761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44d605fc7e5707cfb30055242dfa5687a27e5439658d8817fcf71bc4111e70c`  
		Last Modified: Tue, 14 Jul 2026 02:35:21 GMT  
		Size: 3.2 KB (3162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:161b74c5116f0607fecc5d599541e91c53b8b11cf45f9d4c4b95c0cf5a99c147`  
		Last Modified: Tue, 14 Jul 2026 02:35:21 GMT  
		Size: 927.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:latest` - unknown; unknown

```console
$ docker pull friendica@sha256:cf2e82edb25ff188908946b9a3967cc7927bea728782ebf46a5145840038d250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 KB (70304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ec6a5d645bfef6d14dc5b7b08c7b88de05b54fe6b26d7fee0cd310ad9b2f0c3`

```dockerfile
```

-	Layers:
	-	`sha256:edf8d6df752f21c54b0e0198299931e2e2b597128099f5826dd5b56d9e630325`  
		Last Modified: Tue, 14 Jul 2026 02:35:18 GMT  
		Size: 70.3 KB (70304 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:latest` - linux; arm variant v5

```console
$ docker pull friendica@sha256:3826db24e655cce5d0715f866179bc4cd763eb53a58927d6e885a3ae5259aca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276052076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2359299bf3f4f8892d4c3552b81a731c0c6b7c55f538f2329cf2adb578b7ed0a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:18:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:19:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:19:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:19:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:19:04 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:19:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:19:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:26:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:26:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:26:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:26:51 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:26:51 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:26:51 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:26:51 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:26:51 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:26:51 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:26:51 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 01:38:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:38:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:41:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:41:39 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:41:39 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 01:41:39 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:41:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:41:39 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 01:41:39 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:41:39 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:41:39 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:41:39 GMT
CMD ["apache2-foreground"]
# Tue, 14 Jul 2026 03:58:02 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Tue, 14 Jul 2026 03:58:16 GMT
ENV GOSU_VERSION=1.17
# Tue, 14 Jul 2026 03:58:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 04:01:13 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:01:13 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 14 Jul 2026 04:01:13 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 14 Jul 2026 04:01:13 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Tue, 14 Jul 2026 04:01:13 GMT
RUN set -ex;     a2enmod headers rewrite remoteip;     {      echo RemoteIPHeader X-Forwarded-For;      echo RemoteIPTrustedProxy 127.0.0.0/8;      echo RemoteIPTrustedProxy 10.0.0.0/8;      echo RemoteIPTrustedProxy 172.16.0.0/12;      echo RemoteIPTrustedProxy 192.168.0.0/16;     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip; # buildkit
# Tue, 14 Jul 2026 04:01:13 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Tue, 14 Jul 2026 04:01:13 GMT
VOLUME [/var/www/html]
# Tue, 14 Jul 2026 04:01:13 GMT
VOLUME [/var/www/data]
# Tue, 14 Jul 2026 04:01:13 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Tue, 14 Jul 2026 04:01:13 GMT
ENV FRIENDICA_VERSION=2026.05
# Tue, 14 Jul 2026 04:01:13 GMT
ENV FRIENDICA_DOWNLOAD_SHA256=b0a1e218c4a5a30d25b8be5a66cb97a4f4f802b98e7cf3d0d34ce045b2714ab2
# Tue, 14 Jul 2026 04:01:32 GMT
RUN set -ex;     fetchDeps="         gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 08656443618E6567A39524083EE197EF3F9E4287;         curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz";     curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc";     gpg --batch --verify friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz;     echo "${FRIENDICA_DOWNLOAD_SHA256} *friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz" | sha256sum -c;     tar -xzf friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz -C /usr/src/;     rm friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc;     mv -f /usr/src/friendica-all-in-one-${FRIENDICA_VERSION}/ /usr/src/friendica;     chmod 777 /usr/src/friendica/view/smarty3;         gpgconf --kill all;     rm -rf "$GNUPGHOME";         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:01:33 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 14 Jul 2026 04:01:33 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Tue, 14 Jul 2026 04:01:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 04:01:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488848f9a59e303ea6df59749e48b1fd9d0b9d0f98b9f2e90fb182c879118949`  
		Last Modified: Tue, 14 Jul 2026 01:22:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a31c9db1de3f9a9d4c2808306e1b781d5e57675d93c28b76eea454e2464292b`  
		Last Modified: Tue, 14 Jul 2026 01:22:42 GMT  
		Size: 94.9 MB (94887309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd5b94efd3309553e13c4f8f0a5bdab8aa25d6ffa57bfb2e633311df7030dcda`  
		Last Modified: Tue, 14 Jul 2026 01:22:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:894b25bef6c81b0579e19c2e0531845798f9dba16752de992b231d517ad4c64a`  
		Last Modified: Tue, 14 Jul 2026 01:30:45 GMT  
		Size: 4.1 MB (4090442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3d5f5b986a5569508701dece3f4fd5e91a677ef33451d14f872300af07b18b`  
		Last Modified: Tue, 14 Jul 2026 01:30:45 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de0539a6ae1308f0f1f5b2395c2877b987f37bd9c4017fcf786215d60e02f6f`  
		Last Modified: Tue, 14 Jul 2026 01:30:44 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6366586b8d9d790757985248801b32a6202be2d4b0c2d8871f9acee7f1c3c0ae`  
		Last Modified: Tue, 14 Jul 2026 01:41:50 GMT  
		Size: 12.8 MB (12770042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad20642af1da641a771ad4bed5c0544e4fa6920fa72de017dda65b58b74e3a14`  
		Last Modified: Tue, 14 Jul 2026 01:41:49 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:489d93f3f91e5f531bdc29a8767779f8918adfa3033a202182dbfab2b8606ff8`  
		Last Modified: Tue, 14 Jul 2026 01:41:50 GMT  
		Size: 10.6 MB (10603729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65bd36debc15ef57ec627843e533fca8471c59aa5c8d166fe86c83cefcca96a2`  
		Last Modified: Tue, 14 Jul 2026 01:41:49 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d41bfbf002b7be83db045d17ecfa8660bdb6061bfdd0870d50a2613ecf2ad35`  
		Last Modified: Tue, 14 Jul 2026 01:41:50 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:251f833781f6d6b133ab5fde158a5defa9f246ec6228f2f61fa3d50fbe54afe5`  
		Last Modified: Tue, 14 Jul 2026 01:41:50 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34ea0c27dbf6e9b4864404816a9529b92b1927cb68c305d6d6a5a154a9f9cca4`  
		Last Modified: Tue, 14 Jul 2026 01:41:51 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e960efc14795cec5e9954debe136ef48b1add0063d1fe58fd997a83dbd74b5`  
		Last Modified: Tue, 14 Jul 2026 04:01:43 GMT  
		Size: 20.1 MB (20071756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7404866d1d48903b6ea19c8a0b96f75e910f9b5f8039c3885cfcffade88ce0b1`  
		Last Modified: Tue, 14 Jul 2026 04:01:42 GMT  
		Size: 1.1 MB (1108117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2770d99eddde06d3973d331bf0e1b860f42fd045872ecc8dfc7e5929bcd953df`  
		Last Modified: Tue, 14 Jul 2026 04:01:43 GMT  
		Size: 46.4 MB (46413254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1b3335b790043b5b3cde09f40b1439a72440cadf9e2866c33049cd4395e171`  
		Last Modified: Tue, 14 Jul 2026 04:01:42 GMT  
		Size: 590.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb86dc8ef79fb29ab11866912a4820d4f097088f719459a7fcf0bd54c9336e9`  
		Last Modified: Tue, 14 Jul 2026 04:01:43 GMT  
		Size: 583.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dada98e28a937ad6522ebf89b1161af266ea1947a182d4d6e88a7e4846f3a59`  
		Last Modified: Tue, 14 Jul 2026 04:01:43 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:497055a0f8c219cfacb36ee500089a337e2b0b3e523bc792fcebe12528511707`  
		Last Modified: Tue, 14 Jul 2026 04:01:45 GMT  
		Size: 58.1 MB (58141476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149bb06b20bbcb2449890674a44e36ab303d75f0233b71882136693784d54d10`  
		Last Modified: Tue, 14 Jul 2026 04:01:44 GMT  
		Size: 3.2 KB (3160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9c62a79b92af6f9e8814ce7ceddca1d60b657348e14a6b23f968c1a4096f4a4`  
		Last Modified: Tue, 14 Jul 2026 04:01:44 GMT  
		Size: 926.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:latest` - unknown; unknown

```console
$ docker pull friendica@sha256:b0c9966335dd403427ef30e137d2c1d0837335ebeade409d039ff81b900d4282
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 KB (70468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43dab046f3b087b91ee79297a695d1844b9cb5cdd03a9422c2f0aac93e1aa1de`

```dockerfile
```

-	Layers:
	-	`sha256:04369f0d9c46811cf236ebfdb64fc206a17b25ad01f6ce0c161c1b847fd22487`  
		Last Modified: Tue, 14 Jul 2026 04:01:42 GMT  
		Size: 70.5 KB (70468 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:latest` - linux; arm variant v7

```console
$ docker pull friendica@sha256:19a12cc85eefc0fb0a017ca0f8207f1ab5c50a5f44badaf2ab96fcdfe7aed4df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262992964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d2c24595e95114ef44858410110e50046529ed369c95df1e4eed20535a0c596`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:30:54 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:31:12 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:31:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:31:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:31:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:31:12 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:31:12 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:31:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:31:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:31:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:31:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:31:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:31:20 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:31:20 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:31:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:31:20 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 01:42:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:42:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:44:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:44:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:44:52 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 01:44:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:44:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:44:52 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 01:44:52 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:44:52 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:44:52 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:44:52 GMT
CMD ["apache2-foreground"]
# Tue, 14 Jul 2026 04:18:25 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Tue, 14 Jul 2026 04:18:37 GMT
ENV GOSU_VERSION=1.17
# Tue, 14 Jul 2026 04:18:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 04:21:22 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:21:22 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 14 Jul 2026 04:21:22 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 14 Jul 2026 04:21:22 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Tue, 14 Jul 2026 04:21:22 GMT
RUN set -ex;     a2enmod headers rewrite remoteip;     {      echo RemoteIPHeader X-Forwarded-For;      echo RemoteIPTrustedProxy 127.0.0.0/8;      echo RemoteIPTrustedProxy 10.0.0.0/8;      echo RemoteIPTrustedProxy 172.16.0.0/12;      echo RemoteIPTrustedProxy 192.168.0.0/16;     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip; # buildkit
# Tue, 14 Jul 2026 04:21:22 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Tue, 14 Jul 2026 04:21:22 GMT
VOLUME [/var/www/html]
# Tue, 14 Jul 2026 04:21:22 GMT
VOLUME [/var/www/data]
# Tue, 14 Jul 2026 04:21:22 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Tue, 14 Jul 2026 04:21:22 GMT
ENV FRIENDICA_VERSION=2026.05
# Tue, 14 Jul 2026 04:21:22 GMT
ENV FRIENDICA_DOWNLOAD_SHA256=b0a1e218c4a5a30d25b8be5a66cb97a4f4f802b98e7cf3d0d34ce045b2714ab2
# Tue, 14 Jul 2026 04:21:40 GMT
RUN set -ex;     fetchDeps="         gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 08656443618E6567A39524083EE197EF3F9E4287;         curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz";     curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc";     gpg --batch --verify friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz;     echo "${FRIENDICA_DOWNLOAD_SHA256} *friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz" | sha256sum -c;     tar -xzf friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz -C /usr/src/;     rm friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc;     mv -f /usr/src/friendica-all-in-one-${FRIENDICA_VERSION}/ /usr/src/friendica;     chmod 777 /usr/src/friendica/view/smarty3;         gpgconf --kill all;     rm -rf "$GNUPGHOME";         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:21:40 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 14 Jul 2026 04:21:40 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Tue, 14 Jul 2026 04:21:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 04:21:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e314f2ce3e3e24a9d93f28d3ad6fd22c919090cf796aa977745a779c38a4a6`  
		Last Modified: Tue, 14 Jul 2026 01:34:53 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab43c0af172d4fb74d82a65fb071572a594b30333e4161f6db9952c494a9c3b6`  
		Last Modified: Tue, 14 Jul 2026 01:34:56 GMT  
		Size: 86.3 MB (86257193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c32b01873a226e1fa4c198adc324f4867ffdbdcecc50f894d7b111b5fb633726`  
		Last Modified: Tue, 14 Jul 2026 01:34:53 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d13a27ce16b0e9770e99a0228e5ae1560a085c8cbefc9a07afde9ccbf8579e`  
		Last Modified: Tue, 14 Jul 2026 01:34:53 GMT  
		Size: 3.8 MB (3757362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31498b6e8fe509001c8bcff916f1915b85a73d1b1e233ec54faa14b4fa7c2ddf`  
		Last Modified: Tue, 14 Jul 2026 01:34:54 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4909a00a0dd7d70808e0582445f838fbfd30442cb1659493b97a79899395dfe`  
		Last Modified: Tue, 14 Jul 2026 01:34:54 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f082749738ee356d7a9615141a3e39fc7e9e497b999caf9de9aab75e644eb21`  
		Last Modified: Tue, 14 Jul 2026 01:45:03 GMT  
		Size: 12.8 MB (12770117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aab2a8f84a5c723c8164eb22b2546b183cd553008b09c4402c2e60071f989a1`  
		Last Modified: Tue, 14 Jul 2026 01:45:02 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05006f5d3feba6679e5ed3ab8ddb9047a036de241d74a27c05b1523d16c93304`  
		Last Modified: Tue, 14 Jul 2026 01:45:03 GMT  
		Size: 10.1 MB (10073986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d3b4fe42c20ea7f0ccd521bbe6e25d84f4aa955c37406384177666ef42a762`  
		Last Modified: Tue, 14 Jul 2026 01:45:02 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:909c9bb5a950ca5218a3bdda8b24e414276898545e65eaa213edcb9819c9ba2a`  
		Last Modified: Tue, 14 Jul 2026 01:45:04 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d0296c9c0e4c3d7e803c96a876d6570d8173a3b7748aed6ffb2fcb1ca372d0`  
		Last Modified: Tue, 14 Jul 2026 01:45:04 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e73a9256d951a755432962e56d0d6a6100d405454f2a35fd2a58ec8a10cdbb9`  
		Last Modified: Tue, 14 Jul 2026 01:45:04 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35263f00fced788eb10266c0e3405b89b5564d7a8c9f925fb5935a06584ad627`  
		Last Modified: Tue, 14 Jul 2026 04:21:51 GMT  
		Size: 20.0 MB (19969053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe14f66c0c04a56bc24f0f83cbfc2f8f81a91bc6d38903c872f2f5b27e39d9b`  
		Last Modified: Tue, 14 Jul 2026 04:21:50 GMT  
		Size: 1.1 MB (1098249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ab8a82dc5205d0cbe3b2aee2fe80f7ce858095c07f163c539449ad6ef9ae15`  
		Last Modified: Tue, 14 Jul 2026 04:21:51 GMT  
		Size: 44.7 MB (44707935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283b9cc6db98cb9d91f726ef0d07e3e24d65a635d6aa80dbeebc5cdb57a6f067`  
		Last Modified: Tue, 14 Jul 2026 04:21:50 GMT  
		Size: 589.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04a589bb34d0e1d1650828d52861f7ec9e34198feae6886c64e85d76a617376c`  
		Last Modified: Tue, 14 Jul 2026 04:21:51 GMT  
		Size: 584.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e100b20e013b7cde4e6e079d407ef15e95e2b13b366e479ad510aa22754f14fc`  
		Last Modified: Tue, 14 Jul 2026 04:21:51 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5219e1fb9bdbe2e94f9b67d948818bbf48c01b5c3a210d045872c863424cd562`  
		Last Modified: Tue, 14 Jul 2026 04:21:54 GMT  
		Size: 58.1 MB (58141474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373f7c8d6b5a5ae049e2a90964ced265ae41d6a8100f78940c28917cbe09f3b0`  
		Last Modified: Tue, 14 Jul 2026 04:21:52 GMT  
		Size: 3.2 KB (3162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f48965105a4f447697ea590c7118daeb0d4a04826363ffdca0817573dd1bcb`  
		Last Modified: Tue, 14 Jul 2026 04:21:53 GMT  
		Size: 923.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:latest` - unknown; unknown

```console
$ docker pull friendica@sha256:61e7ffa14ad3275dbc0b7c368e13567639fbd7c2ea197675304c866eac1c9204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 KB (70468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c20d983b5312ada3c320e405e6afc4649af765bc8a4d20fcf53be3ec1d4bf6`

```dockerfile
```

-	Layers:
	-	`sha256:e2d3b962983bf3935b523bdb4e6341bb81755c5e87488586de300da37dac2723`  
		Last Modified: Tue, 14 Jul 2026 04:21:49 GMT  
		Size: 70.5 KB (70468 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:latest` - linux; arm64 variant v8

```console
$ docker pull friendica@sha256:451e451162f99013852227592e454d5c6abd8180351ef34c0e6a9450c63659a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.0 MB (297047248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2abe243cc8e9e6e0c753b4ba2c5296d941bacff4fe3a82936ec62d0bc53154e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:22:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:23:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:23:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:23:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:23:16 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:23:16 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:23:16 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:30:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:30:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:30:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:30:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:30:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:30:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:30:58 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:30:58 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:30:58 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:30:58 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 01:31:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:31:06 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:34:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:34:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:34:55 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 01:34:55 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:34:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:34:55 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 01:34:55 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:34:55 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:34:55 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:34:55 GMT
CMD ["apache2-foreground"]
# Tue, 14 Jul 2026 02:39:56 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Tue, 14 Jul 2026 02:40:05 GMT
ENV GOSU_VERSION=1.17
# Tue, 14 Jul 2026 02:40:05 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:43:25 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:43:25 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 14 Jul 2026 02:43:25 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 14 Jul 2026 02:43:25 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Tue, 14 Jul 2026 02:43:26 GMT
RUN set -ex;     a2enmod headers rewrite remoteip;     {      echo RemoteIPHeader X-Forwarded-For;      echo RemoteIPTrustedProxy 127.0.0.0/8;      echo RemoteIPTrustedProxy 10.0.0.0/8;      echo RemoteIPTrustedProxy 172.16.0.0/12;      echo RemoteIPTrustedProxy 192.168.0.0/16;     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip; # buildkit
# Tue, 14 Jul 2026 02:43:26 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Tue, 14 Jul 2026 02:43:26 GMT
VOLUME [/var/www/html]
# Tue, 14 Jul 2026 02:43:26 GMT
VOLUME [/var/www/data]
# Tue, 14 Jul 2026 02:43:26 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Tue, 14 Jul 2026 02:43:26 GMT
ENV FRIENDICA_VERSION=2026.05
# Tue, 14 Jul 2026 02:43:26 GMT
ENV FRIENDICA_DOWNLOAD_SHA256=b0a1e218c4a5a30d25b8be5a66cb97a4f4f802b98e7cf3d0d34ce045b2714ab2
# Tue, 14 Jul 2026 02:43:40 GMT
RUN set -ex;     fetchDeps="         gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 08656443618E6567A39524083EE197EF3F9E4287;         curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz";     curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc";     gpg --batch --verify friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz;     echo "${FRIENDICA_DOWNLOAD_SHA256} *friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz" | sha256sum -c;     tar -xzf friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz -C /usr/src/;     rm friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc;     mv -f /usr/src/friendica-all-in-one-${FRIENDICA_VERSION}/ /usr/src/friendica;     chmod 777 /usr/src/friendica/view/smarty3;         gpgconf --kill all;     rm -rf "$GNUPGHOME";         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:43:41 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 14 Jul 2026 02:43:41 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Tue, 14 Jul 2026 02:43:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:43:41 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e216fc74098585b577a1acae06188ae703b73cd25c9c40d0eeba79a9e62ecd42`  
		Last Modified: Tue, 14 Jul 2026 01:26:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30af58a6e26f5caed9dbba271c53fbc9f031251d3ef72c21f62a7d9fac80ef6f`  
		Last Modified: Tue, 14 Jul 2026 01:26:39 GMT  
		Size: 110.2 MB (110169981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c01cd6a9a9d5c1b8fda3864ecb2528a3b744de5905371cfaeed577432c17e9`  
		Last Modified: Tue, 14 Jul 2026 01:26:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c929578a15238816c08b6c7b7c4aa9ca4d175d362b036db8fc15b2d61af4738`  
		Last Modified: Tue, 14 Jul 2026 01:35:06 GMT  
		Size: 4.3 MB (4307934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e16292736d6cf77031a6cd228ea2faf512170fb1d14dc9ed5295f4f122acc6`  
		Last Modified: Tue, 14 Jul 2026 01:35:06 GMT  
		Size: 438.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e647d2167d8bec4f62b7197afadc4e510230875231b04cc7d193edd414743ef2`  
		Last Modified: Tue, 14 Jul 2026 01:35:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9694660e19dcfac3edc5c3e5aa584b315e693bfb51832235bb41d526677f45c9`  
		Last Modified: Tue, 14 Jul 2026 01:35:07 GMT  
		Size: 12.8 MB (12772055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5d7599dc25290b60c854c0a18f5dd70678d56a5e02201cc44fd84127ef8534`  
		Last Modified: Tue, 14 Jul 2026 01:35:07 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:185a05e049b87dffdfd84bb9a0b6c8fc56f2fa519028d2f5467af33471db77e2`  
		Last Modified: Tue, 14 Jul 2026 01:35:08 GMT  
		Size: 11.7 MB (11733946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975e7fb719b9ab7d845795748777af293f8458ae5548348532caede6e2611dd7`  
		Last Modified: Tue, 14 Jul 2026 01:35:08 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c95a4eaba184a9f3b776c0d6ab26ccfb97fd4b4b8162cdc15f51eb2e61b4fe6`  
		Last Modified: Tue, 14 Jul 2026 01:35:08 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e85d07ae0e8114e782c1739db50513bb968454eb0491a35787f37c01dbe2f817`  
		Last Modified: Tue, 14 Jul 2026 01:35:08 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdc39169d7ec5ff92c8bfa354c25c32506df6704f425ffabaac9839dcbb52a0`  
		Last Modified: Tue, 14 Jul 2026 01:35:09 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7689ece08ec414dad2cf1a9d114bc9f1a9f83ec0858e4c87351aba558056dc24`  
		Last Modified: Tue, 14 Jul 2026 02:43:51 GMT  
		Size: 20.5 MB (20500219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c9ca38e2f6642e7c1ac4cc038e117045c56f67244fdfc6e17391d63901b5f9b`  
		Last Modified: Tue, 14 Jul 2026 02:43:51 GMT  
		Size: 1.1 MB (1065312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06859299d2ea4f43686923163e46a838d597bdfe6764e19ccc35ad8b477c6b1`  
		Last Modified: Tue, 14 Jul 2026 02:43:53 GMT  
		Size: 48.2 MB (48199626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9565a3e216c11edc0676cd5daf3fa787f5fe7f2b51e422c31b50d5a77b77bd4b`  
		Last Modified: Tue, 14 Jul 2026 02:43:50 GMT  
		Size: 588.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0756b6a04f68e0acb2d4ce270b2c31db2b076cd0a1c1a409390fd87f20195ff`  
		Last Modified: Tue, 14 Jul 2026 02:43:52 GMT  
		Size: 583.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca838e97db3002f8849a663cfee56a88796541e7fc1e354c409ea8903d9459d9`  
		Last Modified: Tue, 14 Jul 2026 02:43:52 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90db8ebb5ce173024e27a6bf2a9789f045c2b23741349c6c8349b054ddbdbc23`  
		Last Modified: Tue, 14 Jul 2026 02:43:55 GMT  
		Size: 58.1 MB (58143334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47f40d313dd816ae95de6a3214f4946f5db5cb1aee1123d5eedcdf2deeabffa`  
		Last Modified: Tue, 14 Jul 2026 02:43:53 GMT  
		Size: 3.2 KB (3163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b5c7010502e030fcb167dbd167b6ef1bafb60dd28719aee22398aa7416402dc`  
		Last Modified: Tue, 14 Jul 2026 02:43:54 GMT  
		Size: 925.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:latest` - unknown; unknown

```console
$ docker pull friendica@sha256:54df821e244fb8c223d7ff0906bdd89515b4ebef1e8ad41d063d6a32122f0d3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 KB (70522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec3ba49a49e82d422e24a8822dc5de424659c5d3683b7b37090bc2c2dd4eec95`

```dockerfile
```

-	Layers:
	-	`sha256:e378c7ca35000736b6481614c3e7c01dd4c992be9f73f1949f0effba00e462d2`  
		Last Modified: Tue, 14 Jul 2026 02:43:50 GMT  
		Size: 70.5 KB (70522 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:latest` - linux; 386

```console
$ docker pull friendica@sha256:9e6084baaf9877facbaa5791fc8ee5dd9affa5ccc58716f0a96baccc5bb4e379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.2 MB (306169869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df1cce753ae7ceb4edeb7ed0a1b54eb0a0eb3e2d98a279b08c1ffda06509a576`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:18:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:18:57 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:18:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:18:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:18:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:18:57 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:18:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:26:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:26:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:26:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:26:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:26:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:26:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:26:54 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:26:54 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:26:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:26:54 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 01:27:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:27:05 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:30:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:30:12 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:30:12 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 01:30:12 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:30:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:30:12 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 01:30:12 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:30:12 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:30:12 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:30:12 GMT
CMD ["apache2-foreground"]
# Tue, 14 Jul 2026 02:41:05 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Tue, 14 Jul 2026 02:41:14 GMT
ENV GOSU_VERSION=1.17
# Tue, 14 Jul 2026 02:41:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:43:52 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:43:52 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 14 Jul 2026 02:43:52 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 14 Jul 2026 02:43:52 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Tue, 14 Jul 2026 02:43:52 GMT
RUN set -ex;     a2enmod headers rewrite remoteip;     {      echo RemoteIPHeader X-Forwarded-For;      echo RemoteIPTrustedProxy 127.0.0.0/8;      echo RemoteIPTrustedProxy 10.0.0.0/8;      echo RemoteIPTrustedProxy 172.16.0.0/12;      echo RemoteIPTrustedProxy 192.168.0.0/16;     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip; # buildkit
# Tue, 14 Jul 2026 02:43:53 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Tue, 14 Jul 2026 02:43:53 GMT
VOLUME [/var/www/html]
# Tue, 14 Jul 2026 02:43:53 GMT
VOLUME [/var/www/data]
# Tue, 14 Jul 2026 02:43:53 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Tue, 14 Jul 2026 02:43:53 GMT
ENV FRIENDICA_VERSION=2026.05
# Tue, 14 Jul 2026 02:43:53 GMT
ENV FRIENDICA_DOWNLOAD_SHA256=b0a1e218c4a5a30d25b8be5a66cb97a4f4f802b98e7cf3d0d34ce045b2714ab2
# Tue, 14 Jul 2026 02:44:08 GMT
RUN set -ex;     fetchDeps="         gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 08656443618E6567A39524083EE197EF3F9E4287;         curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz";     curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc";     gpg --batch --verify friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz;     echo "${FRIENDICA_DOWNLOAD_SHA256} *friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz" | sha256sum -c;     tar -xzf friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz -C /usr/src/;     rm friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc;     mv -f /usr/src/friendica-all-in-one-${FRIENDICA_VERSION}/ /usr/src/friendica;     chmod 777 /usr/src/friendica/view/smarty3;         gpgconf --kill all;     rm -rf "$GNUPGHOME";         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:44:08 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 14 Jul 2026 02:44:08 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Tue, 14 Jul 2026 02:44:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:44:08 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488848f9a59e303ea6df59749e48b1fd9d0b9d0f98b9f2e90fb182c879118949`  
		Last Modified: Tue, 14 Jul 2026 01:22:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a956d7f4fd965a96a1fb0dd7768b9d73eafa205678da09c2a05a704351ec788f`  
		Last Modified: Tue, 14 Jul 2026 01:22:37 GMT  
		Size: 116.1 MB (116142654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91de69d6985b7f5557381cc4364e19134d64e7b30f664ac78bd498383af94446`  
		Last Modified: Tue, 14 Jul 2026 01:22:32 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef09955145a86cb6642ffd56c5af5c25cf1e02a086cfe1c1e721fdcf5e365f8`  
		Last Modified: Tue, 14 Jul 2026 01:30:23 GMT  
		Size: 4.5 MB (4459444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:066d619ba3f82cb17ba405f06ef08b2c67a48fd3a7475e76677991281124e2bb`  
		Last Modified: Tue, 14 Jul 2026 01:30:23 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b612404b94229450fa870ab6119da1fa9e2e2023cf8524e2a9adffd29652ac7`  
		Last Modified: Tue, 14 Jul 2026 01:30:23 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8038b6443c148c1acf3e461f5d3773b073b843a52b9b4e1fcdf2af151b5a3f5`  
		Last Modified: Tue, 14 Jul 2026 01:30:24 GMT  
		Size: 12.8 MB (12771421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e650d2dd0e482e148707674c9b837e136999c579e392fd6f65bb2e10a2600f8`  
		Last Modified: Tue, 14 Jul 2026 01:30:24 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff9706db6a45d7b73a1c000c60c708a9fadd5aa679482ff00e63dcb90440a1e`  
		Last Modified: Tue, 14 Jul 2026 01:30:25 GMT  
		Size: 11.9 MB (11928816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5448a3e9391319ace4d45834a7e6490ded3c1428e1d262229b245981096f4d0`  
		Last Modified: Tue, 14 Jul 2026 01:30:25 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb29aa63031109696e37a38a8595d3978ea2ead4ce0644fd733e75f3b032de8`  
		Last Modified: Tue, 14 Jul 2026 01:30:25 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ff54c2d806d137fd5f239a8185a81b1d207f4e019ae2a770e5801da7648123`  
		Last Modified: Tue, 14 Jul 2026 01:30:26 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a93695f6b1c83b6943ecf500e1a5a6ab05811ce0740b95f32fcac5a9c563adc0`  
		Last Modified: Tue, 14 Jul 2026 01:30:26 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0047e6299cec6170f505cb5b060c2a7d2e847816210ffb8ff21c12bb8916b9d`  
		Last Modified: Tue, 14 Jul 2026 02:44:19 GMT  
		Size: 21.0 MB (20991412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc374241277dcca0d3ebdbe8d8827a1e2b15197ed6b630a5a472d657bf9afbe`  
		Last Modified: Tue, 14 Jul 2026 02:44:18 GMT  
		Size: 1.1 MB (1108035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce10398a2d0c84cf578a257182a332c8547a44c53a922bfc37ffeb361845706`  
		Last Modified: Tue, 14 Jul 2026 02:44:20 GMT  
		Size: 49.3 MB (49317048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c3b92fa8eb8df6e6434b2f0212fcd623dad422cab7d971fbcb970570f54d3f2`  
		Last Modified: Tue, 14 Jul 2026 02:44:18 GMT  
		Size: 588.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0c006a882f362436b0eb134935124757e89fb5f4ced79a6fe07fe92c64589ce`  
		Last Modified: Tue, 14 Jul 2026 02:44:19 GMT  
		Size: 581.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1beff1cc16428158c6e92410051c9895000b5a8fc52444f89521dbbf611cfa`  
		Last Modified: Tue, 14 Jul 2026 02:44:20 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e468f6c075249a2f9d63f78c98a3c86d6404125a9474960a5e2d7d49f37350b`  
		Last Modified: Tue, 14 Jul 2026 02:44:22 GMT  
		Size: 58.1 MB (58143615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004b2fb9de106b46e4b5baddefb15e6a04372aa4f6a79ae1352cfdc45051b421`  
		Last Modified: Tue, 14 Jul 2026 02:44:21 GMT  
		Size: 3.2 KB (3162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7643fae5a066651ac9cd3d9ea847c15323a3e4388e290c1ae225f447122e4f5`  
		Last Modified: Tue, 14 Jul 2026 02:44:21 GMT  
		Size: 926.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:latest` - unknown; unknown

```console
$ docker pull friendica@sha256:c856ef190d1a0d9c10f52714a996739364f43b8a307458dc438d1c618ec2410e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 KB (70250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b46c2f5502346d0e4c137dd3858fb18715f7bec1ab2c2186dff40523e737efc9`

```dockerfile
```

-	Layers:
	-	`sha256:2c204da45fe15ab1888a40a4b438596c92463646f9386b72ac174876be2f9fd7`  
		Last Modified: Tue, 14 Jul 2026 02:44:18 GMT  
		Size: 70.2 KB (70250 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:latest` - linux; ppc64le

```console
$ docker pull friendica@sha256:ac58ea0a1d388fc41b340f34e649dd598381d6f95b4fea9c00b9799a5f763d6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.8 MB (303773898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcff80cfffb82dcaa3398c263395e33cabdd6d4dac2414d16bbdb9144981e127`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:47:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:47:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:47:57 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:47:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:49:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:49:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:49:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:49:20 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 02:47:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 02:47:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:50:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 02:50:53 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:50:54 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 02:50:54 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 02:50:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 02:50:54 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 02:50:54 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:50:54 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 02:50:54 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 02:50:54 GMT
CMD ["apache2-foreground"]
# Tue, 14 Jul 2026 12:40:07 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Tue, 14 Jul 2026 12:40:27 GMT
ENV GOSU_VERSION=1.17
# Tue, 14 Jul 2026 12:40:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 12:45:04 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 12:45:04 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 14 Jul 2026 12:45:04 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 14 Jul 2026 12:45:05 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Tue, 14 Jul 2026 12:45:05 GMT
RUN set -ex;     a2enmod headers rewrite remoteip;     {      echo RemoteIPHeader X-Forwarded-For;      echo RemoteIPTrustedProxy 127.0.0.0/8;      echo RemoteIPTrustedProxy 10.0.0.0/8;      echo RemoteIPTrustedProxy 172.16.0.0/12;      echo RemoteIPTrustedProxy 192.168.0.0/16;     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip; # buildkit
# Tue, 14 Jul 2026 12:45:06 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Tue, 14 Jul 2026 12:45:06 GMT
VOLUME [/var/www/html]
# Tue, 14 Jul 2026 12:45:06 GMT
VOLUME [/var/www/data]
# Tue, 14 Jul 2026 12:45:06 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Tue, 14 Jul 2026 12:45:06 GMT
ENV FRIENDICA_VERSION=2026.05
# Tue, 14 Jul 2026 12:45:06 GMT
ENV FRIENDICA_DOWNLOAD_SHA256=b0a1e218c4a5a30d25b8be5a66cb97a4f4f802b98e7cf3d0d34ce045b2714ab2
# Tue, 14 Jul 2026 12:45:32 GMT
RUN set -ex;     fetchDeps="         gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 08656443618E6567A39524083EE197EF3F9E4287;         curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz";     curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc";     gpg --batch --verify friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz;     echo "${FRIENDICA_DOWNLOAD_SHA256} *friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz" | sha256sum -c;     tar -xzf friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz -C /usr/src/;     rm friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc;     mv -f /usr/src/friendica-all-in-one-${FRIENDICA_VERSION}/ /usr/src/friendica;     chmod 777 /usr/src/friendica/view/smarty3;         gpgconf --kill all;     rm -rf "$GNUPGHOME";         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 12:45:33 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 14 Jul 2026 12:45:33 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Tue, 14 Jul 2026 12:45:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 12:45:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd9fd337cd7899e7af7638f29dae4c574aa394164bd2af437580f9c9c2182fa6`  
		Last Modified: Tue, 14 Jul 2026 01:52:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10f965ef16589e91b31b56f5b8058fb73d0f3a06daf05fe4c4ff6c738725671`  
		Last Modified: Tue, 14 Jul 2026 01:52:24 GMT  
		Size: 109.6 MB (109599986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2aa5772e1f0e49ca42c6d5c16739c4491de58fe0b69597250fd50ff7b194b05`  
		Last Modified: Tue, 14 Jul 2026 01:52:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b3d513edcced888c9d701c8b61f84146f8fa67c324bc43ef3724c9a775f6a0`  
		Last Modified: Tue, 14 Jul 2026 01:53:57 GMT  
		Size: 4.9 MB (4885486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d1fe1967cdebe6d53ef0faa1b5c3fdebe6dcc7edf1034bf1440a9eeceb0ec9`  
		Last Modified: Tue, 14 Jul 2026 01:53:57 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09fbb0d901148cd360965bd4cea366f3d6c35c1e1c8805ff4dac6f564115d6b4`  
		Last Modified: Tue, 14 Jul 2026 01:53:57 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad9d2ea66c81f98ca7d9bca664a23457f3e1815baccead561f581034053daef1`  
		Last Modified: Tue, 14 Jul 2026 02:51:17 GMT  
		Size: 12.8 MB (12779569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54bc5a5b4c3fff34460b9bbd7afa1530201bc9221dc52d5c8012978e9fa84062`  
		Last Modified: Tue, 14 Jul 2026 02:51:16 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c62be8bacc9e8c63d0c63d20c2d4290e7a1358abbe55c8e238f779b11b483bb3`  
		Last Modified: Tue, 14 Jul 2026 02:51:17 GMT  
		Size: 12.1 MB (12125296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e4109787e16ed309f9766e3b73b4f0ba260acd1fe5ddd26294cfac70aead3b`  
		Last Modified: Tue, 14 Jul 2026 02:51:16 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e390febaf0b8cb82e468adda2ee82794fa8904446124e27c2c78032e39b382`  
		Last Modified: Tue, 14 Jul 2026 02:51:17 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99fe4c9626ac4ec226bcbd122e4ba39647f2df9881a831e793d88aa47966d841`  
		Last Modified: Tue, 14 Jul 2026 02:51:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a8936cd65010d9a386a55bcd4dab5f4ec5d0a5865fa7b060e108e1aedf2f50a`  
		Last Modified: Tue, 14 Jul 2026 02:51:18 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e0858ed69bcac1c1c320d44dddf6b5e863cc4086f06e0cbc83a7740dc7caa0`  
		Last Modified: Tue, 14 Jul 2026 12:45:52 GMT  
		Size: 20.9 MB (20935022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4882ddedf46fd1849f1ac0128f554e7c6942c068757346799484325d6cc083c`  
		Last Modified: Tue, 14 Jul 2026 12:45:51 GMT  
		Size: 1.1 MB (1055312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbcd61a64bce20f3d2d0ca69f48bf27c2cababc3265f100757f06c35326c15cd`  
		Last Modified: Tue, 14 Jul 2026 12:45:53 GMT  
		Size: 50.6 MB (50636582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009cfa9c68b58fee3d4b1a3c192ffc84f5abf6ceb1cc5eb255c41f309e2520f9`  
		Last Modified: Tue, 14 Jul 2026 12:45:51 GMT  
		Size: 589.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43866623c857b28e703d8a71be09db2a51d565234c6d4d280161e8f59c09552c`  
		Last Modified: Tue, 14 Jul 2026 12:45:52 GMT  
		Size: 587.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293bc8ac300b7db9e61f4aa8d3c8b120ba9c4e3467232c3f46e083cccfecc761`  
		Last Modified: Tue, 14 Jul 2026 12:45:52 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81dbb478b2b9c3b5eb84377b9a2362638926e55c61edca275a0106832970b6a5`  
		Last Modified: Tue, 14 Jul 2026 12:45:55 GMT  
		Size: 58.1 MB (58144013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aa62589c1c48b4a623abe58cd35790b76f74329e60ef456f4e029087d87d446`  
		Last Modified: Tue, 14 Jul 2026 12:45:54 GMT  
		Size: 3.2 KB (3161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218259fef492ef0c9fd322b6849110bd275f1b0e3e0a915ab48cc3d4ec1e0321`  
		Last Modified: Tue, 14 Jul 2026 12:45:54 GMT  
		Size: 925.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:latest` - unknown; unknown

```console
$ docker pull friendica@sha256:e21d7085b8cc34417da205c9cbd586edb0ac7065239af121cf61d8f39d4d6431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.4 KB (70372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ffdb6f7634c51fb991808775279e870fb6de157191aef0264ce629f2243f5a`

```dockerfile
```

-	Layers:
	-	`sha256:668d7a1d18b045c080b73ec840ef09b9d11d055d25cb81126b3e582a748dc68f`  
		Last Modified: Tue, 14 Jul 2026 12:45:50 GMT  
		Size: 70.4 KB (70372 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:latest` - linux; riscv64

```console
$ docker pull friendica@sha256:dd1bc4eddd126a507b2e41537bdcb44b0804600f9c87fb221fab64dc0fb5f205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.8 MB (338794956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5153a0fb549cc3d5f7af3c4d21805c800ba3ac38fcc703ca248826ab5ac6b41c`
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
ENV PHP_VERSION=8.3.32
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Fri, 03 Jul 2026 15:42:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 03 Jul 2026 15:42:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 03 Jul 2026 16:33:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 03 Jul 2026 16:33:39 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 03 Jul 2026 16:33:40 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 03 Jul 2026 16:33:41 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 03 Jul 2026 16:33:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Jul 2026 16:33:41 GMT
STOPSIGNAL SIGWINCH
# Fri, 03 Jul 2026 16:33:41 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Fri, 03 Jul 2026 16:33:41 GMT
WORKDIR /var/www/html
# Fri, 03 Jul 2026 16:33:41 GMT
EXPOSE map[80/tcp:{}]
# Fri, 03 Jul 2026 16:33:41 GMT
CMD ["apache2-foreground"]
# Sat, 04 Jul 2026 16:53:00 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Sat, 04 Jul 2026 16:54:21 GMT
ENV GOSU_VERSION=1.17
# Sat, 04 Jul 2026 16:54:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 04 Jul 2026 18:49:42 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 04 Jul 2026 18:49:42 GMT
ENV PHP_MEMORY_LIMIT=512M
# Sat, 04 Jul 2026 18:49:42 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Sat, 04 Jul 2026 18:49:43 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Sat, 04 Jul 2026 18:49:44 GMT
RUN set -ex;     a2enmod headers rewrite remoteip;     {      echo RemoteIPHeader X-Forwarded-For;      echo RemoteIPTrustedProxy 127.0.0.0/8;      echo RemoteIPTrustedProxy 10.0.0.0/8;      echo RemoteIPTrustedProxy 172.16.0.0/12;      echo RemoteIPTrustedProxy 192.168.0.0/16;     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip; # buildkit
# Sat, 04 Jul 2026 18:49:44 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Sat, 04 Jul 2026 18:49:44 GMT
VOLUME [/var/www/html]
# Sat, 04 Jul 2026 18:49:44 GMT
VOLUME [/var/www/data]
# Sat, 04 Jul 2026 18:49:44 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Sat, 04 Jul 2026 18:49:44 GMT
ENV FRIENDICA_VERSION=2026.05
# Sat, 04 Jul 2026 18:49:44 GMT
ENV FRIENDICA_DOWNLOAD_SHA256=b0a1e218c4a5a30d25b8be5a66cb97a4f4f802b98e7cf3d0d34ce045b2714ab2
# Sat, 04 Jul 2026 18:51:18 GMT
RUN set -ex;     fetchDeps="         gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 08656443618E6567A39524083EE197EF3F9E4287;         curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz";     curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc";     gpg --batch --verify friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz;     echo "${FRIENDICA_DOWNLOAD_SHA256} *friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz" | sha256sum -c;     tar -xzf friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz -C /usr/src/;     rm friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc;     mv -f /usr/src/friendica-all-in-one-${FRIENDICA_VERSION}/ /usr/src/friendica;     chmod 777 /usr/src/friendica/view/smarty3;         gpgconf --kill all;     rm -rf "$GNUPGHOME";         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 04 Jul 2026 18:51:19 GMT
COPY *.sh upgrade.exclude / # buildkit
# Sat, 04 Jul 2026 18:51:19 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Sat, 04 Jul 2026 18:51:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Jul 2026 18:51:19 GMT
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
	-	`sha256:b472211f8984ade3198023e89fe8e874afc57f919d81363917543cd93bb1bd7e`  
		Last Modified: Fri, 03 Jul 2026 16:36:57 GMT  
		Size: 12.8 MB (12786962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38babffe54b9ac52ddf2f099aca08101072589cb52f1f17bbeae8b91d4f9b066`  
		Last Modified: Fri, 03 Jul 2026 16:36:53 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25d854b7c90239892a37245f560cf1d08e470cfa06d54b1b4568cd5dabb86672`  
		Last Modified: Fri, 03 Jul 2026 16:36:57 GMT  
		Size: 11.4 MB (11395485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:972a29781bbb43e5f19bab932ee314914cb3b80682bbd52973e7723512b35503`  
		Last Modified: Fri, 03 Jul 2026 16:36:53 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f68ce93f5a669bd6788d91e56408d20101815e451ce657af251bed36ff37466`  
		Last Modified: Fri, 03 Jul 2026 16:36:55 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e4192bcc470f663ecd0c69fffc5a89d6ae18180cc206bf0a372dd45809cf6e5`  
		Last Modified: Fri, 03 Jul 2026 16:36:56 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8b23d6abc0021b25903fd642952f7f0c571243e4aac7a52600bb779b7dd287`  
		Last Modified: Fri, 03 Jul 2026 16:36:57 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f2a55601a419822590044e287ca76a3e71da2191a42136f51020791ce8fb283`  
		Last Modified: Sat, 04 Jul 2026 17:24:45 GMT  
		Size: 20.2 MB (20151177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aef1ba8a7f790e045fe3d5cceda507fc2e8e77658c3c1ccd8cd81287e2ed6b68`  
		Last Modified: Sat, 04 Jul 2026 17:24:39 GMT  
		Size: 1.1 MB (1103876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f9fba970dd338236befddb4b1f12f79c43bba1b96eb66d4baaa59cf362a1f86`  
		Last Modified: Sat, 04 Jul 2026 18:53:50 GMT  
		Size: 56.3 MB (56303035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b86a2d6549a6351c3250b336a3a5e17cc93e6c687e877afab8c4846b95a8a49`  
		Last Modified: Sat, 04 Jul 2026 18:53:35 GMT  
		Size: 593.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2d58db07f2a8ebbebd4231f7e39128a979b73a7ac1be46f0d8300a62da8604f`  
		Last Modified: Sat, 04 Jul 2026 18:53:35 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:714cb6a870e097f4554aee22996cea38cd80be917a7abf3acbb8cdd4e868165a`  
		Last Modified: Sat, 04 Jul 2026 18:53:35 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a52464ea0d7547a8ffaba58ff26a68f036b9cdc2025d59a00488cd0a497795b1`  
		Last Modified: Sat, 04 Jul 2026 18:53:52 GMT  
		Size: 58.1 MB (58143971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52a634af6045e6b9012e8e6d5ea01b3bde814a31f5b1e97a1b380810d4b53fc`  
		Last Modified: Sat, 04 Jul 2026 18:53:37 GMT  
		Size: 3.2 KB (3162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab601d488fa83944024d99357d85cc21164aefc57d6d28cea63f5c206ad22ea9`  
		Last Modified: Sat, 04 Jul 2026 18:53:37 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:latest` - unknown; unknown

```console
$ docker pull friendica@sha256:47a7727c4fdad4bf6b194f1e5b73501d045a8f7a0aca0f813c0a1bb787bcdd4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.4 KB (70372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a2380cadd849a8fdd74efdaa952982ec5419ffa182bc5caf75a0085621a26b1`

```dockerfile
```

-	Layers:
	-	`sha256:26dff1c9b9bc4d363c5c034cd2f2ed8ad0becec9876c89cc4cff80333b267960`  
		Last Modified: Sat, 04 Jul 2026 18:53:34 GMT  
		Size: 70.4 KB (70372 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:latest` - linux; s390x

```console
$ docker pull friendica@sha256:390d2fd4737b79e107f000ea6eab5a9db286a2c067ea973ebd30f2da26caf9ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278475813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d5b4f73905e413f35dae2beed5b9a77baf93516b578c0cd01525862e898119c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:22:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:23:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:23:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:23:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:23:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:23:15 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:23:15 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:53:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:53:57 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:53:57 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:53:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:53:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:53:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:53:57 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:53:57 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:53:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:53:57 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 02:04:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 02:04:31 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:07:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 02:07:50 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:07:51 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 02:07:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 02:07:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 02:07:51 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 02:07:51 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:07:51 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 02:07:51 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 02:07:51 GMT
CMD ["apache2-foreground"]
# Tue, 14 Jul 2026 04:54:51 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Tue, 14 Jul 2026 04:54:59 GMT
ENV GOSU_VERSION=1.17
# Tue, 14 Jul 2026 04:54:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 04:57:06 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:57:06 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 14 Jul 2026 04:57:06 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 14 Jul 2026 04:57:06 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Tue, 14 Jul 2026 04:57:06 GMT
RUN set -ex;     a2enmod headers rewrite remoteip;     {      echo RemoteIPHeader X-Forwarded-For;      echo RemoteIPTrustedProxy 127.0.0.0/8;      echo RemoteIPTrustedProxy 10.0.0.0/8;      echo RemoteIPTrustedProxy 172.16.0.0/12;      echo RemoteIPTrustedProxy 192.168.0.0/16;     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip; # buildkit
# Tue, 14 Jul 2026 04:57:06 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Tue, 14 Jul 2026 04:57:06 GMT
VOLUME [/var/www/html]
# Tue, 14 Jul 2026 04:57:06 GMT
VOLUME [/var/www/data]
# Tue, 14 Jul 2026 04:57:06 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Tue, 14 Jul 2026 04:57:06 GMT
ENV FRIENDICA_VERSION=2026.05
# Tue, 14 Jul 2026 04:57:06 GMT
ENV FRIENDICA_DOWNLOAD_SHA256=b0a1e218c4a5a30d25b8be5a66cb97a4f4f802b98e7cf3d0d34ce045b2714ab2
# Tue, 14 Jul 2026 04:57:20 GMT
RUN set -ex;     fetchDeps="         gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 08656443618E6567A39524083EE197EF3F9E4287;         curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz";     curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc";     gpg --batch --verify friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz;     echo "${FRIENDICA_DOWNLOAD_SHA256} *friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz" | sha256sum -c;     tar -xzf friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz -C /usr/src/;     rm friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc;     mv -f /usr/src/friendica-all-in-one-${FRIENDICA_VERSION}/ /usr/src/friendica;     chmod 777 /usr/src/friendica/view/smarty3;         gpgconf --kill all;     rm -rf "$GNUPGHOME";         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:57:20 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 14 Jul 2026 04:57:20 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Tue, 14 Jul 2026 04:57:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 04:57:20 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d8a2297d172d8695bfdc23da99328c20335f9ac835a9cce44d0dd7f41cbf49`  
		Last Modified: Tue, 14 Jul 2026 01:27:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b73ea782a4865a5a88f2ab43d08888c21446fdc7f7e82f14de666dbde0b9ad3f`  
		Last Modified: Tue, 14 Jul 2026 01:27:49 GMT  
		Size: 92.6 MB (92572779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b23cdcbb2b5a0fb374d4028462f5c1acc9059a0db6b28db6bc9369a4f4d1d93`  
		Last Modified: Tue, 14 Jul 2026 01:27:47 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b4a612d797827022f3dd188f090edf0f8a00e5be1a56cdc472c64e49086889`  
		Last Modified: Tue, 14 Jul 2026 01:59:05 GMT  
		Size: 4.3 MB (4332511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df470aade0d976bdb339411bc69b857e56219e4c01cc16831076ae1c7018f53`  
		Last Modified: Tue, 14 Jul 2026 01:59:04 GMT  
		Size: 436.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84dd4c86f8e49dc1c907c883a2e9b0280e2fdff33fe9ee53adc9363143002eeb`  
		Last Modified: Tue, 14 Jul 2026 01:59:04 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5793d0804998942e29f1ad1bd6b265ea9f685a77f3d81487d2eb3cb0bd12353f`  
		Last Modified: Tue, 14 Jul 2026 02:08:15 GMT  
		Size: 12.8 MB (12771160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:894371775d9e63fd36165595c769c9796e0a00138780674efe564b441331b9b4`  
		Last Modified: Tue, 14 Jul 2026 02:08:15 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927c069d60a67c577278fe5c6f174f7c2fda04e338f05e85680a1d2b4771f3c0`  
		Last Modified: Tue, 14 Jul 2026 02:08:15 GMT  
		Size: 11.6 MB (11572799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd327946736bd97439702f1cfd5e2e8d6fbcfb4c4bed4c20096f1154a7a0aa4`  
		Last Modified: Tue, 14 Jul 2026 02:08:15 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0599bbd55855aeca5b445a8d55849aa81151639cfcccdac81c908916e252beca`  
		Last Modified: Tue, 14 Jul 2026 02:08:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e2dbe569c2660f210fb5138f39426b3338d44fa7cdde616e0ff128177b37770`  
		Last Modified: Tue, 14 Jul 2026 02:08:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343d2652f89c0715807e2a07495f52f9aadf9fc89fa1bbb820ab157fbd7d793a`  
		Last Modified: Tue, 14 Jul 2026 02:08:16 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e74622725ab0ea36b18a5f26821f3aa2402d4d2a3ccee92c531997fc21ada4`  
		Last Modified: Tue, 14 Jul 2026 04:57:35 GMT  
		Size: 20.0 MB (20028336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d25429c9289796a14e95f4dad17c4d7611e5873021eef4ae6561a247ff6f424`  
		Last Modified: Tue, 14 Jul 2026 04:57:34 GMT  
		Size: 1.1 MB (1097928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17588a36554d67a3a25077524559fb14ad1c58e5564e850559853a77573b8709`  
		Last Modified: Tue, 14 Jul 2026 04:57:35 GMT  
		Size: 48.1 MB (48100616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6888d14593736a939b46fcbe484edcdcc93f9e57ccf4f63d7f2e46980ba8cc`  
		Last Modified: Tue, 14 Jul 2026 04:57:34 GMT  
		Size: 588.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bef3a41c68d4259d4d6e4e808b4ce61d6dd15008d3f05d11061fd35b71f92abe`  
		Last Modified: Tue, 14 Jul 2026 04:57:35 GMT  
		Size: 583.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87bff3323eff4841a55ffb38a673f13f2536e6cc93b04570a3d7a6d736a40f6d`  
		Last Modified: Tue, 14 Jul 2026 04:57:35 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f5f5d00f4b23aaa16af68ec8186c0ae7da2703d1542fc0cb575367d36a1bfb`  
		Last Modified: Tue, 14 Jul 2026 04:57:37 GMT  
		Size: 58.1 MB (58141915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0716d1ab4a4e550493dba4a6dcd94f01c73f2cfde54670703cd4350b2969c435`  
		Last Modified: Tue, 14 Jul 2026 04:57:36 GMT  
		Size: 3.2 KB (3163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4426e7b4f49b2bdca4f0af29f073157e5346d6ee545016d71af981a4db6412`  
		Last Modified: Tue, 14 Jul 2026 04:57:36 GMT  
		Size: 924.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:latest` - unknown; unknown

```console
$ docker pull friendica@sha256:6085aee28cd35afbb415f7f8d7fd56cdcb0a76117a8404d09170fdcdb14532a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 KB (70294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c69d812bbad06b2a34b60878e9715fe9c7f038990ba036cafa4a477557bbcc8`

```dockerfile
```

-	Layers:
	-	`sha256:c1ae0c49a6eaf8cf84dab166833094af63c517bb4fd0415de869e442f868b85d`  
		Last Modified: Tue, 14 Jul 2026 04:57:34 GMT  
		Size: 70.3 KB (70294 bytes)  
		MIME: application/vnd.in-toto+json
