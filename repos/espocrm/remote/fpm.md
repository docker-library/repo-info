## `espocrm:fpm`

```console
$ docker pull espocrm@sha256:f76f9ea502aa1c48b1e130ead81125108a9dd70c0ebe7731c5f296332e99f251
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

### `espocrm:fpm` - linux; amd64

```console
$ docker pull espocrm@sha256:2cc3259cf41124b39be9f2e70fca48862dbab9b38a9a4e921b0edb02a3e5743e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.8 MB (253788889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba32a274d9d95aacdce55d08eb2b11918085e7c116af2c942bd20dcabe8edb75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:24:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:25:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:25:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:25:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:25:03 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:25:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:25:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:25:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:25:03 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Sat, 19 Sep 2026 00:25:03 GMT
ENV PHP_VERSION=8.4.25
# Sat, 19 Sep 2026 00:25:03 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Sat, 19 Sep 2026 00:25:03 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Sat, 19 Sep 2026 00:28:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:28:30 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:31:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:31:12 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:31:13 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 00:31:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:31:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:31:13 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:31:13 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 19 Sep 2026 00:31:13 GMT
STOPSIGNAL SIGQUIT
# Sat, 19 Sep 2026 00:31:13 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 19 Sep 2026 00:31:13 GMT
CMD ["php-fpm"]
# Sat, 19 Sep 2026 01:26:53 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Sat, 19 Sep 2026 01:26:53 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Sat, 19 Sep 2026 01:26:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:27:59 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:27:59 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Sat, 19 Sep 2026 01:27:59 GMT
ENV ESPOCRM_VERSION=10.0.8
# Sat, 19 Sep 2026 01:27:59 GMT
ENV ESPOCRM_SHA256=b40f1631cda1f49a1958734bddef5831a48363a1785bc9d57ff67ded58419163
# Sat, 19 Sep 2026 01:27:59 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 01:28:06 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.8.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Sat, 19 Sep 2026 01:28:07 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:28:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:28:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db473f2f4a9784e0b6dcee4dfa94ae7ba81267a6d6bdf210098287ce4be1abf`  
		Last Modified: Sat, 19 Sep 2026 00:28:11 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74eb99062a43f050abef4148c37602508591d9a14a280560e82005710de7a8da`  
		Last Modified: Sat, 19 Sep 2026 00:28:15 GMT  
		Size: 117.8 MB (117842422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5da483d9058130e2f66dbc1cbc952fa1c42b4dc01eb3290a35c10f2b0dc2784`  
		Last Modified: Sat, 19 Sep 2026 00:28:11 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b01c2af1c06abaece0639ac0cd2771057d4b1ec3f8a43c35816c27e3753cda`  
		Last Modified: Sat, 19 Sep 2026 00:31:24 GMT  
		Size: 13.9 MB (13906890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92998e6061c8f888ed57cbeb1b6a9d7b6f0a3d682bb539f69cac52f769286a36`  
		Last Modified: Sat, 19 Sep 2026 00:31:23 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8ba7068ad1a62851cf7c38e7d23ff306767a9071831faac587f2e838e6020a7`  
		Last Modified: Sat, 19 Sep 2026 00:31:24 GMT  
		Size: 13.8 MB (13824109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399c9f64ad923f6e0f4d97dcee8b464804b16a6302b77d5c3b87908bb3525368`  
		Last Modified: Sat, 19 Sep 2026 00:31:23 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3646cb5170ee2b5b14663f36a6958a85a222caff95fac7f630e0b3d9ee4d7e12`  
		Last Modified: Sat, 19 Sep 2026 00:31:24 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d76f08dad88e0aa7a79373d8d89448f9fb5288014caa66a2541cd876adf506`  
		Last Modified: Sat, 19 Sep 2026 00:31:24 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ff5d519c5f327d2ca55278904bcdc569ade358345e38c59ffbcd7868e4c8f0`  
		Last Modified: Sat, 19 Sep 2026 00:31:25 GMT  
		Size: 9.3 KB (9268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6794c38b251ee1904f16d3cdb130b76a040d0ff1743ab10cc1af831ced54be4e`  
		Last Modified: Sat, 19 Sep 2026 01:28:17 GMT  
		Size: 264.9 KB (264948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a957c59bf45480c14bb4183f50bd699f2905fa7e2179a658b7c43e883b535d4e`  
		Last Modified: Sat, 19 Sep 2026 01:28:17 GMT  
		Size: 4.1 MB (4124853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aadd53c437788d999e7b47cd935557a51e14834e574bf91d07b77860556a9ac0`  
		Last Modified: Sat, 19 Sep 2026 01:28:17 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3766e2bf48f5697569f6ae78b8d75e568e8f6af0089b6d91c3f93b0b2e28b1d`  
		Last Modified: Sat, 19 Sep 2026 01:28:19 GMT  
		Size: 74.0 MB (73978245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db2dab70ff2071d30e9e35918069db578a71274b41db3795ebd13d307271529`  
		Last Modified: Sat, 19 Sep 2026 01:28:18 GMT  
		Size: 3.4 KB (3397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm` - unknown; unknown

```console
$ docker pull espocrm@sha256:e9e9f3338056b8a1ecf88014b4236dea86c04b28f1c943f1cf42f88a4ad5aa95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 KB (41640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c72b1eecec6fcc2742686bc3a0cd960bce6319ab2ca7a56415687ab95722e969`

```dockerfile
```

-	Layers:
	-	`sha256:960eece14b29baff66e2ed0a5260667f7ca368369372057adc456c8f06d6478d`  
		Last Modified: Sat, 19 Sep 2026 01:28:16 GMT  
		Size: 41.6 KB (41640 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm` - linux; arm variant v5

```console
$ docker pull espocrm@sha256:4773a4f509cb0725eb984cdffae0deaf958211285727f4f27c2089f84a46e98e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.2 MB (227174742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80a9d9113a3b3b3e1abc1c9bf73a01d3d8d70f0784eeae01cec6a60287109b8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:32:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:32:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:32:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:32:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:32:26 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:32:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:32:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:32:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:32:26 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Sat, 19 Sep 2026 00:32:26 GMT
ENV PHP_VERSION=8.4.25
# Sat, 19 Sep 2026 00:32:26 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Sat, 19 Sep 2026 00:32:26 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Sat, 19 Sep 2026 00:32:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:32:38 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:58:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:58:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:58:14 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 00:58:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:58:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:58:14 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:58:14 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 19 Sep 2026 00:58:14 GMT
STOPSIGNAL SIGQUIT
# Sat, 19 Sep 2026 00:58:14 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 19 Sep 2026 00:58:14 GMT
CMD ["php-fpm"]
# Sat, 19 Sep 2026 02:07:14 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Sat, 19 Sep 2026 02:07:14 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Sat, 19 Sep 2026 02:07:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:08:47 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:08:47 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Sat, 19 Sep 2026 02:08:47 GMT
ENV ESPOCRM_VERSION=10.0.8
# Sat, 19 Sep 2026 02:08:47 GMT
ENV ESPOCRM_SHA256=b40f1631cda1f49a1958734bddef5831a48363a1785bc9d57ff67ded58419163
# Sat, 19 Sep 2026 02:08:47 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 02:08:56 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.8.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Sat, 19 Sep 2026 02:08:56 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:08:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:08:56 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117ed7c2c17601a7a44419d8b40a1f1b9666ef075f98530156982af5740a31b6`  
		Last Modified: Sat, 19 Sep 2026 00:35:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f6536cb3ff2d00798f262c443e96b20acf6f41cf88b874bf2a4c2177d58e45`  
		Last Modified: Sat, 19 Sep 2026 00:35:54 GMT  
		Size: 94.9 MB (94876879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520d5efedd83498bdc132bdf3412e6afe9222b9082bae1b5b0681cc90616fd2f`  
		Last Modified: Sat, 19 Sep 2026 00:35:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1385528998b744812d22c9c0caea23a61587fdb033b8f6fa463fdb64c6428abe`  
		Last Modified: Sat, 19 Sep 2026 00:35:52 GMT  
		Size: 13.9 MB (13904671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f005acb2c1ceb44f104a91d0b3c34865f7f21f5f96e65cb5b8c8a8ae813d80a`  
		Last Modified: Sat, 19 Sep 2026 00:35:52 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a589245793ee726b1b23e30f9085937e81a6fdd2894215211d1202bb790db438`  
		Last Modified: Sat, 19 Sep 2026 00:58:24 GMT  
		Size: 12.3 MB (12338481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d5a1a58f57c308707cce5a6fe54c1c329e2f3259627b4e64fdf835899402b8`  
		Last Modified: Sat, 19 Sep 2026 00:58:24 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ff770a53120fada0e00daebe1be49400756f983b712d41f1770222dfb4d7fd`  
		Last Modified: Sat, 19 Sep 2026 00:58:24 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9ff147debdd838f9fa95a1e8370d9dd8961d2b6a3c0b7ec127f069c94bac9a`  
		Last Modified: Sat, 19 Sep 2026 00:58:24 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4359e73b48b168d99bbca839388e2c3844d6319f3d981a3323fc2bc8aeaf55a4`  
		Last Modified: Sat, 19 Sep 2026 00:58:25 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31644e00582818cf42ed611f4d64d17eadfa70345549f0b83d8b2dc5a4b6349f`  
		Last Modified: Sat, 19 Sep 2026 02:09:06 GMT  
		Size: 256.4 KB (256387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef19d8184685eeb772485d723ba69bbbc6076b18514de9b52df635cae2eb516`  
		Last Modified: Sat, 19 Sep 2026 02:09:07 GMT  
		Size: 3.8 MB (3805070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65b2ce634e638af452d9a445ea55802c7981d17660f4e482f1e5342fc8b985d`  
		Last Modified: Sat, 19 Sep 2026 02:09:06 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d6f394ea029cb64bbc27e97f82fb024644a2830f1de0556cd09b1b9a377605e`  
		Last Modified: Sat, 19 Sep 2026 02:09:08 GMT  
		Size: 74.0 MB (73978213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b63695be5e5d9b64795a3ac19ce6f682cbcc57e84f98cb165d3b4d78b9c8647`  
		Last Modified: Sat, 19 Sep 2026 02:09:07 GMT  
		Size: 3.4 KB (3395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm` - unknown; unknown

```console
$ docker pull espocrm@sha256:ec0545becee43ec5cc35fe58d8a3b2baf2a0142b2ba750985bf049c7addd9561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 KB (41784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1025a02b4d48e6924d031985419cc15f36cf5514f5990acb9871e5e2b6cc631`

```dockerfile
```

-	Layers:
	-	`sha256:fae68059d7898474e0edae48e0458ab3ad1ff23aa4e71d88bbd359e83febfb64`  
		Last Modified: Sat, 19 Sep 2026 02:09:06 GMT  
		Size: 41.8 KB (41784 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm` - linux; arm variant v7

```console
$ docker pull espocrm@sha256:a42965170322f41ab01808dd7da7d672538e317389923d92b5076cf59cf9d2df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.9 MB (215925221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cc9e71473542a146ee36de34e3b06c7d1fc2106ccf13c65141d6a178775e7b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:25:49 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:26:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:26:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:26:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:26:08 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:26:08 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:26:08 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:26:08 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:26:08 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Sat, 19 Sep 2026 00:26:08 GMT
ENV PHP_VERSION=8.4.25
# Sat, 19 Sep 2026 00:26:08 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Sat, 19 Sep 2026 00:26:08 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Sat, 19 Sep 2026 00:43:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:43:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:46:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:46:04 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:46:04 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 00:46:04 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:46:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:46:04 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:46:04 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 19 Sep 2026 00:46:04 GMT
STOPSIGNAL SIGQUIT
# Sat, 19 Sep 2026 00:46:04 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 19 Sep 2026 00:46:04 GMT
CMD ["php-fpm"]
# Sat, 19 Sep 2026 02:30:11 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Sat, 19 Sep 2026 02:30:11 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Sat, 19 Sep 2026 02:30:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:31:41 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:31:41 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Sat, 19 Sep 2026 02:31:41 GMT
ENV ESPOCRM_VERSION=10.0.8
# Sat, 19 Sep 2026 02:31:41 GMT
ENV ESPOCRM_SHA256=b40f1631cda1f49a1958734bddef5831a48363a1785bc9d57ff67ded58419163
# Sat, 19 Sep 2026 02:31:41 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 02:31:49 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.8.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Sat, 19 Sep 2026 02:31:49 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:31:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:31:49 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79ae0b7d2d5e18cdf92b9bc7c7cc6d69fc8d76fbfd06c09d6a248a1e7f6a2db`  
		Last Modified: Sat, 19 Sep 2026 00:29:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e7720ff517c7f5e358801ece84d54a1aa5f21383d67bb49884b4a775b23e28`  
		Last Modified: Sat, 19 Sep 2026 00:29:13 GMT  
		Size: 86.3 MB (86265197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd86c09c27ad2992af3da81c6fe81c6c4720cee2b8e00627fead5fcd27e971b`  
		Last Modified: Sat, 19 Sep 2026 00:29:11 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e45335727dda70b7dfd6e539e7c53284bbdf66f1d1d4b99f1261958e62f6291`  
		Last Modified: Sat, 19 Sep 2026 00:46:15 GMT  
		Size: 13.9 MB (13904838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce313c613a4f045ab9f94a684c61c6fa1f9b55d8286226229b6decfbbd9e7165`  
		Last Modified: Sat, 19 Sep 2026 00:46:14 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:525cf5e95c716ae42e9677f993e69bc885c2e95751ab8c78f6542994c2dd7cd7`  
		Last Modified: Sat, 19 Sep 2026 00:46:14 GMT  
		Size: 11.7 MB (11667271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d3d45b6901532ccd9b5c4537c770ea7a7f1291d59a2aeef1cdfdf27eee5cde`  
		Last Modified: Sat, 19 Sep 2026 00:46:14 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d31a2a9a3d86d75a03ba81baf4804b29800484a9e556f4deefa85cb66eaa136`  
		Last Modified: Sat, 19 Sep 2026 00:46:15 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed91d62404abade04a6d61741822adbf1499bbbf3b3c0e3c004fe7a7b31272ed`  
		Last Modified: Sat, 19 Sep 2026 00:46:15 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caf4d40477e6742c98ccfea0b040d7fc7d53ab7cbfd3bb1bdba342b292613770`  
		Last Modified: Sat, 19 Sep 2026 00:46:16 GMT  
		Size: 9.3 KB (9268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0ba5b62570020c60ee8ec7ce0c3d17fc4712a325a326914f1093af1e0a401c`  
		Last Modified: Sat, 19 Sep 2026 02:32:00 GMT  
		Size: 243.6 KB (243592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44c3cbbef2ee2fd8f793d786b117e19e9fd329b9d9a40abbd44a4ce7452d3f8b`  
		Last Modified: Sat, 19 Sep 2026 02:32:00 GMT  
		Size: 3.6 MB (3600157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faddb5c2f19024933182e2dfcf2ad2dee8d468220bba8e8a221765b6df12ac07`  
		Last Modified: Sat, 19 Sep 2026 02:32:00 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c408697abccc751bcc782657130a5668b1f379f5a320161de4ab539b0c7389b`  
		Last Modified: Sat, 19 Sep 2026 02:32:02 GMT  
		Size: 74.0 MB (73978225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:255267c6288e14f1d078593a30592826d964b29358cf5a0ee0753da162c4ca14`  
		Last Modified: Sat, 19 Sep 2026 02:32:01 GMT  
		Size: 3.4 KB (3397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm` - unknown; unknown

```console
$ docker pull espocrm@sha256:3162ffcadbb44db78610d79cf673b2897f85c793dec3b0bf0de2b8e828e1cd9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 KB (41782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc2ceed9cefbca053ee226f6acee596c781727c16a6efa7dffa51ee3eb03f157`

```dockerfile
```

-	Layers:
	-	`sha256:087b64a3c3f3a1a856c990136ef95a92f50609fb8305a17599209319c657d248`  
		Last Modified: Sat, 19 Sep 2026 02:31:59 GMT  
		Size: 41.8 KB (41782 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm` - linux; arm64 variant v8

```console
$ docker pull espocrm@sha256:c3daa68c9b9c33ec1bb23b92988e35b358713af6449d1d48bf444bf865c452ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (246043626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5161c96a98d3569f00b0f5b47d97efdc6da2dee69bdc1167c65ed018109d2c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:25:47 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:26:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:26:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:26:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:26:03 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:26:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:26:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:26:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:26:03 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Sat, 19 Sep 2026 00:26:03 GMT
ENV PHP_VERSION=8.4.25
# Sat, 19 Sep 2026 00:26:03 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Sat, 19 Sep 2026 00:26:03 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Sat, 19 Sep 2026 00:29:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:29:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:32:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:32:48 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:32:48 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 00:32:48 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:32:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:32:48 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:32:48 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 19 Sep 2026 00:32:48 GMT
STOPSIGNAL SIGQUIT
# Sat, 19 Sep 2026 00:32:48 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 19 Sep 2026 00:32:48 GMT
CMD ["php-fpm"]
# Sat, 19 Sep 2026 01:35:04 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Sat, 19 Sep 2026 01:35:04 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Sat, 19 Sep 2026 01:35:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:36:21 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:36:21 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Sat, 19 Sep 2026 01:36:21 GMT
ENV ESPOCRM_VERSION=10.0.8
# Sat, 19 Sep 2026 01:36:21 GMT
ENV ESPOCRM_SHA256=b40f1631cda1f49a1958734bddef5831a48363a1785bc9d57ff67ded58419163
# Sat, 19 Sep 2026 01:36:21 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 01:36:29 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.8.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Sat, 19 Sep 2026 01:36:29 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:36:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:36:29 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca3c5d632775319db97d057c4fbfabbae392003247c8ab40d142c6e7f936e05`  
		Last Modified: Sat, 19 Sep 2026 00:29:27 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee883b146d22a1f142c311b4e667fcca7788bde5c4b35986536fafcbf14f18de`  
		Last Modified: Sat, 19 Sep 2026 00:29:30 GMT  
		Size: 110.2 MB (110178705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fa52d7ca367bb31cf5c9e3700dcf46cc0ba026f0c7c3bc34b55a5375c15c3d`  
		Last Modified: Sat, 19 Sep 2026 00:29:27 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e3b6a362b82c13f047df5763016cf0bddd52363c94a25d610cbb6f1e2c2ee3e`  
		Last Modified: Sat, 19 Sep 2026 00:32:59 GMT  
		Size: 13.9 MB (13906521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:342644fa78aec47193f861fc38d98f5058204430fa289c74fce03fcc8ebfd673`  
		Last Modified: Sat, 19 Sep 2026 00:32:50 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cebe4d79aa9af59da452770ca756b6c29d3bbc2d365eff44b1215e8ced7c0f`  
		Last Modified: Sat, 19 Sep 2026 00:32:59 GMT  
		Size: 13.5 MB (13478817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a1edd5c4f958d56193cafb295ff7fb1db24ae72e637163a6ffd99136ed578c`  
		Last Modified: Sat, 19 Sep 2026 00:32:59 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a56d2fcc42fada23326383b12e7619744498c1884cd6f2c3d37cc8eecd6da26a`  
		Last Modified: Sat, 19 Sep 2026 00:32:59 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd59be04ca4b24ea20231fb8df938a011a8add433d5b9726baa7b2cf3ae1435`  
		Last Modified: Sat, 19 Sep 2026 00:33:00 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c920212391f09e014841b6580187cba0cf8f1368b6cf4d5b7435a68b4cefd74`  
		Last Modified: Sat, 19 Sep 2026 00:33:00 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d93c6bb486672746d5786618d3f56b87cbb46d928f15818b94f5b25f8a58ff9`  
		Last Modified: Sat, 19 Sep 2026 01:36:39 GMT  
		Size: 260.8 KB (260838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c93cec638eb9c337d3870376eea78f4fe9dfdc5b80b87e390ce42f7100a4160`  
		Last Modified: Sat, 19 Sep 2026 01:36:39 GMT  
		Size: 4.0 MB (4033817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca35b2c862e927c63e7faa74c3eaad70e869b853b430baf39f32858e384e1452`  
		Last Modified: Sat, 19 Sep 2026 01:36:39 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44c54c3bd3f96f695075ddec3f1dee5a4cb318bee7985e9a5aada355b204abd`  
		Last Modified: Sat, 19 Sep 2026 01:36:41 GMT  
		Size: 74.0 MB (73978233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba859eb5dddec2d8682de5807abd9e6d767b9a22d989c242145e45e5edce2a3`  
		Last Modified: Sat, 19 Sep 2026 01:36:40 GMT  
		Size: 3.4 KB (3395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm` - unknown; unknown

```console
$ docker pull espocrm@sha256:b4954a080f7e96ed0c443754b27a080800a9c8713df89d01710ef0beed48a74c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 KB (41837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d96d45130c6b3ee6d9c5e148bb8dcb9e99aadc210df8a57b638b4173487acde`

```dockerfile
```

-	Layers:
	-	`sha256:7e827c8c2ef37d7b7ce5a4b684da42a58e9e7cf8e598d279b36ad59be580794c`  
		Last Modified: Sat, 19 Sep 2026 01:36:39 GMT  
		Size: 41.8 KB (41837 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm` - linux; 386

```console
$ docker pull espocrm@sha256:9210488e9922a3120b9a9ce9126e4cab57f2ca24ce0a882dc306d8ce61eca775
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.0 MB (254013151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ffe58b3d734650bbc6554f6491763e9a1f623198cf7ae9242b97872b05a72fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:26:48 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:27:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:27:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:27:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:27:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:27:07 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:27:07 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:27:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:27:07 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Sat, 19 Sep 2026 00:27:07 GMT
ENV PHP_VERSION=8.4.25
# Sat, 19 Sep 2026 00:27:07 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Sat, 19 Sep 2026 00:27:07 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Sat, 19 Sep 2026 00:30:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:30:29 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:33:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:33:12 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:33:12 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 00:33:12 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:33:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:33:12 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:33:12 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 19 Sep 2026 00:33:12 GMT
STOPSIGNAL SIGQUIT
# Sat, 19 Sep 2026 00:33:12 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 19 Sep 2026 00:33:12 GMT
CMD ["php-fpm"]
# Sat, 19 Sep 2026 01:38:29 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Sat, 19 Sep 2026 01:38:29 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Sat, 19 Sep 2026 01:38:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:39:36 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:39:36 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Sat, 19 Sep 2026 01:39:36 GMT
ENV ESPOCRM_VERSION=10.0.8
# Sat, 19 Sep 2026 01:39:36 GMT
ENV ESPOCRM_SHA256=b40f1631cda1f49a1958734bddef5831a48363a1785bc9d57ff67ded58419163
# Sat, 19 Sep 2026 01:39:36 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 01:39:43 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.8.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Sat, 19 Sep 2026 01:39:44 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:39:44 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925a2c2338c5ecb91ee5499b7fee275ab4b618292616a45d603c32bbadb87ca5`  
		Last Modified: Sat, 19 Sep 2026 00:30:11 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125f0c85dd34c3f648ba87a79cb965a1b853b60cf876f96c866225fbce824e79`  
		Last Modified: Sat, 19 Sep 2026 00:30:15 GMT  
		Size: 116.1 MB (116148538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce6463c1a1f30f6c9b9ba457f0b8ba544ad20f29cac3a93b311f13c60de6625`  
		Last Modified: Sat, 19 Sep 2026 00:30:11 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:588b5736f45fc57aad009ccf3c4393f977ce4b10c85d9c81427086a474f3c2c0`  
		Last Modified: Sat, 19 Sep 2026 00:33:22 GMT  
		Size: 13.9 MB (13906001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec5188eb914a3edb925c4f8bcafb5daae15b1210dda2d7a5bddfa65af714d3c`  
		Last Modified: Sat, 19 Sep 2026 00:33:21 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53abc874a168613d4a9eec768eb21d4ecca5860c8e5115109affa3acea8bcdcf`  
		Last Modified: Sat, 19 Sep 2026 00:33:22 GMT  
		Size: 14.2 MB (14176490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e2572644ac053fb9c4445a4857e82499c4f719a1c130b15a7b3357f1cc184f`  
		Last Modified: Sat, 19 Sep 2026 00:33:22 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b7405fdf337afa1eb09adb1c06c129659c71a10464309495b5c056094db6b80`  
		Last Modified: Sat, 19 Sep 2026 00:33:22 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893ed0383305655a35b302318564c3e9799b404eee73c694b7f39592b13f9948`  
		Last Modified: Sat, 19 Sep 2026 00:33:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92478050db6b942a3002718eaaf8d620cd7af643fdea7d19416fe8c1f13b9c32`  
		Last Modified: Sat, 19 Sep 2026 00:33:24 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c931681343b6ea66c51484b5b7e4c7b209df238ce26bfa3779bbf20675573fa7`  
		Last Modified: Sat, 19 Sep 2026 01:39:53 GMT  
		Size: 268.4 KB (268449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d659376f7bb94b1d3c4553bec2476050c2de05ed6aba002175bb8941a45c1072`  
		Last Modified: Sat, 19 Sep 2026 01:39:53 GMT  
		Size: 4.2 MB (4178034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e386a2c6eda8e64901687556dae41c77fe54d4da56aca59da7dadeefbd0512e4`  
		Last Modified: Sat, 19 Sep 2026 01:39:53 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20fc2480fd88173eb718b93389e5d470ed41f8305d643d748b4a56ed55d9a6b7`  
		Last Modified: Sat, 19 Sep 2026 01:39:55 GMT  
		Size: 74.0 MB (73978233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72f0a3344e0df1a525e8d60361e02e5a681aa6ab00aea014d98e2dcdc095476`  
		Last Modified: Sat, 19 Sep 2026 01:39:54 GMT  
		Size: 3.4 KB (3395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm` - unknown; unknown

```console
$ docker pull espocrm@sha256:d45864bedd3b45645e6278338b13c29ded75ba05a77d5934438686677e15ce17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 KB (41582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2ebf9b32c44846f048a1e75c8d97fe349023e1ee8bd097062d51a5845aa1a6`

```dockerfile
```

-	Layers:
	-	`sha256:0eaddf19262d9c1642523cc050735099b8596bb33e5d244c3984c16104b18263`  
		Last Modified: Sat, 19 Sep 2026 01:39:53 GMT  
		Size: 41.6 KB (41582 bytes)  
		MIME: application/vnd.in-toto+json
