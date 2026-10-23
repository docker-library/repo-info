## `espocrm:fpm-alpine3.23`

```console
$ docker pull espocrm@sha256:bc5584c8f5aedfa5555e6e4fea6860ab207bdbbd9f74e0bc7d26dc1a2c4f6bb2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `espocrm:fpm-alpine3.23` - linux; amd64

```console
$ docker pull espocrm@sha256:220ed31eb9eed197c528e0a0647fa4e2b88a0870fa8a061084204efa04b36d6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116174679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ed322a76596ec7efcc3cf15591816c5fbcd1d95aca3d40afbc7dd4d2a34f4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:07:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 21:07:07 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 21:07:07 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 21:07:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 21:07:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 21:07:07 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 21:07:07 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 21:07:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 21:07:07 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 21:07:07 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 21:07:07 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 21:07:07 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 21:07:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 21:07:10 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:10:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 21:10:29 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:10:29 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 21:10:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 21:10:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 21:10:30 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 21:10:30 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 21 Oct 2026 21:10:30 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 21:10:30 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 21 Oct 2026 21:10:30 GMT
CMD ["php-fpm"]
# Fri, 23 Oct 2026 18:24:07 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Fri, 23 Oct 2026 18:24:07 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Fri, 23 Oct 2026 18:24:07 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Fri, 23 Oct 2026 18:25:14 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Fri, 23 Oct 2026 18:25:14 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Fri, 23 Oct 2026 18:25:14 GMT
ENV ESPOCRM_VERSION=10.0.11
# Fri, 23 Oct 2026 18:25:14 GMT
ENV ESPOCRM_SHA256=cdd04f7efa52a59025ef824c75b06e0a84cf986724a8c5bc4b56fcd2ce8e0ab1
# Fri, 23 Oct 2026 18:25:14 GMT
WORKDIR /var/www/html
# Fri, 23 Oct 2026 18:25:22 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.11.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Fri, 23 Oct 2026 18:25:22 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 18:25:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Oct 2026 18:25:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73717f34a74c72a61cf99bdd826e1e258f296ff56139019db9593fa6574ad157`  
		Last Modified: Wed, 21 Oct 2026 21:10:37 GMT  
		Size: 3.5 MB (3487330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7aa3ff27e657b6a2945af02da2fd42deb2b3df79f75af45c02f16c13ca7cf89`  
		Last Modified: Wed, 21 Oct 2026 21:10:37 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f7488a13301901278641db38fd9f607807c80a400c944c84bd50ebc0776549`  
		Last Modified: Wed, 21 Oct 2026 21:10:36 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a156152e16ff0cf190f6d52a067eb6b4cdcea5cdd753575e07c7d06ac6002b19`  
		Last Modified: Wed, 21 Oct 2026 21:10:37 GMT  
		Size: 13.9 MB (13885711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a42902a05bf0163e30088a157ffbf5673b0c12cacac168e44c33f916bda6e726`  
		Last Modified: Wed, 21 Oct 2026 21:10:38 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eae98c0482c5bda3a8fdc86dc742143555d923b23a33c4ceb21f0daba25606a`  
		Last Modified: Wed, 21 Oct 2026 21:10:38 GMT  
		Size: 15.4 MB (15399906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:054c0a91acad00eefc5c925d5f72087c96d53e8851ce21f78edcc6b4b935d39f`  
		Last Modified: Wed, 21 Oct 2026 21:10:38 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfb61154b9149217454fbe9c298f0a7a18f513ec71ef62377aebcaf935e22f11`  
		Last Modified: Wed, 21 Oct 2026 21:10:38 GMT  
		Size: 22.3 KB (22268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05a027402e71fd44925a55159b490f2d782aa637c060e1fa6ed75f7276554b23`  
		Last Modified: Wed, 21 Oct 2026 21:10:39 GMT  
		Size: 22.3 KB (22285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575145814743d0c472c053bbdd307558a8911b9cb77482e98b48e632bfee6e42`  
		Last Modified: Wed, 21 Oct 2026 21:10:39 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c9eab1c05954e40234b8531be2639efc9a4ff8eec3de36361c043dd9c734787`  
		Last Modified: Fri, 23 Oct 2026 18:25:32 GMT  
		Size: 519.9 KB (519916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cc32fccabcb0a43903894b609ccc995d134ce62ac9fa75a028d7915348d4be`  
		Last Modified: Fri, 23 Oct 2026 18:25:32 GMT  
		Size: 5.3 MB (5250402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033dd67ab1e90dd15eba24f615d16d1b452cf7e7f26df42e384a77cb9dc21483`  
		Last Modified: Fri, 23 Oct 2026 18:25:32 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:214dae8217c582b973a7001879c26085adcc5051893ddc68ce76f7209ad04ae0`  
		Last Modified: Fri, 23 Oct 2026 18:25:34 GMT  
		Size: 73.7 MB (73717423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb73976f3b326028585e1e7748027324eae80f498c9a7e4eee3b3d37d8ac29d4`  
		Last Modified: Fri, 23 Oct 2026 18:25:33 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:4384c410bbc8b35cfb4a6594a88d332ee8c3b9abe4412cc66ad72fe4f2415bc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 KB (40049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e5f43b7e20688a87c543cbdf33de4ec244542d01558138f76a50b4d9b825c30`

```dockerfile
```

-	Layers:
	-	`sha256:9088b9b219e1c563e6f1fe4914c6e300e8fcbe52d8fa2f1fd638155138315d46`  
		Last Modified: Fri, 23 Oct 2026 18:25:32 GMT  
		Size: 40.0 KB (40049 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-alpine3.23` - linux; arm variant v6

```console
$ docker pull espocrm@sha256:4851c25ae889ea62c75e8df120308d3adec1cea3f3a388d34197e3c902ad59d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113891156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d6e3bcadfa11024c1c1c8dd3dd4079e9425ffb58038abc01e40cd2ec2355bf8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 21:17:08 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 21:17:09 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 21:17:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 21:17:09 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 21:17:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 21:17:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 21:17:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 21:17:09 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 21:17:09 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 21:17:09 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 21:17:09 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 21:17:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 21:17:12 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:20:17 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 21:20:17 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:20:17 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 21:20:18 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 21:20:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 21:20:18 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 21:20:18 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 21 Oct 2026 21:20:18 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 21:20:18 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 21 Oct 2026 21:20:18 GMT
CMD ["php-fpm"]
# Fri, 23 Oct 2026 18:22:38 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Fri, 23 Oct 2026 18:22:38 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Fri, 23 Oct 2026 18:22:38 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Fri, 23 Oct 2026 18:24:11 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Fri, 23 Oct 2026 18:24:11 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Fri, 23 Oct 2026 18:24:11 GMT
ENV ESPOCRM_VERSION=10.0.11
# Fri, 23 Oct 2026 18:24:11 GMT
ENV ESPOCRM_SHA256=cdd04f7efa52a59025ef824c75b06e0a84cf986724a8c5bc4b56fcd2ce8e0ab1
# Fri, 23 Oct 2026 18:24:11 GMT
WORKDIR /var/www/html
# Fri, 23 Oct 2026 18:24:21 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.11.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Fri, 23 Oct 2026 18:24:21 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 18:24:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Oct 2026 18:24:21 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:442940d227da1ffa8cd07723db788d15062f14aacedbdb9dd00501977705fa9d`  
		Last Modified: Wed, 21 Oct 2026 21:20:24 GMT  
		Size: 3.4 MB (3444547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b686ae4b4a425cd1c0128de2bcfb7fd4318ead882f5d311a089fde546ea5f1`  
		Last Modified: Wed, 21 Oct 2026 21:20:23 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05219d8a231f54c4a73b30120f6200d2403dc2460a70aec45d021719571a678`  
		Last Modified: Wed, 21 Oct 2026 21:20:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a63b16193fca86da025a8d6cffd8e52909b7ab22fe080399ba7fcf9ca96b090`  
		Last Modified: Wed, 21 Oct 2026 21:20:24 GMT  
		Size: 13.9 MB (13885755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:201e3b1f93aabd8194a5a413c5fd2260b08c9194a061d794ef2f8baf9b2c0242`  
		Last Modified: Wed, 21 Oct 2026 21:20:24 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ec6c4b722348234fbf9342a41741a87f1ac5fe00e8af351dec141930c41f38f`  
		Last Modified: Wed, 21 Oct 2026 21:20:25 GMT  
		Size: 13.8 MB (13826534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f087f487135fa5bfbd7765d1450b70b678443e6105e3b618bece154e688a0e`  
		Last Modified: Wed, 21 Oct 2026 21:20:25 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f9a7f953cecf369acfbb84f0fb0959ea9765f4291b90ab1c96ab7ac69ae9cec`  
		Last Modified: Wed, 21 Oct 2026 21:20:25 GMT  
		Size: 22.1 KB (22065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50500c115a99af74f763f2d655735f080c8f5127b6659b9128df7d92bac4be64`  
		Last Modified: Wed, 21 Oct 2026 21:20:26 GMT  
		Size: 22.1 KB (22083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e82871b3e27365027f4bb22bc10d78d8a54048b3da9dece8d520dc0950a220`  
		Last Modified: Wed, 21 Oct 2026 21:20:26 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1cb422cbe2e6205c3b1abc9f7770a4929633c437d5e922ef600e0c01486c8d3`  
		Last Modified: Fri, 23 Oct 2026 18:24:31 GMT  
		Size: 522.6 KB (522559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b1d44d78616ab3993af0006df4bd593981f5afc99fd589583b5686bb9d3618`  
		Last Modified: Fri, 23 Oct 2026 18:24:31 GMT  
		Size: 4.9 MB (4874901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46639497a6f944ee2be85dc75f99bb17655d61e2e8fdbddf24c15f93ed02936d`  
		Last Modified: Fri, 23 Oct 2026 18:24:31 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acda01d07a8fd422fc5e068efe76dd3ae03b841159587cad71b57bc177b5a0b6`  
		Last Modified: Fri, 23 Oct 2026 18:24:34 GMT  
		Size: 73.7 MB (73717309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48980fc35a7f8fadb36126491328c670b352015608d5b8ab23fe43ba3a9b586b`  
		Last Modified: Fri, 23 Oct 2026 18:24:33 GMT  
		Size: 3.4 KB (3410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:20e8df2202f85639d7cd448ac3d93c51bbdf814bcbb97a341c76529d76c84043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfc895a2316cfad4feb9b6b3098ee728e63067fa052226f93b40e67cf3de042c`

```dockerfile
```

-	Layers:
	-	`sha256:21dbbf80eccdc625e068f028a890f3656cacd33d99e3b884474ecafb7f35aeeb`  
		Last Modified: Fri, 23 Oct 2026 18:24:31 GMT  
		Size: 40.2 KB (40200 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-alpine3.23` - linux; arm variant v7

```console
$ docker pull espocrm@sha256:2ab181bdf50ed309fa73481706b3410a9fb27627bc424817fb280d086413c990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112344133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd4f522e0f8bab752377adf60cf68ce3e32bb8d6de693cfd37187ae5118f4b76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:10:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 21:10:49 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 21:10:49 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 21:10:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 21:10:49 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 21:10:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 21:10:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 21:10:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 21:10:49 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 21:10:49 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 21:10:49 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 21:10:49 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 21:10:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 21:10:52 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:13:54 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 21:13:54 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:13:55 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 21:13:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 21:13:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 21:13:56 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 21:13:56 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 21 Oct 2026 21:13:56 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 21:13:56 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 21 Oct 2026 21:13:56 GMT
CMD ["php-fpm"]
# Fri, 23 Oct 2026 18:22:19 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Fri, 23 Oct 2026 18:22:19 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Fri, 23 Oct 2026 18:22:19 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Fri, 23 Oct 2026 18:23:46 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Fri, 23 Oct 2026 18:23:46 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Fri, 23 Oct 2026 18:23:46 GMT
ENV ESPOCRM_VERSION=10.0.11
# Fri, 23 Oct 2026 18:23:46 GMT
ENV ESPOCRM_SHA256=cdd04f7efa52a59025ef824c75b06e0a84cf986724a8c5bc4b56fcd2ce8e0ab1
# Fri, 23 Oct 2026 18:23:46 GMT
WORKDIR /var/www/html
# Fri, 23 Oct 2026 18:23:55 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.11.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Fri, 23 Oct 2026 18:23:55 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 18:23:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Oct 2026 18:23:55 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3122a8456117bacd728bc7c3a0f864d3cc0a83629def63d178221f1b470f0c3`  
		Last Modified: Wed, 21 Oct 2026 21:14:02 GMT  
		Size: 3.3 MB (3252827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a8380320278cfe14cd30793d665192271671ca6b8c70e0f284d39771ae9d82`  
		Last Modified: Wed, 21 Oct 2026 21:14:02 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b17c0110f8ee03e079aa694fb018e7997637101bf65a2f8a9c8205916fcf3020`  
		Last Modified: Wed, 21 Oct 2026 21:14:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58a4f4c36fe8b7ece9c716b324ab56512961a36279cf77745ce999244dc9566f`  
		Last Modified: Wed, 21 Oct 2026 21:14:02 GMT  
		Size: 13.9 MB (13885749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e80cfa3228860dac257623c65caaa6112363b05a085fc17805113e8139107a`  
		Last Modified: Wed, 21 Oct 2026 21:14:03 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a581e11cb2ad48363048b6442d290aa7d263a6820c86b6c4a806508fdbd1de2`  
		Last Modified: Wed, 21 Oct 2026 21:14:03 GMT  
		Size: 13.0 MB (13047369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e9389343102786e6246d71315bca6b4927781260fc28d25dca6eef38e865a7`  
		Last Modified: Wed, 21 Oct 2026 21:14:03 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c451db0c1d334c95aa9d508bf4d016ef904ceb315d9d7df51a966abd9eede33`  
		Last Modified: Wed, 21 Oct 2026 21:14:04 GMT  
		Size: 22.1 KB (22057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e607b9edf82ff837394d331b0efef7deeb1b280507b8572980aa8c36f6ea937`  
		Last Modified: Wed, 21 Oct 2026 21:14:04 GMT  
		Size: 22.1 KB (22074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1253196fd83661d65abd7737fd35bc11fa758d6c90bd15585e9dbd5023df857f`  
		Last Modified: Wed, 21 Oct 2026 21:14:05 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b1dd1a5ede2868aacca753b245bd3d3d3272f9b4ed3369a66b13052f3482174`  
		Last Modified: Fri, 23 Oct 2026 18:24:06 GMT  
		Size: 479.6 KB (479592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf30dce1f205af932fc9fa26204113a54f1c48fcc9dccb01f262ec5882f70b7c`  
		Last Modified: Fri, 23 Oct 2026 18:24:06 GMT  
		Size: 4.6 MB (4632885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d2de9b73e2db55ee74891b24e69d6a420e9ff898cd7a1473e36ce5301dce29`  
		Last Modified: Fri, 23 Oct 2026 18:24:06 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b87a62c840fd8ac7c1b289f4b437f008bd6bbf1f65744dba2713343cda56c204`  
		Last Modified: Fri, 23 Oct 2026 18:24:08 GMT  
		Size: 73.7 MB (73717333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27128ad0a5fcf300c01a27b742c7cb7e07bad3e2ebff6fef8b10a0c3b0f3f641`  
		Last Modified: Fri, 23 Oct 2026 18:24:07 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:64298b736fdcae209451c4c77a19185a1f19c5fc8c1d486c111eb90e92de5edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f25a32fbc9a46015e158c3598dd6aed5fb30b54848b9539a81a1c2eee6902a90`

```dockerfile
```

-	Layers:
	-	`sha256:0fa4ab8796b63ae6559b6d556927ac21a840623ce1c6e649db7ac0be68337a51`  
		Last Modified: Fri, 23 Oct 2026 18:24:06 GMT  
		Size: 40.2 KB (40200 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull espocrm@sha256:8c5b451779f5ae0670ea9bf35e5ebe3c54ee78bcf7ebf138d262b7cd4f1c16d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116028213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729777d85bff108422f14675ee1bb929d4aacafdd79cb035c248f1e3063a6ae7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 21:06:33 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 21:06:33 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 21:06:33 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 21:06:34 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 21:06:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 21:06:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 21:06:34 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 21:06:34 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 21:06:34 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 21:06:34 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 21:06:34 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 21:06:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 21:06:36 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:09:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 21:09:50 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:09:51 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 21:09:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 21:09:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 21:09:51 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 21:09:51 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 21 Oct 2026 21:09:51 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 21:09:51 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 21 Oct 2026 21:09:51 GMT
CMD ["php-fpm"]
# Fri, 23 Oct 2026 18:24:22 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Fri, 23 Oct 2026 18:24:22 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Fri, 23 Oct 2026 18:24:22 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Fri, 23 Oct 2026 18:25:44 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Fri, 23 Oct 2026 18:25:45 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Fri, 23 Oct 2026 18:25:45 GMT
ENV ESPOCRM_VERSION=10.0.11
# Fri, 23 Oct 2026 18:25:45 GMT
ENV ESPOCRM_SHA256=cdd04f7efa52a59025ef824c75b06e0a84cf986724a8c5bc4b56fcd2ce8e0ab1
# Fri, 23 Oct 2026 18:25:45 GMT
WORKDIR /var/www/html
# Fri, 23 Oct 2026 18:25:53 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.11.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Fri, 23 Oct 2026 18:25:54 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 18:25:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Oct 2026 18:25:54 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74af33165badd0173130d7ffbeade565ae5c7d2ac486cc52f508b404b2138482`  
		Last Modified: Wed, 21 Oct 2026 21:09:58 GMT  
		Size: 3.5 MB (3496511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:452a1a321fb14c855e2690a89b0f625e769e5b80a294e8d7e1724fda6436b95c`  
		Last Modified: Wed, 21 Oct 2026 21:09:58 GMT  
		Size: 927.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ad767e3ecf8e401d4bceb6f5954e9f113a9e822143a8024f4db9175672d8e58`  
		Last Modified: Wed, 21 Oct 2026 21:09:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e31216441e9285d4f1b985a9aa14125ff235d79cceb04baf57aeb97204ba416`  
		Last Modified: Wed, 21 Oct 2026 21:09:59 GMT  
		Size: 13.9 MB (13885752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:931cc519233fce7ce0d313b9b5735254f52fa313135f889b0269741f61a17111`  
		Last Modified: Wed, 21 Oct 2026 21:09:59 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbb7a71fc129c9ffe5297721f9e37f88e5851952e68c171131fbde667e9cd1f`  
		Last Modified: Wed, 21 Oct 2026 21:10:00 GMT  
		Size: 14.9 MB (14911458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9aa8169d80b79358f217678cf258949f32918714786aeb4905bfbb8cd1807b`  
		Last Modified: Wed, 21 Oct 2026 21:10:00 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dca233f41e2534fc341117ea7b862a6382a30cdbfc0b93934f949d63479d4c7`  
		Last Modified: Wed, 21 Oct 2026 21:10:00 GMT  
		Size: 22.1 KB (22107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e33848a90cf81dc83b691c73583b228d06d9d6dd54ad9ce8268db71fdbcb101`  
		Last Modified: Wed, 21 Oct 2026 21:10:00 GMT  
		Size: 22.1 KB (22112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9409eab5dc5949e661ff4b8e7430e602cd2d07f1ef9ca1c837e4461b30c7ffe`  
		Last Modified: Wed, 21 Oct 2026 21:10:01 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:587434129f44eeee47cbf2486b4da90433e0832cc85392f5e732e2b1694e6b44`  
		Last Modified: Fri, 23 Oct 2026 18:26:06 GMT  
		Size: 581.8 KB (581778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34035c8d9008769a2ff0b1e85964949fe7fc4474496458e980522cdc876e1f92`  
		Last Modified: Fri, 23 Oct 2026 18:26:12 GMT  
		Size: 5.2 MB (5184495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c011dc72ce582c9b8c362000e08a3dd699dd3f64df436778c7c3c40e876e9b8`  
		Last Modified: Fri, 23 Oct 2026 18:26:07 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533a41f870ad92c8fe8061d22c96622b51fd786f6a5f8c93587f99a8b8769934`  
		Last Modified: Fri, 23 Oct 2026 18:26:20 GMT  
		Size: 73.7 MB (73717292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75989f0ac981ef7ec6c53efe7648df63b9449e16ac2a39eeedb52f66542863ec`  
		Last Modified: Fri, 23 Oct 2026 18:26:12 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:e3c5d7a5c7c7ae68e91ba98747e67c38832bfbeb41dc3f011d117e8a60972d09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35640d1914feddfbbe7afb2b9ebe540ff2d0413157c7b0880f29b49cad9d9ee0`

```dockerfile
```

-	Layers:
	-	`sha256:5723597109cb11d5d4a91aa1720ce56bae86175f35e3fe95407f7b5392d2f2a6`  
		Last Modified: Fri, 23 Oct 2026 18:26:05 GMT  
		Size: 40.2 KB (40246 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-alpine3.23` - linux; 386

```console
$ docker pull espocrm@sha256:c2cccd665a6ac790e65f4ea22c278f955c1a86a9509dd714eacee167037d1875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.5 MB (116496516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f67979b51f3fc2f66955e7e640882e383452f077d8cfff8f126f686ab2d534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 21:06:59 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 21:06:59 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 21:06:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 21:06:59 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 21:06:59 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 21:06:59 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 21:06:59 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 21:06:59 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 21:06:59 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 21:06:59 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 21:06:59 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 21:07:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 21:07:02 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:10:23 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 21:10:24 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:10:24 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 21:10:25 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 21:10:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 21:10:25 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 21:10:25 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 21 Oct 2026 21:10:25 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 21:10:25 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 21 Oct 2026 21:10:25 GMT
CMD ["php-fpm"]
# Fri, 23 Oct 2026 18:27:06 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Fri, 23 Oct 2026 18:27:06 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Fri, 23 Oct 2026 18:27:06 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Fri, 23 Oct 2026 18:28:14 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Fri, 23 Oct 2026 18:28:14 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Fri, 23 Oct 2026 18:28:14 GMT
ENV ESPOCRM_VERSION=10.0.11
# Fri, 23 Oct 2026 18:28:14 GMT
ENV ESPOCRM_SHA256=cdd04f7efa52a59025ef824c75b06e0a84cf986724a8c5bc4b56fcd2ce8e0ab1
# Fri, 23 Oct 2026 18:28:14 GMT
WORKDIR /var/www/html
# Fri, 23 Oct 2026 18:28:22 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.11.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Fri, 23 Oct 2026 18:28:23 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 18:28:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Oct 2026 18:28:23 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbec3bc8ddd0bfe81e6655c76117e37a96a8702e931504b9a116c18a61d1786d`  
		Last Modified: Wed, 21 Oct 2026 21:10:31 GMT  
		Size: 3.5 MB (3519374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c58be9349fa9d67a947b85742f8c54cca08ba3b7b53f52011a449212f23485dd`  
		Last Modified: Wed, 21 Oct 2026 21:10:31 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:862483ccd52b28bdf349ab4ef43a8d8aa915bd7606f9d8c86cde9c79bd8f33d6`  
		Last Modified: Wed, 21 Oct 2026 21:10:31 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f594a4c4f562dc3c1e945d61eaf55af3a55eb523ab2d2c8e8a2d32ba2940abe`  
		Last Modified: Wed, 21 Oct 2026 21:10:32 GMT  
		Size: 13.9 MB (13885720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d685f22927b7b78f1880b3b5159b1ee4250c1c172bd42282399561bd104b40`  
		Last Modified: Wed, 21 Oct 2026 21:10:32 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d45735e6530e9fba5e9ba994e814abb92a569d9b0604c04fbc1f18551ff44766`  
		Last Modified: Wed, 21 Oct 2026 21:10:33 GMT  
		Size: 15.7 MB (15733291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a541ee783c3a7c7f95c0a99c3d48faa174b8f7e09dd1aaf8c1f7123ff27d16ec`  
		Last Modified: Wed, 21 Oct 2026 21:10:33 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9b4d52f6be9158ca3a0be9bcc7a59cdbc64cac1da7cd15cd8051fb219701141`  
		Last Modified: Wed, 21 Oct 2026 21:10:33 GMT  
		Size: 22.3 KB (22265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496b0fc5cb939e2c9acf105dacb5b267436cbba7cdd6523a08ea27e8c713a278`  
		Last Modified: Wed, 21 Oct 2026 21:10:34 GMT  
		Size: 22.3 KB (22282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b1cc145f4270022a1f8336fe9a4ad83153c6f5b7268e70373352a74a3ca147`  
		Last Modified: Wed, 21 Oct 2026 21:10:34 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cdedcc633edced6a388d2a121f40800d6c24f7bb5267bf4ddd36d93c41090f3`  
		Last Modified: Fri, 23 Oct 2026 18:28:32 GMT  
		Size: 530.2 KB (530165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be72e7444981715c147178cbbed3f66686edd75cc02c438e48b79214bf674c1`  
		Last Modified: Fri, 23 Oct 2026 18:28:32 GMT  
		Size: 5.4 MB (5371539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc188cf498080f98490c3449e5e4dd9cfe7868d20c392d9c72b388a0e06a81d6`  
		Last Modified: Fri, 23 Oct 2026 18:28:32 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d13df19c37ea6c38c427b995e6192ab6550dfb713ea4839d7a18ea40318306e5`  
		Last Modified: Fri, 23 Oct 2026 18:28:34 GMT  
		Size: 73.7 MB (73717362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c6fe7d4ece7a06c378d03ac65d81af1880f386f11d7fe2383c7a44b2fb9483`  
		Last Modified: Fri, 23 Oct 2026 18:28:33 GMT  
		Size: 3.4 KB (3409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:1525380c4d1da17b956bf6f2723fcc621f115f49d35c04b5e3b26030f04675e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 KB (39991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af52d02970c60e5632d2537adfbb9d23720d414e17493b88bdbcd07de8875524`

```dockerfile
```

-	Layers:
	-	`sha256:5b11c00c11f79d09d5f17fdfdf17da4afdd6318f45b51490accab865628b9046`  
		Last Modified: Fri, 23 Oct 2026 18:28:31 GMT  
		Size: 40.0 KB (39991 bytes)  
		MIME: application/vnd.in-toto+json
