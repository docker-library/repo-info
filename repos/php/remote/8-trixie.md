## `php:8-trixie`

```console
$ docker pull php@sha256:ca901c6a2725576c4aa896a974bc5a46989a37f2a279ac1101316fe12fe2f3f9
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

### `php:8-trixie` - linux; amd64

```console
$ docker pull php@sha256:163579b783d544b72bc40ada710b7e57ecd2a7f14decb69df4ba243936b9783f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189278787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d2638822c65cc66b56f4a9e84e73ecc84a4031474f3cd198fd9a70a4f130160`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:23:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:23:57 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:23:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:23:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:23:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:23:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:23:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:23:57 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:23:57 GMT
ENV PHP_VERSION=8.5.9
# Tue, 25 Aug 2026 00:23:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Tue, 25 Aug 2026 00:23:57 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Tue, 25 Aug 2026 00:27:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:27:20 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:30:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:30:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:30:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:30:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:30:13 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3f39ee6680755aea86fff51f5cb6faa01fab3de015c5bb8587f1e8128e84aeb`  
		Last Modified: Tue, 25 Aug 2026 00:27:00 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c78a3ae6783f4f10fc8553af473740a71e79f1d28d20463e1129e1427c9934`  
		Last Modified: Tue, 25 Aug 2026 00:27:05 GMT  
		Size: 117.8 MB (117839066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:938f9823e8c67440a0fbaf0dc5eaaef77690c0868977e76908a828064bbf738f`  
		Last Modified: Tue, 25 Aug 2026 00:27:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1365e06d076038138017068788921004af89bbc6b55aad5131e609bf0c12724`  
		Last Modified: Tue, 25 Aug 2026 00:30:25 GMT  
		Size: 14.6 MB (14575772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af57699f49e5d35bb60630303d1ca691435406fff3306dfba4fb9861310df87`  
		Last Modified: Tue, 25 Aug 2026 00:30:24 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d6a0978650dda017e0828fc0e672eaebfda8756a706168115cbd0fbd3d8af6`  
		Last Modified: Tue, 25 Aug 2026 00:30:26 GMT  
		Size: 27.1 MB (27067653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52d8a52627c8d6acc1a2b08bace64681a3969fa6dce0020f1db180514ee7e388`  
		Last Modified: Tue, 25 Aug 2026 00:30:24 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6fbcd7ccf000620b8415cad2c1f324d3cd2188e6fe5c3d8e09a2e00d47bd652`  
		Last Modified: Tue, 25 Aug 2026 00:30:25 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-trixie` - unknown; unknown

```console
$ docker pull php@sha256:dd4f5bb0ef485640842aded8dcc01fe3909303902277a33ea2df64d93fca1fcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6729103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e153f98cee99a592fbcf1506194f69e9415ebf92a5596b75b9ac18fc14dc6ca1`

```dockerfile
```

-	Layers:
	-	`sha256:e718d4d8f09e2acedb4c6e75d352fe0e464a1141b430da2401ef05d6ccf6de97`  
		Last Modified: Tue, 25 Aug 2026 00:30:25 GMT  
		Size: 6.7 MB (6686049 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:996cb073ee9751ccead34a6739c348f8af7e0253b22e95b3b2ab0c239aec03a0`  
		Last Modified: Tue, 25 Aug 2026 00:30:24 GMT  
		Size: 43.1 KB (43054 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-trixie` - linux; arm variant v5

```console
$ docker pull php@sha256:4514330d6265d6aca66f72dd1042bc010f8870fe7a5c4b71e038980ad03b1929
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160601094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf3a3a8abe5c854a4de5f30eee06b00c4afdbc49a0d7a0f1b8af9a207103ef36`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:23:15 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:23:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:23:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:23:37 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:23:37 GMT
ENV PHP_VERSION=8.5.9
# Tue, 25 Aug 2026 00:23:37 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Tue, 25 Aug 2026 00:23:37 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Tue, 25 Aug 2026 00:23:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:23:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:26:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:26:56 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:26:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:26:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:26:57 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048562c1ae827670d7662890bdfbe1c93ea23d2cd407cbe4e1c29c4a6ebd5015`  
		Last Modified: Tue, 25 Aug 2026 00:27:15 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec090a1af200b886fd207ef0d8309d9dfcb22e451c7fdcd5990a49f11810332d`  
		Last Modified: Tue, 25 Aug 2026 00:27:18 GMT  
		Size: 94.9 MB (94886888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83bc79d547027b59caed62374c2a1de6e82f8075acbb7ae8e379d2ddca62c84e`  
		Last Modified: Tue, 25 Aug 2026 00:27:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be987aac090e296610833f20f2cd2ddb8fbb5de054b2aa2cf2bc5532b6bf1bf8`  
		Last Modified: Tue, 25 Aug 2026 00:27:16 GMT  
		Size: 14.6 MB (14564575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af3114c29f0ba458b1c711b5186153a66a2bbfcce5a3251fe0ae2ab4127315a`  
		Last Modified: Tue, 25 Aug 2026 00:27:16 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12c58151966f9cd25bc5e5be777264d615cf1e25c41f14d842d321519ab5491`  
		Last Modified: Tue, 25 Aug 2026 00:27:17 GMT  
		Size: 23.2 MB (23177048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cafa18ab7a56aab57128f2a82a0e37575c732815cf6d44406ab3ec25f2572d1`  
		Last Modified: Tue, 25 Aug 2026 00:27:17 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a33e518633b1d83d4972342693e9cfbf20a65eacdd6bfc6ab6e0d386ce47e08`  
		Last Modified: Tue, 25 Aug 2026 00:27:17 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-trixie` - unknown; unknown

```console
$ docker pull php@sha256:e2a6587f4d173ae9840c5dd40da7f584364668b5ee4c81cfa33d328ad93e4230
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6529248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:219835c0782943c01757a343749fbcd8ab47a1764d18438041f7aba4a684bd25`

```dockerfile
```

-	Layers:
	-	`sha256:7d524bb388a4334aa43982ddbb3b65e7488442346b4f66e5599d165450e45958`  
		Last Modified: Tue, 25 Aug 2026 00:27:15 GMT  
		Size: 6.5 MB (6485959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f1d6dbc076da364d3670fbecb197c5e5e81895cfb33e4c12284a30f16f0f8d8`  
		Last Modified: Tue, 25 Aug 2026 00:27:14 GMT  
		Size: 43.3 KB (43289 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-trixie` - linux; arm variant v7

```console
$ docker pull php@sha256:83652b6ce07d1b3a3fe3571572911d79dda52b8454f1e880bbafa475fc48641c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148923605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a64fa261edeb12cfe27f21103fd4afb45b8b2ece9b2c164397932d9dd4f81846`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:43:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:43:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:43:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:43:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:43:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:43:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:43:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:43:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:43:20 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:43:20 GMT
ENV PHP_VERSION=8.5.9
# Tue, 25 Aug 2026 00:43:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Tue, 25 Aug 2026 00:43:20 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Tue, 25 Aug 2026 00:43:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:43:30 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:46:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:46:23 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:46:23 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:46:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:46:23 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:507edf9dfa7003d63a446ad1817cf0e629fbf67f01b70f5539329ab613a605cf`  
		Last Modified: Tue, 25 Aug 2026 00:46:40 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e7b69d3a4411c14db7cea87d7cc72f2762bf2eb696535b94769866e74274392`  
		Last Modified: Tue, 25 Aug 2026 00:46:43 GMT  
		Size: 86.3 MB (86260550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160b75cf89e896b2377bdcdf4559ce6f6db7f74a1982993f4e43e6fcff45f98f`  
		Last Modified: Tue, 25 Aug 2026 00:46:40 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:325c0323505337ca5d0940105eb27865fcf2178057edbf9910343e0cfa2cd77e`  
		Last Modified: Tue, 25 Aug 2026 00:46:41 GMT  
		Size: 14.6 MB (14564746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dcdf1459f1d74042e21c5292edc55b61287f99f42c722ab7a2504f496b70fe`  
		Last Modified: Tue, 25 Aug 2026 00:46:41 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e75c172f75ddefaa6b34790a1b39ed7488a0afd224f14c214071c40b2ad24cc`  
		Last Modified: Tue, 25 Aug 2026 00:46:42 GMT  
		Size: 21.9 MB (21875529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f0369bd2c082d457dfc52444317c4bfe9545bb2a87262808d16c33bad910c4`  
		Last Modified: Tue, 25 Aug 2026 00:46:42 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98722181c16c2288ce5dfc2a41b4abcb60058c64413c37f2f0fa49c960da57c1`  
		Last Modified: Tue, 25 Aug 2026 00:46:42 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-trixie` - unknown; unknown

```console
$ docker pull php@sha256:09c59176ee40ed0786c3dc21b7784c2715565fc5aed1d5ad62bbb4430ab2b5a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6533214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a14a6f56e589da4c9a620eabe791b1fafa1e464e3024a454facb4216c5f4b5d`

```dockerfile
```

-	Layers:
	-	`sha256:88aa088919161a2ee1630a1585d221c33a953a0a63c51060d818cd45f135150f`  
		Last Modified: Tue, 25 Aug 2026 00:46:40 GMT  
		Size: 6.5 MB (6489925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ad0b83f2ada032df2aef6089a181e3256e88fb514df9e5e46b774e6158a256f`  
		Last Modified: Tue, 25 Aug 2026 00:46:40 GMT  
		Size: 43.3 KB (43289 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-trixie` - linux; arm64 variant v8

```console
$ docker pull php@sha256:083f42caff8f44e784dbce076858962c19aeab9dafa666ff004f511b1158fee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181184448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af885c30121fa6c74fc0146dffa6fc3386698df14365c8b9779b773905138379`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:27:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:27:32 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:27:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:27:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:27:32 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:27:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:27:32 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:27:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:27:32 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:27:32 GMT
ENV PHP_VERSION=8.5.9
# Tue, 25 Aug 2026 00:27:32 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Tue, 25 Aug 2026 00:27:32 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Tue, 25 Aug 2026 00:27:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:27:40 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:30:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:30:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:30:59 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:30:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:30:59 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e6ff34f953fcc338ff98fb836f68ec3f02dec79d5c6de69381bf6df6a8c881`  
		Last Modified: Tue, 25 Aug 2026 00:31:19 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d1918d68c2e557ecd21f05436f5675ddebf5f9d2e1e40af34176a471a59d61`  
		Last Modified: Tue, 25 Aug 2026 00:31:23 GMT  
		Size: 110.2 MB (110171959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80723af4b21788754bdf8ddc17d5fb693572872caa5dbd756453d2211415fde7`  
		Last Modified: Tue, 25 Aug 2026 00:31:19 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:422944380cc2d9584271277adc53f367b3119f6549540b5e86e6393dbe8e52f8`  
		Last Modified: Tue, 25 Aug 2026 00:31:20 GMT  
		Size: 14.6 MB (14566939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f2d60a196bf33b73049ddc6894ce1f76f0ed5866c6977104062d8a0cecbc606`  
		Last Modified: Tue, 25 Aug 2026 00:31:20 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8055e63839720335265b7d59aa8c2a1bc595962d3e8bae8dac9a6812bc7c6c46`  
		Last Modified: Tue, 25 Aug 2026 00:31:21 GMT  
		Size: 26.3 MB (26282331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7be3f1af63baab4088dec3e417ef62cebe3925fd312d24718bc297e55fd7d2d`  
		Last Modified: Tue, 25 Aug 2026 00:31:21 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10266e4a11cda80155cd521a9519e9ec1e54a3eec45b02481f43ee95598d5fb`  
		Last Modified: Tue, 25 Aug 2026 00:31:21 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-trixie` - unknown; unknown

```console
$ docker pull php@sha256:8e514e9c8ed5c5f72f5d1cbf86708191499226a5a5a051064ca3d3013ed1e6d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6826842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f64e010152774180f69326cec38beb6fa05dbc26cfae73b8c8f00fdd7c1b27`

```dockerfile
```

-	Layers:
	-	`sha256:0bcbfcf1a63bd64741f1ced0f94a5d96c5880f86bdf441bd36fda5f74278dfbf`  
		Last Modified: Tue, 25 Aug 2026 00:31:19 GMT  
		Size: 6.8 MB (6783464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa2bd4ee243dedb7a87c44bb7a7e41ad262aa09e8e2246df3900c683542e8027`  
		Last Modified: Tue, 25 Aug 2026 00:31:19 GMT  
		Size: 43.4 KB (43378 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-trixie` - linux; 386

```console
$ docker pull php@sha256:ebff74b1930323d403054dcc1c28f3dff4820aaacb4cf52d1ced247681ebc6fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.7 MB (189670044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76d550dd4e5ac924fc1c60110b6363b46c7ccb1e80eff53a9689987c1712084f`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:19:32 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:19:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:19:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:19:32 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:19:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:19:32 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:19:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:19:32 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:19:32 GMT
ENV PHP_VERSION=8.5.9
# Tue, 25 Aug 2026 00:19:32 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Tue, 25 Aug 2026 00:19:32 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Tue, 25 Aug 2026 00:24:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:24:54 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:27:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:27:45 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:27:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:27:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:27:45 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2022d5865a6808a21e5c9d5cdc496cfbdacba10d827ea18ee5d65c0a9ed5674e`  
		Last Modified: Tue, 25 Aug 2026 00:22:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:337bc7b4d194ae39552e2f71b424bf1915e334a697ffcf9fcb77cb6f1959a5c9`  
		Last Modified: Tue, 25 Aug 2026 00:22:52 GMT  
		Size: 116.1 MB (116143524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac98fb096632d12d14b82b28ad71bfc7024de7b221b99c2bf5efdb3a88eaae68`  
		Last Modified: Tue, 25 Aug 2026 00:22:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17920c2471946b26d1b9529997db74a83d8fef764ab1d4c591bc0422060eb47`  
		Last Modified: Tue, 25 Aug 2026 00:27:56 GMT  
		Size: 14.6 MB (14566260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8bd5058ffe917c29ee8ea8a697ae959eb3cba426a80de9a801ffcb40af951e8`  
		Last Modified: Tue, 25 Aug 2026 00:27:55 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52773072cfb2901035ad4fc9e93a06eb34faa62f2805be964527f1efe2dfb26b`  
		Last Modified: Tue, 25 Aug 2026 00:27:56 GMT  
		Size: 27.7 MB (27653230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5bb4f9692fa006128a2ab168cbc980fa47180c52b7f96f83f18227fbf07f62`  
		Last Modified: Tue, 25 Aug 2026 00:27:55 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acacdf4d1b8bfe9fee2856b983f682b068ab268d4c55c3d3309dd90ea74fa55f`  
		Last Modified: Tue, 25 Aug 2026 00:27:56 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-trixie` - unknown; unknown

```console
$ docker pull php@sha256:c8fe4f586e4a09c12f66f8c68860fb6ffbcd7a6cd153b2110a0673a57ac45207
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6702840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57aaa8d1882f843207b0212622918a880125678e2c770bdbba95611e18f296f5`

```dockerfile
```

-	Layers:
	-	`sha256:9fcde9a7b3ba8cf24f2a219839fd21dab1cf92809b265760863ed24f5a11089b`  
		Last Modified: Tue, 25 Aug 2026 00:27:55 GMT  
		Size: 6.7 MB (6659887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47a4521f57a173bdbceb9ebeac8b626b127ffb1d9cbed544ffc57c99d9cf882f`  
		Last Modified: Tue, 25 Aug 2026 00:27:55 GMT  
		Size: 43.0 KB (42953 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-trixie` - linux; ppc64le

```console
$ docker pull php@sha256:be65ef1d83095d6727d92188e27a2e7e07dacce84da2d92586c7086c9e201f18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.9 MB (184947981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46c1c1cbb9081c872eb301d14c493f936acdb6a19beda4f409c31e51a9af3b2`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:46:21 GMT
ENV PHP_VERSION=8.5.9
# Tue, 25 Aug 2026 00:46:21 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Tue, 25 Aug 2026 00:46:21 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Tue, 25 Aug 2026 01:32:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 01:32:19 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:36:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 01:36:23 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:36:24 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 01:36:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 01:36:24 GMT
CMD ["php" "-a"]
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
	-	`sha256:1a0f66b633b4146de8909a45bb6a21b264b69c7ee64baf102f9a3e390843b1cf`  
		Last Modified: Tue, 25 Aug 2026 01:36:48 GMT  
		Size: 14.6 MB (14566350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ab2fe4eb8ea66c2c544e691682993702d6cb0e03d5c9f72921e8a2f39c95b8`  
		Last Modified: Tue, 25 Aug 2026 01:36:47 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21aca805d25cb271a50e4471797943d65f1ce6ebc28245bf3bfb34b2f631e396`  
		Last Modified: Tue, 25 Aug 2026 01:36:48 GMT  
		Size: 27.2 MB (27161087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df998ba5c1a2dc9a2a026e92fa790ed2ad4f1d0995d05e1f14b90bf8f28b1df2`  
		Last Modified: Tue, 25 Aug 2026 01:36:47 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677235dc345d26a5641c3a725084f085c9e8d35b625329e9128342150f3483ac`  
		Last Modified: Tue, 25 Aug 2026 01:36:48 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-trixie` - unknown; unknown

```console
$ docker pull php@sha256:f20c9639e7dfbe287cd7863df0e6ec1bf73a1bb69af98a2474d2900cac00525b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6728952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21d2f6c78fd85d81d0f2a659bb9824f01f69ecbe3303105582c44015e315586`

```dockerfile
```

-	Layers:
	-	`sha256:3c60dfcef8ac11918f261e961d880f94045c335c6b1eec4215c0343a6a05089e`  
		Last Modified: Tue, 25 Aug 2026 01:36:47 GMT  
		Size: 6.7 MB (6685771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fb981b19a0411d09693240476b7eee569e60310a5789110182b92a7b2bb2209`  
		Last Modified: Tue, 25 Aug 2026 01:36:47 GMT  
		Size: 43.2 KB (43181 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-trixie` - linux; riscv64

```console
$ docker pull php@sha256:116092d01a52cec6499c25c93eed2307f68fc06b7853c32662128b9655f420f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.5 MB (214468313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5981b546185acc501a4ce6c7dc7cfffc3ce87a0fc942a3d5b6e1964b6b2045c2`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 05 Aug 2026 18:41:23 GMT
ENV PHP_VERSION=8.5.9
# Wed, 05 Aug 2026 18:41:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Wed, 05 Aug 2026 18:41:23 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Wed, 05 Aug 2026 22:29:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 05 Aug 2026 22:29:24 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 23:25:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 05 Aug 2026 23:25:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 23:25:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 05 Aug 2026 23:25:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Aug 2026 23:25:42 GMT
CMD ["php" "-a"]
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
	-	`sha256:1a99c86f3d99438dbd1a03708c983a833a07ffdbb60838de79eb461282a49a29`  
		Last Modified: Wed, 05 Aug 2026 23:29:05 GMT  
		Size: 14.6 MB (14581785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05a3441a4eb1680a55a6d953a833ca0075fe84c707f053837f7ae4ff414469fa`  
		Last Modified: Wed, 05 Aug 2026 23:29:00 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d05d5b7898d90dc53b207d83fd6b5e197133fd475852fc975fdf0ee7fb84a2a`  
		Last Modified: Wed, 05 Aug 2026 23:29:06 GMT  
		Size: 25.0 MB (25017695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f0b83d7c7e7cc388df5b2e11242a610d3d290e9fc250910ae862c95e92ce04`  
		Last Modified: Wed, 05 Aug 2026 23:28:59 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e828a53e7544efe8c5c8233b284086aea7407f22b4d1d02b6963e10b902c3898`  
		Last Modified: Wed, 05 Aug 2026 23:29:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-trixie` - unknown; unknown

```console
$ docker pull php@sha256:707c6b3273f001f59c6de51651db11787154835d370e0cf6dd5f216c6368e439
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6800843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f417dc6dfff1c7adb40e19307b183152356ecd9691ca99aecf92e56597fd7192`

```dockerfile
```

-	Layers:
	-	`sha256:422c42a68a7e4f6eb081ade0caeb870ece6156e41518355ae36ff627731a8c2a`  
		Last Modified: Wed, 05 Aug 2026 23:29:02 GMT  
		Size: 6.8 MB (6757662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e61959e72b9170ddacde803b517e9f00a7f2490d6d80ea0065aea78d164ac804`  
		Last Modified: Wed, 05 Aug 2026 23:28:59 GMT  
		Size: 43.2 KB (43181 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-trixie` - linux; s390x

```console
$ docker pull php@sha256:6cbc186cfa94bb428ae7b5c1a00894beb9940166882e0de5bd92aa67b671b540
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.6 MB (162644249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a8b7db927c04f10ad22486c3386f96b46fd8ecc92ef1b5f3efe8a090dbeed90`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:28:55 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:29:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:29:15 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHP_VERSION=8.5.9
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Tue, 25 Aug 2026 00:38:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:38:27 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:42:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:42:27 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:42:27 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:42:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:42:27 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b412cfe4760bdc7b56e741c7fe164da58050ce82034f50bf9549fe3d2a93fd5f`  
		Last Modified: Tue, 25 Aug 2026 00:32:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4520d77388744535c3707d5e6aeb9234458a611ab746b67e0d45f3a23d2e415`  
		Last Modified: Tue, 25 Aug 2026 00:32:58 GMT  
		Size: 92.6 MB (92572172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa86077d502df76a732077dd006459b037305fdfdba4c251caa06d6b9af520db`  
		Last Modified: Tue, 25 Aug 2026 00:32:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082a0ff47b4b682b0ac2c42ccbb771d7761a54646fc27d84a3113ebd339c817a`  
		Last Modified: Tue, 25 Aug 2026 00:42:51 GMT  
		Size: 14.6 MB (14565655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c1197363f5fec0cc0a28eeec27c4a3feb254cd30551206bdae20cc4378aeb8`  
		Last Modified: Tue, 25 Aug 2026 00:42:51 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3184741401c303b5c6664f7e13cd193318ffa36a549080accc271da7dfce28`  
		Last Modified: Tue, 25 Aug 2026 00:42:52 GMT  
		Size: 25.6 MB (25635069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e32f1100b0be2f094bb98d187b4ba2ae3267621c4bb2a58d9f698e11887190`  
		Last Modified: Tue, 25 Aug 2026 00:42:51 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52dc971e68a8be88a443eeb184ab72b8f4632cb588ae7ceeced7ea6309685dd2`  
		Last Modified: Tue, 25 Aug 2026 00:42:52 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-trixie` - unknown; unknown

```console
$ docker pull php@sha256:5352ba012506934b4bce2b2e16303efdfb20be20662ee6d7cf6c870e5d987694
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6546370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3db3171cc4a0d824324e4f710eadd7459b4d5bc174654e29ed55e8e78d90ab4f`

```dockerfile
```

-	Layers:
	-	`sha256:6ba920691c7bea0a88103d7131801201892607645462960d41269bb69610dfbb`  
		Last Modified: Tue, 25 Aug 2026 00:42:51 GMT  
		Size: 6.5 MB (6503322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1afbd80f0d680c965e4e4663e34417c00705c4eedb41f294a8b441eaad657804`  
		Last Modified: Tue, 25 Aug 2026 00:42:51 GMT  
		Size: 43.0 KB (43048 bytes)  
		MIME: application/vnd.in-toto+json
