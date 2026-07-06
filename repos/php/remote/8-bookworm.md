## `php:8-bookworm`

```console
$ docker pull php@sha256:1ddfec0d9ca4776cfff44826333640e13932fb47fc42a15b8fa8615d8e83bd3b
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
	-	linux; mips64le
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `php:8-bookworm` - linux; amd64

```console
$ docker pull php@sha256:182ce74100e373ebb9086495383af9c888a487884f1e191631db23dfcca645a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190101435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d4f08d3e3399c5ced008fa244a5096b6786a2524859601f586003618b6ed983`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 16:47:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:47:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:47:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 16:47:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:47:54 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:47:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:47:54 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:47:54 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:47:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:47:54 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:48:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:48:00 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:50:48 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:48 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:50:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:50:48 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0bb8c49139c92e2b2ac17b84fd6856757862dec29ce43703d3e5c7b7deeab00`  
		Last Modified: Mon, 06 Jul 2026 16:51:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54d5ba10729b086c0786e5495d51275f6446199b7e60fa9360a1eee1260054b`  
		Last Modified: Mon, 06 Jul 2026 16:51:16 GMT  
		Size: 104.3 MB (104345809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecfdc380cdba710558e6783408616acbc455479e9bfb9e9239887d4bc25662a7`  
		Last Modified: Mon, 06 Jul 2026 16:51:08 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20e831aa6e036e598849957c75c7265d894b09e08154eac374535fd5d1db475`  
		Last Modified: Mon, 06 Jul 2026 16:51:10 GMT  
		Size: 14.5 MB (14520609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc65b04ba3e5958acfa8effb0b1b918a2863696a9e7529eca9688daceaeab85`  
		Last Modified: Mon, 06 Jul 2026 16:51:10 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dc2aaae7ee74787c008da32991e63d883fa1ad689734473905ad910d0f356c0`  
		Last Modified: Mon, 06 Jul 2026 16:51:15 GMT  
		Size: 43.0 MB (42993737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddca898ef8e1d1b9beab4cc7dbb9c74da64c95142937af3914bda4d2ffc4f75`  
		Last Modified: Mon, 06 Jul 2026 16:51:12 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87d832f0bd72a24c3482a71239e43e0c4d084a7ff57a039f3ad9b2e709a77f8`  
		Last Modified: Mon, 06 Jul 2026 16:51:12 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:2116f58b73096a721736876b34a2537beaecc9db2f23e069f3dbf232dea01e6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6444658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ac77d04f5e91536d82f349cc9b7a2058a824cfd7548139a1b1326f59aba48d7`

```dockerfile
```

-	Layers:
	-	`sha256:cb8cffc9f836dc20b3cc1f5b2084338d4aaabf168053fad42909dbb9103feab1`  
		Last Modified: Mon, 06 Jul 2026 16:51:09 GMT  
		Size: 6.4 MB (6403814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b30cf51e543b9ee1a7feb4d480f53a164a73682431d8503d348e737fc99aa80f`  
		Last Modified: Mon, 06 Jul 2026 16:51:08 GMT  
		Size: 40.8 KB (40844 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-bookworm` - linux; arm variant v5

```console
$ docker pull php@sha256:add54a3bf1fa08c32caac3b03ae88fdd38510e3a251a0ba95bdb4f2d76db1483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161114688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e2888defef6426ba452b81dc850729e8d2b34b57cf3275d2f73f8287d0786c8`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 16:51:10 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:51:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:51:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:51:30 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:51:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:51:42 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:54:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:54:33 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:54:33 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:54:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:54:33 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:56a07f407b343196efb8a614d5b61dad4cbe8fd8c8e97a11342cd7a61eadc02c`  
		Last Modified: Wed, 24 Jun 2026 00:27:42 GMT  
		Size: 25.8 MB (25773229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112473d2598781db9771bf03e0ade9c9827a9b83f63d7ec5863f44fdfc9b1dc8`  
		Last Modified: Mon, 06 Jul 2026 16:54:50 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219fae2dd35d1871159ecd57f849b6646877bd416759c4cee4e53eca8d61a505`  
		Last Modified: Mon, 06 Jul 2026 16:54:53 GMT  
		Size: 82.0 MB (81984656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4885fb3ed40f04728b64e4a87ae7cfd4c31c90fcb68b0700b26e3ee5e49b28`  
		Last Modified: Mon, 06 Jul 2026 16:54:29 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26df739a01017cbd48de02b8b6be75af0b75a72eb8c9271aa58fb9b045247fad`  
		Last Modified: Mon, 06 Jul 2026 16:54:51 GMT  
		Size: 14.5 MB (14518753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e14e238dc4186d347f413da4c9afb0758253098fa5223c3ec1edd9ef1929b39`  
		Last Modified: Mon, 06 Jul 2026 16:54:51 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d2eda2925fbac25cca7ca88d7978a8918158b8f831e67a5020e42b45f4a4396`  
		Last Modified: Mon, 06 Jul 2026 16:54:53 GMT  
		Size: 38.8 MB (38834402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5faa3aa7bb9b7f94dada6e586adf15363670e0100071d76cc1a718241a579f`  
		Last Modified: Mon, 06 Jul 2026 16:54:53 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208923afe131da16a80c2803ef38d87d0e25c886c1f48ca54773c9907213bd59`  
		Last Modified: Mon, 06 Jul 2026 16:54:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:1df32c7cca44da01a6399e165231b92256a2358c71978715b0f212c5ec48e289
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6254186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5807e042ed5f699c9d2c0fe606256d0d843351ddbcc485eda2f8ffa7f2105df1`

```dockerfile
```

-	Layers:
	-	`sha256:112219882b969288adf36155d9e676b51f215d3b326ca2623da810c03ca5eeca`  
		Last Modified: Mon, 06 Jul 2026 16:54:51 GMT  
		Size: 6.2 MB (6213172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf97b7256f4aca206e155aa276209d36e4f9ee344e85b4cfe527a6779677cb97`  
		Last Modified: Mon, 06 Jul 2026 16:54:50 GMT  
		Size: 41.0 KB (41014 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-bookworm` - linux; arm variant v7

```console
$ docker pull php@sha256:e6f8bb65ac4f460cf12296deb9041bea5476cf0fec027548ad9ad614433e9eec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151818765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c16f04af316166ca92674f58e3d8c68e54386a434f2976e1c7ed87c30f059189`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 16:51:16 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:51:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:51:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:51:30 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:51:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:51:38 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:54:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:54:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:54:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:54:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:54:14 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c0fe512d54e15a02067485c0b3567a26791c7530763ada9c8b6071fd7339f4a`  
		Last Modified: Mon, 06 Jul 2026 16:54:29 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9ee7d4b9150d1a46c9fe57d951a3ff2d673f3c7fabf5625e72e68b90ea2561`  
		Last Modified: Mon, 06 Jul 2026 16:54:32 GMT  
		Size: 76.2 MB (76154351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4885fb3ed40f04728b64e4a87ae7cfd4c31c90fcb68b0700b26e3ee5e49b28`  
		Last Modified: Mon, 06 Jul 2026 16:54:29 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b042e130fe19c14692329064d6bda48b613a742b00656f98726959a1ea024b6`  
		Last Modified: Mon, 06 Jul 2026 16:54:30 GMT  
		Size: 14.5 MB (14518720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53faaeb3f92dbf49a58111b8f7702fab708a25f57fda2b4532a2df273d133ef0`  
		Last Modified: Mon, 06 Jul 2026 16:54:31 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4f36966206415c671c66b1ebab34f62d6f5fb2b2ba817e03989aaf294239c9e`  
		Last Modified: Mon, 06 Jul 2026 16:54:32 GMT  
		Size: 37.2 MB (37197523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0112ca3fd80e866b4c6fc08e8985b430b87717204a321a2135b7d671a614fee4`  
		Last Modified: Mon, 06 Jul 2026 16:54:32 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d6b3798afc5ef40ec90cdb24c49556455bf31ccf4284f8a9027533fcdb37346`  
		Last Modified: Mon, 06 Jul 2026 16:54:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:21565939bb90529dc932461517fbc78f1264e4f38abf03c29dc56b2f0bb7cc78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6258129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3f7b54888f5092a234d9273b8b00d6e0474c7bda4de2f062228c523ac932ac`

```dockerfile
```

-	Layers:
	-	`sha256:98171f5e90d31bd0d338496a5f34f890ebec419cb0acc76a568fc247baa362c8`  
		Last Modified: Mon, 06 Jul 2026 16:54:30 GMT  
		Size: 6.2 MB (6217116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4652845642cdbfade5770a458314fd3bc82e1db55e23911276aab79470a7c7f4`  
		Last Modified: Mon, 06 Jul 2026 16:54:29 GMT  
		Size: 41.0 KB (41013 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-bookworm` - linux; arm64 variant v8

```console
$ docker pull php@sha256:f98dfa3ee016a7bf14dbfcea16e20aec06c99f94ee0ff4aab789772fe29318c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (182958197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0fa1dd3d15f954badb8e261dd73781907e5747266ecec33bde21c590ab2914b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 16:47:29 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:47:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:47:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 16:47:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:47:42 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:47:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:47:42 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:47:42 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:47:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:47:42 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:47:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:47:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:50:40 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:50:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:50:40 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6470ccb384da9e5f6ac0ef99839848f6ad0d39555a66568e0e05284c59b93e84`  
		Last Modified: Mon, 06 Jul 2026 16:50:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9fbc75b115cd536c78bd6e5d7e0d045037111aecf118790593a2f01d7fae54`  
		Last Modified: Mon, 06 Jul 2026 16:51:03 GMT  
		Size: 98.2 MB (98177741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bb2c412dc2aa1e82523cd0c563d4ab61f61a581b6878ed371d67818973ab11b`  
		Last Modified: Mon, 06 Jul 2026 16:50:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee68e8ae0e0ac78952383d9ee4efc3a28dec10bbdde93ed608953e33436f7a9`  
		Last Modified: Mon, 06 Jul 2026 16:51:00 GMT  
		Size: 14.5 MB (14520437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fdaf487a582e4a4ddbd09317a2646b1ac9590b92b7190adda8dfb23b141e4d1`  
		Last Modified: Mon, 06 Jul 2026 16:51:01 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24f73d3ef6cd70ed09fc8078bfe48be0183d854bfd9bdda4638626f46bcf03b1`  
		Last Modified: Mon, 06 Jul 2026 16:51:03 GMT  
		Size: 42.1 MB (42133960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03235e766a5e0e09a6a86e50d9726dd9fd320a49ed2ec6ba210c0dd7fc6e59b3`  
		Last Modified: Mon, 06 Jul 2026 16:51:02 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807c18443f5c09898709bc338c028050f384b69ef6cae41dce2dc9d16d8595b0`  
		Last Modified: Mon, 06 Jul 2026 16:51:02 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:961ff7086724e931e9ec5d536bece981ebc0c1e3e63801b0a4ffd938ef10c333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6473316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b2d388551cf6350305178195ed510eceb39af59e0e5007ab23982966b823a03`

```dockerfile
```

-	Layers:
	-	`sha256:48c7e2c6a911b7354ae7489c97358a4d19dc7d14fde5f6c8749dc4299afe8372`  
		Last Modified: Mon, 06 Jul 2026 16:51:00 GMT  
		Size: 6.4 MB (6432253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d7c8d7342290e6c6c091f9a36c0a36797aa2d450155aa39fd3cfee838240ea1`  
		Last Modified: Mon, 06 Jul 2026 16:51:00 GMT  
		Size: 41.1 KB (41063 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-bookworm` - linux; 386

```console
$ docker pull php@sha256:46dc510f0bbf502db5e47ea2ddd1eaef86ade3f25991cef294961fddf8d19000
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189124694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e2b18c22ac558d9e8d4dedfa59bb6cd3ec8b16b6ebf7990c6d1e77af1359e5`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 16:47:36 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:47:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:47:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 16:47:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:47:52 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:47:52 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:52 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:52 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:47:52 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:47:52 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:47:52 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:47:52 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:47:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:47:59 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:51:06 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:06 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:51:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:51:06 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:df519b11ac99d8e2d452cbd55f824e658d0b86f649745abaaf8cbe33e2736a30`  
		Last Modified: Wed, 24 Jun 2026 00:28:03 GMT  
		Size: 29.2 MB (29225809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5753cbbeab833c109bcea33df37a26e49cb85becd395063f15b5d2e6c105a8c`  
		Last Modified: Mon, 06 Jul 2026 16:51:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65bbf5c4b8b0a5bc882afc27a99286ad66d05c7de0682efa0894e025b8a66d5`  
		Last Modified: Mon, 06 Jul 2026 16:51:30 GMT  
		Size: 101.5 MB (101536096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cafee9ab105435e2226a463bf2a79bee357b26c00c74074de0ec86ac596579e0`  
		Last Modified: Mon, 06 Jul 2026 16:51:26 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfe88df88d72faa4263bfa9acaf1b236c8eec75046808a12430fc677f9edeee`  
		Last Modified: Mon, 06 Jul 2026 16:51:27 GMT  
		Size: 14.5 MB (14519777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f689a1b8459d2ad0f930b9994d5b833d682f2896389761181d70a859dedf1c5`  
		Last Modified: Mon, 06 Jul 2026 16:51:27 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f5a56ef3403100864f411de80d22a6f88b6c5298b655a35a9d2dcd86a153f2`  
		Last Modified: Mon, 06 Jul 2026 16:51:29 GMT  
		Size: 43.8 MB (43839371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99daf93eb16ef18d67acc22e0a8bd595f4df2ea3fe75fb8d7ebbe70b87dc1d0`  
		Last Modified: Mon, 06 Jul 2026 16:51:29 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:647cf2db445cb2f4ba0d32d63cb42c88c9287f6ccc0a57959a0a96cf8bad2088`  
		Last Modified: Mon, 06 Jul 2026 16:51:29 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:0f2e3bd5c13d459de4d35796fa3a275126a8201180db2ac336f530ae4fcc78b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6424368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a42cd475406dd484864fc9b9f6968d901946ad2be056ab4e1dcaee91c520d422`

```dockerfile
```

-	Layers:
	-	`sha256:fa9aaaa9942a28d06958e5d2cfaaf879b60c3880479838b241cb4956e9e0d644`  
		Last Modified: Mon, 06 Jul 2026 16:51:26 GMT  
		Size: 6.4 MB (6383586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:909b8a27451ba5f2e88ca767f6d3ebb65feb63bf4bb0e2381b757b7deb9956bd`  
		Last Modified: Mon, 06 Jul 2026 16:51:26 GMT  
		Size: 40.8 KB (40782 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-bookworm` - linux; mips64le

```console
$ docker pull php@sha256:4bf1702239704ef573f9fd85eecc7ca79f89239639edfecb3d31d37420d06267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.5 MB (163507247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0727ca76db816403c10dfedf3d1b70853d24df723367cf60e27e9eb44021dd2c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1782172800'
# Thu, 25 Jun 2026 02:52:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 25 Jun 2026 02:53:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 25 Jun 2026 02:53:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 25 Jun 2026 02:53:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 25 Jun 2026 02:53:52 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 25 Jun 2026 02:53:52 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 25 Jun 2026 02:53:52 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 25 Jun 2026 02:53:52 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 25 Jun 2026 02:53:52 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 25 Jun 2026 02:53:52 GMT
ENV PHP_VERSION=8.5.8
# Thu, 25 Jun 2026 02:53:52 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 25 Jun 2026 02:53:52 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:47:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:47:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:05:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 17:05:26 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:05:28 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 17:05:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 17:05:28 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:e3e59e5d9fba86ba9cccde17de0c09e1a6250f5fd1ae881c8b925031848b7a5d`  
		Last Modified: Wed, 24 Jun 2026 00:27:28 GMT  
		Size: 28.5 MB (28528885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab361fdad40d83a684ce83a8ff865a1ef1cc52f529b5298949e48593b7f28dbc`  
		Last Modified: Thu, 25 Jun 2026 03:14:43 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e671a811aaf7f1c0bc65902417f28f0032beeb19b87e2d7b710b6d158e78c9b`  
		Last Modified: Thu, 25 Jun 2026 03:14:56 GMT  
		Size: 80.7 MB (80674015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92630be04edfceeccaa362a9d795c248827e4bd110589d880c498f67d03d5bff`  
		Last Modified: Thu, 25 Jun 2026 03:14:42 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e18a8ddc32778b59b5e9f851edcb777f5b5221fe7bcdfb102ca73e8a4f0e7f7`  
		Last Modified: Mon, 06 Jul 2026 17:06:33 GMT  
		Size: 14.5 MB (14518423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfc95b59a456f3735352d707205f84ec1d5be71270631a5b09d49b479c014a1`  
		Last Modified: Mon, 06 Jul 2026 17:06:30 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5fd0f48449949ff79e9f469271d88a718a484707fe62bfa0c4c87f5b35eb177`  
		Last Modified: Mon, 06 Jul 2026 17:06:36 GMT  
		Size: 39.8 MB (39782277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2937c08b3f0a1865da3edd53161d1e2957ce23362f916ed4e19ed6492cf2a78b`  
		Last Modified: Mon, 06 Jul 2026 17:06:30 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b26e8769c3b7c16760f2f962f44730e55e7f7e5df133a09c2945e5467aa2b39`  
		Last Modified: Mon, 06 Jul 2026 17:06:32 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:6ebed5da3aace0bb21d2e35ccbb901a8fbe0c92722e2da214814c4a9005ca53f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 KB (40739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb694ba50f5a10876e405c89bbb3b121990dc54f481e3c22b8cf9fab9067a7bc`

```dockerfile
```

-	Layers:
	-	`sha256:c9c209bcc4d8ccd17618aede1f33a702f4aa367a92c91ab69308fad43621ecbc`  
		Last Modified: Mon, 06 Jul 2026 17:06:30 GMT  
		Size: 40.7 KB (40739 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-bookworm` - linux; ppc64le

```console
$ docker pull php@sha256:82a08eb17cc5a73069efcca6d0b91a278e965bfb6f2a0d90eb775d5f9f20715f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193554067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cb718913e0fe4d59e59df1c3d480ff70e2edf3a702be71982a3ab7371075c62`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 20:44:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:45:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:45:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 20:45:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:45:03 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:45:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:45:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:45:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:45:03 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 02 Jul 2026 20:45:03 GMT
ENV PHP_VERSION=8.5.8
# Thu, 02 Jul 2026 20:45:03 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 02 Jul 2026 20:45:03 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:57:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:57:29 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:02:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 17:02:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:02:15 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 17:02:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 17:02:15 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ff8acb19fd4d754b286c7024c086504eae24a524d72eab91775cf87ec3087b`  
		Last Modified: Thu, 02 Jul 2026 20:48:26 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4a154fdfaefe3e88d057b864dd4834bb4c402cc0ea666b94100160e30b6d1a`  
		Last Modified: Thu, 02 Jul 2026 20:51:15 GMT  
		Size: 103.3 MB (103334550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2259d2742cdfc24f936f1a22d1205a086497a9b8673c6f602e168af10d9e4e2`  
		Last Modified: Thu, 02 Jul 2026 20:51:10 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9543d855f4f077b8595a2baf1da2ee64c9c39ae94d038afcb8f135b16f9254c`  
		Last Modified: Mon, 06 Jul 2026 17:02:42 GMT  
		Size: 14.5 MB (14520020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9d06e12ffd816ef31e29fc7e254eec4db4174f18702a9d3a705f2dbda4f2a51`  
		Last Modified: Mon, 06 Jul 2026 17:02:41 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc27d7c002abf011573e8e85c0ffa0fad59991d88cc2225b417801c5fec43b8`  
		Last Modified: Mon, 06 Jul 2026 17:02:43 GMT  
		Size: 43.6 MB (43613875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba442173bbedfe17092513434fc9a22d93bb1589e2a98dbd370af3e3e2b86505`  
		Last Modified: Mon, 06 Jul 2026 17:02:41 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05d8415017856d099da3c8b7d3bc57b4e1216de2a6b8b018211d16f92154625`  
		Last Modified: Mon, 06 Jul 2026 17:02:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:d27b26bf83c11be670773847ef1af9e3180191039cd6667ddc1b9b0d1f9fddae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6421430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbce4f0a64d9c8ce7e8f3230c30c6c6b2b7950c2774b53662f6acb135d2aaa25`

```dockerfile
```

-	Layers:
	-	`sha256:bdb528620e7709c3b6e7f9b4cf62ba0ca76b579da2207a8af2f569af3a9ecfb7`  
		Last Modified: Mon, 06 Jul 2026 17:02:42 GMT  
		Size: 6.4 MB (6380508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f0e3dd15835cf3f7470392d87c3795c6798a75759183a90a77cf5cc14bf88ad`  
		Last Modified: Mon, 06 Jul 2026 17:02:41 GMT  
		Size: 40.9 KB (40922 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-bookworm` - linux; s390x

```console
$ docker pull php@sha256:7ed51aa19d06fef067ff4095e0d28f0b5b7f06ac1243aa7b5087413c62283a9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.2 MB (162226500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac61b3587d3834c2ca857bdd1f3dd20abcd63332b2eb189f35ce023256cd5d49`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 20:36:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:36:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:36:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 20:36:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:36:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:36:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:36:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:36:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:36:39 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 02 Jul 2026 20:36:39 GMT
ENV PHP_VERSION=8.5.8
# Thu, 02 Jul 2026 20:36:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 02 Jul 2026 20:36:39 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 17:07:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 17:07:59 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:20:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 17:20:23 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:20:27 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 17:20:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 17:20:27 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faddd1b8bae8b921277144eb97278766e4ffd5c7649652ce56bee5ac7c2b60c7`  
		Last Modified: Thu, 02 Jul 2026 20:40:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbcd10eabe2172e14b36dc7fa537b264d7e753f8850a0b0e09992223b838613`  
		Last Modified: Thu, 02 Jul 2026 20:40:55 GMT  
		Size: 80.8 MB (80829457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db77e436a190ca79988975eabc0380f16a838fafbcfd2c3c627a8d90125d31d`  
		Last Modified: Thu, 02 Jul 2026 20:40:54 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56dfdde0a3b8773a266bfb3b5430e57826023d570d40bd6b4411b0ed1237ebc0`  
		Last Modified: Mon, 06 Jul 2026 17:21:54 GMT  
		Size: 14.5 MB (14519537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54bfc234435028d89d57a8e1fe7efad3abd251eab1ae7858a077e12924494c11`  
		Last Modified: Mon, 06 Jul 2026 17:21:52 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2364b97584fd02a812da743f3fee9d3d00a2c4fc2c906e4d90aa6fbe89ff1a4d`  
		Last Modified: Mon, 06 Jul 2026 17:21:55 GMT  
		Size: 40.0 MB (39980271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad31fbd79b6b60cc0a7abfc4e14e3206b986737694922051f161f8a037b6869e`  
		Last Modified: Mon, 06 Jul 2026 17:21:52 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d11f2817c7b78c070af2703402622cfc018ba497f7b76546dd10aef6145d44`  
		Last Modified: Mon, 06 Jul 2026 17:21:54 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:64f9e7defd4d78d20b74b305cb448f54fcf1a812b57b8c7c64491712ebb6330a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6281875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42d0f2a2facdbb28ec400ed927ca9c8e36fbeb343e0f41f192ac8a5400c85173`

```dockerfile
```

-	Layers:
	-	`sha256:2cc55d0d29c7738116689a6dd3bae93ed75db9ead7139b672328f29382f578bf`  
		Last Modified: Mon, 06 Jul 2026 17:21:53 GMT  
		Size: 6.2 MB (6241038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c01a645a2df9f8d7f7a448959b51995e6e68067ebc72a94308a3f2f347e9be1c`  
		Last Modified: Mon, 06 Jul 2026 17:21:52 GMT  
		Size: 40.8 KB (40837 bytes)  
		MIME: application/vnd.in-toto+json
