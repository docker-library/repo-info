## `phpmyadmin:5-apache`

```console
$ docker pull phpmyadmin@sha256:0b38dba8580a95729813799e36623042ac5e23af19d8c50f8003b19f4b980726
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

### `phpmyadmin:5-apache` - linux; amd64

```console
$ docker pull phpmyadmin@sha256:5233e2f32d92386bb5a8ce8b410dd29df30fe259a680ee7c7f579e34d8c27b0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 MB (196630180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c568793e85ab2243a460e2d82fc3981b8a6ba2f832f020dd64686ca6b7db24e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 17:40:55 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Fri, 25 Sep 2026 17:41:12 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 25 Sep 2026 17:41:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Fri, 25 Sep 2026 17:41:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Sep 2026 17:41:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Fri, 25 Sep 2026 17:41:12 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 25 Sep 2026 17:41:12 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 25 Sep 2026 17:41:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Fri, 25 Sep 2026 17:41:18 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Fri, 25 Sep 2026 17:41:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Fri, 25 Sep 2026 17:41:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:41:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:41:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Fri, 25 Sep 2026 17:41:18 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Fri, 25 Sep 2026 17:41:18 GMT
ENV PHP_VERSION=8.3.35
# Fri, 25 Sep 2026 17:41:18 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Fri, 25 Sep 2026 17:41:18 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:41:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 25 Sep 2026 17:41:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:44:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 17:44:00 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:44:01 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 17:44:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 17:44:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:44:01 GMT
STOPSIGNAL SIGWINCH
# Fri, 25 Sep 2026 17:44:01 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:44:01 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:44:01 GMT
EXPOSE map[80/tcp:{}]
# Fri, 25 Sep 2026 17:44:01 GMT
CMD ["apache2-foreground"]
# Fri, 25 Sep 2026 17:49:00 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Fri, 25 Sep 2026 17:49:00 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Fri, 25 Sep 2026 17:49:00 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         gnupg         dirmngr     ;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libbz2-dev         libfreetype6-dev         libjpeg-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     extdir="$(php -r 'echo ini_get("extension_dir");')";     ldd "$extdir"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         a2enmod remoteip;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     ldd "$extdir"/*.so | grep -qzv "=> not found" || (echo "Sanity check failed: missing libraries:"; ldd "$extdir"/*.so | grep " => not found"; exit 1);     ldd "$extdir"/*.so | grep -q "libzip.so.* => .*/libzip.so.*" || (echo "Sanity check failed: libzip.so is not referenced"; ldd "$extdir"/*.so; exit 1);     err="$(php --version 3>&1 1>&2 2>&3)";     [ -z "$err" ] || (echo "Sanity check failed: php returned errors; $err"; exit 1;); # buildkit
# Fri, 25 Sep 2026 17:49:00 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Fri, 25 Sep 2026 17:49:00 GMT
ENV MAX_EXECUTION_TIME=600
# Fri, 25 Sep 2026 17:49:00 GMT
ENV MEMORY_LIMIT=512M
# Fri, 25 Sep 2026 17:49:00 GMT
ENV UPLOAD_LIMIT=2048K
# Fri, 25 Sep 2026 17:49:00 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 17:49:00 GMT
ENV SESSION_SAVE_PATH=/sessions
# Fri, 25 Sep 2026 17:49:01 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Fri, 25 Sep 2026 17:49:01 GMT
USER www-data:www-data
# Fri, 25 Sep 2026 17:49:01 GMT
ENV VERSION=5.2.3
# Fri, 25 Sep 2026 17:49:01 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Fri, 25 Sep 2026 17:49:01 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Fri, 25 Sep 2026 17:49:01 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Fri, 25 Sep 2026 17:49:06 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Fri, 25 Sep 2026 17:49:06 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Fri, 25 Sep 2026 17:49:06 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Fri, 25 Sep 2026 17:49:06 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 25 Sep 2026 17:49:06 GMT
USER root
# Fri, 25 Sep 2026 17:49:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Sep 2026 17:49:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b910ecd85d046c6bc06a046f2706ad61085d7859fd4dafab559eb03339046`  
		Last Modified: Fri, 25 Sep 2026 17:44:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09971b4ee5a4ebdd839bdf57e31d6d47a1c3e1c6a15468e47f44fe48ff5106e3`  
		Last Modified: Fri, 25 Sep 2026 17:44:26 GMT  
		Size: 117.8 MB (117842300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a0198ab6b16b1a008a3c60a5496c2fe0c142b6e743fce9fb416aab6bf069b`  
		Last Modified: Fri, 25 Sep 2026 17:44:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8533c506bb23b4b96e30418aa4664cc4afeca6f6020051b1eb2f3d1bd9c97327`  
		Last Modified: Fri, 25 Sep 2026 17:44:24 GMT  
		Size: 4.2 MB (4239000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b15c39e3310fa07edd8f27d13bff6ac62c683baf822e520fea8ad0a67355635d`  
		Last Modified: Fri, 25 Sep 2026 17:44:24 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c532d54f8f4555ac5822d57d1366e4601f4565958cd75228df8ae601a045b0ec`  
		Last Modified: Fri, 25 Sep 2026 17:44:24 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:834530c845a55cd24297b7515db1a34ea0f7e1ff5dc264f11a0058c310753d69`  
		Last Modified: Fri, 25 Sep 2026 17:44:25 GMT  
		Size: 12.8 MB (12788924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00c79c6b7b776ffa290caf0e1b1acd4680b23cddb496af4ba2eeeb0668426a2`  
		Last Modified: Fri, 25 Sep 2026 17:44:25 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:939b6a903c8c5e6cc654209cf59ae5906a913da6e1e32bff11e4cc300735bcbb`  
		Last Modified: Fri, 25 Sep 2026 17:44:26 GMT  
		Size: 11.7 MB (11716604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee74a811685e5c97835fb778de4fb387c8b02cf46df16915638838e7e2cfcab`  
		Last Modified: Fri, 25 Sep 2026 17:44:27 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc2cf73ae722feafbaa14ddbc885f5a69491c5ddd146abf360430c731e1f1f3`  
		Last Modified: Fri, 25 Sep 2026 17:44:27 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf03d4653271605c25bba12908d738e145248e3e6d0a53d1c69084126370e4f`  
		Last Modified: Fri, 25 Sep 2026 17:44:27 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05daf697fe842e5f4d9b36fb804a9a2f11807baac7db0626bdf854a75c5308a3`  
		Last Modified: Fri, 25 Sep 2026 17:44:28 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4986caa5e254478ec86149d0903489eb3bdf136d46ede1a4449395a93fe20af`  
		Last Modified: Fri, 25 Sep 2026 17:49:12 GMT  
		Size: 6.1 MB (6115090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fe5c748b740b255f6a46b1ff4b9c1731a2e3be9b4973011ab9b9a69c3e6bfcb`  
		Last Modified: Fri, 25 Sep 2026 17:49:12 GMT  
		Size: 651.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d01aaf0da681e2d138fab9889348259ff5571b0fa16db2736001427534955ac0`  
		Last Modified: Fri, 25 Sep 2026 17:49:13 GMT  
		Size: 14.1 MB (14087523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:226fc126eb0192c90ee581e29301faae68433487b7d624f5bf11ae44a8e1b3f9`  
		Last Modified: Fri, 25 Sep 2026 17:49:12 GMT  
		Size: 2.1 KB (2141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c96c22d1ff05d498d5007a7e85dc87f81b38540454f52e6a3cf20429cae86c9`  
		Last Modified: Fri, 25 Sep 2026 17:49:13 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbaa16986d58c616940f70f8168a7f0f13deca2f182eddc553d8f4fbdbc184ba`  
		Last Modified: Fri, 25 Sep 2026 17:49:13 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:5-apache` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:c5361ab655c4b812aac02565b6af50eda917b0e436f723add4566c6bb07f795e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 KB (51584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd7d7093c70df256f7f9be039cfc89ff06534bd769ac7e5b360100428f6a2b5f`

```dockerfile
```

-	Layers:
	-	`sha256:1423780d07bcf43da098efd3a06500cbe9cadef5df8dbc19701d0b5b70cbf090`  
		Last Modified: Fri, 25 Sep 2026 17:49:12 GMT  
		Size: 51.6 KB (51584 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:5-apache` - linux; arm variant v5

```console
$ docker pull phpmyadmin@sha256:e2a52574c03f3c8b3a7bf7dbd30c62f9b921181e8abaeaeac27652ce10881d2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.7 MB (169669877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f44dc994bd9490a3454ea9be54d8e231a635641e35d2ba0f831ef278f839a1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 17:40:08 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Fri, 25 Sep 2026 17:40:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 25 Sep 2026 17:40:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Fri, 25 Sep 2026 17:40:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Sep 2026 17:40:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Fri, 25 Sep 2026 17:40:31 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 25 Sep 2026 17:40:31 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 25 Sep 2026 17:40:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Fri, 25 Sep 2026 17:40:41 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Fri, 25 Sep 2026 17:40:41 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Fri, 25 Sep 2026 17:40:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:40:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:40:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Fri, 25 Sep 2026 17:40:41 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Fri, 25 Sep 2026 17:40:41 GMT
ENV PHP_VERSION=8.3.35
# Fri, 25 Sep 2026 17:40:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Fri, 25 Sep 2026 17:40:41 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:40:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 25 Sep 2026 17:40:54 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:43:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 17:43:53 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:43:53 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 17:43:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 17:43:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:43:53 GMT
STOPSIGNAL SIGWINCH
# Fri, 25 Sep 2026 17:43:53 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:43:53 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:43:53 GMT
EXPOSE map[80/tcp:{}]
# Fri, 25 Sep 2026 17:43:53 GMT
CMD ["apache2-foreground"]
# Fri, 25 Sep 2026 18:09:11 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Fri, 25 Sep 2026 18:09:11 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Fri, 25 Sep 2026 18:09:11 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         gnupg         dirmngr     ;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libbz2-dev         libfreetype6-dev         libjpeg-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     extdir="$(php -r 'echo ini_get("extension_dir");')";     ldd "$extdir"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         a2enmod remoteip;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     ldd "$extdir"/*.so | grep -qzv "=> not found" || (echo "Sanity check failed: missing libraries:"; ldd "$extdir"/*.so | grep " => not found"; exit 1);     ldd "$extdir"/*.so | grep -q "libzip.so.* => .*/libzip.so.*" || (echo "Sanity check failed: libzip.so is not referenced"; ldd "$extdir"/*.so; exit 1);     err="$(php --version 3>&1 1>&2 2>&3)";     [ -z "$err" ] || (echo "Sanity check failed: php returned errors; $err"; exit 1;); # buildkit
# Fri, 25 Sep 2026 18:09:11 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Fri, 25 Sep 2026 18:09:11 GMT
ENV MAX_EXECUTION_TIME=600
# Fri, 25 Sep 2026 18:09:11 GMT
ENV MEMORY_LIMIT=512M
# Fri, 25 Sep 2026 18:09:11 GMT
ENV UPLOAD_LIMIT=2048K
# Fri, 25 Sep 2026 18:09:11 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 18:09:11 GMT
ENV SESSION_SAVE_PATH=/sessions
# Fri, 25 Sep 2026 18:09:11 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Fri, 25 Sep 2026 18:09:11 GMT
USER www-data:www-data
# Fri, 25 Sep 2026 18:09:11 GMT
ENV VERSION=5.2.3
# Fri, 25 Sep 2026 18:09:11 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Fri, 25 Sep 2026 18:09:11 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Fri, 25 Sep 2026 18:09:11 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Fri, 25 Sep 2026 18:09:17 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Fri, 25 Sep 2026 18:09:17 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Fri, 25 Sep 2026 18:09:17 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Fri, 25 Sep 2026 18:09:17 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 25 Sep 2026 18:09:17 GMT
USER root
# Fri, 25 Sep 2026 18:09:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Sep 2026 18:09:17 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab5d23f82f3a70bd8b22e1a2ca943462c9fa62f3c27f4e8552112140662bd4d`  
		Last Modified: Fri, 25 Sep 2026 17:44:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af7a164c706c96a4ada6dddf2fad4e47501f9575a5a6af4e84b4a7f51e036ff4`  
		Last Modified: Fri, 25 Sep 2026 17:44:14 GMT  
		Size: 94.9 MB (94876763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e0727708f9aa6e6b332f481da2c81bc3cf80c699bda1e54cea09d8f665c8a10`  
		Last Modified: Fri, 25 Sep 2026 17:44:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2861ccb39fb2c553066e999e506c3c31fff054bfd2b0cf8184cd8c9d61be3f74`  
		Last Modified: Fri, 25 Sep 2026 17:44:13 GMT  
		Size: 4.1 MB (4097333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:302253bacbed99ecd6e516875ccb34598e809e301b301be10b5b081cb310770c`  
		Last Modified: Fri, 25 Sep 2026 17:44:13 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca08c42fb25918669b591aac66afa8e953e2da56a97375443ab95a8cbda177d3`  
		Last Modified: Fri, 25 Sep 2026 17:44:13 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19eb852cccbe26c8ba2e555298f9785d66647ce6d4394ca356728bb6e678270`  
		Last Modified: Fri, 25 Sep 2026 17:44:14 GMT  
		Size: 12.8 MB (12786425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2681147ae9eb48be0692f1e9706d703e617247ef0201af57761d9a8cfd60ea4a`  
		Last Modified: Fri, 25 Sep 2026 17:44:14 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6b83ab63affbdcbc69d5823360ad3f6663e4ad492a5ebfa7160fb58c81af74`  
		Last Modified: Fri, 25 Sep 2026 17:44:15 GMT  
		Size: 10.6 MB (10607135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e437bce5e53731515ede0f242a0ecb66fe444483575fb22df6e49254841caab2`  
		Last Modified: Fri, 25 Sep 2026 17:44:15 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31f6ecb072e6a02b95f4c98d81a017f20dfab9fed36fd35e96c743abd0dc6b2`  
		Last Modified: Fri, 25 Sep 2026 17:44:16 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bef8ed3a4f2b1fadaa0ef5469ed0947d424e59158a1862cc28b3f11a9416b38`  
		Last Modified: Fri, 25 Sep 2026 17:44:16 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0bde03726d345730ecc35166a7f1cd52cb79042efe2fc25810f033b9e18e478`  
		Last Modified: Fri, 25 Sep 2026 17:44:16 GMT  
		Size: 888.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99bfd83b8ce68d3bb236e08ab7e1aef7e8d9778d6a29caddb46617d8497f0431`  
		Last Modified: Fri, 25 Sep 2026 18:09:23 GMT  
		Size: 5.2 MB (5206333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9565372c453e358c052f62448e85942fbf0b040ff908127ac42114b188bba12`  
		Last Modified: Fri, 25 Sep 2026 18:09:23 GMT  
		Size: 652.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc5113145147e8ab01b60e7c6d3e5933ff9722e309a8e415894a871a09384a15`  
		Last Modified: Fri, 25 Sep 2026 18:09:24 GMT  
		Size: 14.1 MB (14087533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f28d1390b7bbcf0a98d1dcf717ec3154b1951dc5981e5871c604dd196eb429c`  
		Last Modified: Fri, 25 Sep 2026 18:09:23 GMT  
		Size: 2.1 KB (2137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2a7d6a7ea24bb65be54290e4f67de51e028ad9753064f4d6d0b21ba7962b2a`  
		Last Modified: Fri, 25 Sep 2026 18:09:25 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de90ad4ae3ed1236b4ed4db5030c69e8a44cc537e0be75e58828315f3a0b96cf`  
		Last Modified: Fri, 25 Sep 2026 18:09:25 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:5-apache` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:31989303bbf565430a7efcb22bb71849529c783cdd62d9aafb397ead54caa858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 KB (51715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3feb9e58d4a63950763162f6319ae13c1b69744ad014c2907a9ca019f07fd3bb`

```dockerfile
```

-	Layers:
	-	`sha256:1229cb51012462b6b6f98434a6ab43506c1fa24030f2b1af282bf15f1e87bd26`  
		Last Modified: Fri, 25 Sep 2026 18:09:23 GMT  
		Size: 51.7 KB (51715 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:5-apache` - linux; arm variant v7

```console
$ docker pull phpmyadmin@sha256:fc8cc6db0ad91af88922263d835b8472c6194b0b5ef5bee9b897d04ed24fd60a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158044645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fbd969ba086904eb024c6ae19a01268f0855a10bd06fd31874e1b08a7da385b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 17:44:11 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Fri, 25 Sep 2026 17:44:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 25 Sep 2026 17:44:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Fri, 25 Sep 2026 17:44:28 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Sep 2026 17:44:28 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Fri, 25 Sep 2026 17:44:28 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 25 Sep 2026 17:44:28 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 25 Sep 2026 17:44:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Fri, 25 Sep 2026 17:44:35 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Fri, 25 Sep 2026 17:44:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Fri, 25 Sep 2026 17:44:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:44:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:44:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Fri, 25 Sep 2026 17:44:35 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Fri, 25 Sep 2026 17:44:35 GMT
ENV PHP_VERSION=8.3.35
# Fri, 25 Sep 2026 17:44:35 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Fri, 25 Sep 2026 17:44:35 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:44:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 25 Sep 2026 17:44:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:47:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 17:47:24 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:47:24 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 17:47:24 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 17:47:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:47:24 GMT
STOPSIGNAL SIGWINCH
# Fri, 25 Sep 2026 17:47:24 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:47:24 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:47:24 GMT
EXPOSE map[80/tcp:{}]
# Fri, 25 Sep 2026 17:47:24 GMT
CMD ["apache2-foreground"]
# Fri, 25 Sep 2026 17:56:47 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Fri, 25 Sep 2026 17:56:47 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Fri, 25 Sep 2026 17:56:47 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         gnupg         dirmngr     ;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libbz2-dev         libfreetype6-dev         libjpeg-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     extdir="$(php -r 'echo ini_get("extension_dir");')";     ldd "$extdir"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         a2enmod remoteip;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     ldd "$extdir"/*.so | grep -qzv "=> not found" || (echo "Sanity check failed: missing libraries:"; ldd "$extdir"/*.so | grep " => not found"; exit 1);     ldd "$extdir"/*.so | grep -q "libzip.so.* => .*/libzip.so.*" || (echo "Sanity check failed: libzip.so is not referenced"; ldd "$extdir"/*.so; exit 1);     err="$(php --version 3>&1 1>&2 2>&3)";     [ -z "$err" ] || (echo "Sanity check failed: php returned errors; $err"; exit 1;); # buildkit
# Fri, 25 Sep 2026 17:56:47 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Fri, 25 Sep 2026 17:56:47 GMT
ENV MAX_EXECUTION_TIME=600
# Fri, 25 Sep 2026 17:56:47 GMT
ENV MEMORY_LIMIT=512M
# Fri, 25 Sep 2026 17:56:47 GMT
ENV UPLOAD_LIMIT=2048K
# Fri, 25 Sep 2026 17:56:47 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 17:56:47 GMT
ENV SESSION_SAVE_PATH=/sessions
# Fri, 25 Sep 2026 17:56:47 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Fri, 25 Sep 2026 17:56:47 GMT
USER www-data:www-data
# Fri, 25 Sep 2026 17:56:47 GMT
ENV VERSION=5.2.3
# Fri, 25 Sep 2026 17:56:47 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Fri, 25 Sep 2026 17:56:47 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Fri, 25 Sep 2026 17:56:47 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Fri, 25 Sep 2026 17:56:53 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Fri, 25 Sep 2026 17:56:53 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Fri, 25 Sep 2026 17:56:53 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Fri, 25 Sep 2026 17:56:53 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 25 Sep 2026 17:56:53 GMT
USER root
# Fri, 25 Sep 2026 17:56:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Sep 2026 17:56:53 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ddb4444b1a8e0cccea56b5ac0328701db9a253db156addd7afd40a543d567e`  
		Last Modified: Fri, 25 Sep 2026 17:47:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf24f8c9598af939b48ed273a993fbcce48d9a4ba9b8baa9eec68782b79adac`  
		Last Modified: Fri, 25 Sep 2026 17:47:44 GMT  
		Size: 86.3 MB (86264702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7ce729a698860950ccce83a491d3364d4e27381c909af8cb759101d1c1d230a`  
		Last Modified: Fri, 25 Sep 2026 17:47:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86566e05e61d9cf2156d36e45b9848e27e0877eec7f6f3bfbbef61a1d267bd0`  
		Last Modified: Fri, 25 Sep 2026 17:47:41 GMT  
		Size: 3.8 MB (3763855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9946f1aff3357ef1b1501efcfc3e38ba635a208ba0d0f6975fd1edad964ec1`  
		Last Modified: Fri, 25 Sep 2026 17:47:42 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d71c82528dc309986bfab5760338c3450fd2207b62c0e5708e23b4435e5786f`  
		Last Modified: Fri, 25 Sep 2026 17:47:42 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:842e3a3963c3f572642a30a51b51f364f69f301a8d4148d7184fc45a551e67eb`  
		Last Modified: Fri, 25 Sep 2026 17:47:43 GMT  
		Size: 12.8 MB (12786497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db01165dc1b78ed558069a40ca8a13fd530db40613b62348139bd71ca395a0d`  
		Last Modified: Fri, 25 Sep 2026 17:47:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063cd99eaf7877512fec6c6ae2a42dea486dbece7cee2a304244110dc780f658`  
		Last Modified: Fri, 25 Sep 2026 17:47:44 GMT  
		Size: 10.1 MB (10075657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62081ff07503889590ecaab5746e1df3798f398a1f39addb9c4763498c3ddc73`  
		Last Modified: Fri, 25 Sep 2026 17:47:44 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca8a8974f2cdba4becb0d43dfaf248ba4d4212ffdc6173448e18d4f3b3f393c`  
		Last Modified: Fri, 25 Sep 2026 17:47:45 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c5773a4b4174f1d64b70f985c242e6ad3ef17330f6aaedf2d824cd939e9084`  
		Last Modified: Fri, 25 Sep 2026 17:47:45 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8b3fdb21556e7f384f39f8a7f01bc355d5ef24ec68a2737750897726dceb51`  
		Last Modified: Fri, 25 Sep 2026 17:47:45 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d888a66a02547e9a6748fa9ea8d91cfe3a6e5c6cbac01eb736569e5a3bf3848`  
		Last Modified: Fri, 25 Sep 2026 17:56:59 GMT  
		Size: 4.8 MB (4807094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0724118ab29e519b3f4dcd430a7b2b01dd878ffefdae7db724e7f5f435756944`  
		Last Modified: Fri, 25 Sep 2026 17:56:59 GMT  
		Size: 652.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efba0d34609dced67e45f3fb4dad51765e649eeb7b36b8c0f447ce5e17e4723b`  
		Last Modified: Fri, 25 Sep 2026 17:57:00 GMT  
		Size: 14.1 MB (14087580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5106cbf75b7a96cef053d643371a28bc8d680c8a949df1c0d72504fa529ed84`  
		Last Modified: Fri, 25 Sep 2026 17:56:59 GMT  
		Size: 2.1 KB (2141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc1591859225f16ae57c671e8d9223a75623b2679470cc56e8954c25275d7ef7`  
		Last Modified: Fri, 25 Sep 2026 17:57:00 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b6420ff1022717d86f91e7277ef30169d6bc5b7a4c3231d97c11e616396467`  
		Last Modified: Fri, 25 Sep 2026 17:57:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:5-apache` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:b8d74fa508c62eef1eaefb768a160afcc0e630ecded89aa9d3f3111e0f005974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 KB (51715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39c595fc93ef291b2c71f35208c9ec0d706be0d9702271a087ac0bb7793417c7`

```dockerfile
```

-	Layers:
	-	`sha256:0105fa7d330807e8a13e374f7a94b27ef78d12919f9079091434ef677512ac43`  
		Last Modified: Fri, 25 Sep 2026 17:56:59 GMT  
		Size: 51.7 KB (51715 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:5-apache` - linux; arm64 variant v8

```console
$ docker pull phpmyadmin@sha256:90776f584122c4d3711fdd1a2e760be4c390067845c64a528af97625129ac1c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189532856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec3df1c0f4a0825337d57019d4a0a32e34536de671af5fc0c3f89fec068ee9a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 17:40:44 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Fri, 25 Sep 2026 17:41:02 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 25 Sep 2026 17:41:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Fri, 25 Sep 2026 17:41:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Sep 2026 17:41:02 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Fri, 25 Sep 2026 17:41:02 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 25 Sep 2026 17:41:02 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 25 Sep 2026 17:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Fri, 25 Sep 2026 17:41:08 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Fri, 25 Sep 2026 17:41:08 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Fri, 25 Sep 2026 17:41:08 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:41:08 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:41:08 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Fri, 25 Sep 2026 17:41:08 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Fri, 25 Sep 2026 17:41:08 GMT
ENV PHP_VERSION=8.3.35
# Fri, 25 Sep 2026 17:41:08 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Fri, 25 Sep 2026 17:41:08 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:41:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 25 Sep 2026 17:41:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:45:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 17:45:03 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:45:03 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 17:45:03 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 17:45:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:45:03 GMT
STOPSIGNAL SIGWINCH
# Fri, 25 Sep 2026 17:45:03 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:45:03 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:45:03 GMT
EXPOSE map[80/tcp:{}]
# Fri, 25 Sep 2026 17:45:03 GMT
CMD ["apache2-foreground"]
# Fri, 25 Sep 2026 17:52:19 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Fri, 25 Sep 2026 17:52:19 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Fri, 25 Sep 2026 17:52:19 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         gnupg         dirmngr     ;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libbz2-dev         libfreetype6-dev         libjpeg-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     extdir="$(php -r 'echo ini_get("extension_dir");')";     ldd "$extdir"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         a2enmod remoteip;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     ldd "$extdir"/*.so | grep -qzv "=> not found" || (echo "Sanity check failed: missing libraries:"; ldd "$extdir"/*.so | grep " => not found"; exit 1);     ldd "$extdir"/*.so | grep -q "libzip.so.* => .*/libzip.so.*" || (echo "Sanity check failed: libzip.so is not referenced"; ldd "$extdir"/*.so; exit 1);     err="$(php --version 3>&1 1>&2 2>&3)";     [ -z "$err" ] || (echo "Sanity check failed: php returned errors; $err"; exit 1;); # buildkit
# Fri, 25 Sep 2026 17:52:19 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Fri, 25 Sep 2026 17:52:19 GMT
ENV MAX_EXECUTION_TIME=600
# Fri, 25 Sep 2026 17:52:19 GMT
ENV MEMORY_LIMIT=512M
# Fri, 25 Sep 2026 17:52:19 GMT
ENV UPLOAD_LIMIT=2048K
# Fri, 25 Sep 2026 17:52:19 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 17:52:19 GMT
ENV SESSION_SAVE_PATH=/sessions
# Fri, 25 Sep 2026 17:52:19 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Fri, 25 Sep 2026 17:52:19 GMT
USER www-data:www-data
# Fri, 25 Sep 2026 17:52:19 GMT
ENV VERSION=5.2.3
# Fri, 25 Sep 2026 17:52:19 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Fri, 25 Sep 2026 17:52:19 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Fri, 25 Sep 2026 17:52:19 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Fri, 25 Sep 2026 17:52:24 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Fri, 25 Sep 2026 17:52:24 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Fri, 25 Sep 2026 17:52:25 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Fri, 25 Sep 2026 17:52:25 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 25 Sep 2026 17:52:25 GMT
USER root
# Fri, 25 Sep 2026 17:52:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Sep 2026 17:52:25 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43fdd3969ebb57dc397dd5bb2c9f97646e4b3a946964a718285ac4006d82554`  
		Last Modified: Fri, 25 Sep 2026 17:45:24 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d535c00af1229f866a17e1c585936ac1f2f64d37a25fcdc4a137b58914adb6a5`  
		Last Modified: Fri, 25 Sep 2026 17:45:27 GMT  
		Size: 110.2 MB (110179094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3c71c49ad4b3288f0b3850390b396ea39cc194f857cda8b62598f767aa16bd`  
		Last Modified: Fri, 25 Sep 2026 17:45:24 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f174333db04a9bd275fe1e317c91014ec3084890b31c1c8a68d1796a78712b11`  
		Last Modified: Fri, 25 Sep 2026 17:45:24 GMT  
		Size: 4.3 MB (4314397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7e1ed15fe1f5340c2b188d8497b7767db17048cf972e0530d42a15c0dc65fe`  
		Last Modified: Fri, 25 Sep 2026 17:45:25 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8185f8bdcdf4e21ce64e080ef78a9cf23105315a3dd71ec347a1f4026044fc14`  
		Last Modified: Fri, 25 Sep 2026 17:45:25 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b81d8a476d7c7adfd9b115a4c13072af12ff44b6866f029563f707c07927a0c1`  
		Last Modified: Fri, 25 Sep 2026 17:45:26 GMT  
		Size: 12.8 MB (12788565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd76dba2119c0e3275527e8eff6207d626ec9d99cb0559ce6e8605baba04a9db`  
		Last Modified: Fri, 25 Sep 2026 17:45:26 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7ab72366f61567d7fb837f3b6c2a9b837c81946b8be06c036b47de3f43b8fc4`  
		Last Modified: Fri, 25 Sep 2026 17:45:27 GMT  
		Size: 11.7 MB (11734894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b4e6ab4ff299b23739034d4f4e3dcbd13f5452cdf1e168c23669c87c673036`  
		Last Modified: Fri, 25 Sep 2026 17:45:27 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63d85a41b42bec6ca13a1265d26f26b62975711405eb41904e85197ae269072`  
		Last Modified: Fri, 25 Sep 2026 17:45:28 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d073503b7950f8f03453346817defaa5a2cd171605c6a43d5c49df3e5f84ec00`  
		Last Modified: Fri, 25 Sep 2026 17:45:28 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cf0b608d3e405faef8c6235b5e891cbdfc188fa1840bd05eb775516093a4f7`  
		Last Modified: Fri, 25 Sep 2026 17:45:29 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe00e21496b68ebc8bfc4dec5a1a65792e41f4f00e17664286619b6152b13a2`  
		Last Modified: Fri, 25 Sep 2026 17:52:31 GMT  
		Size: 6.2 MB (6228352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d8cfc638f087a0b941c7c884cb27ce91e6942164ef617433647aef8555e168`  
		Last Modified: Fri, 25 Sep 2026 17:52:31 GMT  
		Size: 652.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e34400d307990ff5175c0883ec83a0ce7e6b8ee8a2c4d0f33685a3f114d23406`  
		Last Modified: Fri, 25 Sep 2026 17:52:31 GMT  
		Size: 14.1 MB (14087533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5c8a361246ff2c6491f0a710ba8330f9ba34be10a00eb615f00af69ba32ce5d`  
		Last Modified: Fri, 25 Sep 2026 17:52:31 GMT  
		Size: 2.1 KB (2138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4adb266561a9e3aee3e7b79cad48c9946fca9a5a872e23fcf31f583e7a19b027`  
		Last Modified: Fri, 25 Sep 2026 17:52:32 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f13ab3dca40a22d61c7916f5d2b1e140b01d9b8c4bfca673ff385ae211ec55`  
		Last Modified: Fri, 25 Sep 2026 17:52:32 GMT  
		Size: 945.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:5-apache` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:417de7788790471124a7c65da2d75edb54cfb2a6e5de2814baf4d5ff04d9cf52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 KB (51766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24da09ad47873fa6d3a69919cf39d5c0ea95ad2bcd31f9d85d672d3ad5e80ba2`

```dockerfile
```

-	Layers:
	-	`sha256:2f8cec136eb80bc8b97b05a83074c5ac174667d9a4c4cdf479195b0ed420072f`  
		Last Modified: Fri, 25 Sep 2026 17:52:31 GMT  
		Size: 51.8 KB (51766 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:5-apache` - linux; 386

```console
$ docker pull phpmyadmin@sha256:f45396132ba5b9513dd71589e0152753bbda3bd38b9e11af862e5cc3f0ff3e41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 MB (197161975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b773e40082e7c47901ba7a9420c02ba73daeb8a62155ca3183718c1d2b67777d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 17:40:49 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Fri, 25 Sep 2026 17:41:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 25 Sep 2026 17:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Fri, 25 Sep 2026 17:41:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Sep 2026 17:41:08 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Fri, 25 Sep 2026 17:41:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 25 Sep 2026 17:41:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 25 Sep 2026 17:41:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Fri, 25 Sep 2026 17:41:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Fri, 25 Sep 2026 17:41:15 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Fri, 25 Sep 2026 17:41:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:41:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:41:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Fri, 25 Sep 2026 17:41:15 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Fri, 25 Sep 2026 17:41:15 GMT
ENV PHP_VERSION=8.3.35
# Fri, 25 Sep 2026 17:41:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Fri, 25 Sep 2026 17:41:15 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:41:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 25 Sep 2026 17:41:24 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:44:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 17:44:19 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:44:19 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 17:44:19 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 17:44:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:44:19 GMT
STOPSIGNAL SIGWINCH
# Fri, 25 Sep 2026 17:44:19 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:44:19 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:44:19 GMT
EXPOSE map[80/tcp:{}]
# Fri, 25 Sep 2026 17:44:19 GMT
CMD ["apache2-foreground"]
# Fri, 25 Sep 2026 17:49:22 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Fri, 25 Sep 2026 17:49:22 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Fri, 25 Sep 2026 17:49:22 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         gnupg         dirmngr     ;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libbz2-dev         libfreetype6-dev         libjpeg-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     extdir="$(php -r 'echo ini_get("extension_dir");')";     ldd "$extdir"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         a2enmod remoteip;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     ldd "$extdir"/*.so | grep -qzv "=> not found" || (echo "Sanity check failed: missing libraries:"; ldd "$extdir"/*.so | grep " => not found"; exit 1);     ldd "$extdir"/*.so | grep -q "libzip.so.* => .*/libzip.so.*" || (echo "Sanity check failed: libzip.so is not referenced"; ldd "$extdir"/*.so; exit 1);     err="$(php --version 3>&1 1>&2 2>&3)";     [ -z "$err" ] || (echo "Sanity check failed: php returned errors; $err"; exit 1;); # buildkit
# Fri, 25 Sep 2026 17:49:22 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Fri, 25 Sep 2026 17:49:22 GMT
ENV MAX_EXECUTION_TIME=600
# Fri, 25 Sep 2026 17:49:22 GMT
ENV MEMORY_LIMIT=512M
# Fri, 25 Sep 2026 17:49:22 GMT
ENV UPLOAD_LIMIT=2048K
# Fri, 25 Sep 2026 17:49:22 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 17:49:22 GMT
ENV SESSION_SAVE_PATH=/sessions
# Fri, 25 Sep 2026 17:49:22 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Fri, 25 Sep 2026 17:49:22 GMT
USER www-data:www-data
# Fri, 25 Sep 2026 17:49:22 GMT
ENV VERSION=5.2.3
# Fri, 25 Sep 2026 17:49:22 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Fri, 25 Sep 2026 17:49:22 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Fri, 25 Sep 2026 17:49:22 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Fri, 25 Sep 2026 17:49:27 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Fri, 25 Sep 2026 17:49:27 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Fri, 25 Sep 2026 17:49:28 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Fri, 25 Sep 2026 17:49:28 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 25 Sep 2026 17:49:28 GMT
USER root
# Fri, 25 Sep 2026 17:49:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Sep 2026 17:49:28 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca8acf39aaf5a0e1320e8590b64fc0b06071ec22a018fed20af5273caa54d760`  
		Last Modified: Fri, 25 Sep 2026 17:44:40 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ccb542228d86bcd0cdd8ea4d05237534ea5e6bef9e6724e0e076f40c529bb5`  
		Last Modified: Fri, 25 Sep 2026 17:44:43 GMT  
		Size: 116.1 MB (116148462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b874e987faf4fab7793084a6545c4830e2c031a72f9bf05dd1a83555079b1bd4`  
		Last Modified: Fri, 25 Sep 2026 17:44:40 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9706420d1244c448059521ec8a707a9ad9df999dbe3da6ba3f294589b66a03f5`  
		Last Modified: Fri, 25 Sep 2026 17:44:40 GMT  
		Size: 4.5 MB (4471247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cbe21f6baf98ad6583aacfa14a2488088bda68e7e0c8ddf42ced9de1cddc448`  
		Last Modified: Fri, 25 Sep 2026 17:44:41 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e020082f9f6a9ac1fded9f5fe3a82b2887c1fbed219d142c764a39b57b2bfb`  
		Last Modified: Fri, 25 Sep 2026 17:44:41 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c506063b5146208a2476699105aee828afb0c06956c16c857d756274998a696`  
		Last Modified: Fri, 25 Sep 2026 17:44:42 GMT  
		Size: 12.8 MB (12787869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ae805a27d37ba99c07972a191361f147bff3eb40d8906ae24b011ce8e23413`  
		Last Modified: Fri, 25 Sep 2026 17:44:42 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e40c043807390eb120943909cfead55d9b6b8cbf5e198ae66dc401e98d0fd73c`  
		Last Modified: Fri, 25 Sep 2026 17:44:43 GMT  
		Size: 12.0 MB (11979269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c93854a16c51e4832643fce69f17f9647e265108af3e5661739384717317a99`  
		Last Modified: Fri, 25 Sep 2026 17:44:43 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4453cddb32dab97b2d40a54342a2e4e00eea5cad59bc78dd69a07897326ebf`  
		Last Modified: Fri, 25 Sep 2026 17:44:43 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9290132a9c0358ad7978e04f5f761421acf73a906389ffb89250fd779bea5b66`  
		Last Modified: Fri, 25 Sep 2026 17:44:44 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21bb2d85a570fc383bfee8ef8933fab785c739edda24c58d2a4aebb317c45a81`  
		Last Modified: Fri, 25 Sep 2026 17:44:44 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66895f58575007a6f06b6b48b77aeb42fe9de04719b4043dbfcca93d3159d85`  
		Last Modified: Fri, 25 Sep 2026 17:49:34 GMT  
		Size: 6.3 MB (6336843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd97aa29f8aa1ede2731a3d42c4e0003b892365da4606211751306b906e52957`  
		Last Modified: Fri, 25 Sep 2026 17:49:34 GMT  
		Size: 651.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3173b57c6227bc67345f36c5cfbdae7af79d9567bdc1e482ba56fd5c9b4eece`  
		Last Modified: Fri, 25 Sep 2026 17:49:34 GMT  
		Size: 14.1 MB (14087554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fcff9acb025c5b824df0507a6120375a30008a978cf21815fd0ef59b34f4f11`  
		Last Modified: Fri, 25 Sep 2026 17:49:34 GMT  
		Size: 2.1 KB (2138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5252f68d1ac4d7c0da34996f410ed457f816bacfb55144bc922f319cc43f90c`  
		Last Modified: Fri, 25 Sep 2026 17:49:35 GMT  
		Size: 860.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ba34faa9df7bf696135ae305a96b14b47cef405cc2c6c2ead2a53e11c429e5`  
		Last Modified: Fri, 25 Sep 2026 17:49:35 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:5-apache` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:1ca1ee1d0ff4dcc82db6a284acf2a3f73f3e8e8a1de141f5a3e508d039d505c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 KB (51528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:224e52f2e318d16a9c0f35413989479f0ef1ab59931fdcf3ec85da01df2cccc3`

```dockerfile
```

-	Layers:
	-	`sha256:253ccfc898d52e0f844b2f4b96c28063a0d51b3b8b14188d42d931e80cf2cc1f`  
		Last Modified: Fri, 25 Sep 2026 17:49:33 GMT  
		Size: 51.5 KB (51528 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:5-apache` - linux; ppc64le

```console
$ docker pull phpmyadmin@sha256:ae377db3cd6d0ce37ed29306090f7d1ed671f52a9bfd031960e4e6ca458e3476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193678557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7f97593943b8a70b40c1bd9726ede97d7bd91bda0488b8dba68bafd3be4c01`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_VERSION=8.3.35
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:39:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 25 Sep 2026 17:39:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:44:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 17:44:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:44:31 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 17:44:32 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 17:44:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:44:32 GMT
STOPSIGNAL SIGWINCH
# Fri, 25 Sep 2026 17:44:32 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:44:34 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:44:34 GMT
EXPOSE map[80/tcp:{}]
# Fri, 25 Sep 2026 17:44:34 GMT
CMD ["apache2-foreground"]
# Fri, 25 Sep 2026 18:22:38 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Fri, 25 Sep 2026 18:22:38 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Fri, 25 Sep 2026 18:22:38 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         gnupg         dirmngr     ;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libbz2-dev         libfreetype6-dev         libjpeg-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     extdir="$(php -r 'echo ini_get("extension_dir");')";     ldd "$extdir"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         a2enmod remoteip;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     ldd "$extdir"/*.so | grep -qzv "=> not found" || (echo "Sanity check failed: missing libraries:"; ldd "$extdir"/*.so | grep " => not found"; exit 1);     ldd "$extdir"/*.so | grep -q "libzip.so.* => .*/libzip.so.*" || (echo "Sanity check failed: libzip.so is not referenced"; ldd "$extdir"/*.so; exit 1);     err="$(php --version 3>&1 1>&2 2>&3)";     [ -z "$err" ] || (echo "Sanity check failed: php returned errors; $err"; exit 1;); # buildkit
# Fri, 25 Sep 2026 18:22:38 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Fri, 25 Sep 2026 18:22:38 GMT
ENV MAX_EXECUTION_TIME=600
# Fri, 25 Sep 2026 18:22:38 GMT
ENV MEMORY_LIMIT=512M
# Fri, 25 Sep 2026 18:22:38 GMT
ENV UPLOAD_LIMIT=2048K
# Fri, 25 Sep 2026 18:22:38 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 18:22:38 GMT
ENV SESSION_SAVE_PATH=/sessions
# Fri, 25 Sep 2026 18:22:39 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Fri, 25 Sep 2026 18:22:39 GMT
USER www-data:www-data
# Fri, 25 Sep 2026 18:22:39 GMT
ENV VERSION=5.2.3
# Fri, 25 Sep 2026 18:22:39 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Fri, 25 Sep 2026 18:22:39 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Fri, 25 Sep 2026 18:22:39 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Fri, 25 Sep 2026 18:22:50 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Fri, 25 Sep 2026 18:22:50 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Fri, 25 Sep 2026 18:22:51 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Fri, 25 Sep 2026 18:22:51 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 25 Sep 2026 18:22:51 GMT
USER root
# Fri, 25 Sep 2026 18:22:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Sep 2026 18:22:51 GMT
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
	-	`sha256:ccaba9cc0e0b025fdea55419cc0b7c4bf08de880ef6a587f832dda36ebfae0c2`  
		Last Modified: Fri, 25 Sep 2026 17:45:00 GMT  
		Size: 12.8 MB (12803830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6627c585bb46dcba89e5c037db5773cfc117415c1712b3eaebf289987370497b`  
		Last Modified: Fri, 25 Sep 2026 17:45:00 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfa2f017e08e9e0c826c350cf34cd487c97f53d16306882e6780dfcf6881c945`  
		Last Modified: Fri, 25 Sep 2026 17:45:00 GMT  
		Size: 12.1 MB (12127027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00c1f19ad9fde788f79152cec416f10b891e880d9279cb831ace0624958ae8b`  
		Last Modified: Fri, 25 Sep 2026 17:45:00 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f30573da578aaf171187964be5b0a0b9b9256d9bb670a08ae9ca6c38eb559be`  
		Last Modified: Fri, 25 Sep 2026 17:45:01 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:260b06f25a632b0ecef684ed2c8570fc22a4f5019807392b00f04c35430000cc`  
		Last Modified: Fri, 25 Sep 2026 17:45:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596e474d42690ada4934ad39f06401387c1d263583c70f409bbf4114c6015b9b`  
		Last Modified: Fri, 25 Sep 2026 17:45:02 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc5dba33bf7552d982b58567afe784c6c05b8c51d0958102b2e7d3c26edd743f`  
		Last Modified: Fri, 25 Sep 2026 18:23:05 GMT  
		Size: 6.5 MB (6499829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b722301b848b2dbc37d16c80c125e68067534e2c0225e49e604febeed4088c0c`  
		Last Modified: Fri, 25 Sep 2026 18:23:05 GMT  
		Size: 654.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a9ed6e28e86900ac775612fc7a6df2a76ed82a0c51fc9be3bc037ef3785dd0`  
		Last Modified: Fri, 25 Sep 2026 18:23:05 GMT  
		Size: 14.1 MB (14087548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c2f36979437e956a6e26baad3690c02bdf1ac2e8dd142c868e63976bff750c`  
		Last Modified: Fri, 25 Sep 2026 18:23:05 GMT  
		Size: 2.1 KB (2140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81479207581757ba5513c848183c5f684c2a2b5aa92f56f990733a00ba0b270`  
		Last Modified: Fri, 25 Sep 2026 18:23:06 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf731b3517ffecdca5bfa7fb50dbfc3f7fbbbc26455ed5ded8b2b66be9d37611`  
		Last Modified: Fri, 25 Sep 2026 18:23:06 GMT  
		Size: 946.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:5-apache` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:bd371d2fc6b3830e7340449a902d9dc7ecd6e24fc794986a57aaf79aeb4730a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 KB (51656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bdcba8e45d8b3bc47de97f943153c70cb5b4faad4e4e061dc2d526e0cde7bd8`

```dockerfile
```

-	Layers:
	-	`sha256:4514822db98638af739cdb80509a0d88739cb3fbf62a229e08a301ed30d5922d`  
		Last Modified: Fri, 25 Sep 2026 18:23:04 GMT  
		Size: 51.7 KB (51656 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:5-apache` - linux; riscv64

```console
$ docker pull phpmyadmin@sha256:2826fa9a37e6ff56fa146bb31d07c56e5aa8c907c69de84a6958d03e4df86f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227616341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db562a097e296e12bfa376ac508d7a8335d19f2f5b16dd2b3bec79e1d1f01cd5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
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
# Fri, 18 Sep 2026 10:24:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 18 Sep 2026 10:24:06 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 18 Sep 2026 10:24:06 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 18 Sep 2026 10:24:07 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 18 Sep 2026 10:24:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 18 Sep 2026 10:24:07 GMT
STOPSIGNAL SIGWINCH
# Fri, 18 Sep 2026 10:24:07 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Fri, 18 Sep 2026 10:24:07 GMT
WORKDIR /var/www/html
# Fri, 18 Sep 2026 10:24:07 GMT
EXPOSE map[80/tcp:{}]
# Fri, 18 Sep 2026 10:24:07 GMT
CMD ["apache2-foreground"]
# Fri, 18 Sep 2026 18:02:45 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Fri, 18 Sep 2026 18:02:45 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Fri, 18 Sep 2026 18:02:45 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         gnupg         dirmngr     ;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libbz2-dev         libfreetype6-dev         libjpeg-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     extdir="$(php -r 'echo ini_get("extension_dir");')";     ldd "$extdir"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         a2enmod remoteip;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     ldd "$extdir"/*.so | grep -qzv "=> not found" || (echo "Sanity check failed: missing libraries:"; ldd "$extdir"/*.so | grep " => not found"; exit 1);     ldd "$extdir"/*.so | grep -q "libzip.so.* => .*/libzip.so.*" || (echo "Sanity check failed: libzip.so is not referenced"; ldd "$extdir"/*.so; exit 1);     err="$(php --version 3>&1 1>&2 2>&3)";     [ -z "$err" ] || (echo "Sanity check failed: php returned errors; $err"; exit 1;); # buildkit
# Fri, 18 Sep 2026 18:02:45 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Fri, 18 Sep 2026 18:02:45 GMT
ENV MAX_EXECUTION_TIME=600
# Fri, 18 Sep 2026 18:02:45 GMT
ENV MEMORY_LIMIT=512M
# Fri, 18 Sep 2026 18:02:45 GMT
ENV UPLOAD_LIMIT=2048K
# Fri, 18 Sep 2026 18:02:45 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:02:45 GMT
ENV SESSION_SAVE_PATH=/sessions
# Fri, 18 Sep 2026 18:02:46 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Fri, 18 Sep 2026 18:02:46 GMT
USER www-data:www-data
# Fri, 18 Sep 2026 18:02:46 GMT
ENV VERSION=5.2.3
# Fri, 18 Sep 2026 18:02:46 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Fri, 18 Sep 2026 18:02:46 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Fri, 18 Sep 2026 18:02:46 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Fri, 18 Sep 2026 18:03:17 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Fri, 18 Sep 2026 18:03:17 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Fri, 18 Sep 2026 18:03:17 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Fri, 18 Sep 2026 18:03:18 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:03:18 GMT
USER root
# Fri, 18 Sep 2026 18:03:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 18 Sep 2026 18:03:18 GMT
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
	-	`sha256:1615a9f240121d625e6853de95e872dbcf39a7d924a9a59146f07344a3f8f4b7`  
		Last Modified: Fri, 18 Sep 2026 10:27:21 GMT  
		Size: 16.2 MB (16230036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a056c1a4352f5bbb3f8cbf559f670e12a1ebc1f2a13227314875a81d38617413`  
		Last Modified: Fri, 18 Sep 2026 10:27:18 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ecd244c1da3e6373438895f336b8d5b4ff0bbc9b96fc32e29dbb9f50438a443`  
		Last Modified: Fri, 18 Sep 2026 10:27:18 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea38aea54d162524e0c5067cbfe14e2c54a5eb733e9a91a49d2635300f7890cb`  
		Last Modified: Fri, 18 Sep 2026 10:27:18 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0194cafc52af1e4df55a06c3db6d06a1ab61794bf4acd608787bb3b1be369515`  
		Last Modified: Fri, 18 Sep 2026 10:27:19 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10b0c0962a1efa14cd6d2fc89632eb2bf4c361e94f1a3e910d0e78ee0003fb4e`  
		Last Modified: Fri, 18 Sep 2026 18:04:29 GMT  
		Size: 5.6 MB (5564762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48763a1b2c6f01d1b59eef402b5d15f1825fe2a5be086eabac58d86255ecac21`  
		Last Modified: Fri, 18 Sep 2026 18:04:27 GMT  
		Size: 654.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:181c1867a78acad9adfb7530a8d459d1d6bd5a9655149a73ff54584c2c05c553`  
		Last Modified: Fri, 18 Sep 2026 18:04:30 GMT  
		Size: 14.1 MB (14087578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e6a30714fed2c9cf5265b5ce3bf201f2bf363a3c3297cf0d3e04190aa03a03a`  
		Last Modified: Fri, 18 Sep 2026 18:04:27 GMT  
		Size: 2.1 KB (2141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f963e618622bf2dcc93a1838ba2f6acdc014bc85bcfb7ef10c7f35c7d5f6e9d`  
		Last Modified: Fri, 18 Sep 2026 18:04:29 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596b43d59f79d7c713d67dc08134828b0eb01ec0b26a7045ca19a68bc292bf5a`  
		Last Modified: Fri, 18 Sep 2026 18:04:29 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:5-apache` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:a5b6a6c4bc852cb85a30686042fa019c1508118df50e6032b7577331082f81ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 KB (51656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32ea2bb3ec2e6127610b45364199eabafab099876e8a4c35f9bb339609b178a`

```dockerfile
```

-	Layers:
	-	`sha256:f0b48d1b5d845c66dfc95b9dfe16d9502d2c86f9292f4dd7622dccc04189fdf1`  
		Last Modified: Fri, 18 Sep 2026 18:04:26 GMT  
		Size: 51.7 KB (51656 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:5-apache` - linux; s390x

```console
$ docker pull phpmyadmin@sha256:67c5c9b4a2d123a01127791c00751c74f22a656e8e2b2bce095ff709e1fbb015
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171008580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa695c86b15b14f0d1defa51bb7a6ee3c497db59c6bd95f4377738d308a13795`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_VERSION=8.3.35
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:39:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 25 Sep 2026 17:39:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:45:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 17:45:20 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:45:20 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 17:45:20 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 17:45:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:45:20 GMT
STOPSIGNAL SIGWINCH
# Fri, 25 Sep 2026 17:45:21 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:45:21 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:45:21 GMT
EXPOSE map[80/tcp:{}]
# Fri, 25 Sep 2026 17:45:21 GMT
CMD ["apache2-foreground"]
# Fri, 25 Sep 2026 17:55:39 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Fri, 25 Sep 2026 17:55:39 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Fri, 25 Sep 2026 17:55:39 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         gnupg         dirmngr     ;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libbz2-dev         libfreetype6-dev         libjpeg-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     extdir="$(php -r 'echo ini_get("extension_dir");')";     ldd "$extdir"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         a2enmod remoteip;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     ldd "$extdir"/*.so | grep -qzv "=> not found" || (echo "Sanity check failed: missing libraries:"; ldd "$extdir"/*.so | grep " => not found"; exit 1);     ldd "$extdir"/*.so | grep -q "libzip.so.* => .*/libzip.so.*" || (echo "Sanity check failed: libzip.so is not referenced"; ldd "$extdir"/*.so; exit 1);     err="$(php --version 3>&1 1>&2 2>&3)";     [ -z "$err" ] || (echo "Sanity check failed: php returned errors; $err"; exit 1;); # buildkit
# Fri, 25 Sep 2026 17:55:39 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Fri, 25 Sep 2026 17:55:39 GMT
ENV MAX_EXECUTION_TIME=600
# Fri, 25 Sep 2026 17:55:39 GMT
ENV MEMORY_LIMIT=512M
# Fri, 25 Sep 2026 17:55:39 GMT
ENV UPLOAD_LIMIT=2048K
# Fri, 25 Sep 2026 17:55:39 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 17:55:39 GMT
ENV SESSION_SAVE_PATH=/sessions
# Fri, 25 Sep 2026 17:55:39 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Fri, 25 Sep 2026 17:55:39 GMT
USER www-data:www-data
# Fri, 25 Sep 2026 17:55:39 GMT
ENV VERSION=5.2.3
# Fri, 25 Sep 2026 17:55:39 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Fri, 25 Sep 2026 17:55:39 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Fri, 25 Sep 2026 17:55:39 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Fri, 25 Sep 2026 17:55:43 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Fri, 25 Sep 2026 17:55:43 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Fri, 25 Sep 2026 17:55:43 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Fri, 25 Sep 2026 17:55:43 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 25 Sep 2026 17:55:43 GMT
USER root
# Fri, 25 Sep 2026 17:55:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Sep 2026 17:55:43 GMT
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
	-	`sha256:47fe030e6ea463ca24f50e3ad10b8e19e151ec572d7efad7a56c645c4b6e6fc4`  
		Last Modified: Fri, 25 Sep 2026 17:45:44 GMT  
		Size: 12.8 MB (12803266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eba925353d84dfefb4b5f11b8bd5711c1336d9ac5fb58dfdf15145c936617df`  
		Last Modified: Fri, 25 Sep 2026 17:45:43 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7346c483a7053b76f9d57149ee7bf6d2d626668d6be664810f9a753787884065`  
		Last Modified: Fri, 25 Sep 2026 17:45:44 GMT  
		Size: 11.6 MB (11577654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ecdfe9bd6a003a9fc53660ff7781bccadbf0d7df052a6f3dc23036dc65348f`  
		Last Modified: Fri, 25 Sep 2026 17:45:43 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe984fb96d7eeb8131982751f0732125eb21adc9857bd136c9ca596a532054b`  
		Last Modified: Fri, 25 Sep 2026 17:45:44 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044accc7aa429489c7779ccd050664af9f70cfc27190de9193d5d9701a2de4a3`  
		Last Modified: Fri, 25 Sep 2026 17:45:44 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a30e19726bc2a8d9e77c2033755230dc2dd6e3a369463dd5c6f0a6337765df71`  
		Last Modified: Fri, 25 Sep 2026 17:45:45 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6557aed83b7f02c528449a7ab9d9bca243b39fb752102f6c4f18b1e11f0f3ad3`  
		Last Modified: Fri, 25 Sep 2026 17:55:53 GMT  
		Size: 5.7 MB (5717964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c768b9eb97ef072d5c70d350dc7588827baa6d413bc98f71bfdd8eea82e004fc`  
		Last Modified: Fri, 25 Sep 2026 17:55:53 GMT  
		Size: 649.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d26e2819efb06b72f2e0cb87b840cf5dc2cf2c3aa3a59899ab39926e24227302`  
		Last Modified: Fri, 25 Sep 2026 17:55:53 GMT  
		Size: 14.1 MB (14087529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4839f1a98c8f2ace01b2cd9ce46a391cde10bea7764374ae6333f594b461ab9e`  
		Last Modified: Fri, 25 Sep 2026 17:55:53 GMT  
		Size: 2.1 KB (2139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be798aadfbdb9e6e5a00e8af07da44432d93c8fa573c75902df376679a43021`  
		Last Modified: Fri, 25 Sep 2026 17:55:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1784412898c5163c3aed64c91be22b228a60fa36fb94d25a191a7e775da4701`  
		Last Modified: Fri, 25 Sep 2026 17:55:54 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:5-apache` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:d039da8cd2e43314e14c4634215460e251066336a939f8e9c98628820c825fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 KB (51577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a44c28e7da7244cd7ff32a58d315807c740ca1b97cb3b35cb865ee43f98da0`

```dockerfile
```

-	Layers:
	-	`sha256:fa500371d48235e51c7bdbda0bc98db24891c91de0562ff56f9a651547805c10`  
		Last Modified: Fri, 25 Sep 2026 17:55:53 GMT  
		Size: 51.6 KB (51577 bytes)  
		MIME: application/vnd.in-toto+json
