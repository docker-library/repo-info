## `php:8-trixie`

```console
$ docker pull php@sha256:5749d0780f2d0c993a63b4eac18501f74d2ca8735aeb97d7fd7c8efb7b9b7467
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
$ docker pull php@sha256:30c39c9ea0ef5fa65a8e1fd448224810667fa1a1189096c61aa202d756bf713b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.2 MB (189226733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4afc93dbf2a11864ca2db8869adb4d2b165ba41b8b5b957fa3b678787831b1d9`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 16:47:00 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:47:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 16:47:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:47:18 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:47:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:47:18 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:47:18 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:47:18 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:47:18 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:47:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:47:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:49:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:49:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:00 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:50:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:50:00 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceb31e37b219f8a4e19467fca9f8d01dfddd74d6b22366f648e0df7f9dc4bd70`  
		Last Modified: Mon, 06 Jul 2026 16:50:20 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999beef9183e74c399d63822ac8d12b0a111ee00dbf4abddc5c9e9f201116a0e`  
		Last Modified: Mon, 06 Jul 2026 16:50:24 GMT  
		Size: 117.8 MB (117839639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da597aa914f8ad62b0213b83d206f5ab541b10ac7a5fb05a5b2e63ed407a6ab4`  
		Last Modified: Mon, 06 Jul 2026 16:50:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4c1fa94a5d428111b4986e70873526e0e14c81520c349db5bf5f0eda6db77b`  
		Last Modified: Mon, 06 Jul 2026 16:50:21 GMT  
		Size: 14.6 MB (14557510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6fe2ed27c18794c45840200aa04b52b4fbf8eaa7da1dd52140b859261518873`  
		Last Modified: Mon, 06 Jul 2026 16:50:21 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0031b1ddabfbee0550ec0909755b5f679c43e00bd948192aa26f8f9703ef4065`  
		Last Modified: Mon, 06 Jul 2026 16:50:23 GMT  
		Size: 27.0 MB (27040519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170a5819d2247c36bdd6fd78b314644857d757644d043bd49e80ae07f2f14415`  
		Last Modified: Mon, 06 Jul 2026 16:50:23 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f8c41a483e910b1678df1cebec695048b056c61b6c8d7b9cc08b4f875d9b23`  
		Last Modified: Mon, 06 Jul 2026 16:50:23 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-trixie` - unknown; unknown

```console
$ docker pull php@sha256:da2fc75335a4f4b9939bf87ff2fdcae0f70cf0fb14a81085e84ff534afe45b11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6728848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd95e40c131b0e7684fa59ac41d8f41209d135398676e7e3e4488ab5a50ce27`

```dockerfile
```

-	Layers:
	-	`sha256:f0d7b80ca6d820be7160bd4a25b96661f35627b08b3035ea37410dd6f944a9cd`  
		Last Modified: Mon, 06 Jul 2026 16:50:21 GMT  
		Size: 6.7 MB (6685793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4236ad6729e3cbb4d7bf196b1c70c95530d92299e95ce9adf2237c7655866f6`  
		Last Modified: Mon, 06 Jul 2026 16:50:20 GMT  
		Size: 43.1 KB (43055 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-trixie` - linux; arm variant v5

```console
$ docker pull php@sha256:255c32723d65d1a94a7643d718ed6a840c7615774212c28fe50f3d134d1fa8c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160569861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c99eb9cdc4473bad765c7195a13c9dcd02a78c12633d4e83f6c51ccae32ff80f`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 16:47:04 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:47:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:47:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 16:47:28 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:47:28 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:47:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:28 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:47:28 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:47:28 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:47:28 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:47:28 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:47:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:47:40 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:50:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:50:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:50:57 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b33e08583080635577c85854a2d6b5822ec60a901017bf9d03aa80bc4c922c3`  
		Last Modified: Mon, 06 Jul 2026 16:50:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acf337cbe280ce1ea72a68b012574b9ecd372cc87d85e5588a41421289a504b`  
		Last Modified: Mon, 06 Jul 2026 16:51:18 GMT  
		Size: 94.9 MB (94887162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c059154dbde00364aa94a1a5f3c65c7e7d51694c4eff336f9f5305a8d176805`  
		Last Modified: Mon, 06 Jul 2026 16:51:15 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb2ce91fc94b22f85c829aaca5a2c544febbce261cd2f76d57c17295bfbd598`  
		Last Modified: Mon, 06 Jul 2026 16:51:16 GMT  
		Size: 14.6 MB (14555430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617772249022bd5c9ebeec73bc99771c8c3ae8af24a457f5887ad5896b6bfc92`  
		Last Modified: Mon, 06 Jul 2026 16:51:17 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c4d38b5de5b759f9d7c8fbd528a4b3a94a0bdef67523c94bddf884b2f996ac`  
		Last Modified: Mon, 06 Jul 2026 16:51:18 GMT  
		Size: 23.2 MB (23164404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5acf24347445966ac3d265279dbfb4d3402e96d037e297d9ea81539756dce249`  
		Last Modified: Mon, 06 Jul 2026 16:51:18 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deac30aca4236d40776c7bc84cf5b606cf450f881a4841fdea1932c9958136c1`  
		Last Modified: Mon, 06 Jul 2026 16:51:18 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-trixie` - unknown; unknown

```console
$ docker pull php@sha256:a6addb87ca5da75a9469a39c98911872b010671bd4128bfbe49119a7f154145a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6528991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d55b170660e9dae4bcf50565bc89b909e7d57f2237f94edc709586e2b1d4b8`

```dockerfile
```

-	Layers:
	-	`sha256:e3fd6bc0c9353b2c595d78cb3687dd65d60c73d824bf1a32ff237522c62542c7`  
		Last Modified: Mon, 06 Jul 2026 16:51:16 GMT  
		Size: 6.5 MB (6485703 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7c5bb576d169ac2b64c97abe6eb76dc4d0181f402bdbd6499d455b5222daa39`  
		Last Modified: Mon, 06 Jul 2026 16:51:15 GMT  
		Size: 43.3 KB (43288 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-trixie` - linux; arm variant v7

```console
$ docker pull php@sha256:2a3bfe0d547bf92530637749d92c42ca98a1f8a001df1cbc8cff555f4acfd2b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148888536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abe3fa1d49f9926a6aa6a2777bccf86c3bcbe8fd388f23cc02c1f2f229260209`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 16:47:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:47:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:47:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 16:47:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:47:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:47:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:47:21 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:47:21 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:47:21 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:47:21 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:47:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:47:31 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:50:29 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:50:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:50:30 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b33e08583080635577c85854a2d6b5822ec60a901017bf9d03aa80bc4c922c3`  
		Last Modified: Mon, 06 Jul 2026 16:50:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d81a627892e55a764b7eda79cb7337cdb0e6dcc9d03767632a318ffce1af6f`  
		Last Modified: Mon, 06 Jul 2026 16:50:48 GMT  
		Size: 86.3 MB (86255971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5877113851b01a9ea1e155e86bb50893725062996ef23cb9051f4e4ff50fd0d8`  
		Last Modified: Mon, 06 Jul 2026 16:50:46 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:165fb4d89bc1179604cc74786a4cfa942b78290c2238f1a967f0954a667aafb6`  
		Last Modified: Mon, 06 Jul 2026 16:50:47 GMT  
		Size: 14.6 MB (14555487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbd16291b8765f0c993fe094524fc3ca6971ba12dacf00d12b754c0b73e3b5d3`  
		Last Modified: Mon, 06 Jul 2026 16:50:48 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5262edc86b59d12964b3c6e59f3899d7891dae0f3d8ec401876f4b0c7908137`  
		Last Modified: Mon, 06 Jul 2026 16:50:48 GMT  
		Size: 21.9 MB (21862382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42cfe641d178939f4bfddfcf1d099d76349daf9e6296664873d35f301318524e`  
		Last Modified: Mon, 06 Jul 2026 16:50:48 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa2b94c9ac76bdc8d7f35480486b153541445b21216cd29457fe9aef198fd167`  
		Last Modified: Mon, 06 Jul 2026 16:50:49 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-trixie` - unknown; unknown

```console
$ docker pull php@sha256:4f090c4c2929397952a4aeac1df056d76ec467b33c924c3e5f720fe60164000d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6532958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a609684d64c145293297f44ca5610e7026b5a8b2367147a55ed778e2184b62a`

```dockerfile
```

-	Layers:
	-	`sha256:97631e42af066952b0baafbda62b1d74d3b22fedd9313e7bea531f106e2a7d51`  
		Last Modified: Mon, 06 Jul 2026 16:50:46 GMT  
		Size: 6.5 MB (6489669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2123da0aeaa8c326c43b409c13a97d95ca1e4768ed8cfbb68b2453433fb0c1b1`  
		Last Modified: Mon, 06 Jul 2026 16:50:46 GMT  
		Size: 43.3 KB (43289 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-trixie` - linux; arm64 variant v8

```console
$ docker pull php@sha256:52014925728ccc60d8349e4d121b619252ae5abbf8df0943a38f6641d45a735f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181147705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69f3053db0a7357c6ccfb6853641cb183f14900895a87bf11dfd9fa55f685df8`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 16:47:00 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:47:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 16:47:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:47:18 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:47:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:47:18 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:47:18 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:47:18 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:47:18 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:47:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:47:27 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:50:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:39 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:50:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:50:39 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceb31e37b219f8a4e19467fca9f8d01dfddd74d6b22366f648e0df7f9dc4bd70`  
		Last Modified: Mon, 06 Jul 2026 16:50:20 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e3b8eb5e66dbd9a43adb76368624ab54adb2bbd581f97729484ee4b91bffc5`  
		Last Modified: Mon, 06 Jul 2026 16:51:03 GMT  
		Size: 110.2 MB (110169443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da597aa914f8ad62b0213b83d206f5ab541b10ac7a5fb05a5b2e63ed407a6ab4`  
		Last Modified: Mon, 06 Jul 2026 16:50:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd184dabdef3ac57c512ba9d13aa81e0340b5f7d52459c8352fb43fb8e04cea`  
		Last Modified: Mon, 06 Jul 2026 16:51:00 GMT  
		Size: 14.6 MB (14557199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d15a77cce1b305062cb75afded25947abacc151ce4e4cb359e4658dbd33dbf28`  
		Last Modified: Mon, 06 Jul 2026 16:51:01 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4fc4fc072df24a8e282b8430cee84c78cd464da855d1f542f9372e53aad69bd`  
		Last Modified: Mon, 06 Jul 2026 16:51:02 GMT  
		Size: 26.3 MB (26268867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f447146fe3e2cfd8937b606127bf443890d922591a88988c6857d5647263dc2b`  
		Last Modified: Mon, 06 Jul 2026 16:51:02 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49168f2c618775a7f6ecbd62da9ba9619b0bd6d930ac6455dfdb7468b62a11af`  
		Last Modified: Mon, 06 Jul 2026 16:51:02 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-trixie` - unknown; unknown

```console
$ docker pull php@sha256:458ad4f4ebff42213dbb02dc4f406b64c34ef703be5f90d0d3167b59ba189f58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6826584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c92fc8fc2a1e1bd5b1565b3e2512a57fda8db6f0f061c5535dbbc1dca4b592`

```dockerfile
```

-	Layers:
	-	`sha256:3fc8339366863126099dd171bc5bced5b28d29dbe6eb83566238df360524d80e`  
		Last Modified: Mon, 06 Jul 2026 16:51:00 GMT  
		Size: 6.8 MB (6783208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb82b11f01fdfc581554bed678bcfad5b4791f7a8427ac5ddabf2465dc118aa9`  
		Last Modified: Mon, 06 Jul 2026 16:50:59 GMT  
		Size: 43.4 KB (43376 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-trixie` - linux; 386

```console
$ docker pull php@sha256:b7a109c49bebff5cdc6f4e951db85daefc09c3912b0ab736c6e20123cdbd2eec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.6 MB (189636551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:233d5a711da803ee9fc1f780f61c4cd7b17331313c4720b181fa6093eb42f67a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 16:47:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:47:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:47:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 16:47:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:47:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:47:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:47:23 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:47:23 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:47:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:47:23 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:47:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:47:32 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:50:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:46 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:50:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:50:46 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b33e08583080635577c85854a2d6b5822ec60a901017bf9d03aa80bc4c922c3`  
		Last Modified: Mon, 06 Jul 2026 16:50:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046e511422c3f81cc987f296740186db0e8a5d75692486b656e67f007ffbee0f`  
		Last Modified: Mon, 06 Jul 2026 16:51:11 GMT  
		Size: 116.1 MB (116142726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd2a79257c2a496f650b6435903bc4893652742156654c1a1812215cc797b45`  
		Last Modified: Mon, 06 Jul 2026 16:51:07 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3cadc08d58f511ccb39f425d5a09ee2e817dc529e21fdab3e7a8a28db90cc48`  
		Last Modified: Mon, 06 Jul 2026 16:51:08 GMT  
		Size: 14.6 MB (14556703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6afd5279a6e893f67a99b8c5dd154201617f76d9dd3b7aed3eed374e7e3eb3f`  
		Last Modified: Mon, 06 Jul 2026 16:51:09 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21d6eea2de0553ea92add87baf58d94bca2e0e0baa46c956a23af0b4eb83ba7`  
		Last Modified: Mon, 06 Jul 2026 16:51:10 GMT  
		Size: 27.6 MB (27632267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fef574c3f63f5614af6232327e28a11a8e2b8fa99251cf2e52c5a20df924fa5`  
		Last Modified: Mon, 06 Jul 2026 16:51:10 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:177681698712fc69f13f424976c2396496e35a6134609cb5f59ea2938d48e808`  
		Last Modified: Mon, 06 Jul 2026 16:51:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-trixie` - unknown; unknown

```console
$ docker pull php@sha256:032d5bf183ce3e9cb0b823c891f68ef21b11329790008410e9eaad1c4db49c13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6702584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc3976c06ab1092e0a8769fe27cbe945c9ce13ee07ff0ad71545f21b88ae8cff`

```dockerfile
```

-	Layers:
	-	`sha256:0c55e78c9f32cc9bd540027c81f8b34ddecfb5752a4fd8126eb4950aadf24530`  
		Last Modified: Mon, 06 Jul 2026 16:51:08 GMT  
		Size: 6.7 MB (6659631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f0ee7634e22e84944d6d9341c10f90aba914ee3afa50bbed4e5cc9c1d6e0fa2`  
		Last Modified: Mon, 06 Jul 2026 16:51:07 GMT  
		Size: 43.0 KB (42953 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-trixie` - linux; ppc64le

```console
$ docker pull php@sha256:99cc3d015cd9e3e458d0e26b4f194358a736aef0340563858fde6aa856d2a0d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.9 MB (184924258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0b88cb922d88d72ed9f1a4a8b67ba847756e676ffc3484787c444fb4d95eddc`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:31:26 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:32:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:32:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:32:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:32:18 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:32:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:32:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:32:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:32:18 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 02 Jul 2026 20:32:18 GMT
ENV PHP_VERSION=8.5.8
# Thu, 02 Jul 2026 20:32:18 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 02 Jul 2026 20:32:18 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:46:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:46:11 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:51:08 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:51:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:51:08 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79146aaf75bacd4b3c55a752df5f8234d35627fbc30576e65b3be30bfbd2c6a9`  
		Last Modified: Thu, 02 Jul 2026 20:38:08 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acc11b28693a88f7c6f1444f2ab7e051094596d2477e79ff3ea4cf5b2725c24`  
		Last Modified: Thu, 02 Jul 2026 20:38:13 GMT  
		Size: 109.6 MB (109599046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bbb900db0dd376834f4e1a0e8cb61354c8940dee3423feeb618a379c7876fb`  
		Last Modified: Thu, 02 Jul 2026 20:38:08 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f21ab849ee1a09af627f433dc35e9785377b5ef1c8360e5f3493ee1e15a0a0f`  
		Last Modified: Mon, 06 Jul 2026 16:51:36 GMT  
		Size: 14.6 MB (14571852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a222d707e91c1dea8555d3f3da7257c3c253ad71a5a639320f124c4640153744`  
		Last Modified: Mon, 06 Jul 2026 16:51:35 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f138f8ee0fb2e40ae51d6f0178a8812c6818cde5e0c35b63147c87b6ff082c3`  
		Last Modified: Mon, 06 Jul 2026 16:51:36 GMT  
		Size: 27.1 MB (27143325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5bbcb3baf545dc3349b95a17aced60253ba4bc1c270f8675a0fe18ce1d59eae`  
		Last Modified: Mon, 06 Jul 2026 16:51:35 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831ad750f5d40fc296f6f44204680f99d3cd80a22dd2d47356c60ecf0699ea5a`  
		Last Modified: Mon, 06 Jul 2026 16:51:37 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-trixie` - unknown; unknown

```console
$ docker pull php@sha256:ce9fd21dbeac0f898e084798aa4b60885344037bb585d1b1d36add68dccc69eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6728696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ee31d618f53d335b92e7386e0efec59246a7da39acb92651632dd8f3c734da`

```dockerfile
```

-	Layers:
	-	`sha256:34a147a697bdf5ece44a33958286f3fc68ace1ef8f7d715d8efa67637ceac8a7`  
		Last Modified: Mon, 06 Jul 2026 16:51:36 GMT  
		Size: 6.7 MB (6685515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd9199734694e6295dfbb9eea25abea41b83686216aab6eee0314f312f29af36`  
		Last Modified: Mon, 06 Jul 2026 16:51:35 GMT  
		Size: 43.2 KB (43181 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-trixie` - linux; riscv64

```console
$ docker pull php@sha256:ff2f2a9430086fe463deb5de0f56cd90bd5c4c1478e1dd186140f1b92d9f1ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214587475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3791bc26dca01c9e90be558cb42baf844c83c2b93b97910779af96e5ed14b60`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Thu, 25 Jun 2026 03:10:43 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 25 Jun 2026 03:12:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 25 Jun 2026 03:12:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 25 Jun 2026 03:12:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 25 Jun 2026 03:12:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 25 Jun 2026 03:12:45 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_VERSION=8.5.8
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:47:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:47:31 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:44:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 17:44:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:44:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 17:44:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 17:44:42 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5857a11081278c6794a11415cb81a403d5e56a1e98d5a05a474e4751b6bbbbab`  
		Last Modified: Thu, 25 Jun 2026 04:15:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f64aa12de76796ba620c1f61dfbf00595d86b22e83c70e23ab80e22f6f224c`  
		Last Modified: Thu, 25 Jun 2026 04:16:17 GMT  
		Size: 146.6 MB (146585183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d75d48c7e93a7ac2ea8e95b78d618385a5865f4b0674a6016d1f7a6e51225d7c`  
		Last Modified: Thu, 25 Jun 2026 04:15:50 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:260fbc613655742aab50be72492d6463607190e63fc92681d8f635b8bd5bcbe4`  
		Last Modified: Mon, 06 Jul 2026 17:48:04 GMT  
		Size: 14.6 MB (14571846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:054b6dfe6b0c6e4007d43e1d19b73c9c6e1ee39aec4093e4198b443779b1165b`  
		Last Modified: Mon, 06 Jul 2026 17:47:59 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19bf2df4641c3ff36a5dc6f9fa0c1852e02a76b40d03e870eafa975782a34a7c`  
		Last Modified: Mon, 06 Jul 2026 17:48:06 GMT  
		Size: 25.1 MB (25144421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:932616faae6fffa694e2133980de29b4d70df5982211db7c0344a0ccd8e2e9ab`  
		Last Modified: Mon, 06 Jul 2026 17:47:59 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86ae2575fd58068ce42ef0d834774cc53ff5adf461e5f8b90a583758489cce10`  
		Last Modified: Mon, 06 Jul 2026 17:48:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-trixie` - unknown; unknown

```console
$ docker pull php@sha256:36ca49f1fd5760ca0dfd277e8f61b23fa6b05e0c3dc8136c7f32e38863d64cab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6800785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9079904112aa78ba8cb8409f22b88a782515347f71dbf348d76c39927ec4380f`

```dockerfile
```

-	Layers:
	-	`sha256:5e54ce3aec9abd730c6cb14433cf0c18d56a54953536f363f1c581bb56b479cd`  
		Last Modified: Mon, 06 Jul 2026 17:48:01 GMT  
		Size: 6.8 MB (6757604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab4fe4be32ee33eb6ea8ee4e7518a3add30829fbcf7e261f939bacab49c8d4e3`  
		Last Modified: Mon, 06 Jul 2026 17:47:59 GMT  
		Size: 43.2 KB (43181 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-trixie` - linux; s390x

```console
$ docker pull php@sha256:207f7ea4d4a1165c332797f42d5e658f2b16c84212873bb63321b9340c0515fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.6 MB (162619496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9a0e3176f56452987309430354482238121500c0fc5fb8eba6e790cc443de9`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:31:19 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:31:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:31:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:31:39 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHP_VERSION=8.5.8
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:48:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:48:23 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:03:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 17:03:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:03:33 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 17:03:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 17:03:33 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0205f778ae6700e83b15e526f66e5a4a2d0424bf7a0e7f99367b8a5282cb43`  
		Last Modified: Thu, 02 Jul 2026 20:36:14 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fdd0634cd3633966a43724e70d92879567fa735ea80fdd86465abbdad4bbde`  
		Last Modified: Thu, 02 Jul 2026 20:36:16 GMT  
		Size: 92.6 MB (92572295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:476e04e78fadcda84f9017c2544db8b8ba5f83060a4273d0d9b3f88a4e8311f0`  
		Last Modified: Thu, 02 Jul 2026 20:36:14 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2914b65cdb6c4e6ad8950f7d6f93d24d9d612f1566102b97897a0f2a5d03c11d`  
		Last Modified: Mon, 06 Jul 2026 17:05:27 GMT  
		Size: 14.6 MB (14571572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c798c77dfc622ed0e5cd5a4f84dec8870d4f216a5924cb3e0a51055be02234e`  
		Last Modified: Mon, 06 Jul 2026 17:05:22 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f199b6f8289ddc212f255de6346ac41ad6619ac0ed4f13cb009d3ba7624ed16`  
		Last Modified: Mon, 06 Jul 2026 17:05:27 GMT  
		Size: 25.6 MB (25620599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75a7c7f39ab4a9c03abeb60f3850acc71d628a80d173b41acf9ddf2fb3a42863`  
		Last Modified: Mon, 06 Jul 2026 17:05:23 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56fd2cd40a99ad129706dbb48d245ba99ae27d48e48a9f02729bef508807e12`  
		Last Modified: Mon, 06 Jul 2026 17:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-trixie` - unknown; unknown

```console
$ docker pull php@sha256:536fa3f21de3803ec9d73019549cb009cda9d0e658754b4e77b3442681402b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6546114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775d3f6d909d20f22f30fea7810e207940289fe8700518d827a7a2025aebe1a5`

```dockerfile
```

-	Layers:
	-	`sha256:436926b5b59f76f2669385bcc441c6449fe0afe37bdcdd7fc2b17cf3eed2c828`  
		Last Modified: Mon, 06 Jul 2026 17:05:26 GMT  
		Size: 6.5 MB (6503066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9aedc02c134a1c2fc6e73a54ddd1f9db550391e86daf2e71ca4d559d12da902b`  
		Last Modified: Mon, 06 Jul 2026 17:05:22 GMT  
		Size: 43.0 KB (43048 bytes)  
		MIME: application/vnd.in-toto+json
