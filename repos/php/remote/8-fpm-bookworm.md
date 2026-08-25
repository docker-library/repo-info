## `php:8-fpm-bookworm`

```console
$ docker pull php@sha256:0fed012de2202d7ef0314744ccfa274b870f07cd6a91f88b78f74a849bb03f02
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `php:8-fpm-bookworm` - linux; amd64

```console
$ docker pull php@sha256:a0ed767171ade1e41eaf95453bcfacb788ac14866f07a17e33afdefb0e1cef2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.3 MB (178343931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f59476d6738795a9e472f9c45d54514899521d133b7ae21e0fd642da45d94163`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:24:12 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:24:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:24:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:24:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:24:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:24:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:24:12 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:24:12 GMT
ENV PHP_VERSION=8.5.9
# Tue, 25 Aug 2026 00:24:12 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Tue, 25 Aug 2026 00:24:12 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Tue, 25 Aug 2026 00:30:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:30:24 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:32:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:32:56 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:32:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:32:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:32:57 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 00:32:57 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 25 Aug 2026 00:32:57 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:32:57 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 25 Aug 2026 00:32:57 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b0e66d6afb2b8bb150af1cde104932f49b8f207c134a6a3262dcb3101aa0b2`  
		Last Modified: Tue, 25 Aug 2026 00:26:58 GMT  
		Size: 229.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4946bb28362c896009db5d6583f6dcb38315a708f4d0cc6d27238ade5efe82b1`  
		Last Modified: Tue, 25 Aug 2026 00:27:02 GMT  
		Size: 104.4 MB (104352897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a93b9c192b2f429f55c62781a06470f303b238cf39ddea0a6629b15e5d51e5d`  
		Last Modified: Tue, 25 Aug 2026 00:26:58 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21af453b001cc45ea46dddab1fef38c039b7fd1b625f2512aa9f3255be65075`  
		Last Modified: Tue, 25 Aug 2026 00:33:09 GMT  
		Size: 14.5 MB (14529726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:157dadcf9dff2378b60690244aa386c44ffff5ab4bba5fd8d677ac617d1f60bb`  
		Last Modified: Tue, 25 Aug 2026 00:33:08 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9980422582bf25aabec9759b701f90c85e73240a77c0c96f910c1d6d50aa98f`  
		Last Modified: Tue, 25 Aug 2026 00:33:09 GMT  
		Size: 31.2 MB (31215722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71a911c6a51c76e9705aa1d19cf7c76a661b0836764b5358b652093f4b1aaee`  
		Last Modified: Tue, 25 Aug 2026 00:33:08 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb6395362d2ae6a2d2a2d65fdb0d0dbeeb0ca0016815f144d2a6a35c5a1e137f`  
		Last Modified: Tue, 25 Aug 2026 00:33:09 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8dbf1aa99e502eed495f7b7b1ff1941697a29f64c74e2e8713d0528aa739c96`  
		Last Modified: Tue, 25 Aug 2026 00:33:09 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:7b29aa8894248030e36fa075492eb076dd96a98c55836ee0bab0de416e917bcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6459459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f34b2045a654eb4f8f99f25b15fb69ff77b5e15d1a04e697fdc7bd05385dba6`

```dockerfile
```

-	Layers:
	-	`sha256:9e0ef4048eec154fc33b0ea0263c0b9bf07524bc6f30d5d81e247d2bc7f576a2`  
		Last Modified: Tue, 25 Aug 2026 00:33:09 GMT  
		Size: 6.4 MB (6409047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8648e4535251bac0428b981c2ed81371a52c3b01ce1e589061e50ee93d8d41b`  
		Last Modified: Tue, 25 Aug 2026 00:33:08 GMT  
		Size: 50.4 KB (50412 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-fpm-bookworm` - linux; arm variant v7

```console
$ docker pull php@sha256:a9cf6a7032e835040f9461a9c1377d4f232e4c97a45cd4390902fa8770465504
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142509407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f0156dca82b5580fec4a81ab7d8ecc3b376d392a4d4fa1ab06928cd0fb2de7a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:50:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:50:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:50:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:50:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:50:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:50:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:50:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:50:22 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:50:22 GMT
ENV PHP_VERSION=8.5.9
# Tue, 25 Aug 2026 00:50:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Tue, 25 Aug 2026 00:50:22 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Tue, 25 Aug 2026 00:50:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:50:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:53:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:53:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:53:15 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:53:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:53:15 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 00:53:16 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 25 Aug 2026 00:53:16 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:53:16 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 25 Aug 2026 00:53:16 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585ecca49ff1aa7238f87431d1e3612a1deb4f0ef1492110fd7de8c81a9eb756`  
		Last Modified: Tue, 25 Aug 2026 00:53:31 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c8fbbf0bd678c316c75981b462cf25380b8c4e540054e3407300c9addf14db2`  
		Last Modified: Tue, 25 Aug 2026 00:53:33 GMT  
		Size: 76.2 MB (76154315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:747f574ff072d55feecdbe6c5971098946b523f195fc3604b0dbb653fd824f64`  
		Last Modified: Tue, 25 Aug 2026 00:53:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7918ce2a138f0775f6d89eae9a06f06da1037325126e72669adcbff6d2d846cc`  
		Last Modified: Tue, 25 Aug 2026 00:53:31 GMT  
		Size: 14.5 MB (14527866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d53279fdfaa36202df7de34160bd2b4d446d31680319e1e0b8a887647d3bcd`  
		Last Modified: Tue, 25 Aug 2026 00:53:32 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6a7b88f9fb7ba2228cc28ea0109a47895ca562d9aa8784151ae8ccc044639fc`  
		Last Modified: Tue, 25 Aug 2026 00:53:33 GMT  
		Size: 27.9 MB (27874449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8a8dabe34c9104a782de2ebe9809d8a6110dc430f6bc81cefa6002f4cb236c`  
		Last Modified: Tue, 25 Aug 2026 00:53:33 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:583ddc853fb24edcb944f207f9fc727e51fd98fc79a3c558f0595c94f064ae72`  
		Last Modified: Tue, 25 Aug 2026 00:53:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b61bce93b5225b3e195e29fad1763cf07c6338ba5f65e19db70ee52a24ed17`  
		Last Modified: Tue, 25 Aug 2026 00:53:34 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:976be5c9c4c3b442f355ed2cc002a0308a02343ba11a858bad94bc186644ab14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6272878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e5916cbe51822f0b0fef082f8bf534d87bf53aeadf7d35b28201d9ff87a97d`

```dockerfile
```

-	Layers:
	-	`sha256:21b3cd4eaab2e7de2a7a19350ffe502e3830e8657b1473d3b727e5a7fcc8bd6b`  
		Last Modified: Tue, 25 Aug 2026 00:53:31 GMT  
		Size: 6.2 MB (6222317 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a9ee5da4238282ce73b55ca5dd1424a56a38d57566d0682354842b93e2b17b7`  
		Last Modified: Tue, 25 Aug 2026 00:53:31 GMT  
		Size: 50.6 KB (50561 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-fpm-bookworm` - linux; arm64 variant v8

```console
$ docker pull php@sha256:e0e905de31bfc3148b701d762b521e692ebb94eb4a8946f3453bd7d4e88d03b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171600149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7f0ecbd22dd153cc0e79440df21a964285a2722559d7d66fc4c7af2d4a6d6e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:27:08 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:27:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:27:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:27:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:27:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:27:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:27:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:27:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:27:23 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:27:23 GMT
ENV PHP_VERSION=8.5.9
# Tue, 25 Aug 2026 00:27:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Tue, 25 Aug 2026 00:27:23 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Tue, 25 Aug 2026 00:31:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:31:00 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:33:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:33:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:33:55 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:33:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:33:55 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 00:33:56 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 25 Aug 2026 00:33:56 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:33:56 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 25 Aug 2026 00:33:56 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea05d39d7fb2a1bf9d9710ce120051bd3936e4d120275dee8edbd9b759dfd59e`  
		Last Modified: Tue, 25 Aug 2026 00:30:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:703a8ce575652cf16c4a08ec470a07d92a5afdc180d85f17ed17be84547d240f`  
		Last Modified: Tue, 25 Aug 2026 00:30:46 GMT  
		Size: 98.2 MB (98201116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b52fc34f59b500fcbc52b845ed4b56a4f0d8f8391fde574faff2cbee5c73a9`  
		Last Modified: Tue, 25 Aug 2026 00:30:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfdeb3e18751d86dfa306ddffa0f2d7d2784da97ede45a55ee405390185d918c`  
		Last Modified: Tue, 25 Aug 2026 00:34:08 GMT  
		Size: 14.5 MB (14529530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46fa5bc325d59a156bc0cc133d6fb4b66a8144086c9339a046817fca5c39087e`  
		Last Modified: Tue, 25 Aug 2026 00:34:07 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dcb5d4b9e576fc16ebf0316f8f5db2e81d86a701b4901dfac0ce696a9f84715`  
		Last Modified: Tue, 25 Aug 2026 00:34:08 GMT  
		Size: 30.7 MB (30739284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0690e879c59ce8c1c8573acc472fddfaa2759556d01c4fc4ae475f8a214ec97f`  
		Last Modified: Tue, 25 Aug 2026 00:34:07 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e08242a0886264dfd033458fd2334a03317f0ad58f12659fe3f9fe0cca5255d`  
		Last Modified: Tue, 25 Aug 2026 00:34:09 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ec4ddd7db8c576c6fdf0e0429413b7e7a5efe29d7b01ec3c17241d2faa52b9b`  
		Last Modified: Tue, 25 Aug 2026 00:34:09 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:ae89cbd5192f236a78a593cba6d166fd3ca17b221d407eff08e415133ef41edb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6488035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caea48dc8111deeeb00b6a46a99c72c283cdab2ec3d53aa1ccb068375d80a262`

```dockerfile
```

-	Layers:
	-	`sha256:3ced39b0cd74f95a2e2b2769707c3ab53da06c2e017563132a0a90f74ad0e38b`  
		Last Modified: Tue, 25 Aug 2026 00:34:08 GMT  
		Size: 6.4 MB (6437438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:147feb40776c22a239003ff7a9b522bfafee3a3777096cb1f9d5a4c4341a0456`  
		Last Modified: Tue, 25 Aug 2026 00:34:07 GMT  
		Size: 50.6 KB (50597 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-fpm-bookworm` - linux; 386

```console
$ docker pull php@sha256:409d303aeeb1ede17c93dbb010e54bdc98e5dfaa7d069afe7ec418838be57f9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.1 MB (177130559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d69d01e9569bf167e9219a7b91abfe948a8c6ca3bc4b97a2195181f65fb47b8`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:21:04 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:21:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:21:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:21:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:21:18 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:21:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:21:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:21:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:21:18 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:21:18 GMT
ENV PHP_VERSION=8.5.9
# Tue, 25 Aug 2026 00:21:18 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Tue, 25 Aug 2026 00:21:18 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Tue, 25 Aug 2026 00:26:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:26:54 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:29:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:29:27 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:29:27 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:29:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:29:27 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 00:29:27 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 25 Aug 2026 00:29:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:29:27 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 25 Aug 2026 00:29:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57f365b5a556c0f4647050f54aef56eac6fa7eac637dea7fafccf0a8e6200d0`  
		Last Modified: Tue, 25 Aug 2026 00:29:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84dbdb9381436b84d6174014f1e5a5410508882f26ee8d7a7fc0b54bde08f1b6`  
		Last Modified: Tue, 25 Aug 2026 00:29:48 GMT  
		Size: 101.5 MB (101536342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04c1d688e95261723fb071b50253f3de14277c9da1df92e4c864707031371a83`  
		Last Modified: Tue, 25 Aug 2026 00:29:45 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4103936a2ee3a2c31eb9ba1278c99f3c9f852871d88647663e7b1d9b56852cf`  
		Last Modified: Tue, 25 Aug 2026 00:29:46 GMT  
		Size: 14.5 MB (14528954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4758f05d28bd45ad81ddc1bc8d9f94d00534776a5ffafab4bcda519d2aa45742`  
		Last Modified: Tue, 25 Aug 2026 00:29:46 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aa48d752d8564c1621375cca421c601a3a84670a642c37c15fb8e667e9c5d7f`  
		Last Modified: Tue, 25 Aug 2026 00:29:47 GMT  
		Size: 31.8 MB (31831274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c34477c267088a4f7d6e82fd09916478a2c13649aef6aa2e097d630004d328b`  
		Last Modified: Tue, 25 Aug 2026 00:29:47 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e69396422f5062e9f9edab8a073261ff697c566ff2ec5d76964e09ebfb80572`  
		Last Modified: Tue, 25 Aug 2026 00:29:47 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d095257d4027e31e8b65df5de3df73615c2fa6ce2e39d85046a31acf5a4fa30e`  
		Last Modified: Tue, 25 Aug 2026 00:29:48 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:8fb0973f3a9f2d815ec307af8902be5242336589d67bbbb1d268f56c1071e48e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6439207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf5035e25299a52268c121fbc48c631e4b67878580ed156d6f30c278286b785`

```dockerfile
```

-	Layers:
	-	`sha256:dda35c0beab2d6d616e9f11d95f267554a89ae1fe18b34da66ba985313447eb7`  
		Last Modified: Tue, 25 Aug 2026 00:29:45 GMT  
		Size: 6.4 MB (6388839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54e741d65fa7cba28815a2fa68494ae80574ca14271ba48254b810e2f2bfc5e0`  
		Last Modified: Tue, 25 Aug 2026 00:29:45 GMT  
		Size: 50.4 KB (50368 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-fpm-bookworm` - linux; ppc64le

```console
$ docker pull php@sha256:d7b4d76dd20341f4d2bcd6fbcde2a4e4c26c2ada73b0dcc5538508fc0d306c51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181824888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5548ca8a6608f584bc9e67466f9476538ac6b32c75ea4b931d3588c0c0af02bb`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:57:31 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:58:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:58:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:58:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:58:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:58:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:58:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:58:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:58:21 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:58:21 GMT
ENV PHP_VERSION=8.5.9
# Tue, 25 Aug 2026 00:58:21 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Tue, 25 Aug 2026 00:58:21 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Tue, 25 Aug 2026 01:41:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 01:41:46 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:50:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 01:50:28 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:50:29 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 01:50:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 01:50:29 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 01:50:29 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 25 Aug 2026 01:50:29 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 01:50:29 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 25 Aug 2026 01:50:29 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807cae1e1aee5f78ee239ba7f7081151c4a8880b2f117cd7c464c65b1767a802`  
		Last Modified: Tue, 25 Aug 2026 01:04:12 GMT  
		Size: 229.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08d4e2298742cd14263e0b6ff729f73cd0806900c3abd83ee09519f39657922`  
		Last Modified: Tue, 25 Aug 2026 01:04:16 GMT  
		Size: 103.3 MB (103333033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:482d9597fb3c91d0bf7f71b991198b743566cc8c615136c0b23e2a17994f6e61`  
		Last Modified: Tue, 25 Aug 2026 01:04:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97dc8c5e36c57161fd79cf075110534918320dec01444e390c6f886173ec4fe8`  
		Last Modified: Tue, 25 Aug 2026 01:46:15 GMT  
		Size: 14.5 MB (14529204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3458cb1e513271d6874c5da815f8a02efdbd47ea27f2e7125f3c8e1c269d889`  
		Last Modified: Tue, 25 Aug 2026 01:46:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8777b7b7a5ee9a8a8ba884d92b229a32d3746f270a1d318917a501db29c259b`  
		Last Modified: Tue, 25 Aug 2026 01:50:55 GMT  
		Size: 31.9 MB (31873237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b880959532c8cb72e448fb985d060e9a66d361cb197be7deac91bd593eb44d48`  
		Last Modified: Tue, 25 Aug 2026 01:50:54 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcdbbcc25fd655f197b9c4fd99556ba65bc184a0b4d7e8dd3ffd55d7b6740412`  
		Last Modified: Tue, 25 Aug 2026 01:50:54 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a97dacc11ee6a357c3cc956a1648d09431662e81a70eb6047b572da51833c5`  
		Last Modified: Tue, 25 Aug 2026 01:50:54 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:a8a452af21669ecbbfbfd6679ae9c386b0e31c30f0d87e0707cee868a6706d03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6436185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b749dde17160b1065311b19787a63186db76aaadb2370b82fe48badfe37f65e`

```dockerfile
```

-	Layers:
	-	`sha256:703218a83615b5d2ab2c7d8f66beae30552e15cde3be08820a4b42faccf0a865`  
		Last Modified: Tue, 25 Aug 2026 01:50:54 GMT  
		Size: 6.4 MB (6385717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:693db3e5023b867a70641ab190edb50760253ee7d3bc3f25b44fc5c60d1c2061`  
		Last Modified: Tue, 25 Aug 2026 01:50:54 GMT  
		Size: 50.5 KB (50468 bytes)  
		MIME: application/vnd.in-toto+json
