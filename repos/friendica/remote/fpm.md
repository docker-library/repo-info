## `friendica:fpm`

```console
$ docker pull friendica@sha256:8fe019308ff4fd75cc7f07d23c52a5e80d50b2ff8c8c7304f509eb982a085686
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

### `friendica:fpm` - linux; amd64

```console
$ docker pull friendica@sha256:5162dc4a78ba6968323acbfe70e620da386227bd357dae24f9e73a8c7d3cbbb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.3 MB (308289103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d35260a2511fc65ace443676304370b25905f4b34a43f5948fbf1ce4d2b35ee`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 20:17:41 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 27 Aug 2026 20:17:57 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 27 Aug 2026 20:17:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 20:17:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:17:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:17:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:17:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:17:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:17:57 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:17:57 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:17:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:17:57 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:18:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 27 Aug 2026 20:18:05 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:20:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:20:22 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:20:23 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:20:23 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:20:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:20:23 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:20:23 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:20:23 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:20:23 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:20:23 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 20:30:56 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Thu, 27 Aug 2026 20:31:06 GMT
ENV GOSU_VERSION=1.17
# Thu, 27 Aug 2026 20:31:06 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 27 Aug 2026 20:33:31 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 20:33:31 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 27 Aug 2026 20:33:31 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 27 Aug 2026 20:33:31 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Thu, 27 Aug 2026 20:33:31 GMT
RUN set -ex;     echo access.format = '"%{REMOTE_ADDR}e - %u %t \"%m %r\" %s"' >> /usr/local/etc/php-fpm.d/docker.conf; # buildkit
# Thu, 27 Aug 2026 20:33:31 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Thu, 27 Aug 2026 20:33:31 GMT
VOLUME [/var/www/html]
# Thu, 27 Aug 2026 20:33:31 GMT
VOLUME [/var/www/data]
# Thu, 27 Aug 2026 20:33:31 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Thu, 27 Aug 2026 20:33:31 GMT
ENV FRIENDICA_VERSION=2026.05
# Thu, 27 Aug 2026 20:33:31 GMT
ENV FRIENDICA_DOWNLOAD_SHA256=b0a1e218c4a5a30d25b8be5a66cb97a4f4f802b98e7cf3d0d34ce045b2714ab2
# Thu, 27 Aug 2026 20:33:47 GMT
RUN set -ex;     fetchDeps="         gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 08656443618E6567A39524083EE197EF3F9E4287;         curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz";     curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc";     gpg --batch --verify friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz;     echo "${FRIENDICA_DOWNLOAD_SHA256} *friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz" | sha256sum -c;     tar -xzf friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz -C /usr/src/;     rm friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc;     mv -f /usr/src/friendica-all-in-one-${FRIENDICA_VERSION}/ /usr/src/friendica;     chmod 777 /usr/src/friendica/view/smarty3;         gpgconf --kill all;     rm -rf "$GNUPGHOME";         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 20:33:47 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 27 Aug 2026 20:33:47 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Thu, 27 Aug 2026 20:33:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Aug 2026 20:33:47 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e4e21edac3719784f3d99ea9a827b6325bd1b4b8bbab7fd73a51a3deb597d9`  
		Last Modified: Thu, 27 Aug 2026 20:20:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:255a18af27b195a6141cf57ea54927e6a3050a42bf05a5d8b00a65485438aca8`  
		Last Modified: Thu, 27 Aug 2026 20:20:46 GMT  
		Size: 120.8 MB (120814198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017dd0d6f8be1a1570bdbdb22cb5028b076c13bc77e938e2a6ce08f85d4203d8`  
		Last Modified: Thu, 27 Aug 2026 20:20:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a703bdb7a61b84ad554bb6ecb3b7e05d2d0086b68282e9b57ab35ddd8c479ea6`  
		Last Modified: Thu, 27 Aug 2026 20:20:43 GMT  
		Size: 13.9 MB (13906991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3799e443bea822c91716c995507ced0efc104b8e5e38b7ef37eaecdda8f3fd2c`  
		Last Modified: Thu, 27 Aug 2026 20:20:44 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d61e9b603c13d765d36ecbfaaf58bde443a766fd9e1f7cee8ebc4621312651`  
		Last Modified: Thu, 27 Aug 2026 20:20:44 GMT  
		Size: 13.8 MB (13824563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9f9d857b68420f90db3d390d76858c462e50f413f5be54740058758ea75dd87`  
		Last Modified: Thu, 27 Aug 2026 20:20:45 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68abfcb97d91c483c16ed532a5895116b7a3eff1d420c55f307f0acf7496cf8b`  
		Last Modified: Thu, 27 Aug 2026 20:20:45 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6de07086b75e045e81f30d270813079a714b8b44ebce004089c5beb53eb22a6`  
		Last Modified: Thu, 27 Aug 2026 20:20:46 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f215231af08a3853745254532ae83f7c7671d4c2726a8404f28b0de42c1289`  
		Last Modified: Thu, 27 Aug 2026 20:20:46 GMT  
		Size: 9.3 KB (9268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c81c2ea549ff91d79d523c12aa96c3a3d8f9dae9c4a844a573d09415b22365b4`  
		Last Modified: Thu, 27 Aug 2026 20:33:58 GMT  
		Size: 21.3 MB (21267285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66a0667f60955d4668bc07b3c3b55ff4703027026849d8af00dad51cbf8f1f5`  
		Last Modified: Thu, 27 Aug 2026 20:33:57 GMT  
		Size: 1.1 MB (1111320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:978aaa1007d627f0989b16546dcda33689e9ce2cfa8950c555be584f799fd9d5`  
		Last Modified: Thu, 27 Aug 2026 20:33:59 GMT  
		Size: 49.4 MB (49430188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f7efe69d4227285c01d03e92f67f5a27d0a961a19985c381d7b5f5faac8fe95`  
		Last Modified: Thu, 27 Aug 2026 20:33:57 GMT  
		Size: 589.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbd916bb3e94c4f00c381b700a9e2abe1730b30320779f5e810e43a7870ab7b`  
		Last Modified: Thu, 27 Aug 2026 20:33:58 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6591b05d90b3a91a7e7f08e76ad8396170140611760ac14a7b8c6de672bf53bb`  
		Last Modified: Thu, 27 Aug 2026 20:33:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12a5d73ac4555eb681464f3af73cf6db73fd8f659f3033a30b5f43602c026ab`  
		Last Modified: Thu, 27 Aug 2026 20:34:01 GMT  
		Size: 58.1 MB (58123329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e3a609d6dd19da89775fc9497b717820ff5c04cc5618d391d73bfdb82f6573`  
		Last Modified: Thu, 27 Aug 2026 20:32:55 GMT  
		Size: 3.2 KB (3161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f34d919e50de6acac6c92b39f5dbbe0a16b282877addc62c8b5a9da144fe85`  
		Last Modified: Thu, 27 Aug 2026 20:33:59 GMT  
		Size: 925.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:fpm` - unknown; unknown

```console
$ docker pull friendica@sha256:3a8d32a5432cb203363ab01f3a97fc3cf231f0fe8fc2726a9ed9c27faa0c1153
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 KB (63324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11ce72cd85cc81bc654a08ae050a860abb0d986ffaf1b77a6bbe7afe12e7bc66`

```dockerfile
```

-	Layers:
	-	`sha256:a8f474f8305c0fc8e8c5f0214e74ec2cda0300e252bb37e95ed088176f676c08`  
		Last Modified: Thu, 27 Aug 2026 20:33:56 GMT  
		Size: 63.3 KB (63324 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:fpm` - linux; arm variant v5

```console
$ docker pull friendica@sha256:1a3da79991e50660a88e4ab9fffb269998890dc515940b28df9fab0de41949a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277881782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e01ab4868fb6bf3182d9fb344df800bb26ed2468bdbd1ffbcca231a515490d03`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 20:19:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 27 Aug 2026 20:19:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 27 Aug 2026 20:19:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 20:19:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:19:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:19:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:19:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:19:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:19:46 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:19:46 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:19:46 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:19:46 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:19:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 27 Aug 2026 20:19:58 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:22:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:22:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:23:00 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:23:00 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:23:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:23:00 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:23:00 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:23:00 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:23:00 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:23:00 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 20:33:23 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Thu, 27 Aug 2026 20:33:38 GMT
ENV GOSU_VERSION=1.17
# Thu, 27 Aug 2026 20:33:38 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 27 Aug 2026 20:36:43 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 20:36:43 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 27 Aug 2026 20:36:43 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 27 Aug 2026 20:36:43 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Thu, 27 Aug 2026 20:36:43 GMT
RUN set -ex;     echo access.format = '"%{REMOTE_ADDR}e - %u %t \"%m %r\" %s"' >> /usr/local/etc/php-fpm.d/docker.conf; # buildkit
# Thu, 27 Aug 2026 20:36:43 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Thu, 27 Aug 2026 20:36:43 GMT
VOLUME [/var/www/html]
# Thu, 27 Aug 2026 20:36:43 GMT
VOLUME [/var/www/data]
# Thu, 27 Aug 2026 20:36:43 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Thu, 27 Aug 2026 20:36:43 GMT
ENV FRIENDICA_VERSION=2026.05
# Thu, 27 Aug 2026 20:36:43 GMT
ENV FRIENDICA_DOWNLOAD_SHA256=b0a1e218c4a5a30d25b8be5a66cb97a4f4f802b98e7cf3d0d34ce045b2714ab2
# Thu, 27 Aug 2026 20:37:03 GMT
RUN set -ex;     fetchDeps="         gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 08656443618E6567A39524083EE197EF3F9E4287;         curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz";     curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc";     gpg --batch --verify friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz;     echo "${FRIENDICA_DOWNLOAD_SHA256} *friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz" | sha256sum -c;     tar -xzf friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz -C /usr/src/;     rm friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc;     mv -f /usr/src/friendica-all-in-one-${FRIENDICA_VERSION}/ /usr/src/friendica;     chmod 777 /usr/src/friendica/view/smarty3;         gpgconf --kill all;     rm -rf "$GNUPGHOME";         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 20:37:03 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 27 Aug 2026 20:37:03 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Thu, 27 Aug 2026 20:37:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Aug 2026 20:37:03 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdfed08b55a5cc661dd00e5deb5a3783926ee1ebd72a0ba58d4a0ad44400664a`  
		Last Modified: Thu, 27 Aug 2026 20:23:18 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91551b53781b61480ad2bcccfd44d4976de936671ea2cef8cf6e3517707bd74e`  
		Last Modified: Thu, 27 Aug 2026 20:23:21 GMT  
		Size: 97.3 MB (97251597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a1d51343202dbd2c635031e8fdf8c9cdb147912818df5a4b62eb1dc7130225`  
		Last Modified: Thu, 27 Aug 2026 20:23:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33955799bf09946f7cc28f0881463ec442e663aeafc0b8bc05baf2d39576d000`  
		Last Modified: Thu, 27 Aug 2026 20:23:19 GMT  
		Size: 13.9 MB (13904883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9e65e87d4aaa7b586aa21c285ae275d9f9749ab525ca30fe6ce6970d3be35a`  
		Last Modified: Thu, 27 Aug 2026 20:23:20 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ca0c1e368b3dd6ed557fe080e73dc5fd089f2f37eafb492d47bacfe4bec46d`  
		Last Modified: Thu, 27 Aug 2026 20:23:20 GMT  
		Size: 12.3 MB (12338691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf67f3b698404ad7b429e3a8f922c667300275da3a4d3c95a479f398c081e0e`  
		Last Modified: Thu, 27 Aug 2026 20:23:21 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03aca6f4357f97e0e29ae3d1f47ab9a5d5925deacd05b3773e6f4a8d32a0796`  
		Last Modified: Thu, 27 Aug 2026 20:23:21 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859765bb79e6e71d956154217fc3ed3b5a5a83c34936ab79b1dd627f144665e4`  
		Last Modified: Thu, 27 Aug 2026 20:23:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c445e848a90cbae8373e96aa02e8e996c4cb8baae07bd0635e484cfef435e1`  
		Last Modified: Thu, 27 Aug 2026 20:23:22 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf8605597a67c996590d20d6eb7fb8ea78d0ac1de8285a21d7293ee9a5e7733`  
		Last Modified: Thu, 27 Aug 2026 20:37:13 GMT  
		Size: 20.6 MB (20592142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b528a6ce1aa03142a466a3a34c575d8407e355a5ec5949eabbf68bab712d370`  
		Last Modified: Thu, 27 Aug 2026 20:37:13 GMT  
		Size: 1.1 MB (1085981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abae4f951f0feea9c9c791e9f6731e2fa49ea2b6b5092a6cdbb906a22123ec1f`  
		Last Modified: Thu, 27 Aug 2026 20:37:14 GMT  
		Size: 46.6 MB (46600633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91f60b7e4ea3b0873f6d9ffc695406109c91bdf70687aa2a4d79159c1e7af22`  
		Last Modified: Thu, 27 Aug 2026 20:37:12 GMT  
		Size: 588.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817c2d7d17678a3679f2cd71dd56ad6ec429dddaf22745391ca6a98722e51892`  
		Last Modified: Thu, 27 Aug 2026 20:37:14 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94844ad767753a3140a62a0a0528d2f8dd82ef17f1b68687793ca36fd98957ac`  
		Last Modified: Thu, 27 Aug 2026 20:37:14 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d65b0e642f981c796471e81a0ca29b2c7008034e3c545d5bc76e4ba009248f9`  
		Last Modified: Thu, 27 Aug 2026 20:37:16 GMT  
		Size: 58.1 MB (58120332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aad516671e8610e74c4224e9b3683564dd7bce38db933c42303d23f53291822`  
		Last Modified: Thu, 27 Aug 2026 20:37:15 GMT  
		Size: 3.2 KB (3162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d027fcdd1812e32129bf57966b41b3589717a54d7e7daa1c2b62fb29c423dcc`  
		Last Modified: Thu, 27 Aug 2026 20:37:16 GMT  
		Size: 926.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:fpm` - unknown; unknown

```console
$ docker pull friendica@sha256:f0e74b0c8224f518271ac8b58cc40cd1bb47384856466b41fa5a58a1556ef47c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 KB (63464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896fe5a7d46ff607ba8b62ac9658b392ff2b9306b69b2d35facc727e1af42143`

```dockerfile
```

-	Layers:
	-	`sha256:5b6b5d8c4f5d08fa9897c67a103abee38df4f87342ab7af41c2fd2125e45c7cc`  
		Last Modified: Thu, 27 Aug 2026 20:37:12 GMT  
		Size: 63.5 KB (63464 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:fpm` - linux; arm variant v7

```console
$ docker pull friendica@sha256:953cb6b79ec7c98ca28cbcdd9db1c967a68ea72ef4ed475f3fd46948f5169b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.8 MB (264775151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad0de8cc8fa3d07d1f2a3971561e8ef36e4d57cd0054d00182a796dbf20e10b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 20:17:00 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 27 Aug 2026 20:17:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 27 Aug 2026 20:17:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 20:17:19 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:17:19 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:17:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:17:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:17:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:17:19 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:17:19 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:17:19 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:17:19 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:24:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 27 Aug 2026 20:24:11 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:27:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:27:11 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:27:11 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:27:11 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:27:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:27:11 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:27:11 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:27:11 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:27:11 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:27:11 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 21:18:24 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Thu, 27 Aug 2026 21:18:35 GMT
ENV GOSU_VERSION=1.17
# Thu, 27 Aug 2026 21:18:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 27 Aug 2026 21:21:23 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 21:21:23 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 27 Aug 2026 21:21:23 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 27 Aug 2026 21:21:23 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Thu, 27 Aug 2026 21:21:23 GMT
RUN set -ex;     echo access.format = '"%{REMOTE_ADDR}e - %u %t \"%m %r\" %s"' >> /usr/local/etc/php-fpm.d/docker.conf; # buildkit
# Thu, 27 Aug 2026 21:21:24 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Thu, 27 Aug 2026 21:21:24 GMT
VOLUME [/var/www/html]
# Thu, 27 Aug 2026 21:21:24 GMT
VOLUME [/var/www/data]
# Thu, 27 Aug 2026 21:21:24 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Thu, 27 Aug 2026 21:21:24 GMT
ENV FRIENDICA_VERSION=2026.05
# Thu, 27 Aug 2026 21:21:24 GMT
ENV FRIENDICA_DOWNLOAD_SHA256=b0a1e218c4a5a30d25b8be5a66cb97a4f4f802b98e7cf3d0d34ce045b2714ab2
# Thu, 27 Aug 2026 21:21:41 GMT
RUN set -ex;     fetchDeps="         gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 08656443618E6567A39524083EE197EF3F9E4287;         curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz";     curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc";     gpg --batch --verify friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz;     echo "${FRIENDICA_DOWNLOAD_SHA256} *friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz" | sha256sum -c;     tar -xzf friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz -C /usr/src/;     rm friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc;     mv -f /usr/src/friendica-all-in-one-${FRIENDICA_VERSION}/ /usr/src/friendica;     chmod 777 /usr/src/friendica/view/smarty3;         gpgconf --kill all;     rm -rf "$GNUPGHOME";         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 21:21:41 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 27 Aug 2026 21:21:41 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Thu, 27 Aug 2026 21:21:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Aug 2026 21:21:41 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a622ec0d910b4682b04d62ab8e196b41a807219224ee8d1bffb8c3e5471beb45`  
		Last Modified: Thu, 27 Aug 2026 20:20:25 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082f264442595f63ebd66f3d4443d103f49c008dc95f4b1dedea8606c44854ad`  
		Last Modified: Thu, 27 Aug 2026 20:20:28 GMT  
		Size: 88.5 MB (88459777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee783ef141fcb1dc8682e8cc1672b9f558bdc112ffcbc27eaefbba93f5cd5aa`  
		Last Modified: Thu, 27 Aug 2026 20:20:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f661460603faf4fac85655a1793ebf07b2b59b46361cf5114ba0666c0ffcd219`  
		Last Modified: Thu, 27 Aug 2026 20:27:22 GMT  
		Size: 13.9 MB (13904953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63ccddc896289ef206058e776f0d3a59920d7fe898345ea37eb7f1445c52eff`  
		Last Modified: Thu, 27 Aug 2026 20:27:21 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4803b9a77b43d36e4b282a7428993f1cb4af0b6208925c65df003206758846`  
		Last Modified: Thu, 27 Aug 2026 20:27:22 GMT  
		Size: 11.7 MB (11667434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74903933b320f0a4472fb857d9c3d21efaa3e9dc7d1e2b33a496913fa7e71dc1`  
		Last Modified: Thu, 27 Aug 2026 20:27:21 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3148d814ddd49154e19dedf034542ebc32705c8b5b0cd571750747fe4bc81e1`  
		Last Modified: Thu, 27 Aug 2026 20:27:22 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aa6ec9f6de9374982ec9eb5e3bd4a1c982f79956e38a8d09d98a94227ab6758`  
		Last Modified: Thu, 27 Aug 2026 20:27:22 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc636136944a631495ea6706fd7810eb7c0ebafb3ce486949160196563184ecd`  
		Last Modified: Thu, 27 Aug 2026 20:27:23 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ba311ae7290946aa37845cbb1f76319ab713d1adfaff5378a434545d4e5095`  
		Last Modified: Thu, 27 Aug 2026 21:21:52 GMT  
		Size: 20.4 MB (20424367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e36103f278f4bd2fc124a6da80bf5353d29d59e339d091f452340aee577762db`  
		Last Modified: Thu, 27 Aug 2026 21:21:51 GMT  
		Size: 1.1 MB (1076175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ae058b01b53cd0f8730ba90304cc27d2db68410a189e522cc5597782900928`  
		Last Modified: Thu, 27 Aug 2026 21:21:52 GMT  
		Size: 44.9 MB (44884219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a00594778d7b9d597efef54b3146e7a17cfe7b1bf142ced0eb45f3be46f7d2b`  
		Last Modified: Thu, 27 Aug 2026 21:21:51 GMT  
		Size: 589.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:687b5d3919f531a78bc8f734ad29e2da663c6a0c808133ae4096670efaca9755`  
		Last Modified: Thu, 27 Aug 2026 21:21:52 GMT  
		Size: 572.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb98297cea1b61ffe57e0df1ced59c9235fd815a113991f29bc18b9f5b6df9a`  
		Last Modified: Thu, 27 Aug 2026 21:21:52 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43439642544efddd0bb82ea1716eb0230408269ef40bf5d5b23d13e9f8aac489`  
		Last Modified: Thu, 27 Aug 2026 21:21:55 GMT  
		Size: 58.1 MB (58120503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95ca95bfbc562fbc2319f993159ccc70c2eb66a4cb2141c330db1966f813a1c`  
		Last Modified: Thu, 27 Aug 2026 21:21:53 GMT  
		Size: 3.2 KB (3162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c39eb6a61ee605ad7d25329633aa79121749340e1cda6ac168368f2c05ff151`  
		Last Modified: Thu, 27 Aug 2026 21:21:53 GMT  
		Size: 925.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:fpm` - unknown; unknown

```console
$ docker pull friendica@sha256:b540a26175fccac163a393961d451d6eef8a860dc3fccfb5b90001cd392f6b1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 KB (63464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4fde759014d373aef0abc378e52c9875638979262a2a928a0529dffb63cb218`

```dockerfile
```

-	Layers:
	-	`sha256:71f1727fefa813fe16612e93e8dc90303d13ebaad7791e1a5f7a786eeef6d000`  
		Last Modified: Thu, 27 Aug 2026 21:21:50 GMT  
		Size: 63.5 KB (63464 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:fpm` - linux; arm64 variant v8

```console
$ docker pull friendica@sha256:aae5e93ae7a3c6dd1fee473c6294ad4f8a49283707af0667f855f1089d196b70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299437584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05429ec288b3148d9a039dfe2497239ccee19e2e130a0de7f2e4ec219be67489`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 20:18:01 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 27 Aug 2026 20:18:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 27 Aug 2026 20:18:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 20:18:19 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:18:19 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:18:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:18:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:18:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:18:19 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:18:19 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:18:19 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:18:19 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:18:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 27 Aug 2026 20:18:27 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:21:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:21:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:21:30 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:21:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:21:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:21:30 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:21:30 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:21:30 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:21:30 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:21:30 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 20:31:05 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Thu, 27 Aug 2026 20:31:14 GMT
ENV GOSU_VERSION=1.17
# Thu, 27 Aug 2026 20:31:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 27 Aug 2026 20:33:56 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 20:33:56 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 27 Aug 2026 20:33:56 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 27 Aug 2026 20:33:56 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Thu, 27 Aug 2026 20:33:57 GMT
RUN set -ex;     echo access.format = '"%{REMOTE_ADDR}e - %u %t \"%m %r\" %s"' >> /usr/local/etc/php-fpm.d/docker.conf; # buildkit
# Thu, 27 Aug 2026 20:33:57 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Thu, 27 Aug 2026 20:33:57 GMT
VOLUME [/var/www/html]
# Thu, 27 Aug 2026 20:33:57 GMT
VOLUME [/var/www/data]
# Thu, 27 Aug 2026 20:33:57 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Thu, 27 Aug 2026 20:33:57 GMT
ENV FRIENDICA_VERSION=2026.05
# Thu, 27 Aug 2026 20:33:57 GMT
ENV FRIENDICA_DOWNLOAD_SHA256=b0a1e218c4a5a30d25b8be5a66cb97a4f4f802b98e7cf3d0d34ce045b2714ab2
# Thu, 27 Aug 2026 20:34:12 GMT
RUN set -ex;     fetchDeps="         gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 08656443618E6567A39524083EE197EF3F9E4287;         curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz";     curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc";     gpg --batch --verify friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz;     echo "${FRIENDICA_DOWNLOAD_SHA256} *friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz" | sha256sum -c;     tar -xzf friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz -C /usr/src/;     rm friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc;     mv -f /usr/src/friendica-all-in-one-${FRIENDICA_VERSION}/ /usr/src/friendica;     chmod 777 /usr/src/friendica/view/smarty3;         gpgconf --kill all;     rm -rf "$GNUPGHOME";         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 20:34:12 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 27 Aug 2026 20:34:12 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Thu, 27 Aug 2026 20:34:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Aug 2026 20:34:12 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:872d895d3f6bced9b4cd053b519c60409d1fac964ff0ea4b9f7d7e18780fe479`  
		Last Modified: Thu, 27 Aug 2026 20:21:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db25094401122602c68b38bf36c55492e0e3918a9c5764897a19e12a54bb1561`  
		Last Modified: Thu, 27 Aug 2026 20:21:54 GMT  
		Size: 113.5 MB (113502274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18498fbd47dff3dc1638cc8751ca5e2cd2f7773cb969fa95e949c466ea27fd0d`  
		Last Modified: Thu, 27 Aug 2026 20:21:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0192c6dc3b006814d6a047723114cd5351a9938cd9b3745f7f76f046b9a78db9`  
		Last Modified: Thu, 27 Aug 2026 20:21:51 GMT  
		Size: 13.9 MB (13906675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eecfe4edc860003c5715de4fb8d3d460ea1527e02d428349840e80d358264211`  
		Last Modified: Thu, 27 Aug 2026 20:21:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d70c80146075b368c9792ac9db87784194a0de8e8e0ce066ec4757df9022486`  
		Last Modified: Thu, 27 Aug 2026 20:21:52 GMT  
		Size: 13.5 MB (13479031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36363b339b195b9946ff34e5b082184eed0aee1fd2bc32b28e2869c20b75d144`  
		Last Modified: Thu, 27 Aug 2026 20:21:52 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42be6aa7a8ffb34075ab0f703d1c453fbe75bf29d9d9a3fae76804b0d38dfb5`  
		Last Modified: Thu, 27 Aug 2026 20:21:53 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aba62b891d4d5f729de802d86fa2fa2f4fe308b8963cbeae890a459d0506656e`  
		Last Modified: Thu, 27 Aug 2026 20:21:53 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40be9449ab21c6cdee3836239d9f28e615a2e42bedc4813129152c82764ad989`  
		Last Modified: Thu, 27 Aug 2026 20:21:54 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1193f3790bc4deb37802cad7e1b37965708e09b04c6e8971cc65b394681fc93e`  
		Last Modified: Thu, 27 Aug 2026 20:34:22 GMT  
		Size: 21.0 MB (21019585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a282831933a62e5bd0b48b0b8588f2b31c3778c12f6f98b81909b6e7584e8b`  
		Last Modified: Thu, 27 Aug 2026 20:34:21 GMT  
		Size: 1.0 MB (1043690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6765a2d45a2dc6a30112a84cf0e9992e57b69b2a90e3ffebc705ec9da23358f6`  
		Last Modified: Thu, 27 Aug 2026 20:34:23 GMT  
		Size: 48.2 MB (48185508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df332cb69edb7af39906115214c3acbe9ac4153361efa9b31a3f7063b1be5a2`  
		Last Modified: Thu, 27 Aug 2026 20:34:21 GMT  
		Size: 589.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49a2dc021facdce77e3a91b2dc8ec8720eae4493b3a70b2fda018be8d217f51c`  
		Last Modified: Thu, 27 Aug 2026 20:34:23 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f81f917e4f97810c136eef8efae3bab4cc9cfdaae7b64901d62c749f08331d`  
		Last Modified: Thu, 27 Aug 2026 20:34:23 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084aac38819ee72c4a4f049deb6b03d836f3ac50e51bca8c54a4df547478f109`  
		Last Modified: Thu, 27 Aug 2026 20:34:25 GMT  
		Size: 58.1 MB (58122659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3798bfbed0a380df6465e45cce0704a79f933c27dc5bcf56711210f62d6efcce`  
		Last Modified: Thu, 27 Aug 2026 20:34:24 GMT  
		Size: 3.2 KB (3162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628ccdce054115b8d3c3ba1184d1ce939d78c817bcf2aa4e02f795410b9696d8`  
		Last Modified: Thu, 27 Aug 2026 20:34:24 GMT  
		Size: 925.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:fpm` - unknown; unknown

```console
$ docker pull friendica@sha256:b4889f7388bd6dd7f3efbb57577ab257ebc89525bccbc50e53b9fee113db7edf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 KB (63505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c52e6125eabe2d9902842343bc1f7c8f2b6c2512e2b254b03a5cc49398084e8b`

```dockerfile
```

-	Layers:
	-	`sha256:5d9b5bbed605e113e90335a90d5d77fc36c67a3596aedf0c4059a58439f5be4b`  
		Last Modified: Thu, 27 Aug 2026 20:34:21 GMT  
		Size: 63.5 KB (63505 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:fpm` - linux; 386

```console
$ docker pull friendica@sha256:4f839cd02d6ef61e9beb7e4282c78f564273a389ebe15e863ee15a0a29c194d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.8 MB (308847259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc0cbc943b2fd1681c0626990f198fcd7bff863c92af3f7dd7c103a4ccd5091`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 20:23:19 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 27 Aug 2026 20:23:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 27 Aug 2026 20:23:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 20:23:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:23:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:23:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:23:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:23:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:23:41 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:23:41 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:23:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:23:41 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:23:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 27 Aug 2026 20:23:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:27:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:27:08 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:27:08 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:27:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:27:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:27:08 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:27:08 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:27:08 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:27:08 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:27:08 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 21:14:45 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Thu, 27 Aug 2026 21:14:56 GMT
ENV GOSU_VERSION=1.17
# Thu, 27 Aug 2026 21:14:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 27 Aug 2026 21:17:26 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 21:17:26 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 27 Aug 2026 21:17:26 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 27 Aug 2026 21:17:26 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Thu, 27 Aug 2026 21:17:26 GMT
RUN set -ex;     echo access.format = '"%{REMOTE_ADDR}e - %u %t \"%m %r\" %s"' >> /usr/local/etc/php-fpm.d/docker.conf; # buildkit
# Thu, 27 Aug 2026 21:17:26 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Thu, 27 Aug 2026 21:17:26 GMT
VOLUME [/var/www/html]
# Thu, 27 Aug 2026 21:17:26 GMT
VOLUME [/var/www/data]
# Thu, 27 Aug 2026 21:17:26 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Thu, 27 Aug 2026 21:17:26 GMT
ENV FRIENDICA_VERSION=2026.05
# Thu, 27 Aug 2026 21:17:26 GMT
ENV FRIENDICA_DOWNLOAD_SHA256=b0a1e218c4a5a30d25b8be5a66cb97a4f4f802b98e7cf3d0d34ce045b2714ab2
# Thu, 27 Aug 2026 21:17:42 GMT
RUN set -ex;     fetchDeps="         gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 08656443618E6567A39524083EE197EF3F9E4287;         curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz";     curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc";     gpg --batch --verify friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz;     echo "${FRIENDICA_DOWNLOAD_SHA256} *friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz" | sha256sum -c;     tar -xzf friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz -C /usr/src/;     rm friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc;     mv -f /usr/src/friendica-all-in-one-${FRIENDICA_VERSION}/ /usr/src/friendica;     chmod 777 /usr/src/friendica/view/smarty3;         gpgconf --kill all;     rm -rf "$GNUPGHOME";         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 21:17:42 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 27 Aug 2026 21:17:42 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Thu, 27 Aug 2026 21:17:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Aug 2026 21:17:42 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb9583c428f0ce675275744f3998a065a1e9e52013375d221a33a5bcf278fef2`  
		Last Modified: Thu, 27 Aug 2026 20:27:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d08f4bd0707bf0ef1bfdf298827e1ddeb1c00471884c6202959120b09127396`  
		Last Modified: Thu, 27 Aug 2026 20:27:34 GMT  
		Size: 119.0 MB (119043743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8eda803618e8417da802e8e47cbe6160aa1879716a763109fdf60375909d1ea`  
		Last Modified: Thu, 27 Aug 2026 20:27:30 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66be3b67ace4a3b86393f5a5ea7fca544dd895b4c2444dd2cfb1277811b5fbea`  
		Last Modified: Thu, 27 Aug 2026 20:27:31 GMT  
		Size: 13.9 MB (13906149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f87975a1b6452828e997c26b3da44f63c1c5bcc0dc30512cb95f2f309e1e6bec`  
		Last Modified: Thu, 27 Aug 2026 20:27:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98fa941f783ea142d72b52861ed0b979e7ccdfac78861cd6d92c2c3389234c22`  
		Last Modified: Thu, 27 Aug 2026 20:27:32 GMT  
		Size: 14.1 MB (14122424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ea6a88f6c3d6b06639ab8238f82654aafc68efd46ddeed1a36245d4796e09f`  
		Last Modified: Thu, 27 Aug 2026 20:27:33 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfd9e22a5123dea8c7ba944c9c6114d002bd96231961c732fd047338403f722f`  
		Last Modified: Thu, 27 Aug 2026 20:27:33 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc61e02a4274305c902565c17e96cedbc4be90a0f36c8e80bc78aa271eb902c`  
		Last Modified: Thu, 27 Aug 2026 20:27:34 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ccda3b6e2ba1dde557c929604ec943a364bd650dc174d170fd5ea45e0be4fe`  
		Last Modified: Thu, 27 Aug 2026 20:27:34 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8219a7c9795e8db1e7b063d361d7d32e995246cfcefceadfc32b5663f96c574e`  
		Last Modified: Thu, 27 Aug 2026 21:17:52 GMT  
		Size: 21.5 MB (21528141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854a8c5b7316897106169175f20a2b6a4ab9f2bf74a5135da51d7431d87654cd`  
		Last Modified: Thu, 27 Aug 2026 21:17:51 GMT  
		Size: 1.1 MB (1086417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e140a6236b6ae451a82a11b8cdc9e7348ce96242abef5e019f498c08e7a552d`  
		Last Modified: Thu, 27 Aug 2026 21:17:53 GMT  
		Size: 49.7 MB (49715749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9f6f2998ff5342ee650676ece2b06652bc5270031856972efd8a23657eff20`  
		Last Modified: Thu, 27 Aug 2026 21:17:51 GMT  
		Size: 589.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e47c9a1d8c01b4cc79f23ec5b96039534cdfe7e6181751b3a240092096fed3`  
		Last Modified: Thu, 27 Aug 2026 21:17:52 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979333e4719e523e678b205853deb470b8038778b602ec3394c72ed4bbf70a64`  
		Last Modified: Thu, 27 Aug 2026 21:17:53 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4653c723cebb2db10216784dc63959a7d0ed08132a028822bb391641db6b350f`  
		Last Modified: Thu, 27 Aug 2026 21:17:55 GMT  
		Size: 58.1 MB (58122658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbca90ab7994351db78c382e43f0143b0b8e50e8f863c6aae9a4cd8e22443e1e`  
		Last Modified: Thu, 27 Aug 2026 21:17:54 GMT  
		Size: 3.2 KB (3162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764139e773f0ffeba8bf8f95e0e3100ce360626a4de9216f456c71cb2cbb2a37`  
		Last Modified: Thu, 27 Aug 2026 21:17:54 GMT  
		Size: 925.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:fpm` - unknown; unknown

```console
$ docker pull friendica@sha256:82c4309eb0488de4ebe56a9c0a69bd82129ff3ceb98f2cfc38215d601ecbac3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 KB (63284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c8382911045d8b284f51bbcb944e4f73b57f83e618eb770e7199c7b3aca199`

```dockerfile
```

-	Layers:
	-	`sha256:7fd7e2c293613d34ed0dfa284bdf7af170af1f3ba2a33f9d34d2a74a6457ff0b`  
		Last Modified: Thu, 27 Aug 2026 21:17:51 GMT  
		Size: 63.3 KB (63284 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:fpm` - linux; ppc64le

```console
$ docker pull friendica@sha256:9b4c12555490680ad92b52778c62077ad727b049f6c9da5147d7fd5611dfebe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.8 MB (306754940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3808ca36ba2d3c34636dc7f7e7a7b1e732262c2f3b47d604d65f5cb722e4b4a3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:46:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:46:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:46:21 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 25 Aug 2026 00:46:21 GMT
ENV PHP_VERSION=8.4.25
# Tue, 25 Aug 2026 00:46:21 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Tue, 25 Aug 2026 00:46:21 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:46:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 27 Aug 2026 20:46:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:54:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:54:18 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:54:19 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:54:19 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:54:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:54:19 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:54:20 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:54:20 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:54:20 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:54:20 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 21:46:25 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Thu, 27 Aug 2026 21:46:42 GMT
ENV GOSU_VERSION=1.17
# Thu, 27 Aug 2026 21:46:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 27 Aug 2026 21:52:25 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 21:52:25 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 27 Aug 2026 21:52:25 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 27 Aug 2026 21:52:26 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Thu, 27 Aug 2026 21:52:26 GMT
RUN set -ex;     echo access.format = '"%{REMOTE_ADDR}e - %u %t \"%m %r\" %s"' >> /usr/local/etc/php-fpm.d/docker.conf; # buildkit
# Thu, 27 Aug 2026 21:52:26 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Thu, 27 Aug 2026 21:52:26 GMT
VOLUME [/var/www/html]
# Thu, 27 Aug 2026 21:52:26 GMT
VOLUME [/var/www/data]
# Thu, 27 Aug 2026 21:52:26 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Thu, 27 Aug 2026 21:52:26 GMT
ENV FRIENDICA_VERSION=2026.05
# Thu, 27 Aug 2026 21:52:26 GMT
ENV FRIENDICA_DOWNLOAD_SHA256=b0a1e218c4a5a30d25b8be5a66cb97a4f4f802b98e7cf3d0d34ce045b2714ab2
# Thu, 27 Aug 2026 21:53:58 GMT
RUN set -ex;     fetchDeps="         gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 08656443618E6567A39524083EE197EF3F9E4287;         curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz";     curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc";     gpg --batch --verify friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz;     echo "${FRIENDICA_DOWNLOAD_SHA256} *friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz" | sha256sum -c;     tar -xzf friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz -C /usr/src/;     rm friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc;     mv -f /usr/src/friendica-all-in-one-${FRIENDICA_VERSION}/ /usr/src/friendica;     chmod 777 /usr/src/friendica/view/smarty3;         gpgconf --kill all;     rm -rf "$GNUPGHOME";         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 21:53:59 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 27 Aug 2026 21:53:59 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Thu, 27 Aug 2026 21:53:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Aug 2026 21:53:59 GMT
CMD ["php-fpm"]
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
	-	`sha256:586fcdde416535e3e15cc8eedf38608bd18afb6905b2b9366ff2170aa0b0b7cb`  
		Last Modified: Thu, 27 Aug 2026 20:50:29 GMT  
		Size: 13.9 MB (13922234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259ee456b5395e08b5bcec3a23316eb32a32b97ba97604a3ffdc5352ee74f141`  
		Last Modified: Thu, 27 Aug 2026 20:50:28 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c414784dea130212e2be21814d4f3b208a178c48909a469d024916a6fb5668fe`  
		Last Modified: Thu, 27 Aug 2026 20:54:46 GMT  
		Size: 18.0 MB (18044133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc72b5b9a1108be2a10627e7e249b5da008958f7746a68d9e0bdf69ee45c0e7`  
		Last Modified: Thu, 27 Aug 2026 20:54:45 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f3945f3782d522b8fbbbd733ceb9a4a0fa97e927e6667a1f6ee92316101c57d`  
		Last Modified: Thu, 27 Aug 2026 20:54:45 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792b7f9a7aa87a49ec4628deeeae1da4802e443c1cedef4c3db7fcd2e2270b2b`  
		Last Modified: Thu, 27 Aug 2026 20:54:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f251400445ce595cb4f773a946037d147e0e8ede8b3cae34b7534062bb4b71d`  
		Last Modified: Thu, 27 Aug 2026 20:54:47 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cccaf481fe2f88c48e2f706aff4bc367e423f5433ca596fb38d7a5fbc890984e`  
		Last Modified: Thu, 27 Aug 2026 21:53:15 GMT  
		Size: 21.5 MB (21522414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a46f25078077535681dbeee4dfe09e2c23d22021a7950fa414fbb74d57d6a98e`  
		Last Modified: Thu, 27 Aug 2026 21:53:14 GMT  
		Size: 1.0 MB (1033227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a5c36611c984aa7e80d42d9856ea7e9c627a3583800e1ca5f736753cdcfae83`  
		Last Modified: Thu, 27 Aug 2026 21:53:16 GMT  
		Size: 50.9 MB (50874074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4663e741ad46c837c8da780a72f458ed8a8d5cd26d5c711b0364ee45aca80cf`  
		Last Modified: Thu, 27 Aug 2026 21:53:14 GMT  
		Size: 589.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65bb61d7a9bdbcc59103a73cc434eaa78a1eac6b77e6c7d0e947498944907dfe`  
		Last Modified: Thu, 27 Aug 2026 21:53:15 GMT  
		Size: 572.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f15e206d166a759f2b904dd552517925a3252e92072aa9c61491a333f66bf6`  
		Last Modified: Thu, 27 Aug 2026 21:53:16 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ef57ef31f5a00492410917efd0e1f041f34a706ac19199b61cfefe399d0645`  
		Last Modified: Thu, 27 Aug 2026 21:54:21 GMT  
		Size: 58.1 MB (58123377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49aeb7226d1d6364a7c9ce3703ace91ee8980af70f308fe2d75ba7f80ce5d018`  
		Last Modified: Thu, 27 Aug 2026 21:54:19 GMT  
		Size: 3.2 KB (3163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a8dd99d95585aefd25010c168c707cc397c7641cac0b36e9f6ecec4a6ebdd6`  
		Last Modified: Thu, 27 Aug 2026 21:54:19 GMT  
		Size: 924.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:fpm` - unknown; unknown

```console
$ docker pull friendica@sha256:b494f74aab045f8afc2a885e82765ed23cf904f798f458eb36144451c3e5b36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 KB (63373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d673f03661d4b3c2b87033184ef5d36b4af812ffffe1ed4e91e0e5c5e806d938`

```dockerfile
```

-	Layers:
	-	`sha256:ed4b27b1c50af829c4fab000cbd31dbd5a06329636294dcc162a5a4e4b4893bc`  
		Last Modified: Thu, 27 Aug 2026 21:54:18 GMT  
		Size: 63.4 KB (63373 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:fpm` - linux; riscv64

```console
$ docker pull friendica@sha256:d58ca9af848bbea89cce211f537ce959746f2f7f46e264f48db657ac82a0eb0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.5 MB (341476841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2064295747c59299df951929858f1c12b555bac8f2debd60bf2f7fe8362bf7ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 18:41:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 18:41:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 05 Aug 2026 18:41:23 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 05 Aug 2026 18:41:23 GMT
ENV PHP_VERSION=8.4.24
# Wed, 05 Aug 2026 18:41:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Wed, 05 Aug 2026 18:41:23 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 06 Aug 2026 02:34:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 06 Aug 2026 02:34:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 06 Aug 2026 05:25:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 06 Aug 2026 05:25:19 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 06 Aug 2026 05:25:20 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 06 Aug 2026 05:25:21 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 06 Aug 2026 05:25:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 06 Aug 2026 05:25:21 GMT
WORKDIR /var/www/html
# Thu, 06 Aug 2026 05:25:21 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 06 Aug 2026 05:25:21 GMT
STOPSIGNAL SIGQUIT
# Thu, 06 Aug 2026 05:25:21 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 06 Aug 2026 05:25:21 GMT
CMD ["php-fpm"]
# Mon, 17 Aug 2026 18:09:30 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Mon, 17 Aug 2026 18:10:50 GMT
ENV GOSU_VERSION=1.17
# Mon, 17 Aug 2026 18:10:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 17 Aug 2026 18:38:41 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 18:38:41 GMT
ENV PHP_MEMORY_LIMIT=512M
# Mon, 17 Aug 2026 18:38:41 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Mon, 17 Aug 2026 18:38:41 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Mon, 17 Aug 2026 18:38:42 GMT
RUN set -ex;     echo access.format = '"%{REMOTE_ADDR}e - %u %t \"%m %r\" %s"' >> /usr/local/etc/php-fpm.d/docker.conf; # buildkit
# Mon, 17 Aug 2026 18:38:42 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Mon, 17 Aug 2026 18:38:42 GMT
VOLUME [/var/www/html]
# Mon, 17 Aug 2026 18:38:42 GMT
VOLUME [/var/www/data]
# Mon, 17 Aug 2026 18:38:42 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Mon, 17 Aug 2026 18:38:42 GMT
ENV FRIENDICA_VERSION=2026.05
# Mon, 17 Aug 2026 18:38:42 GMT
ENV FRIENDICA_DOWNLOAD_SHA256=b0a1e218c4a5a30d25b8be5a66cb97a4f4f802b98e7cf3d0d34ce045b2714ab2
# Mon, 17 Aug 2026 19:17:45 GMT
RUN set -ex;     fetchDeps="         gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 08656443618E6567A39524083EE197EF3F9E4287;         curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz";     curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc";     gpg --batch --verify friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz;     echo "${FRIENDICA_DOWNLOAD_SHA256} *friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz" | sha256sum -c;     tar -xzf friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz -C /usr/src/;     rm friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc;     mv -f /usr/src/friendica-all-in-one-${FRIENDICA_VERSION}/ /usr/src/friendica;     chmod 777 /usr/src/friendica/view/smarty3;         gpgconf --kill all;     rm -rf "$GNUPGHOME";         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 19:17:46 GMT
COPY *.sh upgrade.exclude / # buildkit
# Mon, 17 Aug 2026 19:17:47 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Mon, 17 Aug 2026 19:17:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 19:17:47 GMT
CMD ["php-fpm"]
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
	-	`sha256:cc0e7652f1ee91e8087c277e5e5467953a5b35ba942c0cc1e1912940ec56c3b0`  
		Last Modified: Thu, 06 Aug 2026 03:31:25 GMT  
		Size: 13.9 MB (13913929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6e5b0876a3460abc769b45c9610057793da6eeadd33cd78b3eccffcece7bb5`  
		Last Modified: Thu, 06 Aug 2026 03:31:20 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00ccac1042142177b6cb54df4f6393ba1b20ab091fadb5c1c3f73606435c1f2`  
		Last Modified: Thu, 06 Aug 2026 05:28:20 GMT  
		Size: 13.3 MB (13270960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4c64872f51675fe0504a80ebd22865b06106149edb8003e3d0d1137f173e61c`  
		Last Modified: Thu, 06 Aug 2026 05:28:17 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dade41e397c74be26a296200fe458051e5b78c938db9cc48581adeeb9e2b0a03`  
		Last Modified: Thu, 06 Aug 2026 05:28:18 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925973ec1b4d63de2eb03556dd690d78c4706bf05ec91d35b78c5ac44cbfcceb`  
		Last Modified: Thu, 06 Aug 2026 05:28:17 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434194db8e0527a549063359b4bd4fe093f0871c2ee11aef22c325191c87e28f`  
		Last Modified: Thu, 06 Aug 2026 05:28:19 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8bf046bd280053ab6afe1f60c9b577884c69b6c10d54011438a19fd45ab106`  
		Last Modified: Mon, 17 Aug 2026 18:42:47 GMT  
		Size: 20.6 MB (20628349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71536396df34efd1fa5e64669a23a053de4d396a570b38605eea93a0ae00e005`  
		Last Modified: Mon, 17 Aug 2026 18:42:40 GMT  
		Size: 1.1 MB (1081409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c59371f78bac46d8ea451a3c7326a1aa9075fb85d71fe7abafc408ff179d63`  
		Last Modified: Mon, 17 Aug 2026 18:42:59 GMT  
		Size: 59.6 MB (59574991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c7ace12b8846f7eac4060c672d90991495d2d09acf9284885dfab4f3d06086`  
		Last Modified: Mon, 17 Aug 2026 18:42:40 GMT  
		Size: 589.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21e006817df7e81f8be78a0b9ed796f5d6b10a5c00e6e1a5efffdacd28873a6`  
		Last Modified: Mon, 17 Aug 2026 18:42:42 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c654f1fd6aa27b89ce43e4b6e11fa395ec325f2842b2f79f6406971393462a3e`  
		Last Modified: Mon, 17 Aug 2026 18:42:42 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c17df8430ed423268d5d7518d97ab84475f2b6fcca5f5264d116cc5cebe23aec`  
		Last Modified: Mon, 17 Aug 2026 19:20:02 GMT  
		Size: 58.1 MB (58123431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d33dbe716e39858539a49558c0517a768383d9ea84db18a1abdfa1c14314c8b9`  
		Last Modified: Mon, 17 Aug 2026 19:19:53 GMT  
		Size: 3.2 KB (3162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e761bb14c6210b32025fc78cae8480b2751deef57b107e09ad6444a92125c3ec`  
		Last Modified: Mon, 17 Aug 2026 19:19:54 GMT  
		Size: 927.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:fpm` - unknown; unknown

```console
$ docker pull friendica@sha256:0facf2dc2e47efc0cac163118b007d719f39c6c664dd8e4ddb2313875dca348f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 KB (63374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b949675a1bd30a4e9be118ebefa76420c5ccdf1a70fa8b84440f0b35ac5bb988`

```dockerfile
```

-	Layers:
	-	`sha256:157c3bd6a75f144e724573b171c4deff2922bfaad27d3bf93c05b4a6ea59f07d`  
		Last Modified: Mon, 17 Aug 2026 19:19:53 GMT  
		Size: 63.4 KB (63374 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:fpm` - linux; s390x

```console
$ docker pull friendica@sha256:ced00ba4585dab038d346c67a43153e5934fdcfe4c2ef370c90577f1ba76cfed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278013264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a096e7fcfa49332edc1acdd9700d2b60a22e790da81aa322d0a2bb1c5cc13db3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:21:11 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:21:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:21:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:21:28 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:21:28 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:21:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:21:28 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:21:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:21:28 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 25 Aug 2026 00:21:28 GMT
ENV PHP_VERSION=8.4.24
# Tue, 25 Aug 2026 00:21:28 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Tue, 25 Aug 2026 00:21:28 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Tue, 25 Aug 2026 00:52:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:52:13 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:55:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:55:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:55:57 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 25 Aug 2026 00:55:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:55:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:55:57 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 00:55:58 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 25 Aug 2026 00:55:58 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:55:58 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 25 Aug 2026 00:55:58 GMT
CMD ["php-fpm"]
# Tue, 25 Aug 2026 02:24:50 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Tue, 25 Aug 2026 02:25:00 GMT
ENV GOSU_VERSION=1.17
# Tue, 25 Aug 2026 02:25:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 02:27:27 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:27:27 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 25 Aug 2026 02:27:27 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 25 Aug 2026 02:27:27 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Tue, 25 Aug 2026 02:27:27 GMT
RUN set -ex;     echo access.format = '"%{REMOTE_ADDR}e - %u %t \"%m %r\" %s"' >> /usr/local/etc/php-fpm.d/docker.conf; # buildkit
# Tue, 25 Aug 2026 02:27:27 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Tue, 25 Aug 2026 02:27:27 GMT
VOLUME [/var/www/html]
# Tue, 25 Aug 2026 02:27:27 GMT
VOLUME [/var/www/data]
# Tue, 25 Aug 2026 02:27:27 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Tue, 25 Aug 2026 02:27:27 GMT
ENV FRIENDICA_VERSION=2026.05
# Tue, 25 Aug 2026 02:27:27 GMT
ENV FRIENDICA_DOWNLOAD_SHA256=b0a1e218c4a5a30d25b8be5a66cb97a4f4f802b98e7cf3d0d34ce045b2714ab2
# Tue, 25 Aug 2026 02:27:40 GMT
RUN set -ex;     fetchDeps="         gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 08656443618E6567A39524083EE197EF3F9E4287;         curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz";     curl -fsSL -o friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc         "https://files.friendi.ca/friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc";     gpg --batch --verify friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz;     echo "${FRIENDICA_DOWNLOAD_SHA256} *friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz" | sha256sum -c;     tar -xzf friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz -C /usr/src/;     rm friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz friendica-all-in-one-${FRIENDICA_VERSION}.tar.gz.asc;     mv -f /usr/src/friendica-all-in-one-${FRIENDICA_VERSION}/ /usr/src/friendica;     chmod 777 /usr/src/friendica/view/smarty3;         gpgconf --kill all;     rm -rf "$GNUPGHOME";         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:27:41 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 25 Aug 2026 02:27:41 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Tue, 25 Aug 2026 02:27:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 02:27:41 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30579a1638062e8068fe3febfc1a553eed8e2c31a79ac69330745e505b23336`  
		Last Modified: Tue, 25 Aug 2026 00:25:31 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f68489d9553120097bf9baff3bbcc0b4e06557a1a0359613092602fd11578e5`  
		Last Modified: Tue, 25 Aug 2026 00:25:33 GMT  
		Size: 92.6 MB (92572390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107dabd5f142f3b48c34e07c0443466dad85c25620eee774d5895f0bfffb6366`  
		Last Modified: Tue, 25 Aug 2026 00:25:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd41c58f9b5a6188907fed8428879666c16bd30105d9b2d6bdbd9636fe51680e`  
		Last Modified: Tue, 25 Aug 2026 00:56:14 GMT  
		Size: 13.9 MB (13905772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb17db05f4c4e5a41ac85377db2e85886861528e1f15f9518856e87c5de66ef9`  
		Last Modified: Tue, 25 Aug 2026 00:56:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3aa99b02c8c8b3a983f3437460c80b088356fb2d8802432bf3d60261c102793`  
		Last Modified: Tue, 25 Aug 2026 00:56:14 GMT  
		Size: 13.6 MB (13598025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4557e8b1785c28f4306eadc0fddeb20cd14374e3231444288ed000708e4976ea`  
		Last Modified: Tue, 25 Aug 2026 00:56:14 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1a3a21729721a0429525463a37406b4213a4d85ccf1fa26fbfe4550654c450`  
		Last Modified: Tue, 25 Aug 2026 00:56:14 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bef8fb0744c5c675224a3bbbb82f4b43b2ab9cf371398f39645b0f4ad3747c4a`  
		Last Modified: Tue, 25 Aug 2026 00:56:14 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b231f00a4bca4b744334750a4eda39fe13f32d2cce547c73fb85e6bdb35701d5`  
		Last Modified: Tue, 25 Aug 2026 00:56:15 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2b720650a720901fd8277b6096d58e7b49be4bfa3eae5dca0603093fb11aa4`  
		Last Modified: Tue, 25 Aug 2026 02:27:57 GMT  
		Size: 20.5 MB (20545025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016188ba8de8f18aaac253eacbf05dc7be4884dc3f0b62af68deb6a1294ef6ce`  
		Last Modified: Tue, 25 Aug 2026 02:27:57 GMT  
		Size: 1.1 MB (1075859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6cf24b0a791c658b4a3b2d227ca441cd9642c8ef144f8a05877769e4068474`  
		Last Modified: Tue, 25 Aug 2026 02:27:58 GMT  
		Size: 48.3 MB (48309308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa82e2ea7a9aa4e017bada0c1cd7f8c114f2f468608961d80c704cbcdbd1d5a`  
		Last Modified: Tue, 25 Aug 2026 02:27:57 GMT  
		Size: 589.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:685c5e75cac1bb1b2a18c2b2ed6e817963ee6b3bfe8d27e7e7adccf533468f86`  
		Last Modified: Tue, 25 Aug 2026 02:27:57 GMT  
		Size: 572.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29bf1b61cec23c90cab61523a09f44453973252b6e79f4a7896f5b12a15b957`  
		Last Modified: Tue, 25 Aug 2026 02:27:58 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff18dbf19e19f19693560aaf0556c80e2b3b656c85fe8110929df12a7895c9c8`  
		Last Modified: Tue, 25 Aug 2026 02:27:59 GMT  
		Size: 58.1 MB (58120598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb2dd02588bd3e7b1c34934ec244fc7261a82a9e618051f6233c982ddebc166`  
		Last Modified: Tue, 25 Aug 2026 02:27:59 GMT  
		Size: 3.2 KB (3162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75e0d7a2b704c30d2c7188c0983e58886d472373f5dfe2b118278f087314a62`  
		Last Modified: Tue, 25 Aug 2026 02:27:59 GMT  
		Size: 923.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:fpm` - unknown; unknown

```console
$ docker pull friendica@sha256:99fbef513d9721541140701562293bf25d33488d502726eba4de16d28b2437c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 KB (63314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29cdd3eed03350a34a44d08cf5669f140a3c62099cde56c447671bf5b934f55e`

```dockerfile
```

-	Layers:
	-	`sha256:cf224afe454478f513177c42c7b614d0123ee8a9e55ed72c94edc63238b8c22d`  
		Last Modified: Tue, 25 Aug 2026 02:27:56 GMT  
		Size: 63.3 KB (63314 bytes)  
		MIME: application/vnd.in-toto+json
