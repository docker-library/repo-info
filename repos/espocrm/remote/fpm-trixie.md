## `espocrm:fpm-trixie`

```console
$ docker pull espocrm@sha256:1eda8552ccd3fae8e363c3c82147377f430683966f7b630b3af4af7f765c8909
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

### `espocrm:fpm-trixie` - linux; amd64

```console
$ docker pull espocrm@sha256:044c7f30409afcff2fa2707f046d352f8eebfa853c5b26ac73ba2ba966792c52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256707503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3560528ee1c4a74a0ff916f0f7696c3c9c76d737843c115ac0a5a89d377341e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 27 Aug 2026 20:30:03 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 27 Aug 2026 20:30:03 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 27 Aug 2026 20:30:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 20:31:05 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 20:31:05 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 27 Aug 2026 20:31:05 GMT
ENV ESPOCRM_VERSION=10.0.6
# Thu, 27 Aug 2026 20:31:05 GMT
ENV ESPOCRM_SHA256=88bcb177dbe38b79ec3c13d491d78b727dc14fe18fc91deea1bfa72b313f7fb4
# Thu, 27 Aug 2026 20:31:05 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:31:26 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.6.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 27 Aug 2026 20:31:26 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:31:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 20:31:26 GMT
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
	-	`sha256:cfc4005426ed16b9fd1662db1caff3647aadea22887bc7e5bedb16869061e6f5`  
		Last Modified: Thu, 27 Aug 2026 20:31:36 GMT  
		Size: 265.1 KB (265091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434a0b9d71dc4493618b195a33ff6a08af8264b8b59798bc5fd133bb56d1007c`  
		Last Modified: Thu, 27 Aug 2026 20:31:36 GMT  
		Size: 4.1 MB (4124925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e4c1ce3df3e59537f1aca55994cf3e713414a9f65ddc3feb4985f96fc784f1`  
		Last Modified: Thu, 27 Aug 2026 20:31:36 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b15e2e4d1ad34b452623a558ad330a41113cd70ed368e0d1ebc0e47dd46f085f`  
		Last Modified: Thu, 27 Aug 2026 20:31:38 GMT  
		Size: 74.0 MB (73962077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1001aad206cf11505b0554f9e95a78b02ec739f2d3168b66e11311f6b84e3bf5`  
		Last Modified: Thu, 27 Aug 2026 20:31:37 GMT  
		Size: 3.4 KB (3394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-trixie` - unknown; unknown

```console
$ docker pull espocrm@sha256:6012fd5ce8b2b037e819728c024c2095cfbef6d440bb88447dcba96e3673d86e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 KB (41640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73079d90b0302594d56b69238bfacb79542b01154554544a2dd6809d8b2ec734`

```dockerfile
```

-	Layers:
	-	`sha256:1e07a33685c47c5d43c3910bf45c120ac1e56ce62c00ec07fed176b71881d80e`  
		Last Modified: Thu, 27 Aug 2026 20:31:35 GMT  
		Size: 41.6 KB (41640 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-trixie` - linux; arm variant v5

```console
$ docker pull espocrm@sha256:7cd04edbeb7cd9f2f24e502f0639bc3cc93f2a4d539e68ab7e48056464f581c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229505038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1f2ba6da8d7545eec5cecceeefcad0903217fe6eade894b81cfdc01ebc1a64`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 27 Aug 2026 20:32:08 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 27 Aug 2026 20:32:08 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 27 Aug 2026 20:32:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 20:33:43 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 20:33:43 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 27 Aug 2026 20:33:43 GMT
ENV ESPOCRM_VERSION=10.0.6
# Thu, 27 Aug 2026 20:33:43 GMT
ENV ESPOCRM_SHA256=88bcb177dbe38b79ec3c13d491d78b727dc14fe18fc91deea1bfa72b313f7fb4
# Thu, 27 Aug 2026 20:33:43 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:33:51 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.6.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 27 Aug 2026 20:33:51 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:33:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 20:33:51 GMT
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
	-	`sha256:1be05787dfe7aace2ffc8116a29c8ada9e114049619a2d9e4b1a2bc577141ad9`  
		Last Modified: Thu, 27 Aug 2026 20:34:01 GMT  
		Size: 256.6 KB (256614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6a83e73661c8eeadf330491332bc5b67c626ea979b20bb7e71de57e80ba2eb`  
		Last Modified: Thu, 27 Aug 2026 20:34:02 GMT  
		Size: 3.8 MB (3805199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622e7b74988ae23e7e5e7fcc25fa3ccabbe3dce2cfc794cd88434bffccd74177`  
		Last Modified: Thu, 27 Aug 2026 20:34:01 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f636751d127f8971cce183b77e4b1c9e116f6c29b7cc4a734152f1620fadf7`  
		Last Modified: Thu, 27 Aug 2026 20:34:03 GMT  
		Size: 74.0 MB (73962102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf0754e4c98e3630220692ca1b911521ff8a54d1d506a4f95a257240f65f7ee`  
		Last Modified: Thu, 27 Aug 2026 20:34:02 GMT  
		Size: 3.4 KB (3396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-trixie` - unknown; unknown

```console
$ docker pull espocrm@sha256:5c8b81ede3272bc087b79c64974d84d229ed657e4525a6f199d6a42c12c1f816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 KB (41784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8de5c8af2fbac848d357b3d3c542040b7c4d5f36fff3519d9cc67a59247da44`

```dockerfile
```

-	Layers:
	-	`sha256:6a6ba3e11e1fe009a4a3a9a5806551b1bbd39899890f57678876f14ede9e38a1`  
		Last Modified: Thu, 27 Aug 2026 20:34:01 GMT  
		Size: 41.8 KB (41784 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-trixie` - linux; arm variant v7

```console
$ docker pull espocrm@sha256:acdce70780b16b12015f5647bcc42c719ae409f70ca3c26dd0df9e36da1c709a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218074445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201985e578ad9bb8e89afff993cecc003617afc99890c89bbe4911779093eaa9`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 27 Aug 2026 21:17:38 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 27 Aug 2026 21:17:38 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 27 Aug 2026 21:17:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 21:19:02 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 21:19:02 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 27 Aug 2026 21:19:02 GMT
ENV ESPOCRM_VERSION=10.0.6
# Thu, 27 Aug 2026 21:19:02 GMT
ENV ESPOCRM_SHA256=88bcb177dbe38b79ec3c13d491d78b727dc14fe18fc91deea1bfa72b313f7fb4
# Thu, 27 Aug 2026 21:19:02 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 21:19:10 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.6.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 27 Aug 2026 21:19:10 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:19:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 21:19:10 GMT
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
	-	`sha256:c7792743c9559e96a37f47c94b1653ce14d9c959ed27d1a00a78585f3d55f01a`  
		Last Modified: Thu, 27 Aug 2026 21:19:21 GMT  
		Size: 243.8 KB (243776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8717a8d3681bb97b433236110c2ca36ad8daeb4c263a0aecb6c648bf86048b54`  
		Last Modified: Thu, 27 Aug 2026 21:19:22 GMT  
		Size: 3.6 MB (3600264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b0e5f68c7758acb5e315765797051915b4adb5d7153331bb7e09400da685d0b`  
		Last Modified: Thu, 27 Aug 2026 21:19:21 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:588f13b3354381a54800cad8d28f4987576c0a668bd3f9b2d61d010218807a9c`  
		Last Modified: Thu, 27 Aug 2026 21:19:23 GMT  
		Size: 74.0 MB (73962091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0019beac00c3c017e4ec12427081af964e26bebcfa17de54c0858d6a401de36a`  
		Last Modified: Thu, 27 Aug 2026 21:19:22 GMT  
		Size: 3.4 KB (3394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-trixie` - unknown; unknown

```console
$ docker pull espocrm@sha256:c3cf3b13fece7d3ea0ffa5c90574af0772b4fa1a7fb5a37a1fa10d3fcbe7f880
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 KB (41783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2cfe1fa110f55fad7756928990c8e65a2d555953078deeb7e161db3234bb69b`

```dockerfile
```

-	Layers:
	-	`sha256:df286c66050c2ccd927725897d253c7e3f4363eb97e716c19b8fa111255b138a`  
		Last Modified: Thu, 27 Aug 2026 21:19:21 GMT  
		Size: 41.8 KB (41783 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-trixie` - linux; arm64 variant v8

```console
$ docker pull espocrm@sha256:91d923c9586b34e6325c8eb7a87a1d95950534c50924d8e87b156afb58a182be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249321702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74ec5676b3cbf4e7090af62a2382d8a1a9a02b0a7ae7b0dc76394d05d1636025`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 27 Aug 2026 20:30:16 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 27 Aug 2026 20:30:16 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 27 Aug 2026 20:30:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 20:31:40 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 20:31:40 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 27 Aug 2026 20:31:40 GMT
ENV ESPOCRM_VERSION=10.0.6
# Thu, 27 Aug 2026 20:31:40 GMT
ENV ESPOCRM_SHA256=88bcb177dbe38b79ec3c13d491d78b727dc14fe18fc91deea1bfa72b313f7fb4
# Thu, 27 Aug 2026 20:31:40 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:31:48 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.6.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 27 Aug 2026 20:31:48 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:31:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 20:31:48 GMT
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
	-	`sha256:9ee54acb4b0d1cae406a1dcf3ec4008098eb8c2f05bdc547210bb83ce41319e0`  
		Last Modified: Thu, 27 Aug 2026 20:31:59 GMT  
		Size: 261.0 KB (261016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7b4dc4240654bd2014805d0abe87fa99af161ad836cdbfb22d41a969cfd454`  
		Last Modified: Thu, 27 Aug 2026 20:31:59 GMT  
		Size: 4.0 MB (4034007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b874052d21f9b636ceee3eb5c2e5afa2d16d735a54a0af596f98e7a1735d226f`  
		Last Modified: Thu, 27 Aug 2026 20:32:00 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2ce7a2d87f97477cb5bd3f672f2843a5cc266687a0765dbbd6dc54b1de3115`  
		Last Modified: Thu, 27 Aug 2026 20:32:01 GMT  
		Size: 74.0 MB (73962108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caaabff3cb8be05533558aac2f4dc69104a1f06a73f1f2d4b662ab2145bf3e41`  
		Last Modified: Thu, 27 Aug 2026 20:32:00 GMT  
		Size: 3.4 KB (3396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-trixie` - unknown; unknown

```console
$ docker pull espocrm@sha256:fb416fa276e4bc8e0e347490a85a4f1c0b0f922e72d0cada380c58736a9842bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 KB (41837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d3ea4f7b0f636b2ec025df66068279ab12e4756036bebf382a21c83dc5beaba`

```dockerfile
```

-	Layers:
	-	`sha256:2114cd035efcbd93fbcd66a4669abf63ce9f11a9585bfe2e3d8819048fd77e9f`  
		Last Modified: Thu, 27 Aug 2026 20:31:59 GMT  
		Size: 41.8 KB (41837 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-trixie` - linux; 386

```console
$ docker pull espocrm@sha256:958ee06b8575eee12581143b124ff624e76881f51118b6ccd7a74947d0748066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.8 MB (256801806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f7b64f332f7c86fafe33fa362ca5ccd6308f89b2a5a510586f8656703061cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 27 Aug 2026 21:14:35 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 27 Aug 2026 21:14:35 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 27 Aug 2026 21:14:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 21:15:44 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 21:15:44 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 27 Aug 2026 21:15:44 GMT
ENV ESPOCRM_VERSION=10.0.6
# Thu, 27 Aug 2026 21:15:44 GMT
ENV ESPOCRM_SHA256=88bcb177dbe38b79ec3c13d491d78b727dc14fe18fc91deea1bfa72b313f7fb4
# Thu, 27 Aug 2026 21:15:44 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 21:15:52 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.6.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 27 Aug 2026 21:15:52 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:15:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 21:15:52 GMT
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
	-	`sha256:b8cb2b547142e35b7920d1d00bc338453a577ea4231f45f937ab98033a45aa11`  
		Last Modified: Thu, 27 Aug 2026 21:16:02 GMT  
		Size: 268.7 KB (268703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acafdea4ea551bab09a1d46cccff2ff30712153c54eb621fcfe3b6b78a0236d1`  
		Last Modified: Thu, 27 Aug 2026 21:16:02 GMT  
		Size: 4.2 MB (4178275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e76b462c72f4efffb46317dc617ec8253a0eec93016b46c300b7fb656d4a8ef3`  
		Last Modified: Thu, 27 Aug 2026 21:16:02 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec72d52c97d4d129141ac07abeca5da80eebb4578572bc7fe9d724a6cbe83c32`  
		Last Modified: Thu, 27 Aug 2026 21:16:04 GMT  
		Size: 74.0 MB (73962106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb521e24a7b1014b28bc2baca6c4abebddfca5532d6e3b00f2408b086edfab0`  
		Last Modified: Thu, 27 Aug 2026 21:16:03 GMT  
		Size: 3.4 KB (3396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-trixie` - unknown; unknown

```console
$ docker pull espocrm@sha256:dc4f7bf622e0f5817f7a3184e9adcebc0916521fe2def4d9988e0cae90f54c40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 KB (41582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a484b083f94e8579f824064aa886372a81e0a90b8502ae55a3d861a93558d2cb`

```dockerfile
```

-	Layers:
	-	`sha256:c5fdbe94452d743e50d98bce398e521c168bca3e897dae841fb5798ce9a81210`  
		Last Modified: Thu, 27 Aug 2026 21:16:01 GMT  
		Size: 41.6 KB (41582 bytes)  
		MIME: application/vnd.in-toto+json
