## `php:cli-trixie`

```console
$ docker pull php@sha256:635a4b998025ab269194639a5549c6fdcd9b4f88ec8cd761b092de8653d40663
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

### `php:cli-trixie` - linux; amd64

```console
$ docker pull php@sha256:4c398f7eb2f25495d4bd9c38212d5affafb9df917817b89299135e15d5170305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.6 MB (189566145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd0c964a817e93d98d25f421f3468e947478f12992ee001a5cf5bb7d6510ff5`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 15:47:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 15:47:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 15:47:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:47:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:47:17 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:47:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:47:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:47:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:47:17 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 15:47:17 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 15:47:17 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 15:47:17 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 15:47:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 15:47:24 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:49:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 15:49:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:49:59 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 15:49:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 15:49:59 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5101b7038a15cd0635fec1de2f87462354e2540abce7434dd28e820edda6c6`  
		Last Modified: Wed, 21 Oct 2026 15:50:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041b357b7c2c36e76685c615867e99bf67c7d1410c720129e3033ea2d2d3c49e`  
		Last Modified: Wed, 21 Oct 2026 15:50:24 GMT  
		Size: 117.8 MB (117839207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36cdb32200e37b71863c4bca9322c6bd1ff07383efd2245f789005ee602fa9b1`  
		Last Modified: Wed, 21 Oct 2026 15:50:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ad739eddf2c35fb814feeeef2f1cd2ee730ebd6b1059d7ff47bbf2632f1fc9`  
		Last Modified: Wed, 21 Oct 2026 15:50:21 GMT  
		Size: 14.7 MB (14702703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce93c5d2b2fc0cecdee8939dd7dbeb6e17d081f5f9aa0faeb11a57cca0e4676c`  
		Last Modified: Wed, 21 Oct 2026 15:50:22 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75c7018cf79b4911b24d27cd80f2ade3812c7829d7668104ff0e3e6e1674d97`  
		Last Modified: Wed, 21 Oct 2026 15:50:23 GMT  
		Size: 27.2 MB (27177015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a4ea2d1d3b74325edc24ed31fea4c2de25573bb9489b1f36672f419f96ba94`  
		Last Modified: Wed, 21 Oct 2026 15:50:23 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559d154768b15c19b7974dc60925b811ea7aa27a71282652584d167c98e49a6f`  
		Last Modified: Wed, 21 Oct 2026 15:50:23 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:cli-trixie` - unknown; unknown

```console
$ docker pull php@sha256:744bdffc6019a7114d937ba44f0610a54b2f6331d76616acf5d5257d27d7a8a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6735588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5497cd34c706ed549461c571fa68ad3a7b7f21fa115db91bf4c29e74feff1b2d`

```dockerfile
```

-	Layers:
	-	`sha256:8bf7573a89ef4e27d770ac32eefc379d30ae1b3c10b817e854659ec12d1b9c1f`  
		Last Modified: Wed, 21 Oct 2026 15:50:21 GMT  
		Size: 6.7 MB (6691327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ed511b27e25003b9e1bbdf64695e503e8164662720615efb39be6d6ba021ea5`  
		Last Modified: Wed, 21 Oct 2026 15:50:20 GMT  
		Size: 44.3 KB (44261 bytes)  
		MIME: application/vnd.in-toto+json

### `php:cli-trixie` - linux; arm variant v5

```console
$ docker pull php@sha256:078298fd1bfc7cd8ff2b653e75857c694abbeedba213c3f98a42f91dd2e2f198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.9 MB (160865392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d33f34b1c14b6feb2e89756ae20f12d4bbb825268146faf7e7e1f636bad47e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 15:35:42 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 15:36:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 15:36:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:36:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:36:04 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:36:04 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:36:04 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:36:04 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:36:04 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 15:36:04 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 15:36:04 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 15:36:04 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 15:36:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 15:36:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:39:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 15:39:24 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:39:24 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 15:39:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 15:39:24 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16bfd01e6b5005dbd02ce8f4683303500c33d1ce0292a1c1e96e3b1841dcc5e6`  
		Last Modified: Wed, 21 Oct 2026 15:39:44 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78a86351c7b210397c7b7b4f190a26bd3558798d62e9ea78239c25aa1073cb2`  
		Last Modified: Wed, 21 Oct 2026 15:39:46 GMT  
		Size: 94.9 MB (94886012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495c69eb4b2eb795a2f6889357e9e2878af7784d2a428c8df000de27e5322c22`  
		Last Modified: Wed, 21 Oct 2026 15:39:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2833ed6159460f8c8a27c2637a447eb2d488189eb2c1d7ff757938e9c8500235`  
		Last Modified: Wed, 21 Oct 2026 15:39:45 GMT  
		Size: 14.7 MB (14700256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dbe0a9ce9248549562ad2ce31539e324f6f6c9d2d386046bab030b7f1ee8749`  
		Last Modified: Wed, 21 Oct 2026 15:39:45 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5390dc6767f9636b3e2d805cccb5ca7f8986fe2cdded04aa24fd3968ada2c60`  
		Last Modified: Wed, 21 Oct 2026 15:39:46 GMT  
		Size: 23.3 MB (23267691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a9bb49bbd825bc1cf5a1f0aaf4777fca03517c60df86e17205f9cf84fefbdb`  
		Last Modified: Wed, 21 Oct 2026 15:39:46 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae9b50ff09b0df7f5b3194f44134a01c0f3501857025d62fb963ade844670a0`  
		Last Modified: Wed, 21 Oct 2026 15:39:46 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:cli-trixie` - unknown; unknown

```console
$ docker pull php@sha256:3a32348e44f15cc519fe5fca44e6e65573955daad30e92a98cb1e2644f0e3f37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6535733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6bd471de53985c0e5c220c0abfcf28b95c2f17f49977743d71cc856e7b9d14c`

```dockerfile
```

-	Layers:
	-	`sha256:4a2379a103b27bf105c75bb60a103a3f529bb490b42e46fecc10b584a3bf35d4`  
		Last Modified: Wed, 21 Oct 2026 15:39:44 GMT  
		Size: 6.5 MB (6491238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48e55b124b18b462064de276ee9827f5443d3b4352de0b15eb3b25f33e2d5507`  
		Last Modified: Wed, 21 Oct 2026 15:39:44 GMT  
		Size: 44.5 KB (44495 bytes)  
		MIME: application/vnd.in-toto+json

### `php:cli-trixie` - linux; arm variant v7

```console
$ docker pull php@sha256:699145176788e062295ec897119640b1051fb90d8574c82cfd92153b52c3c61e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149180574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872bcd2022b0fa0a8b6d06767aaebedd54b9aed80bd96ebd096ba381e317d11e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 15:51:50 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 15:52:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 15:52:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:52:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:52:09 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:52:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:52:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:52:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:52:09 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 15:52:09 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 15:52:09 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 15:52:09 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 15:52:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 15:52:19 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:55:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 15:55:17 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:55:17 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 15:55:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 15:55:17 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05f9b8b3c2ab2271ed7a7304fc739d1b52d8faeb614c2158c1f6bf597f614da`  
		Last Modified: Wed, 21 Oct 2026 15:55:33 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9a1a23378e686c0965cd1367811c740e32339dbf82d54142d1e16f23e48b1a`  
		Last Modified: Wed, 21 Oct 2026 15:55:36 GMT  
		Size: 86.3 MB (86258140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70645fed3c0af63a23893fc37455171cd6b76eea8ebe96348e3b1bb7271d56d1`  
		Last Modified: Wed, 21 Oct 2026 15:55:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b4a68cbea9c566c03dbc8943d35f4f260ac53eb65df0d87eb178e96eed545e`  
		Last Modified: Wed, 21 Oct 2026 15:55:34 GMT  
		Size: 14.7 MB (14700442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5721a92f1a65ef4964f39d60024468ebda85f6b7f76a8bb17c4133fd67a3bf9`  
		Last Modified: Wed, 21 Oct 2026 15:55:35 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec91f768034a301da39c185215541072c318a797bcf817ad3926e8b93c374e03`  
		Last Modified: Wed, 21 Oct 2026 15:55:36 GMT  
		Size: 22.0 MB (21959959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:919884e6dd002b274e6872a2dfa3026bb782425c58c43cd24e71b137a749f92c`  
		Last Modified: Wed, 21 Oct 2026 15:55:36 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c327a850dfb51c0c20e198591975c07f44da06c682e22414315cce939fd41c1`  
		Last Modified: Wed, 21 Oct 2026 15:55:36 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:cli-trixie` - unknown; unknown

```console
$ docker pull php@sha256:45ecf720c4b59336b39aa855ca4a0e4c82423b8f54f0a57b76e2c808b4a44879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6539701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81861786d1b08d99ea412a5969499a3d2e2d82a62fa67a64ab4230bac2821cd8`

```dockerfile
```

-	Layers:
	-	`sha256:99a0af3fae22c71e207f5ad8ae20fb1a8ec031e66bb095b7fdfc50cc6a786e6a`  
		Last Modified: Wed, 21 Oct 2026 15:55:34 GMT  
		Size: 6.5 MB (6495206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6da1c2825ef46540946d3d403d8ad061c4c67e1d3877d2f655680c528e676762`  
		Last Modified: Wed, 21 Oct 2026 15:55:34 GMT  
		Size: 44.5 KB (44495 bytes)  
		MIME: application/vnd.in-toto+json

### `php:cli-trixie` - linux; arm64 variant v8

```console
$ docker pull php@sha256:361f9916dee86b0c0b67dfd196ce5cd8ebcecb089724d867a57f564fa94909fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.5 MB (181480200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5105ad545858853a17a2a688e3bed8440c9632c7bfcb2ea97e61d0f5d035f1`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 15:51:32 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 15:51:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 15:51:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:51:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:51:49 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:51:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:51:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:51:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:51:49 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 15:51:49 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 15:51:49 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 15:51:49 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 15:51:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 15:51:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:55:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 15:55:05 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:55:06 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 15:55:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 15:55:06 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab05f690623f28937cc7d13e5506abe1fce7dda7bf8cde3dfb079791e3e56daa`  
		Last Modified: Wed, 21 Oct 2026 15:55:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a0f92065b691bc1840638dfd1f2e60db9a13903466e996a3c4edbfeb8b78bfa`  
		Last Modified: Wed, 21 Oct 2026 15:55:29 GMT  
		Size: 110.2 MB (110179034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a0179a4f911261e607ec09c2eb53e40b26d1ebd697a4e425c6e0341e5c1d2d9`  
		Last Modified: Wed, 21 Oct 2026 15:55:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8cf4a30aeb121dba7108be2e8c95c02740d92fb469ffa2e151d66bbb2c78275`  
		Last Modified: Wed, 21 Oct 2026 15:55:27 GMT  
		Size: 14.7 MB (14702326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbab4be21c3e0dfcdbc96afd14117ad44295e6a36c6ac5227e0006acf3e97522`  
		Last Modified: Wed, 21 Oct 2026 15:55:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061d5a075c16f3d97d3e75688193bbb216657d96116a920de97364b041b6dc7e`  
		Last Modified: Wed, 21 Oct 2026 15:55:28 GMT  
		Size: 26.4 MB (26394723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d92cdb56a05bf892e682427f25d26bef95551890547d0121a366b045ded0d2a`  
		Last Modified: Wed, 21 Oct 2026 15:55:28 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3eaaf87d90876901bb475a5e79c94beda6e62b9293f4046be850b3b2260c98f`  
		Last Modified: Wed, 21 Oct 2026 15:55:28 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:cli-trixie` - unknown; unknown

```console
$ docker pull php@sha256:7490acdad9a8ee82b8b7307fb93a97a296c00a1122a1b99bc225cf65463e4957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6833327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af4a1ded2a5665cabe4a59e2e606a04177643d406b526723f748d85b3e01c14`

```dockerfile
```

-	Layers:
	-	`sha256:04a5683587523d8bf65b8cb8be0eb965985b90954ce3770eaa8ee069df95a1ef`  
		Last Modified: Wed, 21 Oct 2026 15:55:27 GMT  
		Size: 6.8 MB (6788743 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08bbe6ec277c91535c068e1a46a89c716d2fd20b7b22f8b1d025439fbe3df236`  
		Last Modified: Wed, 21 Oct 2026 15:55:26 GMT  
		Size: 44.6 KB (44584 bytes)  
		MIME: application/vnd.in-toto+json

### `php:cli-trixie` - linux; 386

```console
$ docker pull php@sha256:cd47ffef998a3882bef3547ec347bf7b5564c707e3de312e77fa985e89109b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190140186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1026c9ae86fc30cc638a0563c0fb33ffbc592f44fb11025eae65239fc9388074`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 15:53:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 15:53:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 15:53:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:53:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:53:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:53:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:53:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:53:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:53:40 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 15:53:40 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 15:53:40 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 15:53:40 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 15:53:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 15:53:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:56:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 15:56:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:56:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 15:56:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 15:56:47 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb9605d0d6f1df22cc3141074c86c422a1490a7594b78cc8ea9aba57869c849`  
		Last Modified: Wed, 21 Oct 2026 15:57:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7194a32b2a92d9f63246e2b02b9f681061a67b47748e2e26ea06918f9109485d`  
		Last Modified: Wed, 21 Oct 2026 15:57:10 GMT  
		Size: 116.1 MB (116140967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219c9a3bf3d6cdb70e71bd08adfa47a6c6fb9b686fb7e455598fed73486538bb`  
		Last Modified: Wed, 21 Oct 2026 15:57:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7eb1b202aaf4ccdb5d547d952f17ac3adef48b0fafa7de8902c3d2a7d98c44`  
		Last Modified: Wed, 21 Oct 2026 15:57:07 GMT  
		Size: 14.7 MB (14701712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38e8f6edd3326508a0ba515c7dc749ed14e92b52d17f7e2e6ce70c140c12b30`  
		Last Modified: Wed, 21 Oct 2026 15:57:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66663b557d5c524f355cd676a56c0cfee1e5c191c95fb997e8b39fd05777a9c1`  
		Last Modified: Wed, 21 Oct 2026 15:57:09 GMT  
		Size: 27.9 MB (27940331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4b6fd38636c4ed9b066955975732adf52f785d7b1279f545928e867afbe887`  
		Last Modified: Wed, 21 Oct 2026 15:57:09 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167d566d271e6c84b44a37e8a86e44f97159833afecb34324963467891da492f`  
		Last Modified: Wed, 21 Oct 2026 15:57:09 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:cli-trixie` - unknown; unknown

```console
$ docker pull php@sha256:49d776cf08f4f23a8d64ff503d2efe7d93165231c1f7d41d3e25850cd4d4f5e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6709322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e84c1cc019e83abb20568829daeae712839bdbf1ac2aa31afe383d0a8cfc026`

```dockerfile
```

-	Layers:
	-	`sha256:f6a4269e08485abb73586ee70faef9d55a5e7e7e28d2c919a06842f2b5d90ba3`  
		Last Modified: Wed, 21 Oct 2026 15:57:07 GMT  
		Size: 6.7 MB (6665163 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a58b4f8fda0879ffbf54d5899e10a0dd784d32c42c5c718584691158f8f93e77`  
		Last Modified: Wed, 21 Oct 2026 15:57:06 GMT  
		Size: 44.2 KB (44159 bytes)  
		MIME: application/vnd.in-toto+json

### `php:cli-trixie` - linux; ppc64le

```console
$ docker pull php@sha256:9d3386d92340440309069c43c7890adf88fd7db8e7963fd3d7ae9e03382a91bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185266151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5cf6d9feb50786faa80386de4dbfec26f62776ed143b67b7b469aa89dcb45b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:58:07 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 00:59:42 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 00:59:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 00:59:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 00:59:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 00:59:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 00:59:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 00:59:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 00:59:43 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 00:59:43 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 00:59:43 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 00:59:43 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 18:34:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 18:34:55 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 18:42:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 18:42:56 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 18:42:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 18:42:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 18:42:57 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ac69a2bed9fc2c58b635321133c8c65b8b0f5b2afca103320f7855ccac5bf2`  
		Last Modified: Wed, 21 Oct 2026 01:05:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe00f16e0b9e08d256f422cbc3e091c4e1895ea7b545982163c966a75597de5`  
		Last Modified: Wed, 21 Oct 2026 01:05:48 GMT  
		Size: 109.6 MB (109611929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f0206a5d08b1e075f47847c4b3d841ccd9306081ae703f614bff8dfccc9d1c5`  
		Last Modified: Wed, 21 Oct 2026 01:05:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ba847b32dab27e88f807a34125fc53b8ac9f75074f523a0974365240afa654`  
		Last Modified: Wed, 21 Oct 2026 18:43:40 GMT  
		Size: 14.7 MB (14717767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91d77bf49c561540a3bdc06de16eae99a764501622c23b38d8f8413441e3c857`  
		Last Modified: Wed, 21 Oct 2026 18:43:39 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bfc1da79673c4efa8eea4bf7d6473154202c6e57117588c7dcdd2aa158867cb`  
		Last Modified: Wed, 21 Oct 2026 18:43:41 GMT  
		Size: 27.3 MB (27280884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fd4cef481a64fc362603047d02c3d930e64e8aa9be3f923b2e2bb304ffb982`  
		Last Modified: Wed, 21 Oct 2026 18:43:39 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2887f25fce1637dc7b81b0ffdef95ced2937d8f6cc040c2a4bfdd0dcec64fd5f`  
		Last Modified: Wed, 21 Oct 2026 18:43:40 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:cli-trixie` - unknown; unknown

```console
$ docker pull php@sha256:785c5dddc14fdbaf02d38adafe48f5cfd0212ba1ed0d466e70008eaf71e90098
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6735441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c89435216c08ad3f0b6d6188a2402671b9c362ca991df396b8bca46e94b6ee9`

```dockerfile
```

-	Layers:
	-	`sha256:d5e08d3e5cb0a4878079421685adaf317889687db4736d99b94b3627685404f3`  
		Last Modified: Wed, 21 Oct 2026 18:43:40 GMT  
		Size: 6.7 MB (6691054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fd5e068c297676372c24cf4ad76781d4a023f144c3d81b1d1e32ddf014748d5`  
		Last Modified: Wed, 21 Oct 2026 18:43:39 GMT  
		Size: 44.4 KB (44387 bytes)  
		MIME: application/vnd.in-toto+json

### `php:cli-trixie` - linux; riscv64

```console
$ docker pull php@sha256:32885e3bd5af5d895ed8284ccc2cdfa7e5d230c4fce9eb64a9f712a59e36b6fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214771824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d62c4bd5f2b6d19d5cf5336978b1200bb4ef3a84ed4c12bf0e6e34ca3bdcffde`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 09:35:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 09:37:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 09:37:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 09:37:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 09:37:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 09:37:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 09:37:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 09:37:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 09:37:21 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 09:37:21 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 09:37:21 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 09:37:21 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Fri, 23 Oct 2026 11:27:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 23 Oct 2026 11:27:52 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 12:29:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 23 Oct 2026 12:29:09 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 12:29:10 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 23 Oct 2026 12:29:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 23 Oct 2026 12:29:10 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa31369b52cced343b4809330d712177f9612babb670e89d385299a383a4ed`  
		Last Modified: Wed, 21 Oct 2026 10:40:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d6311ac5d826a4a861f59e12b20591857d57f74ab4e198c2327b5f6588a1105`  
		Last Modified: Wed, 21 Oct 2026 10:41:14 GMT  
		Size: 146.6 MB (146584381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae97f889403e93599c19761fb84d1a53065dcf0f56f464dca9cede5b6940ca0`  
		Last Modified: Wed, 21 Oct 2026 10:40:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655e4a74b2cfe66708bcd8874d2f165c7e280415a05804f4c5a18a5da4bd118f`  
		Last Modified: Fri, 23 Oct 2026 12:32:53 GMT  
		Size: 14.7 MB (14716387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d50325bbd82c7867ff2630c7a6a05df661c2d63bb827b6efd8c9a1b32d430d56`  
		Last Modified: Fri, 23 Oct 2026 12:32:48 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fdbb4460c52a222fad0b1b98cc133ae7cee8b298318462c3a72222e5b91ae1e`  
		Last Modified: Fri, 23 Oct 2026 12:32:54 GMT  
		Size: 25.1 MB (25133538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2143dfbb1b6a954a8de14f0de7a8bbc3a8e0233ddcff5907242b84e2ec539f9`  
		Last Modified: Fri, 23 Oct 2026 12:32:48 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17812dd0c4ae2818b42607e1d54d5b322074e24305d91cef82aa61386d40493b`  
		Last Modified: Fri, 23 Oct 2026 12:32:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:cli-trixie` - unknown; unknown

```console
$ docker pull php@sha256:d9c7d531d313d6d7b3a52c68b40770c9a824592465258cfbcbd32444ef483e3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6807526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b436ed821884a9904f64c7b2e6b34d721d60b2b1d1cc302915512dc0a6eed2c`

```dockerfile
```

-	Layers:
	-	`sha256:62c661b7a591eae36357e179a63500686ac53200721e12b907c3a3018ab22174`  
		Last Modified: Fri, 23 Oct 2026 12:32:50 GMT  
		Size: 6.8 MB (6763139 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ffb2e0a7ed1f14bb80a0a31e77e65f15fb641eb8281d1c161ad9b01635f2058`  
		Last Modified: Fri, 23 Oct 2026 12:32:48 GMT  
		Size: 44.4 KB (44387 bytes)  
		MIME: application/vnd.in-toto+json

### `php:cli-trixie` - linux; s390x

```console
$ docker pull php@sha256:f601ecd7f570492770cfaeabd558c01d633b46f3a12341a1b9f53aa0db7d442f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.9 MB (162944513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f80629102d21c7c8e97835e640f87d05aa6e2fca780f879983871d06c03137`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:19:48 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 00:20:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 00:20:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 00:20:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 00:20:01 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 00:20:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 00:20:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 00:20:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 00:20:01 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 00:20:01 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 00:20:01 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 00:20:01 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 15:54:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 15:54:01 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:58:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--enable-embed 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 15:58:09 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:58:09 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 15:58:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 15:58:09 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59f20a1167e1cfdb66270a8c92014975f5fcddb0bd29838817bda8ff7c8d854`  
		Last Modified: Wed, 21 Oct 2026 00:23:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08180d9105f48ca4227880b4f30d6c40d9ddec8cd8a1f0b9c64f0266f6e575af`  
		Last Modified: Wed, 21 Oct 2026 00:23:22 GMT  
		Size: 92.6 MB (92570039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabc532692fb7f7aa55d8dec5023ab89d6be9515e54d7ac701c3b8daa2948524`  
		Last Modified: Wed, 21 Oct 2026 00:23:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5405b79412094fab76bf898b2315c4eb8f4452b41dffce01ce83378d6d725d6`  
		Last Modified: Wed, 21 Oct 2026 15:58:27 GMT  
		Size: 14.7 MB (14716931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f524809e93138628d9d0a9fa76ca90ab03e1f72c6e8736cf87340fe43594182`  
		Last Modified: Wed, 21 Oct 2026 15:58:27 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348856c85e6fdccc1a32c6e00606800c312ac3d59b291cf8bac1b3a41e906095`  
		Last Modified: Wed, 21 Oct 2026 15:58:27 GMT  
		Size: 25.7 MB (25742469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7b98061f88e91cf85116a287cf7538a81f6b2706cb168b5617894427b29bfe`  
		Last Modified: Wed, 21 Oct 2026 15:58:26 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9197f733588bc7eb221601d5767e39a14d213982ac271ec50e9cae7be1c730a`  
		Last Modified: Wed, 21 Oct 2026 15:58:27 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:cli-trixie` - unknown; unknown

```console
$ docker pull php@sha256:3c69293eb03cb64cb5327cbfda5efed4cf019f77177e946dd431d687dfc26651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6552853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b3b37313a7e204e5cf9ab29cfafcf67bb7dec48866d2b5d870208164224592`

```dockerfile
```

-	Layers:
	-	`sha256:362fca9251543bbdf74bcbfd5dae2b1c351d7bc3352b60360c2fbe75de8e4fc6`  
		Last Modified: Wed, 21 Oct 2026 15:58:27 GMT  
		Size: 6.5 MB (6508599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8370bfbb13b871a256da95170c2308094c1d9d6116812369e8d9e4c657aec875`  
		Last Modified: Wed, 21 Oct 2026 15:58:26 GMT  
		Size: 44.3 KB (44254 bytes)  
		MIME: application/vnd.in-toto+json
