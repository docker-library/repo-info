## `php:8-bookworm`

```console
$ docker pull php@sha256:519fe569bdde71e366206a99e1996519fc12897f6fba1cd70b9815ce18f7639c
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

### `php:8-bookworm` - linux; amd64

```console
$ docker pull php@sha256:c8253e199e3e0fd7cff5ed1f59e3dc0c02b91f4637036bdf1052f729336ef34e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.8 MB (188849253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f514d1fb3605f5ff80f25713157adc4a3abbaf1ec8cb0d5bb57f74d6bff42b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 15:16:16 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 15:16:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 15:16:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 15:16:33 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 15:16:33 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 15:16:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:16:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:16:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 15:16:33 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 15:16:33 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 15:16:33 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 15:16:33 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:16:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 15:16:41 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:18:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-libdir="lib/$debMultiarch" 				--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		php --version # buildkit
# Thu, 19 Nov 2026 15:18:51 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:18:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:18:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:18:51 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de4f6277c4ad57a68844968490a8238a5c6ba43777eaf9f02d544f3deadee30b`  
		Last Modified: Thu, 19 Nov 2026 15:19:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79a3bff7760163540310b5f578aef7a5790d68f1b3192d09d8428b0811109feb`  
		Last Modified: Thu, 19 Nov 2026 15:19:14 GMT  
		Size: 104.2 MB (104155470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75843160f9bc35337ac143af1ec4721e0e69dc480876a9b8c49820531d0d827`  
		Last Modified: Thu, 19 Nov 2026 15:19:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df4f5f3ee2c97219d53ea76e82005022c86ac4d48cf373c8adf35cdae6ea7aa6`  
		Last Modified: Thu, 19 Nov 2026 15:19:11 GMT  
		Size: 15.3 MB (15258235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3fba28bc4d8d69cef7454c2966336cb42e79040278a404add0a674c82d3ceb`  
		Last Modified: Thu, 19 Nov 2026 15:19:11 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb38a79f984608945a4017d0cbfe07f78b8c0867d2bc4231e7f7a6187dfe8fb`  
		Last Modified: Thu, 19 Nov 2026 15:19:13 GMT  
		Size: 41.2 MB (41183926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf8fd060073367ace7168cd2e513a25e2d12e6a3e82b55a0aabf1fb7cbf6e1f`  
		Last Modified: Thu, 19 Nov 2026 15:19:12 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e046922cd6da432ee21df017e165a84c68586810250f0743249a64bbd7d7d0be`  
		Last Modified: Thu, 19 Nov 2026 15:19:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:811c5e007b9550fe1a22eecf960d3b6829b07a0869131588dfc622fc88ec4d13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6437165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dcb9a65bbc93e5f877378414476da3ae1a33b5e077206f81ae7608a37b08334`

```dockerfile
```

-	Layers:
	-	`sha256:1db7aa14506ba91e426143eeb0712dc0f12994c52e7c500aef5d49a6bb819ccb`  
		Last Modified: Thu, 19 Nov 2026 15:19:10 GMT  
		Size: 6.4 MB (6395949 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e80a41fd48ae693ac83f45a38d43b2d13ccbb8a4d337a79e9b93a38d8734f408`  
		Last Modified: Thu, 19 Nov 2026 15:19:10 GMT  
		Size: 41.2 KB (41216 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-bookworm` - linux; arm variant v7

```console
$ docker pull php@sha256:0a30d0e27be51076b4bc5cef895b427b564f21637807e809b5381e8b015deaf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150139677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2105a46a1f98e5357d42d8cc834c2b3de367d1d2d4d9b8c8dab883c2c5d233ba`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 14:42:34 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:42:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:42:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 14:42:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:42:49 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:42:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:42:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:42:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:42:49 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 14:42:49 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 14:42:49 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 14:42:49 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:37:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 15:37:37 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:40:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-libdir="lib/$debMultiarch" 				--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		php --version # buildkit
# Thu, 19 Nov 2026 15:40:03 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:40:03 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:40:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:40:03 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b8b5e4222e30ea136ecf7f7af51f4e6baa87323900dc4b0468ddbd69934beea`  
		Last Modified: Thu, 19 Nov 2026 14:45:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a326512c7b9015572e64090ac686881d2ba3582123de4a96a14e4e4616810d`  
		Last Modified: Thu, 19 Nov 2026 14:45:38 GMT  
		Size: 76.0 MB (75972217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2716d6934fcc1aede6c46c46794f0f9da4954c10ad21f84c505df474f768aa8d`  
		Last Modified: Thu, 19 Nov 2026 14:45:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8e29bb25cd7f147ee18bc1afb60be92950faf304fb5070e1a6849718a4c2d4`  
		Last Modified: Thu, 19 Nov 2026 15:40:21 GMT  
		Size: 15.3 MB (15256337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df4b817ebe3ce96a65d0c2223c2b8c65b75d57413ed745069058cbd387801af`  
		Last Modified: Thu, 19 Nov 2026 15:40:20 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2209feb21c0a7b7ab8db35a3ca8457de70c5ec5b636af523ed408a62e1d1242`  
		Last Modified: Thu, 19 Nov 2026 15:40:21 GMT  
		Size: 34.9 MB (34946117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b2e6ba6bfea2ce65103e1b56331697f3a645d5be662939e9f9a6f03ab8950a`  
		Last Modified: Thu, 19 Nov 2026 15:40:20 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4bc7217f50ebd2c19f5762cda4cffb6f15caa332712d5be99389d286bab248e`  
		Last Modified: Thu, 19 Nov 2026 15:40:21 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:e313b91215ce23dbd3482c5e6319a084633f276abd3726a628854c77aa437db1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6250634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42ca8657be7ac77ecce7765fedaa194c959cde59daab33ae5427541d174f17b6`

```dockerfile
```

-	Layers:
	-	`sha256:6707c6bd37fcaad3f9f7761d5382abe432b5b2f433dc794c32404e3b86fd32a0`  
		Last Modified: Thu, 19 Nov 2026 15:40:20 GMT  
		Size: 6.2 MB (6209248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b29979e0e49755c6ab7c8573da886f17c9c1cb7ff9fb306848cd2c817f98e2b6`  
		Last Modified: Thu, 19 Nov 2026 15:40:20 GMT  
		Size: 41.4 KB (41386 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-bookworm` - linux; arm64 variant v8

```console
$ docker pull php@sha256:adbba74fa4d0cc5f91f808cb5720788463e0cd0e1c97ddcf2a7f9b727b5fa2fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.5 MB (181502331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ec46751bc52e331d63e93bd683791a8df0752505049eabbcf4e2549d7b109cf`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 14:43:57 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:44:12 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:44:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 14:44:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:44:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:44:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:44:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:44:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:44:12 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 14:44:12 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 14:44:12 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 14:44:12 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:17:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 15:17:20 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-libdir="lib/$debMultiarch" 				--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		php --version # buildkit
# Thu, 19 Nov 2026 15:20:00 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:00 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:20:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:20:00 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ff4eace7182a025d9d84d1ccdf142ab942b718a3894aef7243be7f4d45d497`  
		Last Modified: Thu, 19 Nov 2026 14:47:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11989b2c866c66a7e255ca1cf345180dce671e9b5b74f391c0e2efb86d5b7182`  
		Last Modified: Thu, 19 Nov 2026 14:47:58 GMT  
		Size: 98.0 MB (98006637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd3399148eb7ebee0c0a98cf656c6e0a0434c80b79fd74f6d69b608b599492f`  
		Last Modified: Thu, 19 Nov 2026 14:47:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bef160940bfb5327cdf0d3f8fdd609a05142ab51011f7128c93b5df5c11d211b`  
		Last Modified: Thu, 19 Nov 2026 15:20:13 GMT  
		Size: 15.3 MB (15258061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7d6c914159831e0c9549664ca06ea44fec421e74d045bfee48b68e25d480c0`  
		Last Modified: Thu, 19 Nov 2026 15:20:12 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b8e96b364a346a7eacecd5cab685525d29afd38e19539da268f93775b221fa1`  
		Last Modified: Thu, 19 Nov 2026 15:20:14 GMT  
		Size: 40.1 MB (40089633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ab77ff10cdfd92afb7486d22b4285b8cffedb7b9f2131f4c96aa84a10d834a`  
		Last Modified: Thu, 19 Nov 2026 15:20:12 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d999ce9a8ef7910d03ba92c7999dce4e88ba625ec41469d9f1967473437da9f8`  
		Last Modified: Thu, 19 Nov 2026 15:20:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:dd056aa7704e2310f5b93f29629d0e64068ce655680db27cd4d68dd0fbf29150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6465823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7485cc2614a1ddb3fba5c57b152673dd00700974bcb1af567e2bb9fd5da7e2f3`

```dockerfile
```

-	Layers:
	-	`sha256:92d92a6a0d76ea0135e05f684cc4f5ffcfa8d2bb3559cbce71928146ff8ce6d3`  
		Last Modified: Thu, 19 Nov 2026 15:20:13 GMT  
		Size: 6.4 MB (6424387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4574bd788b34d4b456946a18dea4402eab565de958bd302256103f4fbe97000`  
		Last Modified: Thu, 19 Nov 2026 15:20:12 GMT  
		Size: 41.4 KB (41436 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-bookworm` - linux; 386

```console
$ docker pull php@sha256:202860b530e59d84ebf7e0496b1f2f4bfb858c49b80159a7b25e83de1bfb61b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188287741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8d02f48c91f23e109a2574a0de30551da9aae9b2cd8136c5c4ed1f78a3c4bc`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 14:29:15 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:29:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:29:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 14:29:33 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:29:33 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:29:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:29:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:29:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:29:33 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 14:29:33 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 14:29:33 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 14:29:33 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:16:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 15:16:54 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:19:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-libdir="lib/$debMultiarch" 				--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		php --version # buildkit
# Thu, 19 Nov 2026 15:19:53 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:19:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:19:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:19:53 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d631b2f779773b409efbcb98bcd34365e34d42f9ead4a2eb2cbab8e31c2f4a`  
		Last Modified: Thu, 19 Nov 2026 14:32:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e76a7993aafc09eacd2eca47090c43d1e9e3aadc22cb51bca74802f98684f7`  
		Last Modified: Thu, 19 Nov 2026 14:32:59 GMT  
		Size: 101.4 MB (101354771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cfcdaec75b79ccb2371cb18630a40f128ea56c94804dcd67505f96838d0a1eb`  
		Last Modified: Thu, 19 Nov 2026 14:32:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4a6e2dedffa119bd9834f791f0fa89fd843d23c26ab94b6c18c6515979e185`  
		Last Modified: Thu, 19 Nov 2026 15:20:07 GMT  
		Size: 15.3 MB (15257417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22618c4a539495a661109e37f038d13b3a7163c2096153a53a6c46e379e95fd`  
		Last Modified: Thu, 19 Nov 2026 15:20:06 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb578a9113ce4baba884dbf8e2d8672c949c510d607a616a32917dbc7d9aa6e6`  
		Last Modified: Thu, 19 Nov 2026 15:20:07 GMT  
		Size: 42.4 MB (42432698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67dbd03b5727657a9fe7b220a6e3f5bec16ece2595c61a73e453a8357d37c608`  
		Last Modified: Thu, 19 Nov 2026 15:20:06 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fb128422c3778ed0971423a6979af87ffc041b45a26bdf399921bfd7a579015`  
		Last Modified: Thu, 19 Nov 2026 15:20:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:92fea0348289a748e3aa21bda344039fb0cccb21ec085f65a2d5b99405274ea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6416877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187a6e78b78b645bf0013d4608bc24850651c5769c2423482c6e378c84301dfc`

```dockerfile
```

-	Layers:
	-	`sha256:5c3605f91684c5ec1c71f686f4f3ceae04b60c16940f278c2c6256220d364d52`  
		Last Modified: Thu, 19 Nov 2026 15:20:06 GMT  
		Size: 6.4 MB (6375723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:933f7a582c1e627011edcea789670ebdaa5b2afc70c6eac8a104e6d4189e7f23`  
		Last Modified: Thu, 19 Nov 2026 15:20:06 GMT  
		Size: 41.2 KB (41154 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-bookworm` - linux; ppc64le

```console
$ docker pull php@sha256:1947bff0769b3845b31cc3ab6c9c1e846270c11a7b0a85db7b0390c36de9d3be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.8 MB (191775703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e22c91cf5e23f6266db86b8c2f443964b9e34d9f2c2c659a7f008d1e30630f1f`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:03:54 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 08:04:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 08:04:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:04:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 08:04:42 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 08:04:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 08:04:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 08:04:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 08:04:42 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 05 Nov 2026 08:04:42 GMT
ENV PHP_VERSION=8.6.0
# Thu, 05 Nov 2026 08:04:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 05 Nov 2026 08:04:42 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 17:08:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 17:08:31 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 17:13:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-libdir="lib/$debMultiarch" 				--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		php --version # buildkit
# Thu, 19 Nov 2026 17:13:07 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 17:13:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 17:13:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 17:13:08 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa2095b0a5eda49ef287a04c031fb0313ce4533cbe3e4f2c33872f768c2158a4`  
		Last Modified: Thu, 05 Nov 2026 08:09:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a2ee7c606d4199ed0082ad62e3d289125b8a06cee669d22c0fad3a63cf3656`  
		Last Modified: Thu, 05 Nov 2026 08:09:48 GMT  
		Size: 103.2 MB (103154965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee351715c61e3e53c34ededbfd9696be5dadb697c1a838097c9438fcf874f0f`  
		Last Modified: Thu, 05 Nov 2026 08:09:44 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17236a97c3711e026c0aeeb361b07404312241dd992ea3dfa5ceea2609aa6c83`  
		Last Modified: Thu, 19 Nov 2026 17:13:36 GMT  
		Size: 15.3 MB (15257681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18cef798b573cc50195aba3fcef89cc925d1140f3945942b31f6cda7252441c6`  
		Last Modified: Thu, 19 Nov 2026 17:13:36 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24c186023023c1ce02380f91daf4db6b645140824cba9ae60b8006b5799da2d1`  
		Last Modified: Thu, 19 Nov 2026 17:13:37 GMT  
		Size: 41.3 MB (41265852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f3dbcf3574a8c67ab6d06391290a191e40b9ad1427d1913908c075f58d69a4`  
		Last Modified: Thu, 19 Nov 2026 17:13:36 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:194570f9459775bc13522849558df23e7acf4eb541c1d7afa1b5518a694ca1d7`  
		Last Modified: Thu, 19 Nov 2026 17:13:37 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:1509d82965cfde37723e83a45cd23aecc03c21d758b2b969f41f3684e9fb140d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6413928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34792c6645e1e59e6b15ad7c6b780a44162631c87ee9fad2c7cbec24b74548c6`

```dockerfile
```

-	Layers:
	-	`sha256:be3a14bb8c6a00b46e5148d226b5829955a4064444422fb6f6efa123a980f8bd`  
		Last Modified: Thu, 19 Nov 2026 17:13:36 GMT  
		Size: 6.4 MB (6372634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d1522a95d3d2f343440442d0989ce82f5b0d77632c8b30b6803bd61547acbc9`  
		Last Modified: Thu, 19 Nov 2026 17:13:35 GMT  
		Size: 41.3 KB (41294 bytes)  
		MIME: application/vnd.in-toto+json
