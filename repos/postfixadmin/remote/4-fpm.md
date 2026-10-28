## `postfixadmin:4-fpm`

```console
$ docker pull postfixadmin@sha256:4bf468fd1cef36e88fa6142003f0b1cc90f1f0ac9a9b4b6db33efe45333b16b0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `postfixadmin:4-fpm` - linux; amd64

```console
$ docker pull postfixadmin@sha256:9f90549a2b1aabd9180ef84ba5c0818bb8a8838042ff17c777fb34a05f182aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200838557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cdd1f877fe71c03d24c3f36f908067da161ce16070a89d59ab884742c68a804`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:18:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:18:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:18:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:18:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:18:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:18:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:18:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:18:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:18:46 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 28 Oct 2026 01:18:46 GMT
ENV PHP_VERSION=8.3.36
# Wed, 28 Oct 2026 01:18:46 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.36.tar.xz.asc
# Wed, 28 Oct 2026 01:18:46 GMT
ENV PHP_SHA256=dd54693aa334c5c4d72e9aee96b082c2473750a18a6c1d105789c93a3b1692fd
# Wed, 28 Oct 2026 01:25:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:25:28 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:27:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:27:50 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:27:50 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 28 Oct 2026 01:27:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:27:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:27:51 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:27:51 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 28 Oct 2026 01:27:51 GMT
STOPSIGNAL SIGQUIT
# Wed, 28 Oct 2026 01:27:51 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 28 Oct 2026 01:27:51 GMT
CMD ["php-fpm"]
# Wed, 28 Oct 2026 02:35:38 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Wed, 28 Oct 2026 02:35:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:35:55 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:35:55 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Wed, 28 Oct 2026 02:35:55 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Wed, 28 Oct 2026 02:35:55 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Wed, 28 Oct 2026 02:35:55 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Wed, 28 Oct 2026 02:35:55 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Wed, 28 Oct 2026 02:35:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:35:55 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:35:55 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Wed, 28 Oct 2026 02:36:02 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:36:02 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:36:02 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cba12246963a8f11e093645c911aa3930b4040bf37c2f0b693b7f0e3af911c5`  
		Last Modified: Wed, 28 Oct 2026 01:21:39 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c081c483414a30b06269d8446f46ef7f390ee05090912d7907b627a3651a8b3b`  
		Last Modified: Wed, 28 Oct 2026 01:21:42 GMT  
		Size: 117.8 MB (117837852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da257c2531f6872a84c366e81a1a50064e85b57085378929078ba6d09a2baf56`  
		Last Modified: Wed, 28 Oct 2026 01:21:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a267831c4a0361008f912d9c11d9be7ad1676687bd8e1240e0c637c78b5633c`  
		Last Modified: Wed, 28 Oct 2026 01:28:01 GMT  
		Size: 12.8 MB (12817518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9934199f7caa8268068c02e8818ea5412474638e7b3d6e8cb7457a52658e52ce`  
		Last Modified: Wed, 28 Oct 2026 01:28:00 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af7bf1af08ddbdc49d29456da165c22b60ee9bf51157a7ab181c1441c83ac583`  
		Last Modified: Wed, 28 Oct 2026 01:28:01 GMT  
		Size: 12.0 MB (11952586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52803bd9f72613f9aa3cfcd0faa7d520ddbdbd5d82b39bfc509d9bf7b1a50583`  
		Last Modified: Wed, 28 Oct 2026 01:28:00 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d230f4e4d83de88921cbe0bc64039f2d4e190480fcc076d62c3a5ccef2994690`  
		Last Modified: Wed, 28 Oct 2026 01:28:01 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b04d9e1b51ed4833ffba1e142e9ae9236fae7507d5f5d8b318af78c26b9e15`  
		Last Modified: Wed, 28 Oct 2026 01:28:02 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57a8979440bc9462744b5801f655c91d36a6224cddd1c250f262162338783cb2`  
		Last Modified: Wed, 28 Oct 2026 01:28:02 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a88f75c16be5c9c69aaeb09f4777661eb6872cd871a5384dcd162348ec8ed512`  
		Last Modified: Wed, 28 Oct 2026 02:36:08 GMT  
		Size: 1.3 MB (1328923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6ebbef78e9c3585b5343ec7f85e0019aefba61ac8f9e27fe4acf4c466b900e`  
		Last Modified: Wed, 28 Oct 2026 02:36:08 GMT  
		Size: 443.9 KB (443948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9083627f84eba13d217f3213ca0950765fccfc87371de1ce5abf76573897dde0`  
		Last Modified: Wed, 28 Oct 2026 02:36:08 GMT  
		Size: 2.6 MB (2604062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b4bf879b66ca9f2339669d8c697283ca445a1afd36f355de7d6cbb7a5a278ca`  
		Last Modified: Wed, 28 Oct 2026 02:36:08 GMT  
		Size: 1.7 KB (1657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60e6563536c0108281ff403458ed94f3f4a823f460dd9d2aa9922b7129ea5cd`  
		Last Modified: Wed, 28 Oct 2026 02:36:09 GMT  
		Size: 833.0 KB (832983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f68586d12c2fa29ef631b32975e307a846a086f674dccc1d816d8c1ba91cc0`  
		Last Modified: Wed, 28 Oct 2026 02:36:10 GMT  
		Size: 23.2 MB (23150614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:40802970d6a30f2491e1886c6b3cf02f5495fbce4248356f163315c0cd8e14ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 KB (39515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d298cffb10325f5d384f1744430284f896c5b40ba4ea489ef2a7417a000740`

```dockerfile
```

-	Layers:
	-	`sha256:26ef2abdfb7b4be559f4bf356c0e5b0863d1dcceaed04e2695dec006c49c12e2`  
		Last Modified: Wed, 28 Oct 2026 02:36:08 GMT  
		Size: 39.5 KB (39515 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm` - linux; arm variant v7

```console
$ docker pull postfixadmin@sha256:73a3454ec56ea2d4979c81b0fa1446c6a8fd95847afe6b7a2c4b06473f152763
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.7 MB (163731584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f39bbc58e19996aae5a9788223e683f78ce84dd41efc775942f0b6e0bf13117`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:23:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:23:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:23:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:23:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:23:26 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:23:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:23:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:23:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:23:26 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 28 Oct 2026 01:23:26 GMT
ENV PHP_VERSION=8.3.36
# Wed, 28 Oct 2026 01:23:26 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.36.tar.xz.asc
# Wed, 28 Oct 2026 01:23:26 GMT
ENV PHP_SHA256=dd54693aa334c5c4d72e9aee96b082c2473750a18a6c1d105789c93a3b1692fd
# Wed, 28 Oct 2026 01:40:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:40:30 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:42:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:42:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:43:00 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 28 Oct 2026 01:43:00 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:43:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:43:00 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:43:00 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 28 Oct 2026 01:43:00 GMT
STOPSIGNAL SIGQUIT
# Wed, 28 Oct 2026 01:43:00 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 28 Oct 2026 01:43:00 GMT
CMD ["php-fpm"]
# Wed, 28 Oct 2026 03:41:11 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Wed, 28 Oct 2026 03:41:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:41:37 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:41:37 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Wed, 28 Oct 2026 03:41:37 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Wed, 28 Oct 2026 03:41:37 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Wed, 28 Oct 2026 03:41:37 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Wed, 28 Oct 2026 03:41:38 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Wed, 28 Oct 2026 03:41:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 03:41:38 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 03:41:38 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Wed, 28 Oct 2026 03:41:50 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:41:50 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 03:41:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5168b650d8f6b9f0dfd1592209d49191bf2b85f105be976b997e3324873d9863`  
		Last Modified: Wed, 28 Oct 2026 01:26:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2995dd4489847de3bec53a38bb5807dbe135be6c2e640cb01baac184dce7e3`  
		Last Modified: Wed, 28 Oct 2026 01:26:49 GMT  
		Size: 86.3 MB (86256978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea0a2ecbc5015f69c2a008faea28932a4361d23bd472b9284b2aa861fd610b5`  
		Last Modified: Wed, 28 Oct 2026 01:26:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3cfe36e53fb7895f221e53ef1c3dc8013ad6611a340b5b864c91b17aaa17721`  
		Last Modified: Wed, 28 Oct 2026 01:43:10 GMT  
		Size: 12.8 MB (12815235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c20727433c2c3916be70bd2f65ffb43fb7e9839fb8d62868ace12f0f4f9cdc4`  
		Last Modified: Wed, 28 Oct 2026 01:43:09 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3458762dcf1e21c184d6486068306de08e5d5d22d7f3dffa2cf5dd3211dfb0a`  
		Last Modified: Wed, 28 Oct 2026 01:43:10 GMT  
		Size: 10.1 MB (10121478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1368ea65fad971a24b6507e435eb4cb620e1ed32cde7f0d590e99eacc317ee81`  
		Last Modified: Wed, 28 Oct 2026 01:43:09 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2636eaa19b1f9274152682b787949149865e61d617f6329587613182d1fcbff1`  
		Last Modified: Wed, 28 Oct 2026 01:43:10 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:472bcd9f7d3506f71cc02752a5884d121062db529a9b4eb339ec955d718435f0`  
		Last Modified: Wed, 28 Oct 2026 01:43:10 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133b63e58ff6d4129449c60bf145fa72633da10fa6ec847ede7c2e20974a7480`  
		Last Modified: Wed, 28 Oct 2026 01:43:11 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2fcaa9f275d6bbb8352316676c66f80f87caf906d3265ad2a9914cbe584e37`  
		Last Modified: Wed, 28 Oct 2026 03:41:56 GMT  
		Size: 1.3 MB (1266223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5da9ee35d6cd3ad3b70c3f1375fe3f91b859677082532f97dcca97b7a56a1e`  
		Last Modified: Wed, 28 Oct 2026 03:41:56 GMT  
		Size: 399.0 KB (399004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c34b60f798979f8fe3beb53980bfa2be041516b612d64cf4a3097c530f9d17fa`  
		Last Modified: Wed, 28 Oct 2026 03:41:56 GMT  
		Size: 2.6 MB (2604064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfc60ef3d5eeabe0af6014e163f4e7f4963d2cd9ed29814f8d651c1b0869688`  
		Last Modified: Wed, 28 Oct 2026 03:41:56 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa2cfdd888a21cb55abeeb9a827b33b33b922f6337eb5e5c33b6c42cadb0f283`  
		Last Modified: Wed, 28 Oct 2026 03:41:57 GMT  
		Size: 833.0 KB (832981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a79e260b0b408a2ba39579f65f23d5633a0d47d303b4079c402e4e811dab88`  
		Last Modified: Wed, 28 Oct 2026 03:41:58 GMT  
		Size: 23.1 MB (23148625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:a89eb19e9b356b3e3290f1b127ed4d2e66bfd060292ddedcd5a0b0e4b4f44e13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 KB (39649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82868aae0401a634d4d2de96120c9804846f5b0953543d5841dc5d2e293c0acd`

```dockerfile
```

-	Layers:
	-	`sha256:e150bea593cb8a006e966d98088b4aec107fc07c37f1d43722531edee01df0df`  
		Last Modified: Wed, 28 Oct 2026 03:41:56 GMT  
		Size: 39.6 KB (39649 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:4652c3be8e20f06abc19f900d68a09e49838cc18eb47043804010ae7bb75f64a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.5 MB (193470502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d7a7cea00106ce3099a477692e17860cb73ee37458ed88405c8745ec6028e3b`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:22:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:22:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:22:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:22:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:22:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:22:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:22:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:22:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:22:57 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 28 Oct 2026 01:22:57 GMT
ENV PHP_VERSION=8.3.36
# Wed, 28 Oct 2026 01:22:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.36.tar.xz.asc
# Wed, 28 Oct 2026 01:22:57 GMT
ENV PHP_SHA256=dd54693aa334c5c4d72e9aee96b082c2473750a18a6c1d105789c93a3b1692fd
# Wed, 28 Oct 2026 01:26:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:26:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:30:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:30:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:30:13 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 28 Oct 2026 01:30:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:30:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:30:13 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:30:14 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 28 Oct 2026 01:30:14 GMT
STOPSIGNAL SIGQUIT
# Wed, 28 Oct 2026 01:30:14 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 28 Oct 2026 01:30:14 GMT
CMD ["php-fpm"]
# Wed, 28 Oct 2026 02:48:28 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Wed, 28 Oct 2026 02:48:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:48:51 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:48:51 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Wed, 28 Oct 2026 02:48:51 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Wed, 28 Oct 2026 02:48:51 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Wed, 28 Oct 2026 02:48:51 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Wed, 28 Oct 2026 02:48:52 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Wed, 28 Oct 2026 02:48:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:48:52 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:48:52 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Wed, 28 Oct 2026 02:49:01 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:49:01 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:49:01 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fbb986587cdc5ec5fb32a0aae30062f7ab306d2d4159ff8246d32ed5b58368c`  
		Last Modified: Wed, 28 Oct 2026 01:26:17 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07167dd687dbe9fba5dbd6f45441ca8d5646cf989bd305451409a27d33df4c52`  
		Last Modified: Wed, 28 Oct 2026 01:26:20 GMT  
		Size: 110.2 MB (110178825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cbaea29d48b81eac15f7f16902f8fc037a048b811e253f44b308821effdace7`  
		Last Modified: Wed, 28 Oct 2026 01:26:17 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a5221b57af7ec064a768b641e21d5ee14c2e23ebe385229e4a7a0181a074c2e`  
		Last Modified: Wed, 28 Oct 2026 01:30:24 GMT  
		Size: 12.8 MB (12817128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba78603783d264db3f06588e170bc0e47d1e10369b1c317dbcb4b394e2f3be9c`  
		Last Modified: Wed, 28 Oct 2026 01:30:23 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad1f2d98bbe61da8ae299dccfe488872d8d0fbf83ae26ef142376447f5864ac`  
		Last Modified: Wed, 28 Oct 2026 01:30:24 GMT  
		Size: 12.0 MB (11976418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d537707b8422136341ee7ed0ce949c9a1bd32cf50b153fdd7c96e002dc26eec2`  
		Last Modified: Wed, 28 Oct 2026 01:30:23 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0651228cc6f915b933273609904039f9f47371d29997c783942b11570551fb1c`  
		Last Modified: Wed, 28 Oct 2026 01:30:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61416e7c15ee51c6f0eb0fd4b117e8e63403e83925840d361f5480b823385b25`  
		Last Modified: Wed, 28 Oct 2026 01:30:25 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc171b263eb08dc6d5b460e2b12611c7b101f994051a4526a8bf51cc5ffcefc5`  
		Last Modified: Wed, 28 Oct 2026 01:30:25 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99154590d2242611c9789c5e54a184dd69b28e337f44996df76f1281853905a`  
		Last Modified: Wed, 28 Oct 2026 02:49:07 GMT  
		Size: 1.2 MB (1242705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:501899ed26de7d54cfc03e740aaee691a314b5b3e033dd2b0ade636a4f107004`  
		Last Modified: Wed, 28 Oct 2026 02:49:07 GMT  
		Size: 439.8 KB (439775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49c81de1a9d5bbef4bf72e33de246b835080caaa614bc00c2821cfaf82fd1ee`  
		Last Modified: Wed, 28 Oct 2026 02:49:07 GMT  
		Size: 2.6 MB (2604057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de916f40fcd0826f53622f1457159106854e6d93c538974a0f7fa4e1d2bcf38`  
		Last Modified: Wed, 28 Oct 2026 02:49:07 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276d4978a24e1f3142ddbe2c48d78800768b337d24273f113d789856c4d66370`  
		Last Modified: Wed, 28 Oct 2026 02:49:08 GMT  
		Size: 833.0 KB (832980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8b11ee8c4ff5f7bb10278d21b31a64689c99951ff340bd38e0fae59385b1b6`  
		Last Modified: Wed, 28 Oct 2026 02:49:09 GMT  
		Size: 23.2 MB (23150280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:07279f6be2b6b30a63a6dcb3a236ee514936d4103852213f3d406c2f5f7cd217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.7 KB (39689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:626a51c0fd0f5bcc783d84de6ede4dc16966a3da11eca5915c1930363b21de3b`

```dockerfile
```

-	Layers:
	-	`sha256:867aee404da5b2032481152b9e0b00c080e70f8fbec250f8f0a2f7d2c00f3e51`  
		Last Modified: Wed, 28 Oct 2026 02:49:07 GMT  
		Size: 39.7 KB (39689 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm` - linux; 386

```console
$ docker pull postfixadmin@sha256:032c477f4b73db7c38721b18168ab005ea0813d7221827be6211def77bc29f57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 MB (200908327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cca7fb907c3006e25bdd1da3118af50a8d26b661f6bcd268318510d86d6a410`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:16:16 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:16:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:16:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:16:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:16:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:16:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:16:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:16:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:16:38 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 28 Oct 2026 01:16:38 GMT
ENV PHP_VERSION=8.3.36
# Wed, 28 Oct 2026 01:16:38 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.36.tar.xz.asc
# Wed, 28 Oct 2026 01:16:38 GMT
ENV PHP_SHA256=dd54693aa334c5c4d72e9aee96b082c2473750a18a6c1d105789c93a3b1692fd
# Wed, 28 Oct 2026 01:26:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:26:10 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:29:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:29:37 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:29:37 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 28 Oct 2026 01:29:37 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:29:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:29:37 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:29:37 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 28 Oct 2026 01:29:37 GMT
STOPSIGNAL SIGQUIT
# Wed, 28 Oct 2026 01:29:37 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 28 Oct 2026 01:29:37 GMT
CMD ["php-fpm"]
# Wed, 28 Oct 2026 02:41:17 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Wed, 28 Oct 2026 02:41:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:41:38 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:41:38 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Wed, 28 Oct 2026 02:41:38 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Wed, 28 Oct 2026 02:41:38 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Wed, 28 Oct 2026 02:41:38 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Wed, 28 Oct 2026 02:41:39 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Wed, 28 Oct 2026 02:41:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:41:39 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:41:39 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Wed, 28 Oct 2026 02:41:47 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:41:47 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:41:47 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23132d7fef48edb2fd10d4dfcf8b015d5eae69debb6846cc4a254a6bee3ff08`  
		Last Modified: Wed, 28 Oct 2026 01:21:02 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad44cd281c06f386d28be52ea33807891685f81d5d7b3558f6808d4344f4bd5a`  
		Last Modified: Wed, 28 Oct 2026 01:21:06 GMT  
		Size: 116.1 MB (116139436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:932300140fe8a43f60eb42dac2f5f6a9b7f7609ce49c2f29575b81372d9bcb34`  
		Last Modified: Wed, 28 Oct 2026 01:21:03 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e82753aa95bc98b72b3f3bcb47ce6c0b86aa4761c466328077e944ea77b88bca`  
		Last Modified: Wed, 28 Oct 2026 01:29:48 GMT  
		Size: 12.8 MB (12816500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17039cd2955f5c24efe9a6edf6bf3cf0b127d5e1a91890f37d3bbd54c8ad21f3`  
		Last Modified: Wed, 28 Oct 2026 01:29:48 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdda19c7a787d6a5e2d3db85ae61eb7ab99676e5a58b14812f4f8e6d17799f6b`  
		Last Modified: Wed, 28 Oct 2026 01:29:48 GMT  
		Size: 12.2 MB (12233971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cc3703b996e53a64058bc9adb7f768311cea4e1bd698a35d972c2d2ad59440`  
		Last Modified: Wed, 28 Oct 2026 01:29:47 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8df039c64109a5feb087dca65c3e13f2889fabe4655648d40b4007bc4493ba`  
		Last Modified: Wed, 28 Oct 2026 01:29:49 GMT  
		Size: 255.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4eb33a93bb7e892c91d367d45b52ec91c8a2e670a1a7efbe67d6dd2931a924e`  
		Last Modified: Wed, 28 Oct 2026 01:29:49 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f1f4955d7591f8cdf839b598446049657a60e81730c38c286f7763833a4390`  
		Last Modified: Wed, 28 Oct 2026 01:29:49 GMT  
		Size: 9.3 KB (9259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:267ae3566de143fc5d7f201710a19eb870eb546be22ae2d4e5d7e761694e85a5`  
		Last Modified: Wed, 28 Oct 2026 02:41:54 GMT  
		Size: 1.3 MB (1287903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:315eacbf4eb12d6b1e5f4d15e380fd92a1d185ac86b9bc2d2646fef17a8afb40`  
		Last Modified: Wed, 28 Oct 2026 02:41:53 GMT  
		Size: 460.1 KB (460067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9233c2b0f5855243e2623ad302966030a27bee771bcd8a92c5ed7c997fa9a0ff`  
		Last Modified: Wed, 28 Oct 2026 02:41:54 GMT  
		Size: 2.6 MB (2604064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b50d451d6df6c9d1f6404116514dd2f3837783f3f7dce995e41f47dc9ecc037`  
		Last Modified: Wed, 28 Oct 2026 02:41:53 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e0a5ed46be497c225e0e8dddb35d3a1c8118fa5f5c72ce1762eaf856a156355`  
		Last Modified: Wed, 28 Oct 2026 02:41:55 GMT  
		Size: 833.0 KB (832979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfaa86108bbd2557d477e4bf613015ae746d5faccbfa4a372960b82a261a7992`  
		Last Modified: Wed, 28 Oct 2026 02:41:55 GMT  
		Size: 23.1 MB (23149968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:b4fac155581196f9de2ba93de218af204c3fe3d301159f92773a02b997c3e791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 KB (39470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f58d217b04508d8541c2112b7e8423e52e2e66aa8a8de8b77b8a6037e2c1a78d`

```dockerfile
```

-	Layers:
	-	`sha256:8ea4f968276a0ea516a4ab72fb3525d29c6f3f68c99bc3e7b46dafcc2449e9ac`  
		Last Modified: Wed, 28 Oct 2026 02:41:53 GMT  
		Size: 39.5 KB (39470 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm` - linux; ppc64le

```console
$ docker pull postfixadmin@sha256:4dcc74fb0b71b54f9e5a82b750817038e3188c2227d4de4a751ca392f5abd520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196923628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3da50df5a4cc0af5aa355bb4afbbfb72c64c3e5dadf1b7390b4d29d180ea4740`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:03:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 02:03:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 02:03:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:03:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 02:03:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 02:03:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 02:03:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 02:03:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 02:03:50 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 28 Oct 2026 02:03:50 GMT
ENV PHP_VERSION=8.3.36
# Wed, 28 Oct 2026 02:03:50 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.36.tar.xz.asc
# Wed, 28 Oct 2026 02:03:50 GMT
ENV PHP_SHA256=dd54693aa334c5c4d72e9aee96b082c2473750a18a6c1d105789c93a3b1692fd
# Wed, 28 Oct 2026 03:11:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 03:11:22 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 03:20:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 03:20:19 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 03:20:19 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 28 Oct 2026 03:20:19 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 03:20:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 03:20:20 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 03:20:21 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 28 Oct 2026 03:20:21 GMT
STOPSIGNAL SIGQUIT
# Wed, 28 Oct 2026 03:20:21 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 28 Oct 2026 03:20:21 GMT
CMD ["php-fpm"]
# Wed, 28 Oct 2026 14:24:49 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Wed, 28 Oct 2026 14:24:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 14:25:43 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 14:25:43 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Wed, 28 Oct 2026 14:25:43 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Wed, 28 Oct 2026 14:25:43 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Wed, 28 Oct 2026 14:25:43 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Wed, 28 Oct 2026 14:25:44 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Wed, 28 Oct 2026 14:25:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 14:25:45 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 14:25:45 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Wed, 28 Oct 2026 14:26:00 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 14:26:00 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 14:26:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dcae05f741a28b41e2dd5bdf0851d50bd66ba668a65f2a34423aeb4967d2823`  
		Last Modified: Wed, 28 Oct 2026 02:10:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e096c55e4fb788eafa5178f7b91c7fec86aa0de7852e687c2c0d703a2634aa1b`  
		Last Modified: Wed, 28 Oct 2026 02:10:05 GMT  
		Size: 109.6 MB (109611830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00b2ed7a5cbe588acd7bbd30f1cee5ebe884d45d3f7aa247113cff006d944ee`  
		Last Modified: Wed, 28 Oct 2026 02:10:01 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737ca43efd80977b3b158ab912ecaf6f3fdd2b665ffc0af991fa81ed3b4f56c8`  
		Last Modified: Wed, 28 Oct 2026 03:16:09 GMT  
		Size: 12.8 MB (12823116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21e672509ec85583a410944222146b71558d8dd000bb749837f0bdcba2290db`  
		Last Modified: Wed, 28 Oct 2026 03:16:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:614e8c14715f48a25561bfe677fa0dc168989d312e5440f48494bc93ca761819`  
		Last Modified: Wed, 28 Oct 2026 03:20:43 GMT  
		Size: 12.5 MB (12495465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe24847324fd1450e5cb601a4cbb765fb2be04e494424cf56450503cd8cdab3`  
		Last Modified: Wed, 28 Oct 2026 03:20:43 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e503e5f98bf923708065f813ca08cc00fe51af8823b86f2e763cf514b805f99`  
		Last Modified: Wed, 28 Oct 2026 03:20:43 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43bfa1449a464adffedbd95e44bd48b10a8d319216b010854c21a265ce7800ba`  
		Last Modified: Wed, 28 Oct 2026 03:20:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad7b70138f1c51116ed21f9fcf593e14adee7f1f8cc803e056aba1c4db52fea8`  
		Last Modified: Wed, 28 Oct 2026 03:20:44 GMT  
		Size: 9.3 KB (9257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdef95c9703cde9482b31d5623d913fe4a3e4032ba5412d10ce7829f7ee0bee7`  
		Last Modified: Wed, 28 Oct 2026 14:26:13 GMT  
		Size: 1.2 MB (1245011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2102e36316829b6fee95f875820b1cdc2d4c476826dbb7e25b8a71c785938768`  
		Last Modified: Wed, 28 Oct 2026 14:26:13 GMT  
		Size: 479.2 KB (479225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d3bdb21c897d65a97d306d7a6d4eed7b1002d20e2e3797069d1b348b7eef4e`  
		Last Modified: Wed, 28 Oct 2026 14:26:13 GMT  
		Size: 2.6 MB (2604063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c77489315c74f45357253b3a6d1466f278ffdeb33c891d57ff4c7f2d2a05108`  
		Last Modified: Wed, 28 Oct 2026 14:26:13 GMT  
		Size: 1.7 KB (1658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021e0af0cee72867278e68887b1c77d5092b573978965db9116b36381111eca4`  
		Last Modified: Wed, 28 Oct 2026 14:26:14 GMT  
		Size: 833.0 KB (832983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76607d6f81714765c12eee4aa79d20b9ec84e081ba65fcd8604113ff7dc0cfd`  
		Last Modified: Wed, 28 Oct 2026 14:26:15 GMT  
		Size: 23.2 MB (23150826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:a2f836b00a331a8ca5be5cff869549f5551cf46deff821e6820b20ffdd7f154b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 KB (39575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a769a10e803b4d06c80b04a7fe8b019801ba8a0d323ca1056eb621f8ad5369`

```dockerfile
```

-	Layers:
	-	`sha256:dbf1d68af50046188247dd7d76c6eff11bbc99194d0e8943e4c69f1e85eaf724`  
		Last Modified: Wed, 28 Oct 2026 14:26:13 GMT  
		Size: 39.6 KB (39575 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm` - linux; riscv64

```console
$ docker pull postfixadmin@sha256:99b084a0ad720aa1ef92ffbb41b10cb3e259c6bc7ecf089b8fd0b4772b91ca1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.5 MB (227480969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf69776ead6a6e9e9e8de3c145176176a3b6a4cfadcc16e4408fce5c1ca96ac`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 13:40:43 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 13:42:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 13:42:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 13:42:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 13:42:51 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 13:42:51 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 13:42:51 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 13:42:51 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 13:42:51 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 06 Oct 2026 13:42:51 GMT
ENV PHP_VERSION=8.3.35
# Tue, 06 Oct 2026 13:42:51 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Tue, 06 Oct 2026 13:42:51 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Wed, 07 Oct 2026 01:10:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 07 Oct 2026 01:10:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 02:47:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 09 Oct 2026 02:47:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 02:47:46 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 09 Oct 2026 02:47:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 09 Oct 2026 02:47:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Oct 2026 02:47:47 GMT
WORKDIR /var/www/html
# Fri, 09 Oct 2026 02:47:48 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Fri, 09 Oct 2026 02:47:48 GMT
STOPSIGNAL SIGQUIT
# Fri, 09 Oct 2026 02:47:48 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 09 Oct 2026 02:47:48 GMT
CMD ["php-fpm"]
# Sat, 10 Oct 2026 13:25:08 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Sat, 10 Oct 2026 13:25:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 10 Oct 2026 13:30:09 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Sat, 10 Oct 2026 13:30:09 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Sat, 10 Oct 2026 13:30:09 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Sat, 10 Oct 2026 13:30:09 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Sat, 10 Oct 2026 13:30:09 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Sat, 10 Oct 2026 13:30:11 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Sat, 10 Oct 2026 13:30:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 10 Oct 2026 13:30:11 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Sat, 10 Oct 2026 13:30:11 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 10 Oct 2026 13:31:44 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Sat, 10 Oct 2026 13:31:44 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Sat, 10 Oct 2026 13:31:44 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48aaf34f6bbd390cdb6465c85eb5a7f863d1234fcab5d9f06f044f3083428268`  
		Last Modified: Tue, 06 Oct 2026 14:45:17 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e83dba9bd9a90fae32fda7544beed84181e93ba7de5e63377339f9b1c98dc7`  
		Last Modified: Tue, 06 Oct 2026 14:45:44 GMT  
		Size: 146.6 MB (146597027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29baf3a93736ee739c55151019f11266588429784b2b8a433a17201dc995d68`  
		Last Modified: Tue, 06 Oct 2026 14:45:17 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a34a8af78cfa77db6eb4626320f2bc824f0579b1fd5d826ab71d8f8245bde0d`  
		Last Modified: Wed, 07 Oct 2026 02:05:07 GMT  
		Size: 12.8 MB (12784833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5b5aaa2be25d1f15780709dcec370cd3420aa3a41bce8781af5a165889f623`  
		Last Modified: Wed, 07 Oct 2026 02:05:02 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22bae032711a25d42db0c434250cee5384f9b016fd2a70751c2e5981d71ccbf`  
		Last Modified: Fri, 09 Oct 2026 02:50:47 GMT  
		Size: 11.5 MB (11487433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df877caa9b49278e24c48fe651cd4e5d35f92e32241f3f3c4a184ec71ddc0586`  
		Last Modified: Fri, 09 Oct 2026 02:50:45 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d796773a95d8d95db6424e96e4f7cd352073048432662ee47e58f683c820152`  
		Last Modified: Fri, 09 Oct 2026 02:50:45 GMT  
		Size: 254.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05a2a5ab4089d8392317c87015371cf494d025017718054d44d2fb645152c11e`  
		Last Modified: Fri, 09 Oct 2026 02:50:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4369da5cdec68b7ecb474c807985a63cc135cfd102fc46faef8c581b57512943`  
		Last Modified: Fri, 09 Oct 2026 02:50:46 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da7bb6ba5527c7766567665929ea150f7379518440fade5def3089773156da9`  
		Last Modified: Sat, 10 Oct 2026 13:33:15 GMT  
		Size: 1.2 MB (1242350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00041ab11d802c9c4db0d2002d18c44c917c0d1bbaeafed1105e480198708df0`  
		Last Modified: Sat, 10 Oct 2026 13:33:15 GMT  
		Size: 433.8 KB (433825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316152a10f8f0338e380d6ed42121757ccf973d44175d0c65b857d9e27c4737f`  
		Last Modified: Sat, 10 Oct 2026 13:33:15 GMT  
		Size: 2.6 MB (2604067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4cf2abf56f1353b6e04e0e149ba8b62eb83aaae16023b06782a7265f045e69b`  
		Last Modified: Sat, 10 Oct 2026 13:33:15 GMT  
		Size: 1.7 KB (1656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6464d3f5ff6bcbef4e1700491171e92b706b6437cb95e9dc5950e780d7c934`  
		Last Modified: Sat, 10 Oct 2026 13:33:16 GMT  
		Size: 833.0 KB (832982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3633a50a13e55c0a41c96575ac62a2080677e6ae65e28181d911f643e5fc5a7`  
		Last Modified: Sat, 10 Oct 2026 13:33:20 GMT  
		Size: 23.1 MB (23149848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:e18a479e538139298274fbf1793b49557ab5f95b0cf18b8e2ffbf4d9d6739e08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 KB (39575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10b1f48a32467711f0767ad6a23530a5e14326f128d628f2859ce0d05a224af9`

```dockerfile
```

-	Layers:
	-	`sha256:d92acc2a20cd6d1223585ef557db3a01b8d774c2ff326b37aac12f0603ce804e`  
		Last Modified: Sat, 10 Oct 2026 13:33:14 GMT  
		Size: 39.6 KB (39575 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm` - linux; s390x

```console
$ docker pull postfixadmin@sha256:4ec2be8c0096195106dc61d269d6c37c6330e2d5832f42782f0e9db740b223d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175465547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21b321f4ae6e685ee1514fa4853d3aeb3139c67da48e2e570b8c8ea27ab78d9f`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:28:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:28:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:28:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:28:38 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHP_VERSION=8.3.36
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.36.tar.xz.asc
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHP_SHA256=dd54693aa334c5c4d72e9aee96b082c2473750a18a6c1d105789c93a3b1692fd
# Wed, 28 Oct 2026 01:50:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:50:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:55:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:55:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:55:59 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 28 Oct 2026 01:55:59 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:55:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:56:00 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:56:00 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 28 Oct 2026 01:56:00 GMT
STOPSIGNAL SIGQUIT
# Wed, 28 Oct 2026 01:56:00 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 28 Oct 2026 01:56:00 GMT
CMD ["php-fpm"]
# Wed, 28 Oct 2026 05:14:59 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Wed, 28 Oct 2026 05:14:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 05:15:18 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 05:15:18 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Wed, 28 Oct 2026 05:15:18 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Wed, 28 Oct 2026 05:15:18 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Wed, 28 Oct 2026 05:15:18 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Wed, 28 Oct 2026 05:15:19 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Wed, 28 Oct 2026 05:15:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 05:15:19 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 05:15:19 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Wed, 28 Oct 2026 05:15:27 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 05:15:27 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 05:15:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2cc3117588066d5749725e17816918b30cbfc73a8d8b07a3a4c032275c91692`  
		Last Modified: Wed, 28 Oct 2026 01:31:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c983c92f36e7eb471e57ad0f801ed6c2471416760949afa6f3daf17c3b72ca`  
		Last Modified: Wed, 28 Oct 2026 01:31:50 GMT  
		Size: 92.6 MB (92569764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb26f92ac8c9fe210da9a84d3a7d90fbb06735061ddbd56b354f3a376ff17db`  
		Last Modified: Wed, 28 Oct 2026 01:31:48 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e72f71516c95dde144a66bcd440f22cae867d030747d84a6ebb6e99fa53e60ff`  
		Last Modified: Wed, 28 Oct 2026 01:53:15 GMT  
		Size: 12.8 MB (12815878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675b7d65ba0cc70ccbe2220376c22a2b09804b0e4653a626fe65a39017d8faf4`  
		Last Modified: Wed, 28 Oct 2026 01:53:15 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718c1a570eb405c790d3a49da896d068576da9f473d51af4b5d4249a6997183`  
		Last Modified: Wed, 28 Oct 2026 01:56:15 GMT  
		Size: 11.8 MB (11820591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a633d8613506d6778bee5def77fd00c17af08db314776415b3436df8d48dd45`  
		Last Modified: Wed, 28 Oct 2026 01:56:15 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c9af05e64464ffae8406aec867ed1a0bca401826ee7ddd3a10865fd5c0bf3e`  
		Last Modified: Wed, 28 Oct 2026 01:56:15 GMT  
		Size: 254.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763506454bde109f8c885274b4c7e4d472939309d06cd52c30ea8c50bcfbbdf9`  
		Last Modified: Wed, 28 Oct 2026 01:56:15 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e77fc1e51dd9529d887f490eaf1f6faab866abf4d57c36eede590f709abc55`  
		Last Modified: Wed, 28 Oct 2026 01:56:16 GMT  
		Size: 9.3 KB (9258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4115db24a0833681a1398577868d58cbf3e26fb4e7aab46f25ccc6b0afa78ec6`  
		Last Modified: Wed, 28 Oct 2026 05:15:37 GMT  
		Size: 1.3 MB (1284297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f0efe080a29edc4679b58064c853fd99fd7eda6f3aed82c6fae9230887903a8`  
		Last Modified: Wed, 28 Oct 2026 05:15:37 GMT  
		Size: 451.1 KB (451092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea2ff65045535da98d516d48473a3542cbd8777f8a48db7805f482af6a44652a`  
		Last Modified: Wed, 28 Oct 2026 05:15:37 GMT  
		Size: 2.6 MB (2604060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda9bcd7135ac8eceda3adc356eef22283ffd490801d10eb5bdcb45a405fb738`  
		Last Modified: Wed, 28 Oct 2026 05:15:37 GMT  
		Size: 1.7 KB (1656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd23132dffc4a292ca251666cb127a65b8f58a32d5d9c701f4f61fa5d7d3500`  
		Last Modified: Wed, 28 Oct 2026 05:15:38 GMT  
		Size: 833.0 KB (832983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f47dff43b5a00edd0136ba32fa90f8d5b6dd804f3fd8b797f24fec161187aa`  
		Last Modified: Wed, 28 Oct 2026 05:15:38 GMT  
		Size: 23.1 MB (23149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:ea43c3e24a63ace51d69e12bee958c7ca66a9d6ae22efca5db22b72a0aa25efc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 KB (39508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:695172963f1c8a15cc066754d2be550018d864d43e7edb63fa88fee57b228e00`

```dockerfile
```

-	Layers:
	-	`sha256:ce3b0ada88d58f5af57643d25f5ee3d1187d4edad08c027e7baa276cd8d02486`  
		Last Modified: Wed, 28 Oct 2026 05:15:37 GMT  
		Size: 39.5 KB (39508 bytes)  
		MIME: application/vnd.in-toto+json
