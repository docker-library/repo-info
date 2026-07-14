## `phpmyadmin:5-fpm`

```console
$ docker pull phpmyadmin@sha256:f162062c436e34f84c3d95ffc2b68b2a964895a4da47a12eca541593f7b5fd3e
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

### `phpmyadmin:5-fpm` - linux; amd64

```console
$ docker pull phpmyadmin@sha256:2eda6a2acd8fc1e77829c7d0872abb73f47d22175108eb21642c81b9291a4666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192649570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22022ea2f0138fd96fe56ffde343aac313f1e7b583575d74d27a818c4fe0bef9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:26:52 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:27:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:27:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:27:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:27:08 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
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
# Tue, 14 Jul 2026 01:30:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:30:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:32:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:32:33 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:32:33 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 01:32:33 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:32:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:32:33 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:32:33 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 14 Jul 2026 01:32:33 GMT
STOPSIGNAL SIGQUIT
# Tue, 14 Jul 2026 01:32:33 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 14 Jul 2026 01:32:33 GMT
CMD ["php-fpm"]
# Tue, 14 Jul 2026 02:28:16 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Tue, 14 Jul 2026 02:28:16 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Tue, 14 Jul 2026 02:28:16 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         gnupg         dirmngr     ;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libbz2-dev         libfreetype6-dev         libjpeg-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     extdir="$(php -r 'echo ini_get("extension_dir");')";     ldd "$extdir"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;             apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     ldd "$extdir"/*.so | grep -qzv "=> not found" || (echo "Sanity check failed: missing libraries:"; ldd "$extdir"/*.so | grep " => not found"; exit 1);     ldd "$extdir"/*.so | grep -q "libzip.so.* => .*/libzip.so.*" || (echo "Sanity check failed: libzip.so is not referenced"; ldd "$extdir"/*.so; exit 1);     err="$(php --version 3>&1 1>&2 2>&3)";     [ -z "$err" ] || (echo "Sanity check failed: php returned errors; $err"; exit 1;); # buildkit
# Tue, 14 Jul 2026 02:28:16 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Tue, 14 Jul 2026 02:28:16 GMT
ENV MAX_EXECUTION_TIME=600
# Tue, 14 Jul 2026 02:28:16 GMT
ENV MEMORY_LIMIT=512M
# Tue, 14 Jul 2026 02:28:16 GMT
ENV UPLOAD_LIMIT=2048K
# Tue, 14 Jul 2026 02:28:16 GMT
ENV TZ=UTC
# Tue, 14 Jul 2026 02:28:16 GMT
ENV SESSION_SAVE_PATH=/sessions
# Tue, 14 Jul 2026 02:28:16 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Tue, 14 Jul 2026 02:28:16 GMT
USER www-data:www-data
# Tue, 14 Jul 2026 02:28:16 GMT
ENV VERSION=5.2.3
# Tue, 14 Jul 2026 02:28:16 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Tue, 14 Jul 2026 02:28:16 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Tue, 14 Jul 2026 02:28:16 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Tue, 14 Jul 2026 02:28:21 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Tue, 14 Jul 2026 02:28:21 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Tue, 14 Jul 2026 02:28:21 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Tue, 14 Jul 2026 02:28:21 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:28:21 GMT
USER root
# Tue, 14 Jul 2026 02:28:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:28:21 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821cf31d483f0a479f4e887f23bcffb034e77af0e4e7dd1c29c536be976f6de2`  
		Last Modified: Tue, 14 Jul 2026 01:29:55 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c1a7405392e690ac84022e1f12825534c037e3220f5e196162f5e1fa526ac3`  
		Last Modified: Tue, 14 Jul 2026 01:29:58 GMT  
		Size: 117.8 MB (117839080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa2c6085efce429bc5ef7a6a37327b128400cbd04d146370a823509c9985eaa`  
		Last Modified: Tue, 14 Jul 2026 01:29:55 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009179794e33eb3515c357b67f13a724246a34494c182798e4b6aab960597778`  
		Last Modified: Tue, 14 Jul 2026 01:32:44 GMT  
		Size: 12.8 MB (12753534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bc20f148cc49b79676450c21495e110d726066a6483cf8cf727bc145d2bb8c`  
		Last Modified: Tue, 14 Jul 2026 01:32:43 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6feb270abe976c4ead4d33c0e00865d22051236c1464dabad9a412d622b9ee4`  
		Last Modified: Tue, 14 Jul 2026 01:32:44 GMT  
		Size: 11.9 MB (11903365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc507217f4c53f166101637626e6a30ec5722b59471ea2df286c73bef0a7abe2`  
		Last Modified: Tue, 14 Jul 2026 01:32:43 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:395b73b8ce905c10d68059da62d1f212dbcaa89f336642de380cc993d0799e56`  
		Last Modified: Tue, 14 Jul 2026 01:32:45 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071b17ac252de9831f831ffebd4e3056cefc0ad860b5cf01d0909f25ac99c79c`  
		Last Modified: Tue, 14 Jul 2026 01:32:45 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e42b2c3876b246de2dc333dc176f70b4ee70334b2fdca6197eb2b1ac5f362c`  
		Last Modified: Tue, 14 Jul 2026 01:32:46 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2bad0e5eb6afaf1452ea4a47d7aaefbc24e2219c19b93c192e57ed198e4e71a`  
		Last Modified: Tue, 14 Jul 2026 02:28:28 GMT  
		Size: 6.3 MB (6267552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed28613789fe744a87f5c8cb95d17ad8c5c72098d601fea3d11da1e09ea32d6c`  
		Last Modified: Tue, 14 Jul 2026 02:28:28 GMT  
		Size: 651.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08bb0630752bc05ce4b5eb7fdc3abdeb22e5a4d2ab792ef0371286530c58d12f`  
		Last Modified: Tue, 14 Jul 2026 02:28:28 GMT  
		Size: 14.1 MB (14087526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48060c6ed27ff1839303784ad125f844c8e47f23accb1ee4730317bd0c27cb56`  
		Last Modified: Tue, 14 Jul 2026 02:28:28 GMT  
		Size: 2.1 KB (2137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795d59c9f33d47ad416e5b26b6ca8a4da3b1297f4338b2cc7991eb7adbf18812`  
		Last Modified: Tue, 14 Jul 2026 02:28:29 GMT  
		Size: 855.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9696e67731a8dd4b8ec5e9a7e389dcc2478960509cac1b111feb20988757ec`  
		Last Modified: Tue, 14 Jul 2026 02:28:29 GMT  
		Size: 800.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:5-fpm` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:a56e275e94370503950ab7a39291985c56ff9733fd34af4fce103b16115eda34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 KB (46595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58899a20739af704fe023da4ea7eb5cacd48e621a82d7fa9efd2fe98118819c0`

```dockerfile
```

-	Layers:
	-	`sha256:3670dd4641cfbc62edfbb4670856f73b45d1a3a5b6d091ae1e1501c75ccd03e6`  
		Last Modified: Tue, 14 Jul 2026 02:28:27 GMT  
		Size: 46.6 KB (46595 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:5-fpm` - linux; arm variant v5

```console
$ docker pull phpmyadmin@sha256:b94d7ea93b9837b1a158f9409ea3679a1df8a82a52a3427ae4b283a528055e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.7 MB (165728901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bef17f7b92ba9b19bee95a249b4199d2862068d7e874ebe3f296cff76236dc8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:27:56 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:28:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:28:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:28:19 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:28:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:28:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:28:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:28:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:28:20 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:28:20 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:28:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:28:20 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 01:39:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:39:46 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:42:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:42:40 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:42:40 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 01:42:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:42:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:42:40 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:42:40 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 14 Jul 2026 01:42:40 GMT
STOPSIGNAL SIGQUIT
# Tue, 14 Jul 2026 01:42:40 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 14 Jul 2026 01:42:40 GMT
CMD ["php-fpm"]
# Tue, 14 Jul 2026 03:52:25 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Tue, 14 Jul 2026 03:52:25 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Tue, 14 Jul 2026 03:52:25 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         gnupg         dirmngr     ;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libbz2-dev         libfreetype6-dev         libjpeg-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     extdir="$(php -r 'echo ini_get("extension_dir");')";     ldd "$extdir"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;             apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     ldd "$extdir"/*.so | grep -qzv "=> not found" || (echo "Sanity check failed: missing libraries:"; ldd "$extdir"/*.so | grep " => not found"; exit 1);     ldd "$extdir"/*.so | grep -q "libzip.so.* => .*/libzip.so.*" || (echo "Sanity check failed: libzip.so is not referenced"; ldd "$extdir"/*.so; exit 1);     err="$(php --version 3>&1 1>&2 2>&3)";     [ -z "$err" ] || (echo "Sanity check failed: php returned errors; $err"; exit 1;); # buildkit
# Tue, 14 Jul 2026 03:52:25 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Tue, 14 Jul 2026 03:52:25 GMT
ENV MAX_EXECUTION_TIME=600
# Tue, 14 Jul 2026 03:52:25 GMT
ENV MEMORY_LIMIT=512M
# Tue, 14 Jul 2026 03:52:25 GMT
ENV UPLOAD_LIMIT=2048K
# Tue, 14 Jul 2026 03:52:25 GMT
ENV TZ=UTC
# Tue, 14 Jul 2026 03:52:25 GMT
ENV SESSION_SAVE_PATH=/sessions
# Tue, 14 Jul 2026 03:52:25 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Tue, 14 Jul 2026 03:52:25 GMT
USER www-data:www-data
# Tue, 14 Jul 2026 03:52:25 GMT
ENV VERSION=5.2.3
# Tue, 14 Jul 2026 03:52:25 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Tue, 14 Jul 2026 03:52:25 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Tue, 14 Jul 2026 03:52:25 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Tue, 14 Jul 2026 03:52:30 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Tue, 14 Jul 2026 03:52:30 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Tue, 14 Jul 2026 03:52:30 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Tue, 14 Jul 2026 03:52:31 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 14 Jul 2026 03:52:31 GMT
USER root
# Tue, 14 Jul 2026 03:52:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 03:52:31 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f19600a73152d3da6f03e3e8fef9c986f35b93a1c600186f39863b568f578e`  
		Last Modified: Tue, 14 Jul 2026 01:32:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:479714c212d6fa1a1c4448d1b63184620b3642c12ca98da1840b6533620cdd1a`  
		Last Modified: Tue, 14 Jul 2026 01:32:16 GMT  
		Size: 94.9 MB (94887071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec976f38fa9e7ffa24604b7028d7afb087950d523a58a565f48b7eccb91116d`  
		Last Modified: Tue, 14 Jul 2026 01:32:13 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d78a0422b9eaef5d71e69b933c3eb1a2ebcc5fa23a26a6b1877a70bd06c152`  
		Last Modified: Tue, 14 Jul 2026 01:42:51 GMT  
		Size: 12.8 MB (12751112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15c7223dd94a8d085dd90e22be60f7aa7f39fa0708397cba7f13c5a6d217a9c6`  
		Last Modified: Tue, 14 Jul 2026 01:42:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71a635b12ebb09d4b073c5c631181ecbb5e93ae961ab71fb250b0b35bbe2d8c`  
		Last Modified: Tue, 14 Jul 2026 01:42:51 GMT  
		Size: 10.7 MB (10696640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93105f45160a9bdb6a6788e35ce6f23aae577df0f99f8be33bf6b78900b6abd4`  
		Last Modified: Tue, 14 Jul 2026 01:42:50 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdccbfe48dd5c7eae415a85ae0a0813dc6d4410949da172e1941c820f6301e43`  
		Last Modified: Tue, 14 Jul 2026 01:42:52 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b411e93f02e4910a38317ce6d7423af8b8ab1a3e35447ae59f0ce979d646d12`  
		Last Modified: Tue, 14 Jul 2026 01:42:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:200fa2663ac03bdcefdff5bdf9ad913b41140df84269396b4b67a5d10a9f5f8a`  
		Last Modified: Tue, 14 Jul 2026 01:42:52 GMT  
		Size: 9.3 KB (9254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c4d2fa26c37e9a524e88a879d16367647a9a3f857d214dc33c9bad76a7d416e`  
		Last Modified: Tue, 14 Jul 2026 03:52:37 GMT  
		Size: 5.3 MB (5334084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2066361efce9c881dd8311f7e315574730232f1ed96df85d38224a69d2c6096`  
		Last Modified: Tue, 14 Jul 2026 03:52:37 GMT  
		Size: 655.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448e1008f476bb821f2a1f3f1bb38374165bbcd450f7b12419306eceee9c14a1`  
		Last Modified: Tue, 14 Jul 2026 03:52:37 GMT  
		Size: 14.1 MB (14087546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d3452b16cfa7d0c6ff5cdd5611531c70b793169d237ec354352dfda922a6ff`  
		Last Modified: Tue, 14 Jul 2026 03:52:37 GMT  
		Size: 2.1 KB (2139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ede05a92bf804dcfc0030a28911becd458140e73da7b4d53dd90166e63cece1`  
		Last Modified: Tue, 14 Jul 2026 03:52:38 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acab095e8be1f3cef454f678e5219f2da87f95870d7977f1a5ffcbb7d926f6cf`  
		Last Modified: Tue, 14 Jul 2026 03:52:38 GMT  
		Size: 800.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:5-fpm` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:7e5b795dd33e622b57c037bece7bdd0b357199cb837ff8d5578576e795117608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 KB (46694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50efb944d50b8541ad5dd20ca7cf35a1c6504e4f7369c03c5f1dc97abf1b8afc`

```dockerfile
```

-	Layers:
	-	`sha256:ca5e7f16d6dc26675dee9ba77a633a5fa4716f8ab2c320a35d55093b9afebd34`  
		Last Modified: Tue, 14 Jul 2026 03:52:36 GMT  
		Size: 46.7 KB (46694 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:5-fpm` - linux; arm variant v7

```console
$ docker pull phpmyadmin@sha256:866b3673d64d253879eb7ea5ff830ceaa158141f35c3cdfdb555a63a55ea5175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.3 MB (154326745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb22e65c747b62bd8bef49b8a426a80517833646820d442b75dc14503265bc8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:01 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:43:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:43:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:43:19 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:43:19 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:43:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:43:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:43:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:43:19 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:43:19 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:43:19 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:43:19 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 01:43:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:43:29 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:46:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:46:03 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:46:03 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 01:46:03 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:46:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:46:03 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:46:03 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 14 Jul 2026 01:46:03 GMT
STOPSIGNAL SIGQUIT
# Tue, 14 Jul 2026 01:46:03 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 14 Jul 2026 01:46:03 GMT
CMD ["php-fpm"]
# Tue, 14 Jul 2026 04:13:04 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Tue, 14 Jul 2026 04:13:04 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Tue, 14 Jul 2026 04:13:04 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         gnupg         dirmngr     ;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libbz2-dev         libfreetype6-dev         libjpeg-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     extdir="$(php -r 'echo ini_get("extension_dir");')";     ldd "$extdir"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;             apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     ldd "$extdir"/*.so | grep -qzv "=> not found" || (echo "Sanity check failed: missing libraries:"; ldd "$extdir"/*.so | grep " => not found"; exit 1);     ldd "$extdir"/*.so | grep -q "libzip.so.* => .*/libzip.so.*" || (echo "Sanity check failed: libzip.so is not referenced"; ldd "$extdir"/*.so; exit 1);     err="$(php --version 3>&1 1>&2 2>&3)";     [ -z "$err" ] || (echo "Sanity check failed: php returned errors; $err"; exit 1;); # buildkit
# Tue, 14 Jul 2026 04:13:04 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Tue, 14 Jul 2026 04:13:04 GMT
ENV MAX_EXECUTION_TIME=600
# Tue, 14 Jul 2026 04:13:04 GMT
ENV MEMORY_LIMIT=512M
# Tue, 14 Jul 2026 04:13:04 GMT
ENV UPLOAD_LIMIT=2048K
# Tue, 14 Jul 2026 04:13:04 GMT
ENV TZ=UTC
# Tue, 14 Jul 2026 04:13:04 GMT
ENV SESSION_SAVE_PATH=/sessions
# Tue, 14 Jul 2026 04:13:04 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Tue, 14 Jul 2026 04:13:04 GMT
USER www-data:www-data
# Tue, 14 Jul 2026 04:13:04 GMT
ENV VERSION=5.2.3
# Tue, 14 Jul 2026 04:13:04 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Tue, 14 Jul 2026 04:13:04 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Tue, 14 Jul 2026 04:13:04 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Tue, 14 Jul 2026 04:13:09 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Tue, 14 Jul 2026 04:13:10 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Tue, 14 Jul 2026 04:13:10 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Tue, 14 Jul 2026 04:13:10 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 14 Jul 2026 04:13:10 GMT
USER root
# Tue, 14 Jul 2026 04:13:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:13:10 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461db86420c9f89e69fc388818f5c4fc9479f54cb8f406eed8d3c6b7ea633ff1`  
		Last Modified: Tue, 14 Jul 2026 01:46:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efa5ce6bdde7f2ae120ce6372b630a4bb431ab391ec70133ff2bf96346bc796`  
		Last Modified: Tue, 14 Jul 2026 01:46:23 GMT  
		Size: 86.3 MB (86257242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6861ec9a37e249a7336f6c214dcc449a1f64ffefe0a1268741e52d8bc4681c81`  
		Last Modified: Tue, 14 Jul 2026 01:46:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ad28d455dc55554f0f4850fc97e5bd64c9b05839afc0c62a4817a36b98ad0ca`  
		Last Modified: Tue, 14 Jul 2026 01:46:21 GMT  
		Size: 12.8 MB (12751247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e054b97e98ad732c8d066bf29c7707f7bfbc14ef1f414e76493a4879ea6bc475`  
		Last Modified: Tue, 14 Jul 2026 01:46:21 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65a36486c5decbb18bd2497fffa9857891079c8ab9e4f89a50d2c15eeebcacf`  
		Last Modified: Tue, 14 Jul 2026 01:46:22 GMT  
		Size: 10.1 MB (10088209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0017d2e01396f5057f5381ba7c0fb7be9b39051b3436b076990f4093414c47b8`  
		Last Modified: Tue, 14 Jul 2026 01:46:22 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8464da4ca1cdb7996c6c46674dc30b4952424a0abc108883e08f2d65a525c12d`  
		Last Modified: Tue, 14 Jul 2026 01:46:23 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d5aa0923a428a27905a2f2ae0031ac395a2b0ac523ef54a19c3e5e0fc4a2b6`  
		Last Modified: Tue, 14 Jul 2026 01:46:23 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c0b0d9bb18467ae2a323c914108901e41c7a76196ff6e9c71a62aa19015cdd0`  
		Last Modified: Tue, 14 Jul 2026 01:46:24 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd749b99dd3efbe3b0150067274376adb277148ad1f70e4d3d3697f23d6b32ad`  
		Last Modified: Tue, 14 Jul 2026 04:13:16 GMT  
		Size: 4.9 MB (4918442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a60be50cae402fbd3a232d5db3309a94e8cf4788122cb1b3eafe92ba89b6a5a`  
		Last Modified: Tue, 14 Jul 2026 04:13:16 GMT  
		Size: 652.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8825d88c902f2ab170e43c0dcc18e68faba6360d9f3c82a15f2c7383bb71a3`  
		Last Modified: Tue, 14 Jul 2026 04:13:16 GMT  
		Size: 14.1 MB (14087529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:769e7f634ffe31e08646474436c5fa1bed22e48202328142d90b01b8ebe96dc5`  
		Last Modified: Tue, 14 Jul 2026 04:13:16 GMT  
		Size: 2.1 KB (2136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27ce860138863076be170f726092124ce1234030ea89e1f8d6691b29af4afac`  
		Last Modified: Tue, 14 Jul 2026 04:13:17 GMT  
		Size: 855.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc70c8c8ec02d11d02f055275eda1a27e8e6d7b063a9b03751df3a3ee6dff31`  
		Last Modified: Tue, 14 Jul 2026 04:13:17 GMT  
		Size: 801.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:5-fpm` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:c1c2e0a40e3cfe11fc0df965dacfd0ace23d74b4dfb8b427f4dcc809c6d9b5d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 KB (46694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9f3f2e766de3ef154453f292589c2b485329c36937806e8b464e10248caa55f`

```dockerfile
```

-	Layers:
	-	`sha256:127284d9e5c1426c63f64ecf1def3d4f3a43e2936e75193a9a1a91a7f17f3b88`  
		Last Modified: Tue, 14 Jul 2026 04:13:15 GMT  
		Size: 46.7 KB (46694 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:5-fpm` - linux; arm64 variant v8

```console
$ docker pull phpmyadmin@sha256:81cfc6bbc2e9359b3bfe8db85fce3b40add17514aba14363f7bad995ab2f9ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.5 MB (185475525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367b4d31f42666a3bde6bb0c7cd183d834cdb6cdcc63e6aeab291f62336df1e6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:27:10 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:27:27 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:27:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:27:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:27:28 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:27:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:27:28 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:27:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:27:28 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:27:28 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:27:28 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:27:28 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 01:31:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:31:11 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:34:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:34:54 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:34:54 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 01:34:54 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:34:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:34:54 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:34:54 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 14 Jul 2026 01:34:54 GMT
STOPSIGNAL SIGQUIT
# Tue, 14 Jul 2026 01:34:54 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 14 Jul 2026 01:34:54 GMT
CMD ["php-fpm"]
# Tue, 14 Jul 2026 02:35:40 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Tue, 14 Jul 2026 02:35:40 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Tue, 14 Jul 2026 02:35:40 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         gnupg         dirmngr     ;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libbz2-dev         libfreetype6-dev         libjpeg-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     extdir="$(php -r 'echo ini_get("extension_dir");')";     ldd "$extdir"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;             apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     ldd "$extdir"/*.so | grep -qzv "=> not found" || (echo "Sanity check failed: missing libraries:"; ldd "$extdir"/*.so | grep " => not found"; exit 1);     ldd "$extdir"/*.so | grep -q "libzip.so.* => .*/libzip.so.*" || (echo "Sanity check failed: libzip.so is not referenced"; ldd "$extdir"/*.so; exit 1);     err="$(php --version 3>&1 1>&2 2>&3)";     [ -z "$err" ] || (echo "Sanity check failed: php returned errors; $err"; exit 1;); # buildkit
# Tue, 14 Jul 2026 02:35:40 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Tue, 14 Jul 2026 02:35:40 GMT
ENV MAX_EXECUTION_TIME=600
# Tue, 14 Jul 2026 02:35:40 GMT
ENV MEMORY_LIMIT=512M
# Tue, 14 Jul 2026 02:35:40 GMT
ENV UPLOAD_LIMIT=2048K
# Tue, 14 Jul 2026 02:35:40 GMT
ENV TZ=UTC
# Tue, 14 Jul 2026 02:35:40 GMT
ENV SESSION_SAVE_PATH=/sessions
# Tue, 14 Jul 2026 02:35:40 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Tue, 14 Jul 2026 02:35:40 GMT
USER www-data:www-data
# Tue, 14 Jul 2026 02:35:40 GMT
ENV VERSION=5.2.3
# Tue, 14 Jul 2026 02:35:40 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Tue, 14 Jul 2026 02:35:40 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Tue, 14 Jul 2026 02:35:40 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Tue, 14 Jul 2026 02:35:46 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Tue, 14 Jul 2026 02:35:46 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Tue, 14 Jul 2026 02:35:46 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Tue, 14 Jul 2026 02:35:46 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:35:46 GMT
USER root
# Tue, 14 Jul 2026 02:35:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:35:46 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e577bc31119e1d58dd0fb6ce20f37a8e8be802094fa785d8221490503f8c8e02`  
		Last Modified: Tue, 14 Jul 2026 01:30:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e333d1eb9aa0863fbfa847f9c8fe774b498c1c45405d558457cd63e89144bf2f`  
		Last Modified: Tue, 14 Jul 2026 01:30:55 GMT  
		Size: 110.2 MB (110170152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bb1df7780f4255fe1855899c6f496c8a7a4673e4cd33ba796f5eaa526b65975`  
		Last Modified: Tue, 14 Jul 2026 01:30:52 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee1a56e078937226392ec674ef39c06af563c9da814a321c2e86392f582dbdc7`  
		Last Modified: Tue, 14 Jul 2026 01:35:05 GMT  
		Size: 12.8 MB (12753131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c387702cf10ec598513c1369b5d496edf0042a44f1ec6f373340b719667b94`  
		Last Modified: Tue, 14 Jul 2026 01:35:04 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ac1ed7be4fe4f345842ff021f655641f77863b17f8a04e3df9d7f1201223cf`  
		Last Modified: Tue, 14 Jul 2026 01:35:05 GMT  
		Size: 11.9 MB (11925453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853c7e4b50a2e082d9e8c169cfc8845a1834ecdeb456133c422f7fcd62cd144b`  
		Last Modified: Tue, 14 Jul 2026 01:35:04 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:302106785245756fe5bf5bf0298108551dca7da7e085357220478ff6524cb074`  
		Last Modified: Tue, 14 Jul 2026 01:35:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba67140a5b6ba8d25374326ebb86860f72d7d55f3e14af3d59ca761681f8f701`  
		Last Modified: Tue, 14 Jul 2026 01:35:06 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93cd34cfb8c34486ee3044e30a5c6b22cdd724f22a08cd3184f97fc29c5e3e5`  
		Last Modified: Tue, 14 Jul 2026 01:35:07 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f19be28d4528790ded7b57d25358e0477741aac0d0457e4379a148950abd587`  
		Last Modified: Tue, 14 Jul 2026 02:35:53 GMT  
		Size: 6.4 MB (6377919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7103f59294a1da05f5c4489605a7b6984d6568c1ac06c1f73fb30db9ed6cf95`  
		Last Modified: Tue, 14 Jul 2026 02:35:52 GMT  
		Size: 655.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49339c9c67e2622ff82616e37e6d167a8628f6b220d2ff47b2bc86aa4b31f3d6`  
		Last Modified: Tue, 14 Jul 2026 02:35:53 GMT  
		Size: 14.1 MB (14087548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52d102230dac9e10aac42e28fa24d66dfcd98b02383f4dd547a8867613b11f30`  
		Last Modified: Tue, 14 Jul 2026 02:35:52 GMT  
		Size: 2.1 KB (2140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbcabcd72641d0785eff0ee1048046ba3328fc26b3ede5ea98927fb852853c0e`  
		Last Modified: Tue, 14 Jul 2026 02:35:53 GMT  
		Size: 859.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57377ccb12949b97b1c55d97670af9e0633fab72a2ebb95c0ab7b00acba6c87f`  
		Last Modified: Tue, 14 Jul 2026 02:35:54 GMT  
		Size: 800.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:5-fpm` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:c4a9e7cac32fbbf80c51f9c5036c2b2d91eb5a1c31a0685c78fb241ca8833c75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 KB (46729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38fa40b267e5128aec365f65f63017565ff832c9db729c10106d6913c4cbe099`

```dockerfile
```

-	Layers:
	-	`sha256:3b9a2de7180a1b9f6e393a24619686ca83f35fe0018df6933d8ab0f7d6190d23`  
		Last Modified: Tue, 14 Jul 2026 02:35:52 GMT  
		Size: 46.7 KB (46729 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:5-fpm` - linux; 386

```console
$ docker pull phpmyadmin@sha256:a81dfd92c55e0e6fb2b2eb92db3b1e92a6085159bdce736d6c848ede928826af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.9 MB (192915714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09281481ef7de4885d87a74e6ba1065240c900b497af364ffbf33802bf64d8c7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:23:04 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:23:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:23:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:23:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:23:24 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:23:24 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:23:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:23:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:23:24 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:23:24 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:23:24 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:23:24 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 01:27:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:27:04 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:29:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:29:45 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:29:45 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 01:29:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:29:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:29:45 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:29:45 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 14 Jul 2026 01:29:45 GMT
STOPSIGNAL SIGQUIT
# Tue, 14 Jul 2026 01:29:45 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 14 Jul 2026 01:29:45 GMT
CMD ["php-fpm"]
# Tue, 14 Jul 2026 02:36:54 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Tue, 14 Jul 2026 02:36:54 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Tue, 14 Jul 2026 02:36:54 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         gnupg         dirmngr     ;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libbz2-dev         libfreetype6-dev         libjpeg-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     extdir="$(php -r 'echo ini_get("extension_dir");')";     ldd "$extdir"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;             apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     ldd "$extdir"/*.so | grep -qzv "=> not found" || (echo "Sanity check failed: missing libraries:"; ldd "$extdir"/*.so | grep " => not found"; exit 1);     ldd "$extdir"/*.so | grep -q "libzip.so.* => .*/libzip.so.*" || (echo "Sanity check failed: libzip.so is not referenced"; ldd "$extdir"/*.so; exit 1);     err="$(php --version 3>&1 1>&2 2>&3)";     [ -z "$err" ] || (echo "Sanity check failed: php returned errors; $err"; exit 1;); # buildkit
# Tue, 14 Jul 2026 02:36:54 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Tue, 14 Jul 2026 02:36:54 GMT
ENV MAX_EXECUTION_TIME=600
# Tue, 14 Jul 2026 02:36:54 GMT
ENV MEMORY_LIMIT=512M
# Tue, 14 Jul 2026 02:36:54 GMT
ENV UPLOAD_LIMIT=2048K
# Tue, 14 Jul 2026 02:36:54 GMT
ENV TZ=UTC
# Tue, 14 Jul 2026 02:36:54 GMT
ENV SESSION_SAVE_PATH=/sessions
# Tue, 14 Jul 2026 02:36:54 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Tue, 14 Jul 2026 02:36:54 GMT
USER www-data:www-data
# Tue, 14 Jul 2026 02:36:54 GMT
ENV VERSION=5.2.3
# Tue, 14 Jul 2026 02:36:54 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Tue, 14 Jul 2026 02:36:54 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Tue, 14 Jul 2026 02:36:54 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Tue, 14 Jul 2026 02:37:00 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Tue, 14 Jul 2026 02:37:00 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Tue, 14 Jul 2026 02:37:00 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Tue, 14 Jul 2026 02:37:00 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:37:00 GMT
USER root
# Tue, 14 Jul 2026 02:37:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:37:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae269f97ed4fc8a1b5c0194715f0d41887aefa9d1b6c8d2bbf77d6365f9c5b87`  
		Last Modified: Tue, 14 Jul 2026 01:26:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecece346fcdd87f991c59b8763d9d8adb9f1104ab3ae32edcaabf925e52dd821`  
		Last Modified: Tue, 14 Jul 2026 01:26:49 GMT  
		Size: 116.1 MB (116142725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b4cabf075375adfb262ca2f7b20b530c70b2ddc30f9837e1c11785f369e638f`  
		Last Modified: Tue, 14 Jul 2026 01:26:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e851bd4920a5f5cc20e8a64bd9151dc9939a4af285ba1edb6e45146fbfd9af`  
		Last Modified: Tue, 14 Jul 2026 01:29:55 GMT  
		Size: 12.8 MB (12752441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a481076ed260d86a6a957d8e1bdd39fc213e77ffeaa49c52e07bbc2a32f3c8ae`  
		Last Modified: Tue, 14 Jul 2026 01:29:54 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99faf512382f1e4952630518e25910a0d52dea8db0ffb7cfbe41bdc7dfda273c`  
		Last Modified: Tue, 14 Jul 2026 01:29:55 GMT  
		Size: 12.1 MB (12111656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693a5d41d689c4fc302ebf020fa2d31bae163420541e8083044730181817fbd6`  
		Last Modified: Tue, 14 Jul 2026 01:29:54 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cf30b4c39b76d0424c9046941ea06dcf1730f2af32bcdae57260a33e959a74`  
		Last Modified: Tue, 14 Jul 2026 01:29:56 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18d37f6442f321fab665566b64433a91e15e5212c035bbc4793d797e9134787`  
		Last Modified: Tue, 14 Jul 2026 01:29:56 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04c013a0ad89a75b50bf5efd75202ce005d7e8e3addf4939339b7e526387fd57`  
		Last Modified: Tue, 14 Jul 2026 01:29:57 GMT  
		Size: 9.3 KB (9254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49ffbc171e40322bc1d58eaf917fcc58b4823ebe0e9900cb8bde638a3e90df64`  
		Last Modified: Tue, 14 Jul 2026 02:37:08 GMT  
		Size: 6.5 MB (6507441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c23f58e5885db5af2ea3d1e116f0aeacbf4ce56b85d239801e4f9caeb52ea5c5`  
		Last Modified: Tue, 14 Jul 2026 02:37:07 GMT  
		Size: 654.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55138dbfccc2a2c7be22ead5c536c3ba938855cb08374206c6a68d7874801ee5`  
		Last Modified: Tue, 14 Jul 2026 02:37:08 GMT  
		Size: 14.1 MB (14087529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1c18333b65e95ceb1434221dc959bd23a2afbbdcb16031326d285e6c93f338`  
		Last Modified: Tue, 14 Jul 2026 02:37:07 GMT  
		Size: 2.1 KB (2140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90f07f7ef972e403f6ed3f6a85c57576159d2a016d7857ff5a3581d8729b681c`  
		Last Modified: Tue, 14 Jul 2026 02:37:08 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a75d792ae29d18fb6b3140b3bf1d189a6efb3003941840b77b8171823c1ce08`  
		Last Modified: Tue, 14 Jul 2026 02:37:08 GMT  
		Size: 800.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:5-fpm` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:86450e4f6e4989bd74c491ad0fca77a35c07d8d53f292f6d85aa55ac070668b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 KB (46558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dbda134e980dd0fddc6402c005e11c949235104ecc72bb56658c6b70c401594`

```dockerfile
```

-	Layers:
	-	`sha256:0a76b0c53e2ad5e834566d340d12db1d109f09b942b96979b16ccdf82cdf99ef`  
		Last Modified: Tue, 14 Jul 2026 02:37:07 GMT  
		Size: 46.6 KB (46558 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:5-fpm` - linux; ppc64le

```console
$ docker pull phpmyadmin@sha256:e1aeca6e82ea9f4e5263ec0116def812ab13fa236919e2b1893266d2410ef171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.2 MB (189191245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7add598e54029cca2676976f8ea887a00fad4b5805d55e9f008ef0cd6ae372fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:47:57 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 02:45:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 02:45:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:52:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 02:52:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:52:42 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 02:52:43 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 02:52:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 02:52:43 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 02:52:43 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 14 Jul 2026 02:52:43 GMT
STOPSIGNAL SIGQUIT
# Tue, 14 Jul 2026 02:52:43 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 14 Jul 2026 02:52:43 GMT
CMD ["php-fpm"]
# Tue, 14 Jul 2026 11:52:44 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Tue, 14 Jul 2026 11:52:44 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Tue, 14 Jul 2026 11:52:44 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         gnupg         dirmngr     ;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libbz2-dev         libfreetype6-dev         libjpeg-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     extdir="$(php -r 'echo ini_get("extension_dir");')";     ldd "$extdir"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;             apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     ldd "$extdir"/*.so | grep -qzv "=> not found" || (echo "Sanity check failed: missing libraries:"; ldd "$extdir"/*.so | grep " => not found"; exit 1);     ldd "$extdir"/*.so | grep -q "libzip.so.* => .*/libzip.so.*" || (echo "Sanity check failed: libzip.so is not referenced"; ldd "$extdir"/*.so; exit 1);     err="$(php --version 3>&1 1>&2 2>&3)";     [ -z "$err" ] || (echo "Sanity check failed: php returned errors; $err"; exit 1;); # buildkit
# Tue, 14 Jul 2026 11:52:44 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Tue, 14 Jul 2026 11:52:44 GMT
ENV MAX_EXECUTION_TIME=600
# Tue, 14 Jul 2026 11:52:44 GMT
ENV MEMORY_LIMIT=512M
# Tue, 14 Jul 2026 11:52:44 GMT
ENV UPLOAD_LIMIT=2048K
# Tue, 14 Jul 2026 11:52:44 GMT
ENV TZ=UTC
# Tue, 14 Jul 2026 11:52:44 GMT
ENV SESSION_SAVE_PATH=/sessions
# Tue, 14 Jul 2026 11:52:45 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Tue, 14 Jul 2026 11:52:45 GMT
USER www-data:www-data
# Tue, 14 Jul 2026 11:52:45 GMT
ENV VERSION=5.2.3
# Tue, 14 Jul 2026 11:52:45 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Tue, 14 Jul 2026 11:52:45 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Tue, 14 Jul 2026 11:52:45 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Tue, 14 Jul 2026 11:52:55 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Tue, 14 Jul 2026 11:52:55 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Tue, 14 Jul 2026 11:52:56 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Tue, 14 Jul 2026 11:52:56 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 14 Jul 2026 11:52:56 GMT
USER root
# Tue, 14 Jul 2026 11:52:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 11:52:56 GMT
CMD ["php-fpm"]
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
	-	`sha256:b0ed182de2819c2c627c7bb57ef1ef7380e7215fa85eefa9a24cad015e24a9df`  
		Last Modified: Tue, 14 Jul 2026 02:49:00 GMT  
		Size: 12.8 MB (12760323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8b3fa2ed4f4e7e203cc640cc1b97c8b10061e007d951fe355c600dc902ce5c`  
		Last Modified: Tue, 14 Jul 2026 02:48:59 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ab9d715bf1234b2f3dc84c3fa5cce006ce388fd9dbcddbb5a9bfbb80653c910`  
		Last Modified: Tue, 14 Jul 2026 02:53:05 GMT  
		Size: 12.4 MB (12441611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cc89dbd7e832ae772f1b97bfee6b41f92425be5b19507413f91fdd232ab998`  
		Last Modified: Tue, 14 Jul 2026 02:53:04 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a711fa841699ca48c703da7c4b39a4f10c8e75232439590e6622188624466f1`  
		Last Modified: Tue, 14 Jul 2026 02:53:04 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96914a4bb4af90a658ffcd78034ca19cf797a93d1b5a2b6875c7008cad5453ae`  
		Last Modified: Tue, 14 Jul 2026 02:53:04 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4209559406528ece41f4a94546a44c42907c2d685d8ca8434caf411d5e44a94d`  
		Last Modified: Tue, 14 Jul 2026 02:53:06 GMT  
		Size: 9.3 KB (9254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1efe47754efef3014b1d94189e6ea3668d9e86d6a2da702f8e096861aa42fec`  
		Last Modified: Tue, 14 Jul 2026 11:53:08 GMT  
		Size: 6.7 MB (6682690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbabfe17f70fe00abc72d8e2c3b095b65e7d15653a4084aa450aa17a7c140a3`  
		Last Modified: Tue, 14 Jul 2026 11:53:07 GMT  
		Size: 657.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:570d08bfa37d83f68d20cf7e9a724c645928db3dd422a9220171380d51ced8f6`  
		Last Modified: Tue, 14 Jul 2026 11:53:08 GMT  
		Size: 14.1 MB (14087526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2a6ba9e97e61b955f164b053e68ff41a2034849bbe8d0b5ba7de022dfb31727`  
		Last Modified: Tue, 14 Jul 2026 11:53:07 GMT  
		Size: 2.1 KB (2140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:917c42b5aedcbbc5779fb230fb917f5d7afc99c64c6a823d5f1d8cf789968344`  
		Last Modified: Tue, 14 Jul 2026 11:53:09 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24fce842b79c6ca8a8da280393e402898d96ed4f5e788ab77dd74ecea2268359`  
		Last Modified: Tue, 14 Jul 2026 11:53:09 GMT  
		Size: 800.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:5-fpm` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:88c49b23db3713cfd9753151baf306c75e71064776d45f41cfb79a1bd27d668a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 KB (46643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b19ea15e68a437ba975a4706797471d35afe58a8370baf697a29c4f78a02d8`

```dockerfile
```

-	Layers:
	-	`sha256:d907f60962512c768de387862c15fd028701f40191b61669507f8d21f06acc9b`  
		Last Modified: Tue, 14 Jul 2026 11:53:07 GMT  
		Size: 46.6 KB (46643 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:5-fpm` - linux; riscv64

```console
$ docker pull phpmyadmin@sha256:358f7b223c0771267054dbcb5a80b53e39ffc6687415652d9a66d20e995e55c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219054648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:128e166832313fadd20609592c03386c9b3b7e7bec7ff8c2114fc1e671da2ebb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 25 Jun 2026 03:12:45 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_VERSION=8.3.32
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Fri, 03 Jul 2026 15:29:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 03 Jul 2026 15:29:44 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 03 Jul 2026 17:27:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 03 Jul 2026 17:27:39 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 03 Jul 2026 17:27:40 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 03 Jul 2026 17:27:41 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 03 Jul 2026 17:27:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Jul 2026 17:27:41 GMT
WORKDIR /var/www/html
# Fri, 03 Jul 2026 17:27:42 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Fri, 03 Jul 2026 17:27:42 GMT
STOPSIGNAL SIGQUIT
# Fri, 03 Jul 2026 17:27:42 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 03 Jul 2026 17:27:42 GMT
CMD ["php-fpm"]
# Sat, 04 Jul 2026 07:42:00 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Sat, 04 Jul 2026 07:42:00 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Sat, 04 Jul 2026 07:42:00 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         gnupg         dirmngr     ;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libbz2-dev         libfreetype6-dev         libjpeg-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     extdir="$(php -r 'echo ini_get("extension_dir");')";     ldd "$extdir"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;             apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     ldd "$extdir"/*.so | grep -qzv "=> not found" || (echo "Sanity check failed: missing libraries:"; ldd "$extdir"/*.so | grep " => not found"; exit 1);     ldd "$extdir"/*.so | grep -q "libzip.so.* => .*/libzip.so.*" || (echo "Sanity check failed: libzip.so is not referenced"; ldd "$extdir"/*.so; exit 1);     err="$(php --version 3>&1 1>&2 2>&3)";     [ -z "$err" ] || (echo "Sanity check failed: php returned errors; $err"; exit 1;); # buildkit
# Sat, 04 Jul 2026 07:42:00 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Sat, 04 Jul 2026 07:42:00 GMT
ENV MAX_EXECUTION_TIME=600
# Sat, 04 Jul 2026 07:42:00 GMT
ENV MEMORY_LIMIT=512M
# Sat, 04 Jul 2026 07:42:00 GMT
ENV UPLOAD_LIMIT=2048K
# Sat, 04 Jul 2026 07:42:00 GMT
ENV TZ=UTC
# Sat, 04 Jul 2026 07:42:00 GMT
ENV SESSION_SAVE_PATH=/sessions
# Sat, 04 Jul 2026 07:42:00 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Sat, 04 Jul 2026 07:42:00 GMT
USER www-data:www-data
# Sat, 04 Jul 2026 07:42:00 GMT
ENV VERSION=5.2.3
# Sat, 04 Jul 2026 07:42:00 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Sat, 04 Jul 2026 07:42:00 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Sat, 04 Jul 2026 07:42:00 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Sat, 04 Jul 2026 07:42:29 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Sat, 04 Jul 2026 07:42:29 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Sat, 04 Jul 2026 07:42:29 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Sat, 04 Jul 2026 07:42:30 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 04 Jul 2026 07:42:30 GMT
USER root
# Sat, 04 Jul 2026 07:42:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Jul 2026 07:42:30 GMT
CMD ["php-fpm"]
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
	-	`sha256:6ea22dd5effb4fc913a15a958cded87b8a40787a265af647de239e981f2665d7`  
		Last Modified: Fri, 03 Jul 2026 17:30:39 GMT  
		Size: 12.8 MB (12767765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155b1bf567cc930f8540be8018ca590914505937719cc01daac13a5667e315e6`  
		Last Modified: Fri, 03 Jul 2026 17:30:34 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf817a6a6978fa44c0c1b4c7b3109ae32c1067b78b52792dc8d5a1f42b3a588d`  
		Last Modified: Fri, 03 Jul 2026 17:30:39 GMT  
		Size: 11.6 MB (11599620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d459b08103febbc3bf3e197b439517d321f0633f691514bd37f1e50b55a2c5d9`  
		Last Modified: Fri, 03 Jul 2026 17:30:35 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1acc3930d54d096ab418f56b29b13c1165e7f5c0e3d713a3f8191269148d94f1`  
		Last Modified: Fri, 03 Jul 2026 17:30:37 GMT  
		Size: 255.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f240772c9cc5ab272741907bc232c65945c70d3125ba0162b778fdba16b066`  
		Last Modified: Fri, 03 Jul 2026 17:30:37 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d7393a91b386ffb00f6daf303039585a09c4141bee4c20cf26071c45975fd7`  
		Last Modified: Fri, 03 Jul 2026 17:30:39 GMT  
		Size: 9.3 KB (9262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ff87a2f9fe557556922113411fa93195365058816d545809f5f5baa49bf782`  
		Last Modified: Sat, 04 Jul 2026 07:43:39 GMT  
		Size: 5.7 MB (5714526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6931dcf11b69851a00fbd10c85a71443f1803c56384a4d475084c843742884b8`  
		Last Modified: Sat, 04 Jul 2026 07:43:37 GMT  
		Size: 658.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022f2e13823c63c67c0d9ab0efbb4554f93753a58b0a3fa625697b822566e331`  
		Last Modified: Sat, 04 Jul 2026 07:43:40 GMT  
		Size: 14.1 MB (14087525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6096d77b876173cb375105e5bcbf6cd84642ce627d26df617b5c91b25038934d`  
		Last Modified: Sat, 04 Jul 2026 07:43:37 GMT  
		Size: 2.1 KB (2140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dda4b28b3c3a47dd635fcc51992b09e0bfe4891e7e4a672f8aed747b8dbf870`  
		Last Modified: Sat, 04 Jul 2026 07:43:39 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1196a8da2bfafaef5ffd7ca94eaa998a2f542160d8d3c0e56b757022376531ae`  
		Last Modified: Sat, 04 Jul 2026 07:43:39 GMT  
		Size: 800.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:5-fpm` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:7051335966e9f070335189f15ece5c953183c044d6667b989b3bbb033de8ff24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 KB (46643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f0c82ba58f5da458802e46f88e28b8d9a04ba557ae5fafdd5f2a7038f28fa65`

```dockerfile
```

-	Layers:
	-	`sha256:c1916a4ece43d022254e720bd4c7502092ad5b9748338d4ab4d4967cbddc06ce`  
		Last Modified: Sat, 04 Jul 2026 07:43:37 GMT  
		Size: 46.6 KB (46643 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:5-fpm` - linux; s390x

```console
$ docker pull phpmyadmin@sha256:6c98edbf512507268d55532a175670459d5d17ec7445290d98604fda1d9743a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166929555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc7d0e31675609724eb43a3bb233b04f5d8392c20b029fc2d4f478cad14c1103`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:26:35 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:27:05 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:27:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:27:05 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:27:06 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:27:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:27:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:27:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:27:06 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:27:06 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:27:06 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:27:06 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 02:05:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 02:05:00 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:08:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 02:08:36 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:08:37 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 02:08:37 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 02:08:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 02:08:37 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 02:08:37 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 14 Jul 2026 02:08:37 GMT
STOPSIGNAL SIGQUIT
# Tue, 14 Jul 2026 02:08:37 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 14 Jul 2026 02:08:37 GMT
CMD ["php-fpm"]
# Tue, 14 Jul 2026 04:40:56 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Tue, 14 Jul 2026 04:40:56 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Tue, 14 Jul 2026 04:40:56 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         gnupg         dirmngr     ;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libbz2-dev         libfreetype6-dev         libjpeg-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     extdir="$(php -r 'echo ini_get("extension_dir");')";     ldd "$extdir"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;             apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     ldd "$extdir"/*.so | grep -qzv "=> not found" || (echo "Sanity check failed: missing libraries:"; ldd "$extdir"/*.so | grep " => not found"; exit 1);     ldd "$extdir"/*.so | grep -q "libzip.so.* => .*/libzip.so.*" || (echo "Sanity check failed: libzip.so is not referenced"; ldd "$extdir"/*.so; exit 1);     err="$(php --version 3>&1 1>&2 2>&3)";     [ -z "$err" ] || (echo "Sanity check failed: php returned errors; $err"; exit 1;); # buildkit
# Tue, 14 Jul 2026 04:40:56 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Tue, 14 Jul 2026 04:40:56 GMT
ENV MAX_EXECUTION_TIME=600
# Tue, 14 Jul 2026 04:40:56 GMT
ENV MEMORY_LIMIT=512M
# Tue, 14 Jul 2026 04:40:56 GMT
ENV UPLOAD_LIMIT=2048K
# Tue, 14 Jul 2026 04:40:56 GMT
ENV TZ=UTC
# Tue, 14 Jul 2026 04:40:56 GMT
ENV SESSION_SAVE_PATH=/sessions
# Tue, 14 Jul 2026 04:40:56 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Tue, 14 Jul 2026 04:40:56 GMT
USER www-data:www-data
# Tue, 14 Jul 2026 04:40:56 GMT
ENV VERSION=5.2.3
# Tue, 14 Jul 2026 04:40:56 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Tue, 14 Jul 2026 04:40:56 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Tue, 14 Jul 2026 04:40:56 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Tue, 14 Jul 2026 04:41:00 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Tue, 14 Jul 2026 04:41:01 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Tue, 14 Jul 2026 04:41:01 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Tue, 14 Jul 2026 04:41:01 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 14 Jul 2026 04:41:01 GMT
USER root
# Tue, 14 Jul 2026 04:41:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:41:01 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25799b78aff0ad181ae100c3dcd894705b8aa8fa6e85d00d5ba954f8834d52e9`  
		Last Modified: Tue, 14 Jul 2026 01:32:50 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:614aa0bb71fd864222d1a937cf49f6eb783e4a2387909ff9edc67dd5b25d94cb`  
		Last Modified: Tue, 14 Jul 2026 01:32:53 GMT  
		Size: 92.6 MB (92572411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f091238432fd4922d015fedfb4d5c24e6289c2ec0e6e0c4e803b6e72e275be`  
		Last Modified: Tue, 14 Jul 2026 01:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b1f26420b74e58f2e9d49641f639cf9e015ba84fc24396b199493d0a7c3c6a`  
		Last Modified: Tue, 14 Jul 2026 02:08:58 GMT  
		Size: 12.8 MB (12752145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:103ce611b7013355ec46b0762c9afba05da35994f97258ba3a97b6055bcf1ad8`  
		Last Modified: Tue, 14 Jul 2026 02:08:58 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94124c6d9a17331c760f21e0d49634901b0e6054fa601c5f2badaa936d944e59`  
		Last Modified: Tue, 14 Jul 2026 02:08:58 GMT  
		Size: 11.8 MB (11774484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67cb19ca0a475d1ea4bb0c66cc26aac915a2801760e5b49f3800ae25a933d005`  
		Last Modified: Tue, 14 Jul 2026 02:08:58 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8983f7df2c6199b5037e6347886c031bd09bafacdf41517685c07ff98a472bc9`  
		Last Modified: Tue, 14 Jul 2026 02:08:59 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea723c0fed86c24789bb64bf24173e5c42f5d1b3ee108660f0c36b1cd3be327`  
		Last Modified: Tue, 14 Jul 2026 02:08:59 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d10bcb8cf98d5f4e5cbae0f6b72a7b62a82360c1dff9f6612f48cbb5b041f6`  
		Last Modified: Tue, 14 Jul 2026 02:08:59 GMT  
		Size: 9.3 KB (9256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ec2f42be3e89f408485ab68ba73a55b13e7090caf0fa20d5e24196181449c4`  
		Last Modified: Tue, 14 Jul 2026 04:41:11 GMT  
		Size: 5.9 MB (5878713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e72da952bc6ad48634eb161afd03c5f4160bff2c7292ed2543b9fdcf94a53f`  
		Last Modified: Tue, 14 Jul 2026 04:41:11 GMT  
		Size: 653.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54edcd121ae0146e6752b5eb5e9a1cef9e30801962d5aa8e490fe82370ce0fa`  
		Last Modified: Tue, 14 Jul 2026 04:41:11 GMT  
		Size: 14.1 MB (14087555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf67388b79c1a5f023ceb9f756da213f5476d8787f604a0432cadebc9615e6d4`  
		Last Modified: Tue, 14 Jul 2026 04:41:11 GMT  
		Size: 2.1 KB (2139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d15ae296e1ca385a54f6c694df8ad98a516174e45876a95be759e2e1192781e6`  
		Last Modified: Tue, 14 Jul 2026 04:41:12 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4886ba033aa003eed22412c168d7c21d646f165f1d1785b01b4aefd47b85bd5`  
		Last Modified: Tue, 14 Jul 2026 04:41:12 GMT  
		Size: 800.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:5-fpm` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:6e642e46fc8956c920fdba6cb2cf90f3d1fb590cd0c2f724064c6c925369ec93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 KB (46588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861cd8b16c2fdedaa7428c54daf8762de07b6692c7a99e6f64fb8eb825127a77`

```dockerfile
```

-	Layers:
	-	`sha256:0f2abd4919ef3ec58c1130ffbff0aac5a9679c6eb631d2dc9a48f9b7f7f69434`  
		Last Modified: Tue, 14 Jul 2026 04:41:11 GMT  
		Size: 46.6 KB (46588 bytes)  
		MIME: application/vnd.in-toto+json
