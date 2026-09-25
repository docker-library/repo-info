## `adminer:6-standalone`

```console
$ docker pull adminer@sha256:b87a22863ed8c18437c7241a5d39ae2e05669d4d2eb9d78591d5087a09258bc8
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

### `adminer:6-standalone` - linux; amd64

```console
$ docker pull adminer@sha256:debc5281a9dbf3b92480f01a3a6782b79de73128ce83431d88ccba45ff022977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43761507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c125823b3638f8c44cea7ffd1f40d9672fea0daaa885dddbbe88d3596d35d757`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 19:12:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 24 Sep 2026 19:12:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 24 Sep 2026 19:12:54 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 24 Sep 2026 19:12:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:12:54 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:12:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:12:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:12:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:12:54 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 24 Sep 2026 19:12:54 GMT
ENV PHP_VERSION=8.4.26
# Thu, 24 Sep 2026 19:12:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Thu, 24 Sep 2026 19:12:54 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 19:12:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 19:12:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:02 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:16:02 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:02 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:16:03 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:16:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:16:03 GMT
CMD ["php" "-a"]
# Fri, 25 Sep 2026 17:48:19 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Fri, 25 Sep 2026 17:48:19 GMT
STOPSIGNAL SIGINT
# Fri, 25 Sep 2026 17:48:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Fri, 25 Sep 2026 17:48:19 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:48:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Fri, 25 Sep 2026 17:48:44 GMT
COPY *.php /var/www/html/ # buildkit
# Fri, 25 Sep 2026 17:48:44 GMT
ENV ADMINER_VERSION=6.1.1
# Fri, 25 Sep 2026 17:48:44 GMT
ENV ADMINER_DOWNLOAD_SHA256=49c4d400994ef74bbb1b1b4d06c05445c1ba49ba3766b9092dce157750e09303
# Fri, 25 Sep 2026 17:48:44 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=bd222febd862255eaef48ab6824c66028f1a4367e4e85bd799d7579046f0a818
# Fri, 25 Sep 2026 17:48:45 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Fri, 25 Sep 2026 17:48:45 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:48:45 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:48:45 GMT
USER adminer
# Fri, 25 Sep 2026 17:48:45 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 25 Sep 2026 17:48:45 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbcb6a80c1f6b80fa76b7c1913562f6da2ac4874bcc96f694311e2fab9124f82`  
		Last Modified: Thu, 24 Sep 2026 19:16:10 GMT  
		Size: 3.5 MB (3491160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de67e106975543d8b63c8f10fa4b645311de7e0365ece03b13ee9db3a4b36c99`  
		Last Modified: Thu, 24 Sep 2026 19:16:10 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667617fe9bbfebf46c81c5f4aa5c8c6040276f864f3de91c09e59370dbc29a05`  
		Last Modified: Thu, 24 Sep 2026 19:16:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5a3e2bbe84506b9ce00282e98ae40fec3dc44843b59a192f66aa92b6a5e93b`  
		Last Modified: Thu, 24 Sep 2026 19:16:10 GMT  
		Size: 13.8 MB (13814782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25acc1dfd0bf21416b49abaa852a085768e756a604b1d6a103746e3af257c0bf`  
		Last Modified: Thu, 24 Sep 2026 19:16:11 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ebf0ecf7551def59d46b7ec978eeef31f7cc6fd94a8e618add9f01ed3268316`  
		Last Modified: Thu, 24 Sep 2026 19:16:12 GMT  
		Size: 20.4 MB (20435829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973adf3097e9667eddef40e01c4219153e3dfb1bf7c5a791128bb6763f8027c0`  
		Last Modified: Thu, 24 Sep 2026 19:16:11 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a224c7120d7e831f6d8c666ab879cafcaff2cb0533727588f0249d6b477c9993`  
		Last Modified: Thu, 24 Sep 2026 19:16:12 GMT  
		Size: 22.4 KB (22419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fc39bda447dd1a726776dbf47f1003b40cc3855d69c846640c8ef28ec38b72`  
		Last Modified: Thu, 24 Sep 2026 19:16:12 GMT  
		Size: 22.4 KB (22439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e542d9f36dd650a4f2a54957f70fd615b08d80462e1910c929990676f11b516c`  
		Last Modified: Fri, 25 Sep 2026 17:48:49 GMT  
		Size: 302.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206c33bb488a7ddbcad6ed941aa6add4068e16d967853b27fa681fded63869e8`  
		Last Modified: Fri, 25 Sep 2026 17:48:49 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed26cf6928b5dcb62a182d5a3501a4c0772523de103db30c33c35a806b36d002`  
		Last Modified: Fri, 25 Sep 2026 17:48:49 GMT  
		Size: 1.5 MB (1467540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c776881e9b44d4371ea692097929d21a90262ba8de3387f372dc8fc9eb9ba5fe`  
		Last Modified: Fri, 25 Sep 2026 17:48:49 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0558c2573fcff99419dfd48e74e95f4537dea3ac2f22dfbd24cba1e6cb91b514`  
		Last Modified: Fri, 25 Sep 2026 17:48:50 GMT  
		Size: 649.9 KB (649878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b0fcd27763701345a1bbdcb743813b9d90d0e4f16927b8c90d10a78a009c0a`  
		Last Modified: Fri, 25 Sep 2026 17:48:50 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:db5277fcdb663db4db9f398c40a558574c53062e71e3a38df3dc46f2c3283713
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f906ef4ae48f66e36a29886f7f285c25cedf838c3150d4504c6555e8e7206cd9`

```dockerfile
```

-	Layers:
	-	`sha256:2e9b44b28da04788603c3f8c49cb6a9d2f29a7c5c8cc88bd67d3171b5856831d`  
		Last Modified: Fri, 25 Sep 2026 17:48:49 GMT  
		Size: 35.9 KB (35861 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:340e68ea9d6f0d61aab7d02bcf5f5a73952e7a46af9bae83edaa60243c1d8120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41443151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311c3039e93a938ed27df0a17d09435c643af7e403e143ca7ee46beef6c2285f`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 19:05:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 24 Sep 2026 19:05:09 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 24 Sep 2026 19:05:09 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 24 Sep 2026 19:05:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:05:09 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:05:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:05:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:05:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:05:09 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 24 Sep 2026 19:05:09 GMT
ENV PHP_VERSION=8.4.26
# Thu, 24 Sep 2026 19:05:09 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Thu, 24 Sep 2026 19:05:09 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 19:12:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 19:12:10 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:15:20 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:15:20 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:15:22 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:15:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:15:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:15:22 GMT
CMD ["php" "-a"]
# Fri, 25 Sep 2026 17:48:12 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Fri, 25 Sep 2026 17:48:12 GMT
STOPSIGNAL SIGINT
# Fri, 25 Sep 2026 17:48:12 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Fri, 25 Sep 2026 17:48:12 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:48:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Fri, 25 Sep 2026 17:48:50 GMT
COPY *.php /var/www/html/ # buildkit
# Fri, 25 Sep 2026 17:48:50 GMT
ENV ADMINER_VERSION=6.1.1
# Fri, 25 Sep 2026 17:48:50 GMT
ENV ADMINER_DOWNLOAD_SHA256=49c4d400994ef74bbb1b1b4d06c05445c1ba49ba3766b9092dce157750e09303
# Fri, 25 Sep 2026 17:48:50 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=bd222febd862255eaef48ab6824c66028f1a4367e4e85bd799d7579046f0a818
# Fri, 25 Sep 2026 17:48:51 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Fri, 25 Sep 2026 17:48:51 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:48:51 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:48:51 GMT
USER adminer
# Fri, 25 Sep 2026 17:48:51 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 25 Sep 2026 17:48:51 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d126eec6246656197165ac8084df02a8a6ffb320f3fed321c883505ca7322e`  
		Last Modified: Thu, 24 Sep 2026 19:08:37 GMT  
		Size: 3.4 MB (3445090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99030d3c635c45f4792319d185389bf250c1ce1c523445db5a95f28d549d09f0`  
		Last Modified: Thu, 24 Sep 2026 19:08:37 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43d480ffc9cfc1c6871c787772fead8706092236416107b169af9677cf15e59`  
		Last Modified: Thu, 24 Sep 2026 19:08:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a798f2873b70c8debe69c9a10bf50c4daaa8b63306eb55f4b57d72e14f20d489`  
		Last Modified: Thu, 24 Sep 2026 19:15:29 GMT  
		Size: 13.8 MB (13814829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c135d0eb7b304a4fff6ee1242be0b09989d85379470429a99df4b602fc4594ea`  
		Last Modified: Thu, 24 Sep 2026 19:15:28 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9262ae6f07f28926186dc49d9f08d248ccea44614cdfca4ea267e6989a98e1d0`  
		Last Modified: Thu, 24 Sep 2026 19:15:29 GMT  
		Size: 18.5 MB (18462124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1d27eca43511b02d262636ea0b33a7355ef8491e22e06f0a0fe871e14cba1e`  
		Last Modified: Thu, 24 Sep 2026 19:15:28 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156d54cc1d0fe097dda50ebbcc61de2976b99ddd2b088a9a7c1b1c59c1ab42ff`  
		Last Modified: Thu, 24 Sep 2026 19:15:29 GMT  
		Size: 22.3 KB (22251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbdf88b48f75196921713256c7a20aecd3e4d13fbe32006905c06e4046b012e3`  
		Last Modified: Thu, 24 Sep 2026 19:15:29 GMT  
		Size: 22.3 KB (22264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e24efa828f98d21c2432f47ab20909c47f8cf66a1a845e418c58c8dae280b21`  
		Last Modified: Fri, 25 Sep 2026 17:48:55 GMT  
		Size: 307.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca43c4a84f84ad43c3b9e65785f7dd93a1d314f203841138267141a8899b1fe`  
		Last Modified: Fri, 25 Sep 2026 17:48:55 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dbc57e7eddaab888478a5ba1fc542c04bb29b2a7b056e1cd2acee6129caa098`  
		Last Modified: Fri, 25 Sep 2026 17:48:55 GMT  
		Size: 1.5 MB (1463877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fd8544205c802b7a6bce304ba80ee7408d4cd86488ad8b615b2b00b7a45d2a8`  
		Last Modified: Fri, 25 Sep 2026 17:48:55 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b1e81a9eebe072b95712e68116e488950a07e35933808ed5de8b410fe263a9`  
		Last Modified: Fri, 25 Sep 2026 17:48:56 GMT  
		Size: 649.9 KB (649876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb517ceb36fdbf5e08fc0b70c1def8c35e5c9a78a0834c8a387a784a6e249bd4`  
		Last Modified: Fri, 25 Sep 2026 17:48:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:d12c7b2786832e71052ed3357caf66015aacb5fc2b8bbe357e6bfb90c093069f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (35996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b276936e18d54762fd8067a25b8b2f3e25114ebaa86f73cc25872c1570eb36e3`

```dockerfile
```

-	Layers:
	-	`sha256:84a6016252f175aec8210bb5c97a10fbd48cd42ec2580da192718d4192706462`  
		Last Modified: Fri, 25 Sep 2026 17:48:55 GMT  
		Size: 36.0 KB (35996 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; arm variant v7

```console
$ docker pull adminer@sha256:dbb2359e0e6a38ac20a08bde2d9a5824df4ce60caeb81b2db5cb9a801f2f5808
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.7 MB (39749750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16fc428417786a15e4282a382e8a69e34051a83212903149c52fea0f511583d8`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 19:27:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 24 Sep 2026 19:27:22 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 24 Sep 2026 19:27:22 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 24 Sep 2026 19:27:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:27:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:27:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:27:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:27:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:27:22 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 24 Sep 2026 19:27:22 GMT
ENV PHP_VERSION=8.4.26
# Thu, 24 Sep 2026 19:27:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Thu, 24 Sep 2026 19:27:22 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 19:27:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 19:27:25 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:30:36 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:30:36 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:30:36 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:30:37 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:30:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:30:37 GMT
CMD ["php" "-a"]
# Fri, 25 Sep 2026 17:58:48 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Fri, 25 Sep 2026 17:58:49 GMT
STOPSIGNAL SIGINT
# Fri, 25 Sep 2026 17:58:49 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Fri, 25 Sep 2026 17:58:49 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:59:25 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Fri, 25 Sep 2026 17:59:25 GMT
COPY *.php /var/www/html/ # buildkit
# Fri, 25 Sep 2026 17:59:25 GMT
ENV ADMINER_VERSION=6.1.1
# Fri, 25 Sep 2026 17:59:25 GMT
ENV ADMINER_DOWNLOAD_SHA256=49c4d400994ef74bbb1b1b4d06c05445c1ba49ba3766b9092dce157750e09303
# Fri, 25 Sep 2026 17:59:25 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=bd222febd862255eaef48ab6824c66028f1a4367e4e85bd799d7579046f0a818
# Fri, 25 Sep 2026 17:59:26 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Fri, 25 Sep 2026 17:59:26 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:59:26 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:59:26 GMT
USER adminer
# Fri, 25 Sep 2026 17:59:26 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 25 Sep 2026 17:59:26 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92608e062e51b996a08afc1679110125eb29a4135137fbe9c0933cf27eaee5b2`  
		Last Modified: Thu, 24 Sep 2026 19:30:44 GMT  
		Size: 3.3 MB (3258256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a192c93906a34fd3752e65848edcc3a51f0cb349caef22833ea0efed991ef4`  
		Last Modified: Thu, 24 Sep 2026 19:30:44 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c68e1fc732f7e75b81ec97a942084e635b6b8365680079cdc503951eeb9ee668`  
		Last Modified: Thu, 24 Sep 2026 19:30:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f730fdbd0bf70d175559b1cfa24ff6d0d8c9216b8c1e8cff0f1e82330a40326f`  
		Last Modified: Thu, 24 Sep 2026 19:30:44 GMT  
		Size: 13.8 MB (13814803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b433f9bf1f71b5e2a8133b0dd12f70d71d786459d15e3c475b8d137d5a5b31a`  
		Last Modified: Thu, 24 Sep 2026 19:30:45 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8acbd16184d868be27e1761bf0cf237bdaed83c9ec2c6eb934a630be8b7770`  
		Last Modified: Thu, 24 Sep 2026 19:30:45 GMT  
		Size: 17.4 MB (17395766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:648a5cf38b8af06f097abe5769bef2533de2d4d04c63e1825a4deb4c9c063d59`  
		Last Modified: Thu, 24 Sep 2026 19:30:45 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93abef0785322b1438264e765259afc88909ac3bb3a0a1b5f4892f083af8ca1d`  
		Last Modified: Thu, 24 Sep 2026 19:30:46 GMT  
		Size: 22.2 KB (22232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26aacfdaa538e2acc72acb42bac7deab0a6defb02496f1331d3616d29825a975`  
		Last Modified: Thu, 24 Sep 2026 19:30:46 GMT  
		Size: 22.2 KB (22249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19cce8b3206bfb790ca294b079fa8a1a77cbdc16b8f2e8b537d2455bc47f7c23`  
		Last Modified: Fri, 25 Sep 2026 17:59:30 GMT  
		Size: 305.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00415fa17a96e6bcf4f9114e280ad18bf687e2d08416aeb70b2d619446a84d0`  
		Last Modified: Fri, 25 Sep 2026 17:59:30 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e10eda807f7125d3d26cc1f617e98e5dc74d8ad90feaa6e8c18fcf4f34766ad`  
		Last Modified: Fri, 25 Sep 2026 17:59:30 GMT  
		Size: 1.3 MB (1313636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:235ce1d0e69c2562f3b4553b8570e59d09f244ad67bd1a551ecf53f4c870aeaa`  
		Last Modified: Fri, 25 Sep 2026 17:59:30 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ddcc6f076e3d4195c3b16742edd20595e498e108e5a9892749e1a4f42b797ef`  
		Last Modified: Fri, 25 Sep 2026 17:59:31 GMT  
		Size: 649.9 KB (649879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1034a2ba08e0ed1963d169fccd1087c4da8179894714b06adae6a99b712c07`  
		Last Modified: Fri, 25 Sep 2026 17:59:31 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:193ffb806de8c4cbb690a00e129f84265c3f4c1634921682830841a27f3d5e35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (35996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e92e319b49fcf8afdcfdcfb5c57c457b31f5139205a7bc605a77adfa780603e`

```dockerfile
```

-	Layers:
	-	`sha256:df04d8f93672802ee79c0d8343b796974660609cda608d68931e439d8b482cc1`  
		Last Modified: Fri, 25 Sep 2026 17:59:29 GMT  
		Size: 36.0 KB (35996 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:8eef42d862b44a824404915ef7437fc50dc4e06c8c6a0fb67ebe63a72a792613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43487495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f96c2cc3117d2618390750b43feb97bf5a32ea56beab88bf651138f7311ae5a5`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 19:12:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 24 Sep 2026 19:12:59 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 24 Sep 2026 19:13:00 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 24 Sep 2026 19:13:00 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:13:00 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:13:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:13:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:13:00 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:13:00 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 24 Sep 2026 19:13:00 GMT
ENV PHP_VERSION=8.4.26
# Thu, 24 Sep 2026 19:13:00 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Thu, 24 Sep 2026 19:13:00 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 19:13:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 19:13:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:16:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:31 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:16:31 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:16:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:16:31 GMT
CMD ["php" "-a"]
# Fri, 25 Sep 2026 17:52:15 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Fri, 25 Sep 2026 17:52:15 GMT
STOPSIGNAL SIGINT
# Fri, 25 Sep 2026 17:52:15 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Fri, 25 Sep 2026 17:52:15 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:52:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Fri, 25 Sep 2026 17:52:50 GMT
COPY *.php /var/www/html/ # buildkit
# Fri, 25 Sep 2026 17:52:50 GMT
ENV ADMINER_VERSION=6.1.1
# Fri, 25 Sep 2026 17:52:50 GMT
ENV ADMINER_DOWNLOAD_SHA256=49c4d400994ef74bbb1b1b4d06c05445c1ba49ba3766b9092dce157750e09303
# Fri, 25 Sep 2026 17:52:50 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=bd222febd862255eaef48ab6824c66028f1a4367e4e85bd799d7579046f0a818
# Fri, 25 Sep 2026 17:52:50 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Fri, 25 Sep 2026 17:52:50 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:52:50 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:52:50 GMT
USER adminer
# Fri, 25 Sep 2026 17:52:50 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 25 Sep 2026 17:52:50 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e8d25eec4097f123e5be320b0373ab26c5af5bfa7f2ae8c436b87a3b7f5884`  
		Last Modified: Thu, 24 Sep 2026 19:16:39 GMT  
		Size: 3.5 MB (3501050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989010781ce2e994efb6e0fb73011a87525aba59d5b6bf6f5d3a99f712db8482`  
		Last Modified: Thu, 24 Sep 2026 19:16:38 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e992aebc76a1f3d40393783ed95e8939d00cbbf3353763bb85d266f54ae705c`  
		Last Modified: Thu, 24 Sep 2026 19:16:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff0320dc3bdf48b074395293b4fb22fdb5d38aaae630b3f7733556a8c3df19f`  
		Last Modified: Thu, 24 Sep 2026 19:16:39 GMT  
		Size: 13.8 MB (13814810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c54e46fa6e14d506876921ddcf9dfaa78375c8e237fddf0c5a6a1b53ca71d8`  
		Last Modified: Thu, 24 Sep 2026 19:16:40 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec308c6b793ea61b3945a059e2ce7fde63f957982bc32c1cf72a5abf8442e97d`  
		Last Modified: Thu, 24 Sep 2026 19:16:40 GMT  
		Size: 19.8 MB (19801954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e410c112060ea8a466721b8c088666b0a73014db85abb912a49493d91b8163d9`  
		Last Modified: Thu, 24 Sep 2026 19:16:40 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a5e21c6b6f1e61b6a46e746f7b78a7ed3a0d68b6ce609462b1d1906805e128`  
		Last Modified: Thu, 24 Sep 2026 19:16:40 GMT  
		Size: 22.2 KB (22247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c825cb78c7aa2478710112787ed222f886fff754f00546340e70946e17eeb8fe`  
		Last Modified: Thu, 24 Sep 2026 19:16:41 GMT  
		Size: 22.3 KB (22257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d572d446ac50b01c9ef8f2e8b2544b43ac2a408e2cf4e5652e4f2a45b02ab1de`  
		Last Modified: Fri, 25 Sep 2026 17:52:54 GMT  
		Size: 305.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:433887a1b1de3464480829e6fa498dacd73471921b60796affdab1668182ad63`  
		Last Modified: Fri, 25 Sep 2026 17:52:54 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3eff93c8a0ee27a87ad193758dcde68dd6bd118a823ba34f2e454c5e731692`  
		Last Modified: Fri, 25 Sep 2026 17:52:54 GMT  
		Size: 1.5 MB (1479914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c952e760513cacdcb59a004ce18f03fe6d3dff4fe7b1e27b9de0441c1d27cd0`  
		Last Modified: Fri, 25 Sep 2026 17:52:54 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecd694cd278c5bf2b4cb2b30a519d7dd3405b5da1a7c690d330826b33f8ecf9`  
		Last Modified: Fri, 25 Sep 2026 17:52:55 GMT  
		Size: 649.9 KB (649877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a519a73ddd1dee114bd744ff45f1838d9d1c3038295f9120165df4ce6c64cc2`  
		Last Modified: Fri, 25 Sep 2026 17:52:55 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:2a0af513dd922a3e3a17851bb5e82c815eaca44551a31e930c48ba71e937083f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (36034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:993161b46ab5d674c08b8262fc98b37e00fd0660658dcf043753a144ff62b712`

```dockerfile
```

-	Layers:
	-	`sha256:b1577ea0c8b7fea1d6a517dea23f9baf551e68e369b3a983acf0b0f74429342e`  
		Last Modified: Fri, 25 Sep 2026 17:52:54 GMT  
		Size: 36.0 KB (36034 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; 386

```console
$ docker pull adminer@sha256:2484b38c559e593bb19b547af6952e1927bbebb27d558a879f108c107f193459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44065368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3575917ad67d3c1257709957ab996c40589d944458ab048a6c86c8d27aa916da`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 19:13:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 24 Sep 2026 19:13:15 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 24 Sep 2026 19:13:15 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 24 Sep 2026 19:13:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:13:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:13:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:13:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:13:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:13:15 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 24 Sep 2026 19:13:15 GMT
ENV PHP_VERSION=8.4.26
# Thu, 24 Sep 2026 19:13:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Thu, 24 Sep 2026 19:13:15 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Thu, 24 Sep 2026 19:13:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 19:13:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:16:27 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:27 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:16:28 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:16:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:16:28 GMT
CMD ["php" "-a"]
# Fri, 25 Sep 2026 17:48:27 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Fri, 25 Sep 2026 17:48:27 GMT
STOPSIGNAL SIGINT
# Fri, 25 Sep 2026 17:48:27 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Fri, 25 Sep 2026 17:48:27 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:48:55 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Fri, 25 Sep 2026 17:48:55 GMT
COPY *.php /var/www/html/ # buildkit
# Fri, 25 Sep 2026 17:48:55 GMT
ENV ADMINER_VERSION=6.1.1
# Fri, 25 Sep 2026 17:48:55 GMT
ENV ADMINER_DOWNLOAD_SHA256=49c4d400994ef74bbb1b1b4d06c05445c1ba49ba3766b9092dce157750e09303
# Fri, 25 Sep 2026 17:48:55 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=bd222febd862255eaef48ab6824c66028f1a4367e4e85bd799d7579046f0a818
# Fri, 25 Sep 2026 17:48:56 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Fri, 25 Sep 2026 17:48:56 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:48:56 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:48:56 GMT
USER adminer
# Fri, 25 Sep 2026 17:48:56 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 25 Sep 2026 17:48:56 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57ea5b35b5b0cee512d4f26212df4aece6a08334be0b6b771024a5acfc0321bb`  
		Last Modified: Thu, 24 Sep 2026 19:16:35 GMT  
		Size: 3.5 MB (3524586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:235f4ebc53f9062eab84b72066ada788bf21a587a038c83288cd656329e817cc`  
		Last Modified: Thu, 24 Sep 2026 19:16:35 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caf7e46521ced80c64d4df68760a9a0d9d535a2dba4518efd33323d4a22e9bcd`  
		Last Modified: Thu, 24 Sep 2026 19:16:35 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52643be70755123c8bb5f628972de17464ec5f335169eb446b7054bfa97b7c49`  
		Last Modified: Thu, 24 Sep 2026 19:16:36 GMT  
		Size: 13.8 MB (13814781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13381a2813c029461b0af5e966c973c5d9e8696bb37cfcd55862f0ddcd2900c0`  
		Last Modified: Thu, 24 Sep 2026 19:16:37 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d8343f240b9d96502cf06180f3d3d23855444ca8cf58d12e46b9c36950b4ad7`  
		Last Modified: Thu, 24 Sep 2026 19:16:37 GMT  
		Size: 20.9 MB (20850926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74670fc714047ebad9ef97eb94cb304d744dcfe32a620d46fced7e518d5f6566`  
		Last Modified: Thu, 24 Sep 2026 19:16:37 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02e8750e037324fd8a4ed25069359f10e46ff856eccb0fab0350114ad386620`  
		Last Modified: Thu, 24 Sep 2026 19:16:37 GMT  
		Size: 22.4 KB (22421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86fc9f9347756162183aa951958359edf8bd6aa588bfb19203c5a7ab5c564f4f`  
		Last Modified: Thu, 24 Sep 2026 19:16:38 GMT  
		Size: 22.4 KB (22442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fe422e10948ed14e39ad81b8d5d2b1fbaff7336108368a81867a03294aeefc5`  
		Last Modified: Fri, 25 Sep 2026 17:49:00 GMT  
		Size: 306.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e5dce568857c91874d5652c58c7018fe379528bcaaae9f3583935e7f6b0439`  
		Last Modified: Fri, 25 Sep 2026 17:49:00 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b229cce0f3dc58facf8c7f045ff77cb7c2bb59dbe3ff3c3040033ef0f244fb3`  
		Last Modified: Fri, 25 Sep 2026 17:49:00 GMT  
		Size: 1.5 MB (1495824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bcf386832fae3fb1150f6ba5a9672281f91e1f5fc8741a57c48074b1911a1aa`  
		Last Modified: Fri, 25 Sep 2026 17:49:00 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a90dc6d937e0a9a1b3ea28dd52bc9749456d2019ec5997dd92856f21aa363b6`  
		Last Modified: Fri, 25 Sep 2026 17:49:01 GMT  
		Size: 649.9 KB (649878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f477ec8e0eae3b3f250b71b884f7147c3d485f94bd84bb27b13914449c170e`  
		Last Modified: Fri, 25 Sep 2026 17:49:01 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:e8498d002f8709b772bb0a81eceedb64028738c85f292012c08bf45ee183006a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 KB (35812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a103dfae6d3fed845199d6e334756edbdb126b259a2faac44b6bb8ac014bace0`

```dockerfile
```

-	Layers:
	-	`sha256:1c1d93b5c043ba5ebc3ae5b0a2ce8bb9f456d34b67660b6e0ee5f1010b4e365f`  
		Last Modified: Fri, 25 Sep 2026 17:49:00 GMT  
		Size: 35.8 KB (35812 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:fc09d38fa08bd271965a0fbcf9d2bfd45c2dd0ef5dda4cfa3e74fbc538d4c772
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44991000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff35b9ca2fb780e5e4aca7cfd282103abc44a77446b62f886b3742c0e09ebbd7`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Thu, 24 Sep 2026 20:40:47 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 20:40:51 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 20:40:55 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 20:41:00 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 20:41:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 20:41:00 GMT
CMD ["php" "-a"]
# Fri, 25 Sep 2026 18:36:21 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Fri, 25 Sep 2026 18:36:21 GMT
STOPSIGNAL SIGINT
# Fri, 25 Sep 2026 18:36:21 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Fri, 25 Sep 2026 18:36:22 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 18:37:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Fri, 25 Sep 2026 18:37:35 GMT
COPY *.php /var/www/html/ # buildkit
# Fri, 25 Sep 2026 18:37:35 GMT
ENV ADMINER_VERSION=6.1.1
# Fri, 25 Sep 2026 18:37:35 GMT
ENV ADMINER_DOWNLOAD_SHA256=49c4d400994ef74bbb1b1b4d06c05445c1ba49ba3766b9092dce157750e09303
# Fri, 25 Sep 2026 18:37:35 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=bd222febd862255eaef48ab6824c66028f1a4367e4e85bd799d7579046f0a818
# Fri, 25 Sep 2026 18:37:37 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Fri, 25 Sep 2026 18:37:38 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 18:37:38 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 25 Sep 2026 18:37:38 GMT
USER adminer
# Fri, 25 Sep 2026 18:37:38 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 25 Sep 2026 18:37:38 GMT
EXPOSE map[8080/tcp:{}]
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
	-	`sha256:3b389b9da6244a67535b730197b9cacac4717fe44239c384062ba8646d3288d6`  
		Last Modified: Thu, 24 Sep 2026 20:41:16 GMT  
		Size: 21.5 MB (21451427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a665eb22ce8ddbc7026ee95786ce3fd2ec44730e5577601384a8717e0014930f`  
		Last Modified: Thu, 24 Sep 2026 20:41:15 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372aaba78ccad7c7092b5961c89175868b98f111070dafee08eff2c8bdc857c5`  
		Last Modified: Thu, 24 Sep 2026 20:41:17 GMT  
		Size: 22.3 KB (22269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b9aaf165a27780ead498b3ece5064cbd1e8ac0c8400efeb3aaca8d005b3bbb3`  
		Last Modified: Thu, 24 Sep 2026 20:41:16 GMT  
		Size: 22.3 KB (22290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d98039640bd02e23158eb6652eb4fad5a14a2f6668ab915278c3f5827dcfe8`  
		Last Modified: Fri, 25 Sep 2026 18:37:49 GMT  
		Size: 306.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3360fdfd9cd037417de7fa3cdcbba67d1d377308f84c57556e36437b22e5fa7e`  
		Last Modified: Fri, 25 Sep 2026 18:37:49 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fcf8da4c07aeb93e298885c87a6e34d87913637c1e6137f727e508df6d3422`  
		Last Modified: Fri, 25 Sep 2026 18:37:49 GMT  
		Size: 1.5 MB (1540111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d6f42fac62d50d2496fb30cf764317210d7e75a591690e47958a2ca755c3df`  
		Last Modified: Fri, 25 Sep 2026 18:37:49 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4e6e076b5ef137ed10c40acc439676d76143b45e7fa6e3245199050d9f87b1e`  
		Last Modified: Fri, 25 Sep 2026 18:37:50 GMT  
		Size: 649.9 KB (649876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c03538eb33509e6cb8f56821b7b32e2c1653683a956fee21f04794e6fe2b04e5`  
		Last Modified: Fri, 25 Sep 2026 18:37:50 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:2f4172456f1490b1334b50ba9ffc79e3a82de957366eee38d64642a8968d7c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973dd1d7c775843413159f7d784e102a373bcccef19f22d86f4a2055ec48b115`

```dockerfile
```

-	Layers:
	-	`sha256:f7c0958feb5c9202bc15cf0c558cdb13898fc65ca2ab35af1d9f5b9c1c3134a2`  
		Last Modified: Fri, 25 Sep 2026 18:37:49 GMT  
		Size: 35.9 KB (35923 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; riscv64

```console
$ docker pull adminer@sha256:cf5a052b2ac05f6417fb9c88daa915678979f71345304cf18ecd55a41185d990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46020184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:292a66e53612bbe5f620ddb4eb06abcacd9a048dd276a10e911a7f97b4b82a68`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Fri, 28 Aug 2026 18:22:38 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 28 Aug 2026 18:22:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 28 Aug 2026 18:22:42 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 28 Aug 2026 18:22:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 28 Aug 2026 18:22:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 28 Aug 2026 18:22:47 GMT
CMD ["php" "-a"]
# Sun, 30 Aug 2026 12:14:08 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Sun, 30 Aug 2026 12:14:08 GMT
STOPSIGNAL SIGINT
# Sun, 30 Aug 2026 12:14:08 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Sun, 30 Aug 2026 12:14:08 GMT
WORKDIR /var/www/html
# Sun, 30 Aug 2026 12:19:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Sun, 30 Aug 2026 12:19:45 GMT
COPY *.php /var/www/html/ # buildkit
# Sun, 30 Aug 2026 12:19:45 GMT
ENV ADMINER_VERSION=6.0.1
# Sun, 30 Aug 2026 12:19:45 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Sun, 30 Aug 2026 12:19:45 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Sun, 30 Aug 2026 12:19:47 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Sun, 30 Aug 2026 12:19:47 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Sun, 30 Aug 2026 12:19:47 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sun, 30 Aug 2026 12:19:47 GMT
USER adminer
# Sun, 30 Aug 2026 12:19:47 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sun, 30 Aug 2026 12:19:47 GMT
EXPOSE map[8080/tcp:{}]
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
	-	`sha256:2c66e0295bab19ac2e1a11c1bafe45fa6493270fe417da7ce46cf07134d42911`  
		Last Modified: Fri, 28 Aug 2026 18:23:56 GMT  
		Size: 22.9 MB (22901877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4004d79dbcb6177af23dee26a1b12419a4021e949682d51994547ec72e449bd4`  
		Last Modified: Fri, 28 Aug 2026 18:23:50 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e8836f254b817a422eaab7465967c9fed5906e6a750097c3293cc5ebdf24913`  
		Last Modified: Fri, 28 Aug 2026 18:23:52 GMT  
		Size: 22.3 KB (22270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4c9a134ff3d3611ca41f82bb6674eb5bc960d3ac3013d8606fe834a449d1bb`  
		Last Modified: Fri, 28 Aug 2026 18:23:52 GMT  
		Size: 22.3 KB (22289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4103140e6dfdbf1b76633ea574d57c55a75295abe54afb18361a075234a005d4`  
		Last Modified: Sun, 30 Aug 2026 12:20:03 GMT  
		Size: 308.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1d27cc3d33baad168db071abd4b8faf83cfad33b785660ef2ec0c930de5389`  
		Last Modified: Sun, 30 Aug 2026 12:20:03 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a52661bf76c3a01ea3f299fb83d551ceb636665ca823662cf46c9663b0145c84`  
		Last Modified: Sun, 30 Aug 2026 12:20:03 GMT  
		Size: 1.5 MB (1489627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c011e2af0a081f8db32f1e326859d34f6aa1e80b95058920e27d3c1152c57eda`  
		Last Modified: Sun, 30 Aug 2026 12:20:03 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e737e9c8cc06890d7f44c37d6b9e73ae846c540aac12ede0d6d08aa9504c1bfc`  
		Last Modified: Sun, 30 Aug 2026 12:20:04 GMT  
		Size: 614.9 KB (614919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143353e43655114974cc60ce989bfe6c603b41980f86b49b6f737e15acbb2f50`  
		Last Modified: Sun, 30 Aug 2026 12:20:04 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:5181b4756a28e0c8724e3c105f0b13962b77afb85250bd9bed68b40addef4139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e801561d01868ea762d1ce6cb7441e6c77e12222107685d0310c860ad2f556`

```dockerfile
```

-	Layers:
	-	`sha256:95226506730ec53455154c92c2769cb0f486e2f5155f6df7c8456217bdfe62ee`  
		Last Modified: Sun, 30 Aug 2026 12:20:03 GMT  
		Size: 35.9 KB (35921 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; s390x

```console
$ docker pull adminer@sha256:ce5a864ea6da7d7ba19fde4388c4a97d24e09634ca68a6642faeb0445a7f2471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43724282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a591d7ab7f08aa15f5ebad0e1fc97db85557bd13045d66e54ad65fdc26285a9b`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Thu, 24 Sep 2026 19:31:33 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:31:33 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:31:34 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 24 Sep 2026 19:31:35 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:31:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:31:35 GMT
CMD ["php" "-a"]
# Fri, 25 Sep 2026 17:58:01 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Fri, 25 Sep 2026 17:58:01 GMT
STOPSIGNAL SIGINT
# Fri, 25 Sep 2026 17:58:01 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Fri, 25 Sep 2026 17:58:01 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:58:31 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Fri, 25 Sep 2026 17:58:31 GMT
COPY *.php /var/www/html/ # buildkit
# Fri, 25 Sep 2026 17:58:31 GMT
ENV ADMINER_VERSION=6.1.1
# Fri, 25 Sep 2026 17:58:31 GMT
ENV ADMINER_DOWNLOAD_SHA256=49c4d400994ef74bbb1b1b4d06c05445c1ba49ba3766b9092dce157750e09303
# Fri, 25 Sep 2026 17:58:31 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=bd222febd862255eaef48ab6824c66028f1a4367e4e85bd799d7579046f0a818
# Fri, 25 Sep 2026 17:58:32 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Fri, 25 Sep 2026 17:58:32 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:58:32 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:58:32 GMT
USER adminer
# Fri, 25 Sep 2026 17:58:32 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 25 Sep 2026 17:58:32 GMT
EXPOSE map[8080/tcp:{}]
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
	-	`sha256:0942ddf19cafd1ecbc6ba6cb78a55939f9772486a7638d7727748d3743482f55`  
		Last Modified: Thu, 24 Sep 2026 19:31:48 GMT  
		Size: 20.3 MB (20271187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff6b93a0e87f3e14721ef143aa37d2827d5cc8728bf2dc324b37a6769ae90aff`  
		Last Modified: Thu, 24 Sep 2026 19:31:47 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00e2770a8b8b37517a743467cf357119e93bd711e7f350215ab9461aab87d3b`  
		Last Modified: Thu, 24 Sep 2026 19:31:48 GMT  
		Size: 22.3 KB (22257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a4cf22368ae2dddba4db3ee796b53c51f83ddb20f1bd9307e8282bc433a424`  
		Last Modified: Thu, 24 Sep 2026 19:31:48 GMT  
		Size: 22.3 KB (22277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052b4241ef0618c3c1f90a3f9e854eb8f54ee3240696bde27860faaee6cc39db`  
		Last Modified: Fri, 25 Sep 2026 17:58:39 GMT  
		Size: 305.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93a5eab364e9b38ff92d90c7cd2535b20598771be46b236b968e3c0f8a3633e1`  
		Last Modified: Fri, 25 Sep 2026 17:58:39 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc884509a275550dcf6fc70789984edfc0328dc1b665c5e366c12eeff3a703b`  
		Last Modified: Fri, 25 Sep 2026 17:58:40 GMT  
		Size: 1.5 MB (1534589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e4075847719a7b4719d1f8b961c5801f272d326d3968c47eea25ed5b005f5c`  
		Last Modified: Fri, 25 Sep 2026 17:58:39 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ba2dbdb414aeac0490a76801171caba8e813aee923257d397465ebc0c7beaa`  
		Last Modified: Fri, 25 Sep 2026 17:58:40 GMT  
		Size: 649.9 KB (649878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93752876b001ebaecc5cc8ef264d86c722ddcca7da0b8a4400fc42ad81565808`  
		Last Modified: Fri, 25 Sep 2026 17:58:40 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:f957385fc754d544471fa0e3c285e91d7d8486a1cf31335b297e028eda0d486e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d23d15e4f7a2d9cde7006450cb4746a89f0d9ee4b84b64e2cecde5062ddc8df7`

```dockerfile
```

-	Layers:
	-	`sha256:353cd6d227a0a33dcf30ea314d6ca856e0348c33b4f0fb5e3f728239050c4d27`  
		Last Modified: Fri, 25 Sep 2026 17:58:39 GMT  
		Size: 35.9 KB (35860 bytes)  
		MIME: application/vnd.in-toto+json
