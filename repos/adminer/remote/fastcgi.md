## `adminer:fastcgi`

```console
$ docker pull adminer@sha256:2c573b90738adac78e6190ae8d266997208c93faf5779972e92bf20f64862769
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
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
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `adminer:fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:219a74c1b9620171f406d77ddba1d84406c0792811f92ccf95d52181625edebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38707777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3c46f53dfe3481547027fa0f39759dff2a95bc9ca4433fcaa68b17ba22c4b0`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 19:02:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 24 Sep 2026 19:02:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 24 Sep 2026 19:02:11 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 24 Sep 2026 19:02:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:02:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:02:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:02:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:02:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:02:12 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 24 Sep 2026 19:02:12 GMT
ENV PHP_VERSION=8.4.26
# Thu, 24 Sep 2026 19:02:12 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Thu, 24 Sep 2026 19:02:12 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 19:12:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 19:12:58 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:18 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:16:18 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:19 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:16:19 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:16:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:16:19 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:16:19 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 24 Sep 2026 19:16:19 GMT
STOPSIGNAL SIGQUIT
# Thu, 24 Sep 2026 19:16:19 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 24 Sep 2026 19:16:19 GMT
CMD ["php-fpm"]
# Thu, 24 Sep 2026 19:28:55 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 24 Sep 2026 19:28:55 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 24 Sep 2026 19:29:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 24 Sep 2026 19:29:19 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 24 Sep 2026 19:29:19 GMT
ENV ADMINER_VERSION=6.1.0
# Thu, 24 Sep 2026 19:29:19 GMT
ENV ADMINER_DOWNLOAD_SHA256=95bf24b510b41904446f720f4f1212c9e28b1d523f3df44259480d7a12ea181e
# Thu, 24 Sep 2026 19:29:19 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=c3762ccd5c9c3b30f19fe2bc5afe3201b93bc5e079376a6a7176dd257b442fd8
# Thu, 24 Sep 2026 19:29:19 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 24 Sep 2026 19:29:19 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:29:19 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:29:19 GMT
USER adminer
# Thu, 24 Sep 2026 19:29:19 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e9be8c4ce10f0ce5124be4af2787a713fc903b171266ed47666f7ceae69873`  
		Last Modified: Thu, 24 Sep 2026 19:05:32 GMT  
		Size: 3.5 MB (3491147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3130f89f3c63429596be99f2a8d32ecf9e47f575c7b9db96d7b0e6158888070f`  
		Last Modified: Thu, 24 Sep 2026 19:05:32 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e3bdfcc5a203df8785d4b1895bc1ce39519ffa0c10b441544a40028ce37849`  
		Last Modified: Thu, 24 Sep 2026 19:05:31 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd7fa885de46035a4ea6a55cdda7061d478c8f580418d504c4b55190476efd8`  
		Last Modified: Thu, 24 Sep 2026 19:16:27 GMT  
		Size: 13.8 MB (13814786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bac20b495fc72ad7b32218ec7638ac37b5641cfc7c8776702457cef07be78a9`  
		Last Modified: Thu, 24 Sep 2026 19:16:26 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffbfbdac1079f6369a967c05f25e16002a3af687f9df7a2324864c2d197cd9ad`  
		Last Modified: Thu, 24 Sep 2026 19:16:27 GMT  
		Size: 15.4 MB (15386854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fbe5870b4fe19e2a092eb3bcc5d0b96cb3a61496f2449467e584e8acdc7f7a`  
		Last Modified: Thu, 24 Sep 2026 19:16:26 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe5efce3c6dd0af6b8166f894fad12dd61422e3f9715a30c3296896dc753efe`  
		Last Modified: Thu, 24 Sep 2026 19:16:27 GMT  
		Size: 22.4 KB (22427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c333772ac9094c887afd2be4c23e1a37e47eacad4ac04b17fe887f05c3558012`  
		Last Modified: Thu, 24 Sep 2026 19:16:27 GMT  
		Size: 22.4 KB (22441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b724b4113ed78016f2a4dee63bde6454cadd74b2b4949bcf7510abb8ebcd84`  
		Last Modified: Thu, 24 Sep 2026 19:16:28 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:714ace680ec59da91aff627bfdb7f492ad39f4bd104aac7cbfb99c357408580f`  
		Last Modified: Thu, 24 Sep 2026 19:29:23 GMT  
		Size: 303.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24498d1c5f83c3e2a1d184104c46ce3867323c5f0febcc8daf47cd142305a3b`  
		Last Modified: Thu, 24 Sep 2026 19:29:23 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b339675e8aacf5ef96c04f6aac22116a0caa925db675e70667c47b8774f6a1bf`  
		Last Modified: Thu, 24 Sep 2026 19:29:23 GMT  
		Size: 1.5 MB (1467548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:275230aaf6d8484b7569c426cd6c634fd2ed11b0021ca535e0d5f5897c072d86`  
		Last Modified: Thu, 24 Sep 2026 19:29:23 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916778d5575d6afcb9619752e9975752098f6a78cbfeaf46d0beb4a0cc68b0c3`  
		Last Modified: Thu, 24 Sep 2026 19:29:24 GMT  
		Size: 635.9 KB (635852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb74e96f5130e7188247f13ce4fea529caecf6f59f77f04b7e26998f60c4cef`  
		Last Modified: Thu, 24 Sep 2026 19:29:24 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:45107bd9b7ba7c7a1ba1ddfbb2c5aab36f5f712d558287a373e15ef53e67748f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 KB (34010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59aa3db93aa542e1195e318d852be2aaa91a2bab5f016d34ab328765150e1dff`

```dockerfile
```

-	Layers:
	-	`sha256:7457dda2319024dcba263c22a5bbe0a304bec319e7422ee6b303d2848accca60`  
		Last Modified: Thu, 24 Sep 2026 19:29:24 GMT  
		Size: 34.0 KB (34010 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:fastcgi` - linux; arm variant v6

```console
$ docker pull adminer@sha256:0c285909de66951e5a6c88c47e3ef10ba9d8a9d8a552c7bb4263bd7c13155c12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36802687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05aed796ff3deb72d7a0c6ae8767d59bb831916d5fbcc013c6dc919ba41f8dfc`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 19:13:05 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 24 Sep 2026 19:13:05 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 24 Sep 2026 19:13:05 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 24 Sep 2026 19:13:05 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:13:05 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:13:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:13:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:13:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:13:05 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 24 Sep 2026 19:13:05 GMT
ENV PHP_VERSION=8.4.26
# Thu, 24 Sep 2026 19:13:05 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Thu, 24 Sep 2026 19:13:05 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 19:13:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 19:13:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:16:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:22 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:16:23 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:16:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:16:23 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:16:23 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 24 Sep 2026 19:16:23 GMT
STOPSIGNAL SIGQUIT
# Thu, 24 Sep 2026 19:16:23 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 24 Sep 2026 19:16:23 GMT
CMD ["php-fpm"]
# Thu, 24 Sep 2026 19:36:40 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 24 Sep 2026 19:36:40 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 24 Sep 2026 19:37:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 24 Sep 2026 19:37:18 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 24 Sep 2026 19:37:19 GMT
ENV ADMINER_VERSION=6.1.0
# Thu, 24 Sep 2026 19:37:19 GMT
ENV ADMINER_DOWNLOAD_SHA256=95bf24b510b41904446f720f4f1212c9e28b1d523f3df44259480d7a12ea181e
# Thu, 24 Sep 2026 19:37:19 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=c3762ccd5c9c3b30f19fe2bc5afe3201b93bc5e079376a6a7176dd257b442fd8
# Thu, 24 Sep 2026 19:37:19 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 24 Sep 2026 19:37:19 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:37:19 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:37:19 GMT
USER adminer
# Thu, 24 Sep 2026 19:37:19 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe0098d9d111b0ec077080a86383f2f1965f746b3ea08367e68515d88ede2e3`  
		Last Modified: Thu, 24 Sep 2026 19:16:29 GMT  
		Size: 3.4 MB (3445109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22d67e99d5a2b2348d3f4038f8d0a2a668d23b719b2ad938bc599a9f4f59663c`  
		Last Modified: Thu, 24 Sep 2026 19:16:28 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f021fd1e2de91024ef681a164bf1b6c450dc5ca4d22c6df89cd6211bb981f5f`  
		Last Modified: Thu, 24 Sep 2026 19:16:28 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e9088c26a4d04bd0ad1e771f536dcfd7e72ae0af7b8a9804687fefa16b40da`  
		Last Modified: Thu, 24 Sep 2026 19:16:29 GMT  
		Size: 13.8 MB (13814822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d695cf48889ea44996d15c3ea7c3024c2e6de50807cbf5c1299d33e6d6815d74`  
		Last Modified: Thu, 24 Sep 2026 19:16:29 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412889b91b66af49aec43155470816390282987ec35630acc065d2e1ed9d5af4`  
		Last Modified: Thu, 24 Sep 2026 19:16:30 GMT  
		Size: 13.8 MB (13826448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d783dd3e074a586509c6d9786552905e8783e88618ac0b238b37f684ef3918`  
		Last Modified: Thu, 24 Sep 2026 19:16:30 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59381e4f8d62435a1bb11a1cfb6164189e29a96205b95b8cd8fd9832877ec231`  
		Last Modified: Thu, 24 Sep 2026 19:16:30 GMT  
		Size: 22.2 KB (22244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec9d272bafc4d37f815f946ab9db24a2983d803f386df8bfbcf3728ffce1c70`  
		Last Modified: Thu, 24 Sep 2026 19:16:31 GMT  
		Size: 22.3 KB (22263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe3635d24507ae24d12bc093efe8018292b14d71917872371277b409207ef82`  
		Last Modified: Thu, 24 Sep 2026 19:16:31 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e2e97496364fa25ced454e2b3b3da98264c7e3fdeb8b1618e98da6ca4cb545`  
		Last Modified: Thu, 24 Sep 2026 19:37:23 GMT  
		Size: 306.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfff5f65b2edf03f4575cef3e6b478dc876692835a52186235014eac528c6661`  
		Last Modified: Thu, 24 Sep 2026 19:37:23 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96d20b8e39aa3b43d44f2a8a73836f081e6c94a69753dfb3591ec66782cdc437`  
		Last Modified: Thu, 24 Sep 2026 19:37:23 GMT  
		Size: 1.5 MB (1463850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ec670d3f01e28122aa7a89bf427ee3156644dd7757aa8fe2a15d962f7f4013f`  
		Last Modified: Thu, 24 Sep 2026 19:37:23 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9e22e826b73786a11508eefe1a1cae62b5beb83aee109fcf61ae7a6ae15c5c`  
		Last Modified: Thu, 24 Sep 2026 19:37:24 GMT  
		Size: 635.9 KB (635858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ca3e659a390e0154f7d486dc3a7e96b803bc1abfb43a57ad74b3fdcefbd531d`  
		Last Modified: Thu, 24 Sep 2026 19:37:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:8315b040bea718270998dac74a07ab15d62920804c6a37d4d903aa417dd31822
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 KB (34122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8259d855e3ed51467981d27935bbc4e9b55a1f016d24b0b4e56cebcee7f1d79`

```dockerfile
```

-	Layers:
	-	`sha256:431fa64e5e6b0e6784b1a8d45e157c683aeab897a2ab375cb5535ef1efb59003`  
		Last Modified: Thu, 24 Sep 2026 19:37:23 GMT  
		Size: 34.1 KB (34122 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:fastcgi` - linux; arm variant v7

```console
$ docker pull adminer@sha256:49ff4f28a85ae41fced28507314dadcc298a206bb1650eaa96f8463c7ae4b4e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35394324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12248b23988536719446529e4740bd6cf88fc2075d3130556c1da60f5b3a118`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 19:04:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 24 Sep 2026 19:04:58 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 24 Sep 2026 19:04:58 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 24 Sep 2026 19:04:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:04:58 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:04:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:04:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:04:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:04:58 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 24 Sep 2026 19:04:58 GMT
ENV PHP_VERSION=8.4.26
# Thu, 24 Sep 2026 19:04:58 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Thu, 24 Sep 2026 19:04:58 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 19:27:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 19:27:36 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:30:54 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:30:54 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:30:55 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:30:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:30:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:30:56 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:30:56 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 24 Sep 2026 19:30:56 GMT
STOPSIGNAL SIGQUIT
# Thu, 24 Sep 2026 19:30:56 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 24 Sep 2026 19:30:56 GMT
CMD ["php-fpm"]
# Thu, 24 Sep 2026 20:20:31 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 24 Sep 2026 20:20:31 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 24 Sep 2026 20:21:05 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 24 Sep 2026 20:21:05 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 24 Sep 2026 20:21:06 GMT
ENV ADMINER_VERSION=6.1.0
# Thu, 24 Sep 2026 20:21:06 GMT
ENV ADMINER_DOWNLOAD_SHA256=95bf24b510b41904446f720f4f1212c9e28b1d523f3df44259480d7a12ea181e
# Thu, 24 Sep 2026 20:21:06 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=c3762ccd5c9c3b30f19fe2bc5afe3201b93bc5e079376a6a7176dd257b442fd8
# Thu, 24 Sep 2026 20:21:06 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 24 Sep 2026 20:21:06 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 20:21:06 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 24 Sep 2026 20:21:06 GMT
USER adminer
# Thu, 24 Sep 2026 20:21:06 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732e48ebf13d273be65673584627f7ad3f49c35509afe9123a4acbad48dfc2c7`  
		Last Modified: Thu, 24 Sep 2026 19:08:08 GMT  
		Size: 3.3 MB (3258253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d042c06c6be4faa07cea97a556617e47ddbda5880a58b173751730d1f0aca36`  
		Last Modified: Thu, 24 Sep 2026 19:08:08 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a39d42267c781fe6b196360622c158720ccf2cd841acbfbaa48c71520ba0598`  
		Last Modified: Thu, 24 Sep 2026 19:08:07 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129fbb54dbb0351909697bff0cb83a476c5a4ef8235d51913cc5d6028d3cd914`  
		Last Modified: Thu, 24 Sep 2026 19:31:03 GMT  
		Size: 13.8 MB (13814811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38fa917d89e46a82884a630fb7e7c3f0fe9ae5b311385b92eba248fa16261636`  
		Last Modified: Thu, 24 Sep 2026 19:31:02 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85f97cd495962185abfb590dbb09988ba4b5e14c0e2e30ca5eb904f318bf8c1`  
		Last Modified: Thu, 24 Sep 2026 19:31:03 GMT  
		Size: 13.0 MB (13045106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8da19a175498c1db4e91fef2593c953961d4f749a4e5eeb21075e5fd1c69106`  
		Last Modified: Thu, 24 Sep 2026 19:31:02 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a2a1d03de830e22fd2752c2a8c3128d84ded0cb069ecd0689477483efa0cc9`  
		Last Modified: Thu, 24 Sep 2026 19:31:03 GMT  
		Size: 22.2 KB (22242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f64c155f3b465ef9d96e79e925be0dd38b0ffe6775e3d26343186f0bdf23b94`  
		Last Modified: Thu, 24 Sep 2026 19:31:04 GMT  
		Size: 22.3 KB (22254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e55c09506d1b1503b2b7c9a72305c165aea6add77170db03d318ba98c8b03021`  
		Last Modified: Thu, 24 Sep 2026 19:31:04 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddde7a075d1ffbc69b3b3709c36bf0b2df0f80f2ca8b0e42223d800f8d21f2d8`  
		Last Modified: Thu, 24 Sep 2026 20:21:10 GMT  
		Size: 303.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:353b24ae91bf0165faf552c47b091524748d19085e223d74829f4ed8a00fd9a4`  
		Last Modified: Thu, 24 Sep 2026 20:21:10 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb24241e5f797d2a673163b61473f161ecc137781e26d0a64081daf9006e11f9`  
		Last Modified: Thu, 24 Sep 2026 20:21:10 GMT  
		Size: 1.3 MB (1313627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7a672c7abe39223343549238317c21200a87a3b02dd407ca6e3e78597a5e70`  
		Last Modified: Thu, 24 Sep 2026 20:21:10 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea180d53058bfe3b10de49214cc29965f46cbf0f523f8f89c384c299ea4ad904`  
		Last Modified: Thu, 24 Sep 2026 20:21:11 GMT  
		Size: 635.9 KB (635850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11c4c14cce241801e56d729285d8892f77a703b32f50c6e117809f321e46fba`  
		Last Modified: Thu, 24 Sep 2026 20:21:11 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:fead62f4378202aecea0fb291ec17b176a0391b7155d8782c9cbb736ade0a0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 KB (34122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:313712744341cc32d3659ec4e7e46733da50468b87f1e8ec3177104ec38687d1`

```dockerfile
```

-	Layers:
	-	`sha256:7fba7c6c2ebfa0e0757b307e792489bfb0365236f8688420f35b9f5b9e397d3c`  
		Last Modified: Thu, 24 Sep 2026 20:21:10 GMT  
		Size: 34.1 KB (34122 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:fastcgi` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:a00a7a64f5babc6b36101bf0e39c2fa05cf095298b3bb65731876814fbbcfefe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.6 MB (38575506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc7a9c394565f1c54f3b0bba5ab4cc53da99816853b8dc21e2f9c3d4c7e056a8`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 19:13:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 24 Sep 2026 19:13:07 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 24 Sep 2026 19:13:07 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 24 Sep 2026 19:13:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:13:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:13:07 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:13:07 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:13:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:13:07 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 24 Sep 2026 19:13:07 GMT
ENV PHP_VERSION=8.4.26
# Thu, 24 Sep 2026 19:13:07 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Thu, 24 Sep 2026 19:13:07 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 19:13:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 19:13:10 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:35 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:16:35 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:35 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:16:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:16:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:16:36 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:16:36 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 24 Sep 2026 19:16:36 GMT
STOPSIGNAL SIGQUIT
# Thu, 24 Sep 2026 19:16:36 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 24 Sep 2026 19:16:36 GMT
CMD ["php-fpm"]
# Thu, 24 Sep 2026 19:28:08 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 24 Sep 2026 19:28:08 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 24 Sep 2026 19:28:42 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 24 Sep 2026 19:28:42 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 24 Sep 2026 19:28:42 GMT
ENV ADMINER_VERSION=6.1.0
# Thu, 24 Sep 2026 19:28:42 GMT
ENV ADMINER_DOWNLOAD_SHA256=95bf24b510b41904446f720f4f1212c9e28b1d523f3df44259480d7a12ea181e
# Thu, 24 Sep 2026 19:28:42 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=c3762ccd5c9c3b30f19fe2bc5afe3201b93bc5e079376a6a7176dd257b442fd8
# Thu, 24 Sep 2026 19:28:42 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 24 Sep 2026 19:28:42 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:28:42 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:28:42 GMT
USER adminer
# Thu, 24 Sep 2026 19:28:42 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850c04a82bca9b554a08dac5e9113268d2a88b51740105828ce6af33b38875fa`  
		Last Modified: Thu, 24 Sep 2026 19:16:43 GMT  
		Size: 3.5 MB (3501048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f864aaef8af02d3e35fa1138191d341e3fd38529e887244ad4d631b8dc40aab`  
		Last Modified: Thu, 24 Sep 2026 19:16:43 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee869a23462dd1fc2d0bc68089edf6d29fd123039e17650bf5f6037ac66173a`  
		Last Modified: Thu, 24 Sep 2026 19:16:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4d739c4a9d437ff66c161d25f43d5306f1c5404eb26b48fb308c641b1639be`  
		Last Modified: Thu, 24 Sep 2026 19:16:44 GMT  
		Size: 13.8 MB (13814796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23fc01919fc2cfee5c86e604927dbd4b13bfca0d1f898c3fae5fb804cb78457b`  
		Last Modified: Thu, 24 Sep 2026 19:16:44 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fbb4173885e6a71d24558dd7beadb73b80eb3046fca89b2b436292660b0a87f`  
		Last Modified: Thu, 24 Sep 2026 19:16:45 GMT  
		Size: 14.9 MB (14894801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ce079b0f38b73ee4cff75485b3e6eaeef680189f81f6c3f4770eba8e5ee139`  
		Last Modified: Thu, 24 Sep 2026 19:16:45 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dcba45b84a54178938446f2eedfce32b78ee5f8d95f688d2ba3806aea79b75e`  
		Last Modified: Thu, 24 Sep 2026 19:16:45 GMT  
		Size: 22.2 KB (22238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225e3d01e028d3afebc61b1fb4fbdf5ce2a11623773d326f82f1e14beb720a6b`  
		Last Modified: Thu, 24 Sep 2026 19:16:46 GMT  
		Size: 22.3 KB (22256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a7044ee125aaf9fffbe1d45fde01761cdcb992fefdab192675af8a31d338fc`  
		Last Modified: Thu, 24 Sep 2026 19:16:46 GMT  
		Size: 9.3 KB (9258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2426dd827c90b20cfde5974b097aaf636770a7494d08c7a069b0eb0b7e30739e`  
		Last Modified: Thu, 24 Sep 2026 19:28:46 GMT  
		Size: 302.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2407ee3e3efbf0969260f8e6ee022484ce501ffd39b4f39f23d044ff5819b8eb`  
		Last Modified: Thu, 24 Sep 2026 19:28:46 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed112a58c2f0a249bd12a45e5babb439989e01bde5e4c9ec291ca8274a88ae2`  
		Last Modified: Thu, 24 Sep 2026 19:28:47 GMT  
		Size: 1.5 MB (1479883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df092cc1615555ce9eb588bc8148c0aa903eb8dc2696e8c1cc52cf03ad62026e`  
		Last Modified: Thu, 24 Sep 2026 19:28:46 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b9c58d6fd3b6ec8fec8d597b18a4e5922b1967eb5f796df67372acf49775a19`  
		Last Modified: Thu, 24 Sep 2026 19:28:47 GMT  
		Size: 635.9 KB (635852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50be4b0071db366fb8b9e2ea8936ce3c0617443ec02e0701fb1cfb3befeb5bf2`  
		Last Modified: Thu, 24 Sep 2026 19:28:47 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:3a750189124d136214e45bedc71b35e2d5fd3da7684c79cac434a652de0269dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 KB (34148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89480d50cea0377be38c881c3555973cd12e6ad8069d2a0fc3839fb3fdf75cf6`

```dockerfile
```

-	Layers:
	-	`sha256:3446d890f6f30df66dde4dbd5c2733bd47de9b099367ad6b8d1f59aaad71f49f`  
		Last Modified: Thu, 24 Sep 2026 19:28:46 GMT  
		Size: 34.1 KB (34148 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:fastcgi` - linux; 386

```console
$ docker pull adminer@sha256:cc62573667f6af69fe18db493386f44c8a7faf0d68c055d4a3ccda73c3b841b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38916510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b21a1d0b17e77ac85e913639df367f1ade7f0472f8ed78227374bfc1a3adde6`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 19:13:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 24 Sep 2026 19:13:16 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 24 Sep 2026 19:13:16 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 24 Sep 2026 19:13:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:13:16 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:13:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:13:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:13:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:13:16 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 24 Sep 2026 19:13:16 GMT
ENV PHP_VERSION=8.4.26
# Thu, 24 Sep 2026 19:13:16 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Thu, 24 Sep 2026 19:13:16 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 19:13:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 19:13:19 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:34 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:16:34 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:35 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:16:35 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:16:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:16:36 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:16:36 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 24 Sep 2026 19:16:36 GMT
STOPSIGNAL SIGQUIT
# Thu, 24 Sep 2026 19:16:36 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 24 Sep 2026 19:16:36 GMT
CMD ["php-fpm"]
# Thu, 24 Sep 2026 19:27:44 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 24 Sep 2026 19:27:44 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 24 Sep 2026 19:28:11 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 24 Sep 2026 19:28:11 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 24 Sep 2026 19:28:12 GMT
ENV ADMINER_VERSION=6.1.0
# Thu, 24 Sep 2026 19:28:12 GMT
ENV ADMINER_DOWNLOAD_SHA256=95bf24b510b41904446f720f4f1212c9e28b1d523f3df44259480d7a12ea181e
# Thu, 24 Sep 2026 19:28:12 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=c3762ccd5c9c3b30f19fe2bc5afe3201b93bc5e079376a6a7176dd257b442fd8
# Thu, 24 Sep 2026 19:28:12 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 24 Sep 2026 19:28:12 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:28:12 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:28:12 GMT
USER adminer
# Thu, 24 Sep 2026 19:28:12 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac29cfc5ace8cda5f3d9ae0c2b19c4a80df36518ca96b6e420e981b16bf22fbf`  
		Last Modified: Thu, 24 Sep 2026 19:16:43 GMT  
		Size: 3.5 MB (3524567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5581296d2be36fc2732a61777d1278d6461e343bd10f0c6a2d84b4a954d762bc`  
		Last Modified: Thu, 24 Sep 2026 19:16:42 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f61b79ee8a69ab832ad150ed866c80a31aeb0a16c818fd63529eadee7fd1bb02`  
		Last Modified: Thu, 24 Sep 2026 19:16:42 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e94f0f86882a8df4acf28bbd0418822232f21e0b44a5976f1b8cf380524574`  
		Last Modified: Thu, 24 Sep 2026 19:16:43 GMT  
		Size: 13.8 MB (13814781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26564bef71d9bce64965c4655bf0c78ba5d593b6734d97c4f8108e619fe82da5`  
		Last Modified: Thu, 24 Sep 2026 19:16:44 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4902852aa27d458ec53c7658142f9358868aa949f2476baf155953b563144ec`  
		Last Modified: Thu, 24 Sep 2026 19:16:44 GMT  
		Size: 15.7 MB (15706851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80edd7d12c8e4f018db2e51a8ee052d1abcfded7e3556cb40cc1ff1735afa59`  
		Last Modified: Thu, 24 Sep 2026 19:16:44 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:962999c4f03e41fc458d8eb9cb3a71a718d656f3a8e18f3870a65ae05762f2b3`  
		Last Modified: Thu, 24 Sep 2026 19:16:44 GMT  
		Size: 22.4 KB (22434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5192dc2cd6ec032e2a4e8ab96228a36dff4c4a223fcd42b428870d5ba2d8e85`  
		Last Modified: Thu, 24 Sep 2026 19:16:45 GMT  
		Size: 22.4 KB (22440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df20bfaf26baa6ad9f58431c8b20618f63d60538d97eecfcf3d4a090030cdcff`  
		Last Modified: Thu, 24 Sep 2026 19:16:45 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d22bc1a3ee7947d5892d69722f233782f4e7da87d47294496290ce30013641e`  
		Last Modified: Thu, 24 Sep 2026 19:28:16 GMT  
		Size: 306.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3456ee9a8bf317298497348a479e36b46666339a33fe2d28b05beaca636f76eb`  
		Last Modified: Thu, 24 Sep 2026 19:28:16 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a5b1ac6432f907cb45f637e482b2d12c44204b4475441a243f2b2f0c8828179`  
		Last Modified: Thu, 24 Sep 2026 19:28:16 GMT  
		Size: 1.5 MB (1495826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dbf83eb12424f0af0fe6c50bde555a59be175ecdafdd084e062a9244c762dff`  
		Last Modified: Thu, 24 Sep 2026 19:28:16 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5c127818e419e3df887a997751566e31830168f0b49b042fc7b1251c12e38ed`  
		Last Modified: Thu, 24 Sep 2026 19:28:17 GMT  
		Size: 635.9 KB (635850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ddc4d1ab046554505a6b20c27e2af9d8bc220595b539fc922ad83faee672a8`  
		Last Modified: Thu, 24 Sep 2026 19:28:17 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:bb4ba01aefb950edef70e505323300c11b81aa016bc6971abb50d3b83e06ca6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 KB (33978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c55964aed0e5003469436bbb6246a9ca5e50279783ae89edc66ace51e56e6d`

```dockerfile
```

-	Layers:
	-	`sha256:c8fed128cd5d9438660c57053f39e2b014058418946c711e487a45378cfe78a5`  
		Last Modified: Thu, 24 Sep 2026 19:28:16 GMT  
		Size: 34.0 KB (33978 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:fastcgi` - linux; ppc64le

```console
$ docker pull adminer@sha256:616beb1c93e9aa36c022c084fa07bd994136f97090b5e7192f0bee02a24f38b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39470425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11271245b387c9e269428922c0ff5d30d012877eefa2b86e2ee50187eb356764`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 21:35:21 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 21:35:22 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 21:35:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 21:35:22 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_VERSION=8.4.26
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 20:36:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 20:36:12 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 20:44:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 20:44:06 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 20:44:10 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 20:44:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 20:44:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 20:44:15 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 20:44:19 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 24 Sep 2026 20:44:19 GMT
STOPSIGNAL SIGQUIT
# Thu, 24 Sep 2026 20:44:19 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 24 Sep 2026 20:44:19 GMT
CMD ["php-fpm"]
# Thu, 24 Sep 2026 22:03:23 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 24 Sep 2026 22:03:24 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 24 Sep 2026 22:04:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 24 Sep 2026 22:04:25 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 24 Sep 2026 22:04:26 GMT
ENV ADMINER_VERSION=6.1.0
# Thu, 24 Sep 2026 22:04:26 GMT
ENV ADMINER_DOWNLOAD_SHA256=95bf24b510b41904446f720f4f1212c9e28b1d523f3df44259480d7a12ea181e
# Thu, 24 Sep 2026 22:04:26 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=c3762ccd5c9c3b30f19fe2bc5afe3201b93bc5e079376a6a7176dd257b442fd8
# Thu, 24 Sep 2026 22:04:26 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 24 Sep 2026 22:04:27 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 22:04:27 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 24 Sep 2026 22:04:27 GMT
USER adminer
# Thu, 24 Sep 2026 22:04:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94dd3b632bc8356dfcd2913d56c4dafaee9f64ea172ed02d121456debc7e09e3`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 3.7 MB (3664991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ffba323cefd4aec9e70567151bff96ffe7dcd359abe0c80e30f54fdb9d519d3`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 928.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f076f58842bb9537630b1ddc9001cb2a7d48b3dc3da8088c3b602853fa14e686`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa3cad4c4decc073102c41db49dd72cc0a06ff7448a75ce43e8bdee753911cc`  
		Last Modified: Thu, 24 Sep 2026 20:41:16 GMT  
		Size: 13.8 MB (13814827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88361323aaac16082c88ac50d10ceac23be4a13b563e73fe511210842e145770`  
		Last Modified: Thu, 24 Sep 2026 20:41:15 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6846ae3f21e55c73c5fad04515b40355a471c8ccd383a56d4f101d49d71ab34c`  
		Last Modified: Thu, 24 Sep 2026 20:44:43 GMT  
		Size: 15.9 MB (15935609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e6ae3fcccf87df9721323cca03c8626ad8c6a9b3bca7394bcabbc827197e8e`  
		Last Modified: Thu, 24 Sep 2026 20:44:43 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6468db359adcbeb84ba93bee6e0e66a92af96025bb3c6d362422b9427c999c1a`  
		Last Modified: Thu, 24 Sep 2026 20:44:43 GMT  
		Size: 22.3 KB (22270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b0f79a486d364e751f7877194c14de28872665c28b5c9cc80a26286e4d5d953`  
		Last Modified: Thu, 24 Sep 2026 20:44:43 GMT  
		Size: 22.3 KB (22289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85b238ee73d0dd1c6e99a53581471dc11d376e56c4479074d14bf89777acd8c`  
		Last Modified: Thu, 24 Sep 2026 20:44:44 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335bdcabf72b6b9924f13b615be2724954d79500276e98eba3d1dab8ad4cd548`  
		Last Modified: Thu, 24 Sep 2026 22:04:35 GMT  
		Size: 306.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53bd5e3cbf799b2cd590f866ac3fb0c19510542d54fb295d8374d862f7e3c314`  
		Last Modified: Thu, 24 Sep 2026 22:04:35 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dcf2e465c59f0ae7b34fa83f69425e7bd951aec2985028297aa1f26db2fa63e`  
		Last Modified: Thu, 24 Sep 2026 22:04:35 GMT  
		Size: 1.5 MB (1540103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6cfe46287380e5b7bea955ab7ce8aa6b894ca199c6e7b71dacf9b7229541d2`  
		Last Modified: Thu, 24 Sep 2026 22:04:35 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd451c09291eefa152a11955deb0ca5fd9ff0b17bd9c0afb1cf8c4680ebf08b5`  
		Last Modified: Thu, 24 Sep 2026 22:04:36 GMT  
		Size: 635.9 KB (635859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6054e533730b0b3f67663764d7172e13e787582ba34b1f022773287c6d15c34f`  
		Last Modified: Thu, 24 Sep 2026 22:04:36 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:bd0e9099844b8ea46aa126eaec1c8f14cf820de518052f257d55611838c3156a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 KB (34055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a7070ea005a9d428149e41f8bb1ac2dc3c60d81ac7d99569f1f2b4d239dec71`

```dockerfile
```

-	Layers:
	-	`sha256:913fed4a4faac1fa69d6bd4ebb5c74e2d973c386c010bb9e5d2d7f0ce6822b42`  
		Last Modified: Thu, 24 Sep 2026 22:04:35 GMT  
		Size: 34.1 KB (34055 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:fastcgi` - linux; riscv64

```console
$ docker pull adminer@sha256:974890cdb288facf68c235071e8700dabcdac13deaaffb83cddc0909de143d78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (41029622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7213102e8f07117222c8ac6d4d1b646c1cf2f5fdd6274cbfba0eac8d08f83f4f`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Wed, 17 Jun 2026 10:08:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 17 Jun 2026 10:08:26 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 17 Jun 2026 10:08:27 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 17 Jun 2026 10:08:27 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 17 Jun 2026 10:08:27 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_VERSION=8.4.25
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Fri, 28 Aug 2026 17:25:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 28 Aug 2026 17:25:07 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sun, 30 Aug 2026 19:55:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sun, 30 Aug 2026 19:55:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sun, 30 Aug 2026 19:55:47 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sun, 30 Aug 2026 19:55:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sun, 30 Aug 2026 19:55:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sun, 30 Aug 2026 19:55:52 GMT
WORKDIR /var/www/html
# Sun, 30 Aug 2026 19:55:52 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sun, 30 Aug 2026 19:55:52 GMT
STOPSIGNAL SIGQUIT
# Sun, 30 Aug 2026 19:55:52 GMT
EXPOSE map[9000/tcp:{}]
# Sun, 30 Aug 2026 19:55:52 GMT
CMD ["php-fpm"]
# Sun, 30 Aug 2026 22:24:19 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Sun, 30 Aug 2026 22:24:20 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Sun, 30 Aug 2026 22:30:00 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Sun, 30 Aug 2026 22:30:01 GMT
COPY *.php /var/www/html/ # buildkit
# Sun, 30 Aug 2026 22:30:03 GMT
ENV ADMINER_VERSION=6.0.1
# Sun, 30 Aug 2026 22:30:03 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Sun, 30 Aug 2026 22:30:03 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Sun, 30 Aug 2026 22:30:03 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Sun, 30 Aug 2026 22:30:03 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Sun, 30 Aug 2026 22:30:03 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sun, 30 Aug 2026 22:30:03 GMT
USER adminer
# Sun, 30 Aug 2026 22:30:03 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc09af4ff1d594ba4ff939387160eac2fe7e3118ca810f61819eb5d92f7b520`  
		Last Modified: Wed, 17 Jun 2026 12:01:56 GMT  
		Size: 3.6 MB (3604699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01600916adca5933ee02bb7a5a25279f28df2779de050e87ee103675d313f666`  
		Last Modified: Wed, 17 Jun 2026 12:01:55 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a891144274182ffd9c264ebaada55f1b357da87b9d652cda214fc6307d6f939`  
		Last Modified: Wed, 17 Jun 2026 12:01:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e7b3ff8b579d6148c0c6a3a3f532650eb443aaafcec254028ebb48d2492ccc`  
		Last Modified: Fri, 28 Aug 2026 18:23:54 GMT  
		Size: 13.8 MB (13782401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08cb55bdef5ffab76fd96949b2dc9af0cc8ec36e249524c3cd4d01bdf0d2a563`  
		Last Modified: Fri, 28 Aug 2026 18:23:50 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289114d811b860251d34800a4c600f49085c3bfabe4092f04fd2b9b90a25c128`  
		Last Modified: Sun, 30 Aug 2026 19:56:49 GMT  
		Size: 17.9 MB (17902012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f1bcb3e6d66388e8118d28099e88a78fa9f77da12b7be026414396d12d4424`  
		Last Modified: Sun, 30 Aug 2026 19:56:46 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372d4b9648fab805856eef9b7710913f32ab3b550a14d176bb0515cf342d5553`  
		Last Modified: Sun, 30 Aug 2026 19:56:46 GMT  
		Size: 22.3 KB (22280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d30a3dd732868ab095de424fd4e0861fdcf4bd08d7e8e935a5e28616e5fcabe`  
		Last Modified: Sun, 30 Aug 2026 19:56:46 GMT  
		Size: 22.3 KB (22301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7737ea582382d770e6da03d6381dacac9f40c994a5269daaf5989ae14b284a0a`  
		Last Modified: Sun, 30 Aug 2026 19:56:47 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a242538a389afffac10a70f96da3f76cdcded764d94ccfb64c487f974d3a686`  
		Last Modified: Sun, 30 Aug 2026 22:30:18 GMT  
		Size: 308.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:902b07722fa2ebdbf1a03e86653d0135a3d6c29b296fd057274aeeb7ce1d2ac8`  
		Last Modified: Sun, 30 Aug 2026 22:30:18 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a0a5ed8b205d1cd66664e49f24e3c2de763a031a2c9b50a57abe9c74f764079`  
		Last Modified: Sun, 30 Aug 2026 22:30:18 GMT  
		Size: 1.5 MB (1489639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5e0c277eb6482c1b5f3d1d56cd600a92cae86bf89a2e020c05f9c82441083c`  
		Last Modified: Sun, 30 Aug 2026 22:30:18 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d4468f60aa3a180f637b25179750cb4d1ae3982f97045d447d222825884577`  
		Last Modified: Sun, 30 Aug 2026 22:30:19 GMT  
		Size: 614.9 KB (614920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25194a7d1a4edc7f79806d87a9caa7a81907d5078c5c43fc400084ebdbdc50d4`  
		Last Modified: Sun, 30 Aug 2026 22:30:19 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:75964b6eaa29894bae6dafedd7826c20d62f9094737129020cf963ec1f377926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 KB (34055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ed9d9621b2b1224d612e405cf5e3586619096e33308df9610f43545ae9d927`

```dockerfile
```

-	Layers:
	-	`sha256:744cbd0b0d35021a4571fae79552eed4df7e70fb634506baebc85d9e35d2df8b`  
		Last Modified: Sun, 30 Aug 2026 22:30:18 GMT  
		Size: 34.1 KB (34055 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:fastcgi` - linux; s390x

```console
$ docker pull adminer@sha256:b7accb871c96c007c4a4681ef7a3a928fe09b485899189459d385e9ca41d7a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.6 MB (38574859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e5f8d61f1e9d15b0df64c90315fe26fbb8dabfe57d2a1d4e73b58fec1350dc6`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:26:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 22:26:50 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 22:26:50 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 22:26:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 22:26:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 22:26:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 22:26:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 22:26:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 22:26:50 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 17 Sep 2026 22:26:50 GMT
ENV PHP_VERSION=8.4.26
# Thu, 17 Sep 2026 22:26:50 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Thu, 17 Sep 2026 22:26:50 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 19:27:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 19:27:38 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:32:23 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:32:23 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:32:24 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:32:25 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:32:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:32:25 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:32:25 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 24 Sep 2026 19:32:25 GMT
STOPSIGNAL SIGQUIT
# Thu, 24 Sep 2026 19:32:25 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 24 Sep 2026 19:32:25 GMT
CMD ["php-fpm"]
# Thu, 24 Sep 2026 20:15:55 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 24 Sep 2026 20:15:55 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 24 Sep 2026 20:16:21 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 24 Sep 2026 20:16:21 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 24 Sep 2026 20:16:22 GMT
ENV ADMINER_VERSION=6.1.0
# Thu, 24 Sep 2026 20:16:22 GMT
ENV ADMINER_DOWNLOAD_SHA256=95bf24b510b41904446f720f4f1212c9e28b1d523f3df44259480d7a12ea181e
# Thu, 24 Sep 2026 20:16:22 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=c3762ccd5c9c3b30f19fe2bc5afe3201b93bc5e079376a6a7176dd257b442fd8
# Thu, 24 Sep 2026 20:16:22 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 24 Sep 2026 20:16:22 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 20:16:22 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 24 Sep 2026 20:16:22 GMT
USER adminer
# Thu, 24 Sep 2026 20:16:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7495a2e85785a505f197517cb201c41b849c6c222991ddc59ab428082c5ade00`  
		Last Modified: Thu, 17 Sep 2026 22:31:22 GMT  
		Size: 3.7 MB (3686224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60603f20a2e221221fa8dd5e32811e0a28e96f06fca1d28d83841aa23da38ebf`  
		Last Modified: Thu, 17 Sep 2026 22:31:21 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248b124dd8d316aa608eea025a3b5467f33483554da047fcf0374eb31a329941`  
		Last Modified: Thu, 17 Sep 2026 22:31:21 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729109b67955ac51e290d668d7d2d305e3f6c8c683f7ef9d2de94375be6f9713`  
		Last Modified: Thu, 24 Sep 2026 19:31:48 GMT  
		Size: 13.8 MB (13814806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf937719f9c65773e61ed6e8132e2a3a96a890822aa9847ec64e1d31a001bfb9`  
		Last Modified: Thu, 24 Sep 2026 19:31:47 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03debafae24022fb727f32e64c4b02174ef0601f1db7f4946eafa660f2d05fda`  
		Last Modified: Thu, 24 Sep 2026 19:32:36 GMT  
		Size: 15.1 MB (15126485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b140891053c52d2f2b30ac17587b0395d786d232bd6292c2720072cfc1f1ef18`  
		Last Modified: Thu, 24 Sep 2026 19:32:36 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6210166c8af1786227e1b7d5e73c1bd5168ede562fa21115de0c32a80f2fb503`  
		Last Modified: Thu, 24 Sep 2026 19:32:36 GMT  
		Size: 22.3 KB (22269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd5d55b909945ac9ac3851314e92f812b1e24ca1de390b4fefd38521012b063`  
		Last Modified: Thu, 24 Sep 2026 19:32:36 GMT  
		Size: 22.3 KB (22284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f247683a59fc21519fdc1b538ce67f12daf047a56cae278b26ac27c294ab141b`  
		Last Modified: Thu, 24 Sep 2026 19:32:37 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f42199751da16664062c5da5fb2b1de15fee6d9c91f87ca19912f3f6fe61cf`  
		Last Modified: Thu, 24 Sep 2026 20:16:29 GMT  
		Size: 306.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4d277cead4f046ee5b7e12abf7b533359f00a607f17d88289e9ee48c0b26697`  
		Last Modified: Thu, 24 Sep 2026 20:16:29 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0871d92f0f5296a4ede50f0cf1373e340b9c20de4cca489a2d4505c5fd5c89de`  
		Last Modified: Thu, 24 Sep 2026 20:16:29 GMT  
		Size: 1.5 MB (1534591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:161129161cd76e7928fc5fe0a873841f3aac31b6cea5caecf820f7f5e56010d1`  
		Last Modified: Thu, 24 Sep 2026 20:16:29 GMT  
		Size: 1.8 KB (1772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d0c85ac13690d76bba794920272c9420f0c34d1c3c75bd83b211af698e32c1`  
		Last Modified: Thu, 24 Sep 2026 20:16:30 GMT  
		Size: 635.9 KB (635862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddf9fe8e187f396059e957208ec4db4eb329f0f14e1d84bc760560a47b29175`  
		Last Modified: Thu, 24 Sep 2026 20:16:30 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:2374dc659a1534e71216193b976de9dab3f0b12acd99a4484c53867e5c979ff7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 KB (34011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfea4cc6ed057421e9ba0c99d9bbbf5dc3e17979b898a96172478695443814d5`

```dockerfile
```

-	Layers:
	-	`sha256:b2ca00d9e60f22ad52e14cbcac8f71ebd8c28f1885d15d0df89b2d2f59f7633b`  
		Last Modified: Thu, 24 Sep 2026 20:16:29 GMT  
		Size: 34.0 KB (34011 bytes)  
		MIME: application/vnd.in-toto+json
