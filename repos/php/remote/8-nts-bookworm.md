## `php:8-nts-bookworm`

```console
$ docker pull php@sha256:eb88f17fa4c46194267995947598a9a4a325f18bd18b24ee7c4cdc672b07ace2
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

### `php:8-nts-bookworm` - linux; amd64

```console
$ docker pull php@sha256:9db55d2f0e175f3fb648038a11b16f7ed14821b1e6230fe53a9beca9b5d2cb91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.2 MB (183220767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bee76aeb6b649be1c19fefeed628a28ef50e00aaf2fc9ccb1a47f8f96b1aa4d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Thu, 26 Nov 2026 01:32:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 26 Nov 2026 01:32:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 26 Nov 2026 01:32:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:32:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 26 Nov 2026 01:32:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 26 Nov 2026 01:32:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 26 Nov 2026 01:32:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 26 Nov 2026 01:32:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 26 Nov 2026 01:32:41 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 26 Nov 2026 01:32:41 GMT
ENV PHP_VERSION=8.6.0
# Thu, 26 Nov 2026 01:32:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 26 Nov 2026 01:32:41 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 26 Nov 2026 01:32:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 26 Nov 2026 01:32:49 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 26 Nov 2026 01:35:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-libdir="lib/$debMultiarch" 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		php --version # buildkit
# Thu, 26 Nov 2026 01:35:23 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 26 Nov 2026 01:35:23 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 26 Nov 2026 01:35:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Nov 2026 01:35:23 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:049357fc2ab131d68d995f7fbe3648323149a599884fca68cc032f3d9c691c2b`  
		Last Modified: Thu, 26 Nov 2026 01:35:44 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c7b9a552b7fe8c44ecc0e110dc209f66a0f6ee82400a41d444757acfb59042`  
		Last Modified: Thu, 26 Nov 2026 01:35:47 GMT  
		Size: 104.2 MB (104155176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cdb9be94c5efa67bb5fd681c1a61b60866de7eeb618635434bd7627c7d385a2`  
		Last Modified: Thu, 26 Nov 2026 01:35:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7fc82be3f8c4f0bcd5ea0c22ae941ec33816eef4ad1a445a273d6be607c449f`  
		Last Modified: Thu, 26 Nov 2026 01:35:44 GMT  
		Size: 15.3 MB (15258221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34bfc1759aac4025c217ae2913f6a2bf1527efe1ca65cbfc343eb67c03b754a3`  
		Last Modified: Thu, 26 Nov 2026 01:35:45 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c926e81b246e3fcc9e64a6ac470ebb98881cf8fac817dfaebabbc2b6044f32e`  
		Last Modified: Thu, 26 Nov 2026 01:35:47 GMT  
		Size: 35.6 MB (35555785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82b97a367e99e7ce4d577cd4e220910b84faf2506f1875a44eaf25e4a564e805`  
		Last Modified: Thu, 26 Nov 2026 01:35:46 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b4afe8c29ef99c43a753542aca466d1429c8f4403d00d09607916d7e5720b5`  
		Last Modified: Thu, 26 Nov 2026 01:35:46 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-nts-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:a2c28dfd7de5a25eaa5ce9f6c89a20b85c4d68d1c982491d73eff0b1d330080e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6434146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cae0dce784b8af05d2570029d11790c66e9371eec47afaaa15aa44c487fbd34`

```dockerfile
```

-	Layers:
	-	`sha256:af2eeb03f3bac5fd568b584021016527da4487a0185802f8bbbf65c65575bbed`  
		Last Modified: Thu, 26 Nov 2026 01:35:44 GMT  
		Size: 6.4 MB (6394745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a219badf10a0ffbf972438b6846412e33e33d4fc8e57f574016b810449b6cd24`  
		Last Modified: Thu, 26 Nov 2026 01:35:44 GMT  
		Size: 39.4 KB (39401 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-nts-bookworm` - linux; arm variant v7

```console
$ docker pull php@sha256:42580db62439cf917baf38be0625267bb0f734d6a5704263d600a9a68a8e3d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.8 MB (145806175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4a8a21ec41aad295e421c95f4fcea29f4f3cf7126158e6acc710fc669ab875`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Thu, 26 Nov 2026 01:28:48 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 26 Nov 2026 01:29:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 26 Nov 2026 01:29:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:29:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 26 Nov 2026 01:29:04 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 26 Nov 2026 01:29:04 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 26 Nov 2026 01:29:04 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 26 Nov 2026 01:29:04 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 26 Nov 2026 01:29:04 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 26 Nov 2026 01:29:04 GMT
ENV PHP_VERSION=8.6.0
# Thu, 26 Nov 2026 01:29:04 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 26 Nov 2026 01:29:04 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 26 Nov 2026 01:29:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 26 Nov 2026 01:29:13 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 26 Nov 2026 01:31:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-libdir="lib/$debMultiarch" 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		php --version # buildkit
# Thu, 26 Nov 2026 01:31:37 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 26 Nov 2026 01:31:37 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 26 Nov 2026 01:31:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Nov 2026 01:31:37 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:dbe4636f037e07987ed4c9269c75a4aa8678e0b031a1905bc2239bdd57cdf136`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 24.0 MB (23961330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1843dda0f0a269d146d1ce02e3dda737f336bf4977c58cbd4c2510971ddf07d4`  
		Last Modified: Thu, 26 Nov 2026 01:31:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e75f9ed544e2366d46f73e9740e015bc361696827d2e4cc3df9e46cc8718f4d9`  
		Last Modified: Thu, 26 Nov 2026 01:31:54 GMT  
		Size: 76.0 MB (75973328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f85d0c4fb65c66856b63cadabff21b0235eade8c501101f0c725d85792e89f1`  
		Last Modified: Thu, 26 Nov 2026 01:31:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20cf778c6e448069b59a1e56b26650cf7f84b13a007ab8a2e616be4eb26db53`  
		Last Modified: Thu, 26 Nov 2026 01:31:52 GMT  
		Size: 15.3 MB (15256325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b367ef62d88c715ea8615ffc7304babbd0ac303615269848667e3226a6c54888`  
		Last Modified: Thu, 26 Nov 2026 01:31:53 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8431976bf618cee5749709ae0ce12f01e017d97e0dad16887f817c283db39431`  
		Last Modified: Thu, 26 Nov 2026 01:31:54 GMT  
		Size: 30.6 MB (30611564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aab50c6a08de06efaccbf4d4e5f3b8691db83de547b924ac44c271895ba0f78`  
		Last Modified: Thu, 26 Nov 2026 01:31:54 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c963682b7261d162d59c3877cc2b79389f6f77abd0dc8ea89e08f37b950fe61c`  
		Last Modified: Thu, 26 Nov 2026 01:31:54 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-nts-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:a63a284183705d4059a6af7295fea790dd1b59954e3b42efc5bc362803717d07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6247553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e1a576e8c6ea2918936a9c8fcdc0247d8fea94a614f7e303c768ea0551232a`

```dockerfile
```

-	Layers:
	-	`sha256:d5bbd6294f6c178699c36da112c8d25b0eb343f8d656fa98c7eefe44ec670da5`  
		Last Modified: Thu, 26 Nov 2026 01:31:52 GMT  
		Size: 6.2 MB (6208012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5d94fb4d27544d2172df51b50f0ccbe63112ccfbd73808479dd08823c03d7ff`  
		Last Modified: Thu, 26 Nov 2026 01:31:52 GMT  
		Size: 39.5 KB (39541 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-nts-bookworm` - linux; arm64 variant v8

```console
$ docker pull php@sha256:13659c020e688696907906187e2311287239cc91c251c68a11d3a77abc74e71a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (176008316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3290aa2294531a844cbf154182ba4697e57882969cd1c996f0b025096c461477`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Thu, 26 Nov 2026 01:29:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 26 Nov 2026 01:29:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 26 Nov 2026 01:29:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:29:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 26 Nov 2026 01:29:54 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 26 Nov 2026 01:29:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 26 Nov 2026 01:29:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 26 Nov 2026 01:29:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 26 Nov 2026 01:29:54 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 26 Nov 2026 01:29:54 GMT
ENV PHP_VERSION=8.6.0
# Thu, 26 Nov 2026 01:29:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 26 Nov 2026 01:29:54 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 26 Nov 2026 01:30:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 26 Nov 2026 01:30:01 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 26 Nov 2026 01:32:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-libdir="lib/$debMultiarch" 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		php --version # buildkit
# Thu, 26 Nov 2026 01:32:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 26 Nov 2026 01:32:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 26 Nov 2026 01:32:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Nov 2026 01:32:42 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e07f763c6b589d62622af4070c0b8b1ddb29589f9f2a95a10a7e31ec18b6585`  
		Last Modified: Thu, 26 Nov 2026 01:33:01 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e001dd0216f405e5ed7566d1b14329162c330348cc658c25586d3386e71c38`  
		Last Modified: Thu, 26 Nov 2026 01:33:04 GMT  
		Size: 98.0 MB (98006794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f2a96c62d9ba92fd4b9cf48291e3185b0f78e54379a43da523f27cf170644db`  
		Last Modified: Thu, 26 Nov 2026 01:33:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a2c01993c10817a63b79727b634470c5a7722ff6ce49584440eb747d49803c`  
		Last Modified: Thu, 26 Nov 2026 01:33:02 GMT  
		Size: 15.3 MB (15258057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b2fbcaf62ef13a71b68aa5860a34affc8eb35c5c30261b898d5734bfeb95c0`  
		Last Modified: Thu, 26 Nov 2026 01:33:02 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd491b38b1f0deacafc1da7312d19754705b27617c055ef3a6c84912b798607`  
		Last Modified: Thu, 26 Nov 2026 01:33:04 GMT  
		Size: 34.6 MB (34595532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fee04c37bf2726a556d50b7e1743caf48ec03d567455a479b3698ddb9221549`  
		Last Modified: Thu, 26 Nov 2026 01:33:03 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2876b17f0bb5116ea700ba5d0ca55326d65dc38d1d41017af846e45cb375d3d7`  
		Last Modified: Thu, 26 Nov 2026 01:33:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-nts-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:271651b30455ec0fe701330d10b59501fc0beeba3ce2a20e7e549c8f8278655a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6462710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d6416991d7ee880f0a2ba0f897c153f7679d7a6bcd65e9d857dcb8687ca951`

```dockerfile
```

-	Layers:
	-	`sha256:da5a73dccae2c9a25a1450eebaa1a9d0cb01b0bc6c2f4c90d75633345192f0ee`  
		Last Modified: Thu, 26 Nov 2026 01:33:02 GMT  
		Size: 6.4 MB (6423135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c7e33fc54d365a3499fad3a74106254805d557aa0771e97de7ca0fe8ff31ddd`  
		Last Modified: Thu, 26 Nov 2026 01:33:01 GMT  
		Size: 39.6 KB (39575 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-nts-bookworm` - linux; 386

```console
$ docker pull php@sha256:0b35b12c3f7c07dbbb62bdb73e7580280e1f03b53ebd74f24c33078ce8eb4b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.4 MB (182406668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:147ce5c0782f848c8d0e55907af2c71d7ed9f69b5a20d29d4d3556a5ebd2cded`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Thu, 26 Nov 2026 01:29:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 26 Nov 2026 01:29:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 26 Nov 2026 01:29:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 01:29:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 26 Nov 2026 01:29:53 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 26 Nov 2026 01:29:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 26 Nov 2026 01:29:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 26 Nov 2026 01:29:53 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 26 Nov 2026 01:29:53 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 26 Nov 2026 01:29:53 GMT
ENV PHP_VERSION=8.6.0
# Thu, 26 Nov 2026 01:29:53 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 26 Nov 2026 01:29:53 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 26 Nov 2026 01:30:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 26 Nov 2026 01:30:02 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 26 Nov 2026 01:32:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-libdir="lib/$debMultiarch" 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		php --version # buildkit
# Thu, 26 Nov 2026 01:32:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 26 Nov 2026 01:32:59 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 26 Nov 2026 01:32:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Nov 2026 01:32:59 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:1cde02d171534450b668912ef8ef66ab259bfca33204cf933a2860bfd06fe63b`  
		Last Modified: Tue, 24 Nov 2026 03:40:03 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559b1c38a45abd659ecbda406edcb355d0bbc8153412b40eedc86bb99a326d99`  
		Last Modified: Thu, 26 Nov 2026 01:33:19 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173d2a2d931bb74760ab1ca70789ab6c0119ae628a4f4ae07ebac618a76e5918`  
		Last Modified: Thu, 26 Nov 2026 01:33:22 GMT  
		Size: 101.4 MB (101354682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af1bd61ac12f7616398bfe05dec8280e9eef3254f2d7c8a46d3fd0f05b282c0c`  
		Last Modified: Thu, 26 Nov 2026 01:33:19 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d239eba6c0611adc56289ef15f45b7fe261d08b5f71e68a6209bd01fd2415c`  
		Last Modified: Thu, 26 Nov 2026 01:33:20 GMT  
		Size: 15.3 MB (15257451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105acf8aa89ff7758a47a09369813657235bce526a135092d70ad80064cadc4c`  
		Last Modified: Thu, 26 Nov 2026 01:33:20 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1a2701c8037e055615128fed1bc1836fc37232d01dc3a9e310165507cf73af`  
		Last Modified: Thu, 26 Nov 2026 01:33:22 GMT  
		Size: 36.6 MB (36551690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:802b2aced66d29a47486e7d9a232297b302a3c4b7257dad6e96bc8c48426ecfe`  
		Last Modified: Thu, 26 Nov 2026 01:33:21 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a3f5f2a435a27aff1d1b4c943f48e62034faaa99d039714a6d8cf2bb35c21f`  
		Last Modified: Thu, 26 Nov 2026 01:33:21 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-nts-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:b8b65431088697fc1fb5f36fd48ce70ffe0cbc13f3b5e9b233922538a48e630e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6413899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae7f214443d70a5f16aeddaa33298774fde1a53591721b20aed8f8795bc28aa`

```dockerfile
```

-	Layers:
	-	`sha256:c61b219f67ae4c7c67eab5c122bc8baa6396cb68270800c2d471638b2ad71599`  
		Last Modified: Thu, 26 Nov 2026 01:33:19 GMT  
		Size: 6.4 MB (6374539 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0cec66bff1f10f3401d543de95d252c84ce1cba1a014daaeb392d222908532b`  
		Last Modified: Thu, 26 Nov 2026 01:33:19 GMT  
		Size: 39.4 KB (39360 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-nts-bookworm` - linux; ppc64le

```console
$ docker pull php@sha256:d8af6e897d51fb2148ad0dca28feffff3276724845bb6e415adf07e0582307f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186213124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dac4a885d1e2c8d79f97b3eb428f00672d7ef0e1e36866279440792748c5b23`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:52:47 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:53:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:53:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:53:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:53:26 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:53:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:53:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:53:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:53:26 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Tue, 24 Nov 2026 04:53:26 GMT
ENV PHP_VERSION=8.6.0
# Tue, 24 Nov 2026 04:53:26 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Tue, 24 Nov 2026 04:53:26 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Tue, 24 Nov 2026 04:58:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:58:53 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 26 Nov 2026 01:38:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-libdir="lib/$debMultiarch" 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		php --version # buildkit
# Thu, 26 Nov 2026 01:38:05 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 26 Nov 2026 01:38:06 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 26 Nov 2026 01:38:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 26 Nov 2026 01:38:06 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:a6a60ee161e1a240cbcc7442cf284ad6d493b1dd2b14668095ddc44fbce029cc`  
		Last Modified: Tue, 24 Nov 2026 03:39:18 GMT  
		Size: 32.1 MB (32093504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf68ee059231bc8db8359f1d1bef7e40525b74d0c275f419ff1ad8ebfcc098e`  
		Last Modified: Tue, 24 Nov 2026 04:58:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ceab69fadb97b8c3e4520f10fc49b786420905df87b944126ec2c1f12047e9`  
		Last Modified: Tue, 24 Nov 2026 04:58:26 GMT  
		Size: 103.2 MB (103155983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ece6a9a9610234ca597e834eca4bf439d0e371a3221fa77cfda700230b8a82f`  
		Last Modified: Tue, 24 Nov 2026 04:58:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db544fd9d5b79369bcb9dde88f253965941b44502e0ffc618ecdda173c357df2`  
		Last Modified: Tue, 24 Nov 2026 05:03:16 GMT  
		Size: 15.3 MB (15257627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c48770ecb4c00da99983c48e5bac913c8b2dc5f88dc93e5df01336837cd3643a`  
		Last Modified: Tue, 24 Nov 2026 05:03:15 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0f57e7d78526c49c30a80f0139e221df19fb287ba28f538a516dfa384ff27f1`  
		Last Modified: Thu, 26 Nov 2026 01:38:49 GMT  
		Size: 35.7 MB (35702374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd707b24c82b711fd41187d082a3c8ad95a775641e918739fec71f15e7a5ee39`  
		Last Modified: Thu, 26 Nov 2026 01:38:47 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a4ad63c80e2b5b1dbec64a64300b988c41f2a4bf7965af127d9998948fec98`  
		Last Modified: Thu, 26 Nov 2026 01:38:48 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-nts-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:2b6b506af0a119d667e26a87ff8cf10e42d1bb0b565ceb36bb751839dc28c6c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6410863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7043ffb67b169e15c7966d9532554dfa8863e2a56196b6251823116436f3f1e1`

```dockerfile
```

-	Layers:
	-	`sha256:ccf3978bf4603cca6ae9e438c442432c716bbcf61eeea597b1a524f5c921b78f`  
		Last Modified: Thu, 26 Nov 2026 01:38:48 GMT  
		Size: 6.4 MB (6371406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b39ec7d7ff67c12fc4e5938a297ef9c7e0358fcd11e2ccf4e0f6aec97635fb25`  
		Last Modified: Thu, 26 Nov 2026 01:38:47 GMT  
		Size: 39.5 KB (39457 bytes)  
		MIME: application/vnd.in-toto+json
