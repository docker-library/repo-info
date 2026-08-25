## `php:8-zts-bookworm`

```console
$ docker pull php@sha256:83a413c1bf2f5c1c6ea50c8e525336343fa4aa8f01615d914880d9bd3541bb0d
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

### `php:8-zts-bookworm` - linux; amd64

```console
$ docker pull php@sha256:3041feb0c77d3d852161ffbd38c5c54dfa00f636ad368748b452196e2e5a18d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.3 MB (190329203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c335f3200013d8f8b996f58fc5e668362871918b14e723687f331d3f24ef1785`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:47 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:24:02 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:24:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:24:02 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:24:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:24:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:24:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:24:02 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:24:02 GMT
ENV PHP_VERSION=8.5.9
# Tue, 25 Aug 2026 00:24:02 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Tue, 25 Aug 2026 00:24:02 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Tue, 25 Aug 2026 00:30:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:30:23 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:32:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:32:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:32:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:32:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:32:57 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f2acb91b51956f5fea50eee5916b0fd67cb84bc3ddf0d1d2f6e3d9137cbb53`  
		Last Modified: Tue, 25 Aug 2026 00:26:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898bc01d9f8d3c80e31ffa0d9ed91350b7e3282dd478a38ccc30e281006eda53`  
		Last Modified: Tue, 25 Aug 2026 00:26:46 GMT  
		Size: 104.4 MB (104353184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48d58df9141fe57574996f71db3ea9cbe204f922b4fd5bb94047abd3abec2ce4`  
		Last Modified: Tue, 25 Aug 2026 00:26:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ed188c29ad5aab96840b86acbbd585c5a4c662c07968c44ac7f0e578cd02e9`  
		Last Modified: Tue, 25 Aug 2026 00:33:09 GMT  
		Size: 14.5 MB (14529738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:157179ef437b4d8710811cec945c514dbbcf253de011880277530c7ad402e445`  
		Last Modified: Tue, 25 Aug 2026 00:33:08 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0846930e6e5e71b95f276755697e47fd83a1b5d4e80ac11e2d50dd145a3a1c6`  
		Last Modified: Tue, 25 Aug 2026 00:33:10 GMT  
		Size: 43.2 MB (43209991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a35ccc47e11632945cb681d0375bda0ec52bad19ca2775bc795141f94302621`  
		Last Modified: Tue, 25 Aug 2026 00:33:08 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb6395362d2ae6a2d2a2d65fdb0d0dbeeb0ca0016815f144d2a6a35c5a1e137f`  
		Last Modified: Tue, 25 Aug 2026 00:33:09 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:eedc47ef3d5de62400850733e08a645801c79fcb9cd22c53c8d2532a9601aa21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6447809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c05495a09d2b7d440bc4b511e0ece39d9ef1f5208276a7dc3a0b2fb1b5f3d6`

```dockerfile
```

-	Layers:
	-	`sha256:02899ae0b4151098678b191e4e57452727fa42848c0a627b6d3e830a74a08c90`  
		Last Modified: Tue, 25 Aug 2026 00:33:09 GMT  
		Size: 6.4 MB (6407841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b542e856f548b24ba3d69914472f922f5bbc9398d1a99d3d833cd1a95f6da007`  
		Last Modified: Tue, 25 Aug 2026 00:33:08 GMT  
		Size: 40.0 KB (39968 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-bookworm` - linux; arm variant v7

```console
$ docker pull php@sha256:bdb926f143bd47d17ae661543f452256faee9d19a3bfe5e6cffdc0cba326234a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152214529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f793c9eb2c06350ab8ab15c2b86df564e64481ba7088bf1f9aa67e62f7573144`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:42 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:50:57 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:50:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:50:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:50:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:50:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:50:57 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:50:57 GMT
ENV PHP_VERSION=8.5.9
# Tue, 25 Aug 2026 00:50:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Tue, 25 Aug 2026 00:50:57 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Tue, 25 Aug 2026 00:51:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:51:05 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:53:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:53:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:53:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:53:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:53:47 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bec12f06c8ae92cbd04239cb92b4fac014632dcb78df149572f3ffdd7e74149`  
		Last Modified: Tue, 25 Aug 2026 00:54:02 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd07af980c501ec507005d0751004321515308fd3087097be2bf8fec7ada9be5`  
		Last Modified: Tue, 25 Aug 2026 00:54:04 GMT  
		Size: 76.2 MB (76154417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c045305b104412df96d3dc6ebc3397862cef766ce350dc5bf52efaa9198c2148`  
		Last Modified: Tue, 25 Aug 2026 00:54:02 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16b872ab7a9936b408ca368e8e4deda22a2e0384589f7f030031668099a06f61`  
		Last Modified: Tue, 25 Aug 2026 00:54:03 GMT  
		Size: 14.5 MB (14527889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b73e6268aceedf2a09b1198d60042bb643ca516eae8caa6b1087595428fc2f`  
		Last Modified: Tue, 25 Aug 2026 00:54:03 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4341bb008da3be72029f2769b6ea818b65fb0a374e47146496e475412f127f65`  
		Last Modified: Tue, 25 Aug 2026 00:54:04 GMT  
		Size: 37.6 MB (37588744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1df5080b6f076667bba4ab2e9233c7b200847d9b26101a3edaf7da80dc0707`  
		Last Modified: Tue, 25 Aug 2026 00:54:04 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60b16b3e5f23376ffe1f0816e165b3c46c653ccac36c33b9e2cf7ffae0bb397f`  
		Last Modified: Tue, 25 Aug 2026 00:54:04 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:5bda82b3a42e0204a486e2110df2525e78186b85bd805bba645c5f77f272d20c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6261217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73e5c5b51cf91de256833db2f7d3f2115bd1fb4f1d75e161df7080983242efe8`

```dockerfile
```

-	Layers:
	-	`sha256:a09f77045615e2b529b52496f9580eddfc7ad9ba3804576545809e925e674b01`  
		Last Modified: Tue, 25 Aug 2026 00:54:02 GMT  
		Size: 6.2 MB (6221111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3045a050de5619a5e448d860a6c316cb23c6b6b76f5f7f3840b888882fbcd1`  
		Last Modified: Tue, 25 Aug 2026 00:54:02 GMT  
		Size: 40.1 KB (40106 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-bookworm` - linux; arm64 variant v8

```console
$ docker pull php@sha256:1ad765a6972a173c3b262a1fd7207edbf77c88ce121f2cb5cdec89c3416b8bca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183340469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7a66bd260831a3a640bbb899fa0b73cd09092268298f1b65badf428d2e0ab7`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:30:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:31:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:31:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:31:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:31:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:31:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:31:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:31:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:31:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:31:13 GMT
ENV PHP_VERSION=8.5.9
# Tue, 25 Aug 2026 00:31:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Tue, 25 Aug 2026 00:31:13 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Tue, 25 Aug 2026 00:31:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:31:20 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:34:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:34:16 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:34:16 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:34:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:34:16 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859529193be13c23ac61cbe24e8d153e5f101009c56b4f017cb40a0316b0c114`  
		Last Modified: Tue, 25 Aug 2026 00:34:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d6fab018f991406041c6fef5367a52bf07f226d5e23f06bc2dbc4d5a08c75c`  
		Last Modified: Tue, 25 Aug 2026 00:34:39 GMT  
		Size: 98.2 MB (98201353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef8e7439d831bcf654db341580b7b2a7581b6f0a8eaa60451bc7fb13bb50d39`  
		Last Modified: Tue, 25 Aug 2026 00:34:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d31dcdf970fe8b650359db285791a0d6ca163ba34e2a12ebb8d5570aec9e5af7`  
		Last Modified: Tue, 25 Aug 2026 00:34:36 GMT  
		Size: 14.5 MB (14529532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8e384048fcab4bdba9c39f7b52699f03fe86eba7921d3313a43e56ee2d2823`  
		Last Modified: Tue, 25 Aug 2026 00:34:36 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc771b112e17617b470b1bffa1b72dfd225fe6d8c5f510d03ba5c71e856d935c`  
		Last Modified: Tue, 25 Aug 2026 00:34:38 GMT  
		Size: 42.5 MB (42488662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68e3a2bfe5f378653919177a10bc14c0431ea72ce90671d14aeafeec1cad99d8`  
		Last Modified: Tue, 25 Aug 2026 00:34:38 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c7bd38bcc27ac0c7f190250c72b61e37d17de5aee221b6c4f347ce708122b8f`  
		Last Modified: Tue, 25 Aug 2026 00:34:38 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:5fe2cd89a5220a3bbe09d3e3d70d1bd642d9cd1228b6a93f1f25222446656670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6476372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da6e8fcf055fe328154cfb9618989e19833fe09fbffdeeb6c7c122a7590096f2`

```dockerfile
```

-	Layers:
	-	`sha256:1e26bace87afa7ffa1909567148b68395bcc8f624bc534f4462f99bef11f5cd4`  
		Last Modified: Tue, 25 Aug 2026 00:34:36 GMT  
		Size: 6.4 MB (6436232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94659dcfecad64d1eb0595ed9939b7aa25a4f6bf5bf980583066849dc8b6c2a8`  
		Last Modified: Tue, 25 Aug 2026 00:34:35 GMT  
		Size: 40.1 KB (40140 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-bookworm` - linux; 386

```console
$ docker pull php@sha256:30d14a379dd4f7410364c7c4a225455c6202ccc163e5427ae4b9024cd9742b2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189387552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fc3985e42cda8119e568fd7c4b9d63a4812e9eaff90b444914e5cdfd7ddc7f2`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:23:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:23:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:23:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:23:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:23:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:23:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:23:21 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:23:21 GMT
ENV PHP_VERSION=8.5.9
# Tue, 25 Aug 2026 00:23:21 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Tue, 25 Aug 2026 00:23:21 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Tue, 25 Aug 2026 00:26:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:26:59 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:29:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:29:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:29:59 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:29:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:29:59 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16b3cb156e2718e39e57ce60135322a2641d28502ae399c69ab5f9cb383520fe`  
		Last Modified: Tue, 25 Aug 2026 00:26:42 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569b021dadc0aa54d98381e1a42159fdf3438b92f56e8618f774a22611b14a3a`  
		Last Modified: Tue, 25 Aug 2026 00:26:45 GMT  
		Size: 101.5 MB (101536031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc45851ab2fee001e8b49b82661c3ae3044df53f196dc9932a72ef119420a9fb`  
		Last Modified: Tue, 25 Aug 2026 00:26:42 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7c0bc38f4a473799646a1a7a360332115916d9fe63afd6b9ff4f4e381de0a3`  
		Last Modified: Tue, 25 Aug 2026 00:30:12 GMT  
		Size: 14.5 MB (14528984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c521369a2c045e7132dda8267413fac91270acb9fa91033a3b19d5c5519b5bab`  
		Last Modified: Tue, 25 Aug 2026 00:30:12 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b34ebf3da0d7ece02d3dd8930a1876b5bc0a42c267f86427b8cfbbe62c807f3`  
		Last Modified: Tue, 25 Aug 2026 00:30:13 GMT  
		Size: 44.1 MB (44097850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49aa27b0f0c8619d7f5d5384e62d6642292390db8387cd93251ed147b5b95c39`  
		Last Modified: Tue, 25 Aug 2026 00:30:12 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf3fc7d0032735982cc993b5e2e6f090364ea7c06a42e28e069c22753d9a8d1`  
		Last Modified: Tue, 25 Aug 2026 00:30:13 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:30b5c7725a10cc658fbab5f14dfa061b925f04f6b9493b654ee89a41e39dc46d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6427559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6360313808d35b8f0265611ce0469a83b4fd7d532a2d1a27cbf02604bc3feadf`

```dockerfile
```

-	Layers:
	-	`sha256:a37ef2fa074398721fef0ecf860b77ac7f551675958f81faa67a8e121bcb97d8`  
		Last Modified: Tue, 25 Aug 2026 00:30:12 GMT  
		Size: 6.4 MB (6387633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d27c7ea15fa70d3da017aa8d60f4b579a0e62c79daada1cd5f397758f7db9fd7`  
		Last Modified: Tue, 25 Aug 2026 00:30:12 GMT  
		Size: 39.9 KB (39926 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-bookworm` - linux; ppc64le

```console
$ docker pull php@sha256:894303f3dd5149de49550de3b7b65e34cfdf64810a04a861c424e0ad8ae37849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.8 MB (193841601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be2079f7320e73f0e5253c9738f197ce1661830f3a2df0601aaadeb617658bfb`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

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
# Tue, 25 Aug 2026 01:52:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 01:52:40 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:52:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 01:52:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 01:52:40 GMT
CMD ["php" "-a"]
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
	-	`sha256:b4dfe8636889f465fcf18b5972c88079fbaa11c7c76aa2ee46d5fb2a5df42ddb`  
		Last Modified: Tue, 25 Aug 2026 01:53:09 GMT  
		Size: 43.9 MB (43899246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:150d3b7948b8e5318681035b50693adfd0dc5cb9c57ee9a006cc7edc0dbdecbe`  
		Last Modified: Tue, 25 Aug 2026 01:53:08 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5622eacb1a4e264a04f13c8a9f9fa9e0c9f504bef1103c7cf21d9d6260943c3`  
		Last Modified: Tue, 25 Aug 2026 01:53:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:882da8673dd4d1235c353271dd19f4196c4ee5b86abf97f55aa365f172767c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6423579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458bee3ea3f44f297611360904c374a48a6fc0264c92e4a3e95daa7d025f914c`

```dockerfile
```

-	Layers:
	-	`sha256:ed528c08096e61be9b789dc80a54eff516f329bd18708ceede850fcb8c615c12`  
		Last Modified: Tue, 25 Aug 2026 01:53:08 GMT  
		Size: 6.4 MB (6384511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ad4bf81ebc45ff7cfa14250052b753acecab4adf5ce7e9d379528a9d932a199`  
		Last Modified: Tue, 25 Aug 2026 01:53:08 GMT  
		Size: 39.1 KB (39068 bytes)  
		MIME: application/vnd.in-toto+json
