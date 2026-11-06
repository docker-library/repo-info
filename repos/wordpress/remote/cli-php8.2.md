## `wordpress:cli-php8.2`

```console
$ docker pull wordpress@sha256:be56991798a70b0491f406f0a088ec3f12b5cb915ab6949dced0d9052861265b
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

### `wordpress:cli-php8.2` - linux; amd64

```console
$ docker pull wordpress@sha256:4ada643d3c9bb297a39dd73d489243b492c03c23fba7cab7cead0285bba1d356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.4 MB (68419741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3918169f034bfa25a9f5d0251dc3dd2e96424866d955e57b044e2c2d7d2586d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:56:56 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:56:57 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:56:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:56:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:56:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:56:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:56:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:56:57 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 18:56:57 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 18:56:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 18:56:57 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 19:04:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 19:04:21 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:07:11 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 19:07:11 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:07:12 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 19:07:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 19:07:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 19:07:13 GMT
CMD ["php" "-a"]
# Thu, 05 Nov 2026 20:13:34 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 05 Nov 2026 20:13:34 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 05 Nov 2026 20:13:34 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 20:14:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 20:14:12 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 20:14:13 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 05 Nov 2026 20:14:13 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 05 Nov 2026 20:14:13 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 05 Nov 2026 20:14:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 05 Nov 2026 20:14:13 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 20:14:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 20:14:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 20:14:13 GMT
USER www-data
# Thu, 05 Nov 2026 20:14:13 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfa1f433fec3b9747450ae76ee03cb81ae3ad4669eb84aad09f5d6ff7b281fbc`  
		Last Modified: Thu, 05 Nov 2026 19:00:34 GMT  
		Size: 3.5 MB (3496400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27cf53bb2c955e8e484c14395c619e2a91440fa25cceac71563b35fed6a0ef3d`  
		Last Modified: Thu, 05 Nov 2026 19:00:34 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e77e1904ed80f057d01d4691e6d8f69e1529a5ddde13e8dbfdfc80906d05e2e0`  
		Last Modified: Thu, 05 Nov 2026 19:00:34 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd14c29ab4301a39289c81e740adb88cbf0bb67d8b33e9f3b7dd49fc1e7b3bd`  
		Last Modified: Thu, 05 Nov 2026 19:07:20 GMT  
		Size: 12.2 MB (12239447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e8a8b4c5f7500a29a070b0059e045b69ad390a842c8d22fee94b8a8d4b64a9c`  
		Last Modified: Thu, 05 Nov 2026 19:07:20 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3dcd6156c40f7d8e4b8d9dc90d1c523470b46bac3906a0347cc74a11ecefdc`  
		Last Modified: Thu, 05 Nov 2026 19:07:20 GMT  
		Size: 17.3 MB (17317233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a370f9cb5945a63063df4eb84d94d0139da5744725cfa41a21c796f3ae94a9`  
		Last Modified: Thu, 05 Nov 2026 19:07:20 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0782d414d6f81c59a130191035d7869c97fc963deeb7a9134613da554c6ba0ba`  
		Last Modified: Thu, 05 Nov 2026 19:07:21 GMT  
		Size: 22.3 KB (22343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df0f069745b8c75f9fcbf7fbf6712e932a8380027fefd2d54618ade941141bc`  
		Last Modified: Thu, 05 Nov 2026 19:07:21 GMT  
		Size: 22.4 KB (22356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d7cea218c53723c09f00591b4ea7bad386fc05e9204943a78565d3e144df6a`  
		Last Modified: Thu, 05 Nov 2026 20:14:22 GMT  
		Size: 11.7 MB (11734034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc78451462c81176e92062b9296a7c1abd89fda2aaab5ffdcdc5a966bd70ae6`  
		Last Modified: Thu, 05 Nov 2026 20:14:22 GMT  
		Size: 18.2 MB (18194697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0a4b669e9f74f18381d1158b86c1e39e59fc0dc5c1417993588f538804e4858`  
		Last Modified: Thu, 05 Nov 2026 20:14:22 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f744a0c460f61e7d8637a60d014473737c7a9031ee5e32b4aa5ee2fa5a17743`  
		Last Modified: Thu, 05 Nov 2026 20:14:22 GMT  
		Size: 1.5 MB (1534612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae8e549d0753f19f0e6cb894fe957c91838fb1e4a1096d81e052a6e569d51e5`  
		Last Modified: Thu, 05 Nov 2026 20:14:23 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:930e439931bbd22e18934f1f7d9c8aa3e149b00a2a7f006a83f1081eab6346e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **663.8 KB (663789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416809779995b7770e96ec2b20539db21d4f7e286b4f9bd266b90490f31b8ecc`

```dockerfile
```

-	Layers:
	-	`sha256:2b813ec84a149b7ee748b45c56797f59aaeb39fe4539fc4d74b38845159c43d7`  
		Last Modified: Thu, 05 Nov 2026 20:14:21 GMT  
		Size: 621.7 KB (621687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d638027b8dd12c273186bbfda1e6f6e38fc1699378a4fcca6dcad13eea55db2`  
		Last Modified: Thu, 05 Nov 2026 20:14:21 GMT  
		Size: 42.1 KB (42102 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-php8.2` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:6cfd04d2f3cdcc0a516456c18f4948ea85cce219c7fbc02da7229d97ac83ad63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62772711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38993690de2980641c738c2764027822fe554b88a7d5cb26b0e0b81515c8bf38`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:30:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:30:48 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:30:48 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:30:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:30:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:30:48 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:30:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:30:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:30:48 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 18:30:48 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 18:30:48 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 18:30:48 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 18:33:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:33:53 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:36:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:36:39 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:36:40 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:36:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:36:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:36:40 GMT
CMD ["php" "-a"]
# Thu, 05 Nov 2026 19:27:46 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 05 Nov 2026 19:27:46 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 05 Nov 2026 19:27:46 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 19:28:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 19:28:52 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 19:28:54 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 05 Nov 2026 19:28:54 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 05 Nov 2026 19:28:54 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 05 Nov 2026 19:28:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 05 Nov 2026 19:28:54 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 19:28:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:28:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:28:54 GMT
USER www-data
# Thu, 05 Nov 2026 19:28:54 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f277a5e4b8ea608ace7229ab12951629472bdc91354a4d68666d7ba5458dd4aa`  
		Last Modified: Thu, 05 Nov 2026 18:33:41 GMT  
		Size: 3.5 MB (3455734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65912ec7ee31b5345c63c83f590870eee7ff19b0514e0c95013fbcf611f4d9e`  
		Last Modified: Thu, 05 Nov 2026 18:33:41 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58595f04bb9fb1b8c796812527a3a8900afb9806b63561f39a32c70e905c004e`  
		Last Modified: Thu, 05 Nov 2026 18:33:41 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5455b2ede72a4ae43027eee70fb3990bd058cc159e7346ca822d0d0b391108ac`  
		Last Modified: Thu, 05 Nov 2026 18:36:46 GMT  
		Size: 12.2 MB (12239453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:151c18e68c65d3ec7a770d55ae7ab06698ea4fc370f915e3d8c0a46b72fb13fa`  
		Last Modified: Thu, 05 Nov 2026 18:36:46 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffa28276abd71254839dcb14fba05087d628cf8835d9d99aeafa6fff3f9a49f2`  
		Last Modified: Thu, 05 Nov 2026 18:36:46 GMT  
		Size: 15.7 MB (15725796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f8cac8fc96a88db606bf9bff9642fac48e28a09ef5b94013d7fe374bc9c044`  
		Last Modified: Thu, 05 Nov 2026 18:36:46 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de82536e24778d03b3ff1c206b099d00b7e9feb3b8497c57cac443a803be6f3`  
		Last Modified: Thu, 05 Nov 2026 18:36:47 GMT  
		Size: 22.1 KB (22131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40463c4adc7b906f417710044a3f8a9b099b274a9c87b086c4e8a5906a209392`  
		Last Modified: Thu, 05 Nov 2026 18:36:47 GMT  
		Size: 22.1 KB (22145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd4e674cfec50390f1bfcc4af17ad2d6b859db444cdcd2898a3fceb4f9e063f`  
		Last Modified: Thu, 05 Nov 2026 19:29:00 GMT  
		Size: 11.4 MB (11356571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be45284b49de166306dd4dffcaa9b5df8a9e2adcbfafe311da89c3c67710902`  
		Last Modified: Thu, 05 Nov 2026 19:29:00 GMT  
		Size: 14.9 MB (14852881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1782c147889c61445fd3269a1eb74fd99f51cb0da48e76a983dd80b2d3503f15`  
		Last Modified: Thu, 05 Nov 2026 19:28:59 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:639de20cdacf1e7140f66673f3b9bd565802ca3baaae529a818834326c0a01c2`  
		Last Modified: Thu, 05 Nov 2026 19:29:00 GMT  
		Size: 1.5 MB (1534666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99589e1861b2bfea57ca728b0a7f61799665b46ecbab3813db59b9bc09a5770`  
		Last Modified: Thu, 05 Nov 2026 19:29:01 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:12ee5ca30b8f9fa0d4dae7f725bbab0743654dc073c1eae2c49d5a9c59154139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 KB (42019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc96b8009edb894822fd84510ed646165413eb6d6d6abc0185dc6a1d6f7b91d`

```dockerfile
```

-	Layers:
	-	`sha256:1ce6c56a83de72972f41dceecf5eed41c1867b57df1b7b434a01e080c063e898`  
		Last Modified: Thu, 05 Nov 2026 19:28:59 GMT  
		Size: 42.0 KB (42019 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-php8.2` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:86e9cc2674dff1b359646cceba478066b678401b2e14463a1aa60c6d355e54c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61474240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5e075efc9ab648a8dfcae4180e0b61ace3fe5f4cede5bf9d30d67ace75eea8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:33:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:33:31 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:33:32 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:33:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:33:32 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:33:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:33:32 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:33:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:33:32 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 18:33:32 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 18:33:32 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 18:33:32 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 18:33:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:33:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:36:14 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:36:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:36:15 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:36:16 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:36:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:36:16 GMT
CMD ["php" "-a"]
# Thu, 05 Nov 2026 19:34:09 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 05 Nov 2026 19:34:09 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 05 Nov 2026 19:34:09 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 19:35:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 19:35:16 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 19:35:18 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 05 Nov 2026 19:35:18 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 05 Nov 2026 19:35:18 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 05 Nov 2026 19:35:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 05 Nov 2026 19:35:18 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 19:35:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:35:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:35:18 GMT
USER www-data
# Thu, 05 Nov 2026 19:35:18 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57c42059efba82c9ddd7fafbaf290ad0232275f76b484ea201411ba47efdd28`  
		Last Modified: Thu, 05 Nov 2026 18:36:22 GMT  
		Size: 3.3 MB (3266191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9943e6fed734af593b7ea17db2c9120499762391eea3b77d3b8f66556517d7b7`  
		Last Modified: Thu, 05 Nov 2026 18:36:22 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:135aea78e1d20806b60c3efc1bc2592b45ff01534b030a8a7b9cee05ac8b7ea2`  
		Last Modified: Thu, 05 Nov 2026 18:36:22 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94d89c9247b2ce8939c8e43b77375913c73458ceda32f0c6d6e0612f42ed4a9`  
		Last Modified: Thu, 05 Nov 2026 18:36:22 GMT  
		Size: 12.2 MB (12239452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502107df8d10cdd601e68cfda128b35b90f05ee521c91f76df821a58e77865dd`  
		Last Modified: Thu, 05 Nov 2026 18:36:23 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d150147c95f70b85d47667fc2bad82e8ede5069885273b0e7f2b528cc16957a9`  
		Last Modified: Thu, 05 Nov 2026 18:36:24 GMT  
		Size: 14.8 MB (14776874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72bb143f513a85cba36efcdd68d217e495bce4384ba2e1c1f0b3cb6f34c8f9fa`  
		Last Modified: Thu, 05 Nov 2026 18:36:23 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad5e1f7b00aaa95482a2c5dbba6ba2be039460232c9e8b46e75e36ccf4590b32`  
		Last Modified: Thu, 05 Nov 2026 18:36:24 GMT  
		Size: 22.1 KB (22132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b7a3020766f46c6dc250181b90800d69ca0b3f881e13b70d21ea2afe5ed2ca`  
		Last Modified: Thu, 05 Nov 2026 18:36:24 GMT  
		Size: 22.1 KB (22149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58eed8cdb66508928789728f2e0080866d6bf6028e51183f7c16ff09ad522a9f`  
		Last Modified: Thu, 05 Nov 2026 19:35:27 GMT  
		Size: 11.0 MB (11004775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a62684e20cde4064a4613e63657b3822caed658e5a4e1ede8ea9c4aa5ed7056`  
		Last Modified: Thu, 05 Nov 2026 19:35:27 GMT  
		Size: 15.3 MB (15335339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53145e77c46a847234fd23c87f9d81ddad60769e6bae44a895f615e8a00c4eca`  
		Last Modified: Thu, 05 Nov 2026 19:35:26 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc73c9261bda49fb9ad5fea4af7fd7642ceaa9f8fef78fd1d97bbbfb682c9e6f`  
		Last Modified: Thu, 05 Nov 2026 19:35:27 GMT  
		Size: 1.5 MB (1534649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:045d8aafb2c8e08157b029c08ff5d39c86ec991b865ca55e7e7c29d87ebcc330`  
		Last Modified: Thu, 05 Nov 2026 19:35:27 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:22b8da1873ba38100ce90e164b33ef22deb380cc9518556f50c2b5877a3ffa7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.1 KB (662063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a835c5ade6616f7d0897d049aecd40c97f1d5eeb18f4a11945dc60a77d6f8b3`

```dockerfile
```

-	Layers:
	-	`sha256:597280b3af649817679a089bd7aa961532d0cfcc955fc1c0ca1f5d2f42672346`  
		Last Modified: Thu, 05 Nov 2026 19:35:26 GMT  
		Size: 619.8 KB (619829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c33a8ce67edf858e5cc60125f0fb2272206aa61297339ae7c8b6e43f0e297aeb`  
		Last Modified: Thu, 05 Nov 2026 19:35:26 GMT  
		Size: 42.2 KB (42234 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-php8.2` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:5e59ee067000fc5573bfc04d0c714a11d322bc9e1b0d0ec70aaf81afd19ef51e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.6 MB (67566575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f1236a8f5f32ddea3320cdf10e22660ac2255cd83224a65196d35c0810a0e86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:53:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:53:19 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:53:19 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:53:19 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:53:19 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:53:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:53:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:53:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:53:19 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 18:53:19 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 18:53:19 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 18:53:19 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 18:57:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:57:06 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:01:03 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 19:01:03 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:01:04 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 19:01:04 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 19:01:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 19:01:04 GMT
CMD ["php" "-a"]
# Thu, 05 Nov 2026 20:13:03 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 05 Nov 2026 20:13:03 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 05 Nov 2026 20:13:03 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 20:13:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 20:13:56 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 20:13:58 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 05 Nov 2026 20:13:58 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 05 Nov 2026 20:13:58 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 05 Nov 2026 20:13:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 05 Nov 2026 20:13:58 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 20:13:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 20:13:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 20:13:58 GMT
USER www-data
# Thu, 05 Nov 2026 20:13:58 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:928006b6265efb28f15263238297c5cdc4439a16f6a7c72d6e973cd68053dec6`  
		Last Modified: Thu, 05 Nov 2026 18:56:56 GMT  
		Size: 3.5 MB (3512475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b4c9bb7ca2c8f651c7b16dcddd2aa560c4577cfff16a667a3e3b79419e1280a`  
		Last Modified: Thu, 05 Nov 2026 18:56:55 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3da7a4787b7194cd909a160169f4564fdf57cdcde758040653f4312d5bd7e12`  
		Last Modified: Thu, 05 Nov 2026 18:56:55 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a88b3b109150dc2a8e2ccad71249b437939a1b36122e4b8e13ebad3e1ab0ef`  
		Last Modified: Thu, 05 Nov 2026 19:01:12 GMT  
		Size: 12.2 MB (12239432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5fda88997fe6fe93e5c262f764422b7fc64686d23f94bd7acbbcad2a833b02`  
		Last Modified: Thu, 05 Nov 2026 19:01:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aec43da4d05062c573e551ba99de9a4cbb059ea4ffa378617800a166de174cb5`  
		Last Modified: Thu, 05 Nov 2026 19:01:12 GMT  
		Size: 17.1 MB (17092983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:429c5df2e189f007a7b2021d425a28b725a322a66107195127811d4d97cff34d`  
		Last Modified: Thu, 05 Nov 2026 19:01:12 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36590a7d5f6ac9e99a8c47c4fe4b2c268bef966019ef20922d26d08aa634476`  
		Last Modified: Thu, 05 Nov 2026 19:01:13 GMT  
		Size: 22.2 KB (22167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c02b0fd338a075307eb8f22896d9d2f6c329cde3bec7f6b22eccd573b13a4518`  
		Last Modified: Thu, 05 Nov 2026 19:01:13 GMT  
		Size: 22.2 KB (22181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf9ee60ebbeb218dd743a4c85676a5edc52b97f2b392a64a48dc58a0d3d35d2`  
		Last Modified: Thu, 05 Nov 2026 20:14:07 GMT  
		Size: 11.7 MB (11664225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4276bd963be8b1dd7fc36b88803c6cd2f69f018f29fe52f1eb4a63bb83cce1f4`  
		Last Modified: Thu, 05 Nov 2026 20:14:07 GMT  
		Size: 17.3 MB (17282997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e6678ac46cae09df0ff88f8b453e33408011940f57d3b4fdcd33d3615527cfa`  
		Last Modified: Thu, 05 Nov 2026 20:14:07 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865bbe9abdc011da48268da55fe625fc0e097e153cad832b3b11c9ebbfdb33a3`  
		Last Modified: Thu, 05 Nov 2026 20:14:07 GMT  
		Size: 1.5 MB (1534583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c329b500671d1200c614964b18df4098e090903bc058ad93a98f723223b449`  
		Last Modified: Thu, 05 Nov 2026 20:14:08 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:f8821779b9cc98538b224f0ff6c7141aeff430a50bdeffab8d05c174f6917f94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.1 KB (662115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95b5c413a1c04a7ddfd2ef202353f7e60067980de47770dd015d68035d73ecf2`

```dockerfile
```

-	Layers:
	-	`sha256:a14fb78a4e0cb0563b7c15e861ac9074b0ca8e4cc8006709a19ae9533d6a0cd8`  
		Last Modified: Thu, 05 Nov 2026 20:14:06 GMT  
		Size: 619.8 KB (619849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa102a3178e4c3a43341bb9367ec41f7cd5cdc74eeac7732ac14775682897cbe`  
		Last Modified: Thu, 05 Nov 2026 20:14:06 GMT  
		Size: 42.3 KB (42266 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-php8.2` - linux; 386

```console
$ docker pull wordpress@sha256:d069892557d636dea62fe8c458a6078e49c85d44486d97f798a43cb3c7fe3e0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67899483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce0c880767f62f519caed9ab72906bf8a4f29a93a78352272990ae7f2f3de61b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:17:00 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:17:00 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:17:00 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:17:00 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:17:00 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:17:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:17:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:17:00 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:17:00 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 18:17:00 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 18:17:00 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 18:17:00 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 18:23:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:23:55 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:26:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:26:31 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:26:32 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:26:32 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:26:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:26:32 GMT
CMD ["php" "-a"]
# Thu, 05 Nov 2026 18:44:10 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 05 Nov 2026 18:44:10 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 05 Nov 2026 18:44:10 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:44:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 18:44:53 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 18:44:55 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 05 Nov 2026 18:44:55 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 05 Nov 2026 18:44:55 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 05 Nov 2026 18:44:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 05 Nov 2026 18:44:55 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 18:44:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:44:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:44:55 GMT
USER www-data
# Thu, 05 Nov 2026 18:44:55 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e6800a0d3b9575033e6ba47fc02245f61f78a04f4608d78da47aecf92cc9d89`  
		Last Modified: Thu, 05 Nov 2026 18:20:26 GMT  
		Size: 3.5 MB (3532724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11b2154b045d99511c3449cbc610d18a30e97c320778cc17f9d442b40523a435`  
		Last Modified: Thu, 05 Nov 2026 18:20:25 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7354e60e06bf62a7563dc6288f3844a722b3acc8b90c18b40c94c08f4ad0b91`  
		Last Modified: Thu, 05 Nov 2026 18:20:25 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1afb014a1c31d7636b097fca2a4468c341dfb00a544a74000fff3edc5b9a5e5`  
		Last Modified: Thu, 05 Nov 2026 18:26:40 GMT  
		Size: 12.2 MB (12239423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2670fe9e6989ad524e4999ff2b227d9485726a11f42f15524c5cc22daa0ce9e1`  
		Last Modified: Thu, 05 Nov 2026 18:26:39 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfc465d74705085455e810883503f02483ca66e5968b06253582134c257dcb4`  
		Last Modified: Thu, 05 Nov 2026 18:26:40 GMT  
		Size: 17.7 MB (17714632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b610029634af750f721dfba3322fc0523fadf79cab9b1a7d04aea8a98594eaf8`  
		Last Modified: Thu, 05 Nov 2026 18:26:39 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8f58ff10827fcc0986336efd3a22770b275bbf0d8786e03c2b76262438e63b`  
		Last Modified: Thu, 05 Nov 2026 18:26:40 GMT  
		Size: 22.4 KB (22354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e73141e2c8b0bc8b18c59c2ecdeff2d429e71ba06d361ce25cbb45e3a8dc45`  
		Last Modified: Thu, 05 Nov 2026 18:26:40 GMT  
		Size: 22.4 KB (22359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aba5663733d53a07a4ffb8d00aa478c82a73e89530e20f0d12c483284b1e393b`  
		Last Modified: Thu, 05 Nov 2026 18:45:03 GMT  
		Size: 11.9 MB (11869152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a674fea7531c3991c8c5e9b3959900c7bec65a55e5e39bc9c49aa0b287eed6b2`  
		Last Modified: Thu, 05 Nov 2026 18:45:04 GMT  
		Size: 17.3 MB (17278944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95505552fd96c94857eea5e6a0315b12f79334f39c9440f7deab5d2011c290e5`  
		Last Modified: Thu, 05 Nov 2026 18:45:03 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12806fa8444c06329470d7f023835d212477bec65ca324da3f8c617588577a7c`  
		Last Modified: Thu, 05 Nov 2026 18:45:03 GMT  
		Size: 1.5 MB (1534597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b5801676e1edc8b8f9c9b96b5cd47bdf228632fb9e1726e54156e2eb60251a9`  
		Last Modified: Thu, 05 Nov 2026 18:45:04 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:572c3c2af2f2355f1ae8922b92c6271060b693fd47eaf3fd790c5c5013ea1752
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **663.7 KB (663724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93fa077c0060898248c8659556571f7bb854576fb34394d8f7c45f03870d5998`

```dockerfile
```

-	Layers:
	-	`sha256:ddde77767974cfc5915c87c2e92ec66a7a44e8a0eb66c099ffe49b949b86cbc2`  
		Last Modified: Thu, 05 Nov 2026 18:45:03 GMT  
		Size: 621.7 KB (621662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bee01ac243f4234da1681200dddfb8a1bc870931ff35412b43ba64db31b630f3`  
		Last Modified: Thu, 05 Nov 2026 18:45:03 GMT  
		Size: 42.1 KB (42062 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-php8.2` - linux; ppc64le

```console
$ docker pull wordpress@sha256:e3284121ae507c0dfe916a7ad893c0b4b47f15893e753bed71803c4fda49358b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.1 MB (70082018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b353bfe38d13e798b56c8aee3246a98e7d2d96252cded46a76efab3aae1461c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:37:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 21:37:41 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 21:37:43 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 21:37:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 21:37:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 21:37:46 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 22:37:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 22:37:40 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 22:41:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 22:41:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 22:41:58 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 22:42:00 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 22:42:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 22:42:00 GMT
CMD ["php" "-a"]
# Fri, 06 Nov 2026 10:01:40 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Fri, 06 Nov 2026 10:01:40 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Fri, 06 Nov 2026 10:01:40 GMT
WORKDIR /var/www/html
# Fri, 06 Nov 2026 10:03:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 06 Nov 2026 10:03:31 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 06 Nov 2026 10:03:33 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 06 Nov 2026 10:03:33 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Fri, 06 Nov 2026 10:03:33 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Fri, 06 Nov 2026 10:03:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Fri, 06 Nov 2026 10:03:33 GMT
VOLUME [/var/www/html]
# Fri, 06 Nov 2026 10:03:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 06 Nov 2026 10:03:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Nov 2026 10:03:34 GMT
USER www-data
# Fri, 06 Nov 2026 10:03:34 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46d45d42befed46bba518e63b124c822b4f3e5e56556cd342469e05eef60e1e4`  
		Last Modified: Thu, 05 Nov 2026 21:43:48 GMT  
		Size: 3.7 MB (3672704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27df544a7e4deac06d4c069baa6d3874e5a90dfd80a8e6b929669a250180798`  
		Last Modified: Thu, 05 Nov 2026 21:43:48 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7207e849983464015f2e0550d571425c965d393be98f77abbba0af805774bf`  
		Last Modified: Thu, 05 Nov 2026 21:43:48 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f078e973fafc8e0575fd96fe43cd0b2f917489477fba5d0a34e8706ce3f6a74`  
		Last Modified: Thu, 05 Nov 2026 22:42:14 GMT  
		Size: 12.2 MB (12239441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb581f142a472fd6ce902e2a350a65a0b32b679a0846ae49616373d44b1f163f`  
		Last Modified: Thu, 05 Nov 2026 22:42:14 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2561609f47e5ba1936f4012e652afe98fd847e66da5b8e71cff628c4725e8f20`  
		Last Modified: Thu, 05 Nov 2026 22:42:15 GMT  
		Size: 18.3 MB (18276216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94a940abb6f839d3e11f53a7c3dc551b491cb5561d5723d4e7c796d507a578ae`  
		Last Modified: Thu, 05 Nov 2026 22:42:14 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5032f33b9a55f41a0cc3d46119f75169889a0f6baf8f721c48db05e288cd4531`  
		Last Modified: Thu, 05 Nov 2026 22:42:15 GMT  
		Size: 22.2 KB (22181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab87aeae102d6764894ef5657e0171c1c3560286551a7eb6d84162a013c9e9c5`  
		Last Modified: Thu, 05 Nov 2026 22:42:15 GMT  
		Size: 22.2 KB (22199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e8482033e58ad4cb93962b7642aebc935296f6234fde5c397b8c439316b1ad1`  
		Last Modified: Fri, 06 Nov 2026 10:04:00 GMT  
		Size: 12.4 MB (12403717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651454470ca3560c176208a7095e28e2e9cf5459eac535bc1a9c684ed348afd3`  
		Last Modified: Fri, 06 Nov 2026 10:04:00 GMT  
		Size: 18.1 MB (18084051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f6cb2c5e5811b2b7e27d4ec25ebd7cb827d628942ed2fa08c6eb666da7cbe83`  
		Last Modified: Fri, 06 Nov 2026 10:03:59 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba11f33879b48de245b2289c5db82eb2472e01c25d62889ff72740333529d724`  
		Last Modified: Fri, 06 Nov 2026 10:03:59 GMT  
		Size: 1.5 MB (1534633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f27fbe03464a92cc3d4476f520716d74ae6ec1808904da22149fbf712fddce8`  
		Last Modified: Fri, 06 Nov 2026 10:04:01 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:88d66443a7a1b3a288c3becdc9cfa096167dc4482e26ba27867cc8dfda8add0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.0 KB (661979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2437cec70aca9f5721fa0de71b204d89dad03ac41861eb555dd1feb1a32f2ed`

```dockerfile
```

-	Layers:
	-	`sha256:9d3bb85f440899f0fb3a718840d72300f60623857ce52d1fcdfa1891c3c1f022`  
		Last Modified: Fri, 06 Nov 2026 10:03:59 GMT  
		Size: 619.8 KB (619826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3caab7e26031bf120fe5e8e429186fc83220d2913774c663404f47c02968a079`  
		Last Modified: Fri, 06 Nov 2026 10:03:59 GMT  
		Size: 42.2 KB (42153 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-php8.2` - linux; riscv64

```console
$ docker pull wordpress@sha256:264507b64463ac1ec7ebebb266bd93a11bdbc53ae251d5c6769f235ad787e310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (65021339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19de4965d835a29a446a6b672c51c59b58a677da23ad20871e7c486460cc22a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 24 Oct 2026 16:59:15 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Sat, 24 Oct 2026 16:59:15 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 24 Oct 2026 16:59:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 24 Oct 2026 16:59:15 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_VERSION=8.2.35
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Sun, 25 Oct 2026 16:54:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sun, 25 Oct 2026 16:54:13 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sun, 25 Oct 2026 17:44:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sun, 25 Oct 2026 17:44:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sun, 25 Oct 2026 17:45:00 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sun, 25 Oct 2026 17:45:05 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sun, 25 Oct 2026 17:45:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sun, 25 Oct 2026 17:45:05 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 02:38:50 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 29 Oct 2026 02:38:50 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 29 Oct 2026 02:38:50 GMT
WORKDIR /var/www/html
# Thu, 29 Oct 2026 02:52:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 29 Oct 2026 02:52:43 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 29 Oct 2026 02:52:56 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 29 Oct 2026 02:52:56 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 29 Oct 2026 02:52:56 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 29 Oct 2026 02:52:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 29 Oct 2026 02:52:56 GMT
VOLUME [/var/www/html]
# Thu, 29 Oct 2026 02:52:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 02:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 02:52:56 GMT
USER www-data
# Thu, 29 Oct 2026 02:52:56 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78eff1dba649354d5f1624680b39758fd75d4c2f426fb2d4e2be86e1ad12e27`  
		Last Modified: Sat, 24 Oct 2026 18:03:49 GMT  
		Size: 3.6 MB (3637070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adff7d7e828c2b89fff33664584cc15a414f868fa8f6880adb903e1b1ee78be6`  
		Last Modified: Sat, 24 Oct 2026 18:03:48 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ffc140b5c63bfa44ee1e29819cfa6b34b26660b67cda72d06898efd07d37316`  
		Last Modified: Sat, 24 Oct 2026 18:03:48 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aae64206ca35fe28d1cd6ef90d6465e7b910aa3653ac80c6d14b879c91305fa`  
		Last Modified: Sun, 25 Oct 2026 17:46:13 GMT  
		Size: 12.2 MB (12239471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45465ed1f42398b5f7e66d62531ca771013442635566a6bbc7b28844d4a44aa6`  
		Last Modified: Sun, 25 Oct 2026 17:46:09 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02b95a30ab374c5a1ae817cec5421001ea89769d6d384ab7f7a57729836c6947`  
		Last Modified: Sun, 25 Oct 2026 17:46:13 GMT  
		Size: 16.4 MB (16388836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ea50b25119bb4110de3d8dc48733c50a11ca61c2e4faa2b9f204e4f8e858a3`  
		Last Modified: Sun, 25 Oct 2026 17:46:09 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d4bc75bc88fabc927b8685f47be5c0a1f2ad7250fddfb77877decb0ff88a1d`  
		Last Modified: Sun, 25 Oct 2026 17:46:11 GMT  
		Size: 22.2 KB (22185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:395cfd17754e15d06027b0b631336847fa501505d1f21bcf80ad9dbd05bbcae4`  
		Last Modified: Sun, 25 Oct 2026 17:46:11 GMT  
		Size: 22.2 KB (22214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd7ec80d32fad611f7880800616ecae7d91ce1eabc1060d6519fe2336aefe300`  
		Last Modified: Thu, 29 Oct 2026 02:54:25 GMT  
		Size: 12.2 MB (12162483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85acbf87fb73a0b995df98d8b4f0bbdf43c882e77f191254970e4f00e6e6ff6c`  
		Last Modified: Thu, 29 Oct 2026 02:54:26 GMT  
		Size: 15.4 MB (15428801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cdb2e159646f429b92ccd083db00db2d2f97c6ab401952cbe07ac6bba157f67`  
		Last Modified: Thu, 29 Oct 2026 02:54:22 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26655e7ef6516366ae341dcaf86b8adeb7ee418befc6625128f90c64a037a296`  
		Last Modified: Thu, 29 Oct 2026 02:54:22 GMT  
		Size: 1.5 MB (1534664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c121c558911a05d5f6605dc361760078257152faa1d9269fe21e30f478af232`  
		Last Modified: Thu, 29 Oct 2026 02:54:24 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:781637d31eac61e85dc1cf45aedde736dc1ddb612a52af960d38ae55c3b8b278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.0 KB (661972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:876519918c9132426a3d9716060ecb65db43f43263dc3c6c831402104158603b`

```dockerfile
```

-	Layers:
	-	`sha256:96041c63427c563d2879b428e3d08e8f0697430c256ccdd44fcb624d7894cc56`  
		Last Modified: Thu, 29 Oct 2026 02:54:21 GMT  
		Size: 619.8 KB (619818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:050c5226deeb1c6ccd672b88da19664e6ec1d0b47572406b0ee85cbaf31be587`  
		Last Modified: Thu, 29 Oct 2026 02:54:21 GMT  
		Size: 42.2 KB (42154 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-php8.2` - linux; s390x

```console
$ docker pull wordpress@sha256:7559fa8d849bfac125805fbdb420c9ac8b6d60926518cc384267ee01f375e0ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69088363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1f0f4e3308f9482f702d59a007d704cebcad1725afcbf4d0e13174433d6b31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:17:40 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:17:40 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:17:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:17:40 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 18:44:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:44:50 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:48:33 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:48:33 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:48:34 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:48:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:48:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:48:36 GMT
CMD ["php" "-a"]
# Thu, 05 Nov 2026 21:33:55 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 05 Nov 2026 21:33:55 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 05 Nov 2026 21:33:56 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 21:35:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 21:35:08 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 21:35:12 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 05 Nov 2026 21:35:12 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 05 Nov 2026 21:35:12 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 05 Nov 2026 21:35:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 05 Nov 2026 21:35:12 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 21:35:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 21:35:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:35:12 GMT
USER www-data
# Thu, 05 Nov 2026 21:35:12 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618f633add7643f5dbf32937a509a5ada6699ff1a4c94641f87cbd1a0182a7bf`  
		Last Modified: Thu, 05 Nov 2026 18:20:55 GMT  
		Size: 3.7 MB (3691032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7943a5fad4f7eb12144e901d291d5400736edab23f2ccd63ae3aade879b1f11c`  
		Last Modified: Thu, 05 Nov 2026 18:20:53 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0fff43cfd9dc96d02abd83f96ccd039cef07b4dd33a7f229685ee2c32aa8c9`  
		Last Modified: Thu, 05 Nov 2026 18:20:53 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a93581f0592621f5a4b9b4e74a3bcf71ecdfe170b5974104d9159da7f2db0185`  
		Last Modified: Thu, 05 Nov 2026 18:48:57 GMT  
		Size: 12.2 MB (12239442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0cdcafdeed1892bce162504ecbbd8d63dc89da4b0e78dbcaef0b8d4dc2e83d`  
		Last Modified: Thu, 05 Nov 2026 18:48:55 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ecded0edbe28ccdc049477123366d4714eb3fbada970d5a53e6caaf87201f97`  
		Last Modified: Thu, 05 Nov 2026 18:48:58 GMT  
		Size: 17.3 MB (17273630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d245814b51e4a2f9e26d5ea13871bc3d75bd79c484f8e9dbfa846690e3e4e620`  
		Last Modified: Thu, 05 Nov 2026 18:48:55 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af3c5a40364d8ba6772f11539af60e8cccea3beb4e8211d5c96865a287b7ed6`  
		Last Modified: Thu, 05 Nov 2026 18:48:57 GMT  
		Size: 22.1 KB (22123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85be008676ba05cd9ba709b2b0914dfe4ce6fbc0b969a9d8d23a808b454ed4d3`  
		Last Modified: Thu, 05 Nov 2026 18:48:57 GMT  
		Size: 22.1 KB (22145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:229d8c073c144c4123872c697d4e395b46b0e3e6c63842d3fd94e412406abbde`  
		Last Modified: Thu, 05 Nov 2026 21:35:39 GMT  
		Size: 13.1 MB (13148127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d71d464c5ea5daf954ec0fe5c21346b3fe01a5486ce425d369cf2f98e9ba4bb`  
		Last Modified: Thu, 05 Nov 2026 21:35:39 GMT  
		Size: 17.4 MB (17431596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3cb9846a9c999cb408bc3e2d9bc2080fec2c7084db28a715cdbe264ca4eb702`  
		Last Modified: Thu, 05 Nov 2026 21:35:39 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54343c672676b6148181b87cd90dcbb5095c85c3110f51c6ee56ab12cf4c59c`  
		Last Modified: Thu, 05 Nov 2026 21:35:39 GMT  
		Size: 1.5 MB (1534654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64382e0d575cbe47aafb4213e450dc5db99486f497f632ffd870113bfb8f39a`  
		Last Modified: Thu, 05 Nov 2026 21:35:40 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:62a9cc32f1f24d963dfea9b7c98a20039b187ef16c1d1611ba74cb9c71e6dd69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **661.9 KB (661894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59886c076c62ad1c6001d67c29bc588b5e20b4bd9c2c5d2d629b560053066e88`

```dockerfile
```

-	Layers:
	-	`sha256:e0c682d87dd5d4a76b4ca317efd642228d1cb62da0dd918c850e17ccd8bdaeb3`  
		Last Modified: Thu, 05 Nov 2026 21:35:39 GMT  
		Size: 619.8 KB (619792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3340bfc897f30d9431c5d164839164a773fd07ddf550c99df8bd5c193fc93ca`  
		Last Modified: Thu, 05 Nov 2026 21:35:38 GMT  
		Size: 42.1 KB (42102 bytes)  
		MIME: application/vnd.in-toto+json
