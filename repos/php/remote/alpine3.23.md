## `php:alpine3.23`

```console
$ docker pull php@sha256:1c8aac6ce88a8ae885fe241ab403a254e28d9c9531342bfe837be227e4ba23d4
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

### `php:alpine3.23` - linux; amd64

```console
$ docker pull php@sha256:1149fcfa115ffa526343a571a1107568f85f3c2293321da0cdcd69b2a9310b3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44823869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea42ffedc99f9736b4b8f105ad8b2a45a99c89791ddb3a70186fddbd6ffa882`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:57 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:56:57 GMT
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 18:56:57 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 18:56:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 18:56:57 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 18:56:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:56:59 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:00:08 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 19:00:08 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:00:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 19:00:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 19:00:08 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8435686027227238fca2366f41dcd36b0f0eb7bab9191d8244c01ea89d4afcd3`  
		Last Modified: Thu, 05 Nov 2026 19:00:17 GMT  
		Size: 3.5 MB (3493826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd55f061d7a6441f65ed8f552a68d1b1012ffc4c110eb3ac4d143701623d7c8`  
		Last Modified: Thu, 05 Nov 2026 19:00:16 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e98fbecd904db453bbfe622c594c2ccfd5e690a0d9dd6cc238b016c9bc3e135`  
		Last Modified: Thu, 05 Nov 2026 19:00:17 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41221a7b59a31c44b6b2385b59c9ce689552801a3c92c0f60a2b44bdec32c45`  
		Last Modified: Thu, 05 Nov 2026 19:00:17 GMT  
		Size: 14.6 MB (14577819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2566325217b34604b2c23222eab2c48e56bc6b4bf15415689d55bf97dc6a56ac`  
		Last Modified: Thu, 05 Nov 2026 19:00:18 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4fbcbc05cbeefca87617f22c61b6ed24da71f5559cfd0f9e5d1c009e6ed2f73`  
		Last Modified: Thu, 05 Nov 2026 19:00:20 GMT  
		Size: 22.9 MB (22873287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4324bce0694b8026588d9be5d20d0c0380313478cc54e26e908f9e41c63f13ca`  
		Last Modified: Thu, 05 Nov 2026 19:00:19 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575933b7f2e5e7ff4f84e50c3f6a8af09d236dea4342d587c58b70ab76b226ab`  
		Last Modified: Thu, 05 Nov 2026 19:00:19 GMT  
		Size: 22.3 KB (22271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:548cb31bce09b252148d96c94e7d29e229f450e7b2b3e7f94d140557c877ac67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 KB (298993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a21c0ccf4faa3dfff3a6ea7e23fbb72b5ba361422ba369714ee7802385e6dfd`

```dockerfile
```

-	Layers:
	-	`sha256:392c5c00f21080b86287d426e1d710d0573059d0e09d81756c9868afe31a54f6`  
		Last Modified: Thu, 05 Nov 2026 19:00:17 GMT  
		Size: 259.8 KB (259840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38a7eea73a8d107a4acc7be12616595fbd39f2603d1bc199812afb699ff7a555`  
		Last Modified: Thu, 05 Nov 2026 19:00:17 GMT  
		Size: 39.2 KB (39153 bytes)  
		MIME: application/vnd.in-toto+json

### `php:alpine3.23` - linux; arm variant v6

```console
$ docker pull php@sha256:b507d9708a82dc7a214c22716cb51d7a5d133e2c6c593e5dc5eec28b0a0d69ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41410954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13364465090ef8dd52e6414d6c8bfb87684272c8b11c0496312645602a931f59`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:23:55 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:23:55 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:23:55 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:23:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:23:55 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:23:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:23:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:23:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:23:55 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 18:23:55 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 18:23:55 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 18:23:55 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 18:23:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:23:58 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:27:06 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:27:06 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:27:07 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:27:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:27:07 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b5511985d7222c8edf687feef19641ed1c7c3536f3eafe8bb798dd9f9bbc1e4`  
		Last Modified: Thu, 05 Nov 2026 18:27:13 GMT  
		Size: 3.5 MB (3454573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95bef7d2af998c131b6736b48ce3430943e0b96ec5796351227220f9062dccf4`  
		Last Modified: Thu, 05 Nov 2026 18:27:13 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144452a14b91e3f16b9d9f81600bc84161a3ad64742f30b1d96a0ad512ddbec`  
		Last Modified: Thu, 05 Nov 2026 18:27:12 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e3735c4524c97af4001b06df91cb43ed8f12288c074368486b3b10e3f70a45`  
		Last Modified: Thu, 05 Nov 2026 18:27:13 GMT  
		Size: 14.6 MB (14577850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb73aed9a202a47e1e491e84206f0fd851796a0a8ced91928ac26fd326fc82b`  
		Last Modified: Thu, 05 Nov 2026 18:27:14 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a602bb8d5417437aa55545c5e6c41050e6212a82096520ec8d81b052c9d5c172`  
		Last Modified: Thu, 05 Nov 2026 18:27:14 GMT  
		Size: 19.8 MB (19794131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e15c172a823b467a0a0a8383ed21a7814a9bfd764aec008ad1068469fa82fcab`  
		Last Modified: Thu, 05 Nov 2026 18:27:14 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d913747ae673de8cbea19cbcf39621569dd6bab78a00809395b4da462184305`  
		Last Modified: Thu, 05 Nov 2026 18:27:15 GMT  
		Size: 22.1 KB (22065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:32a14ca89eb0ebe6b079cc5b97630e75726a7f8eb7ae756c68a1d7eb8e8811a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 KB (39116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1977b3f20a2f8e105c4d9884fbc67086fa37e1fb81b235e770ab0a2898ffda1a`

```dockerfile
```

-	Layers:
	-	`sha256:cc53c9b25d76923db181efc64325a3b20316163681d019f69c310e80bcbbf422`  
		Last Modified: Thu, 05 Nov 2026 18:27:12 GMT  
		Size: 39.1 KB (39116 bytes)  
		MIME: application/vnd.in-toto+json

### `php:alpine3.23` - linux; arm variant v7

```console
$ docker pull php@sha256:0c175744fc372131f1039491bf7fc733bf6319ed047e7ee535b883693e3141bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.8 MB (39802428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21a6823cbf04a19f132dfcaf7a29bc05c6ad006c589b3dbc46b0ef0c1058ea4`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:23:27 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:23:27 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:23:28 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:23:28 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:23:28 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:23:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:23:28 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:23:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:23:28 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 18:23:28 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 18:23:28 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 18:23:28 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 18:23:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:23:30 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:26:38 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:26:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:26:39 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:26:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:26:39 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa3b420a6bc59edae90253a5c5868bb1b44ae7f0ea25d393cfa607e901b919c9`  
		Last Modified: Thu, 05 Nov 2026 18:26:46 GMT  
		Size: 3.3 MB (3262077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:443894d94ee2a0f7c1acd05e2aa3c7ed396e0aea2abb0bdb72cc5d2c36382087`  
		Last Modified: Thu, 05 Nov 2026 18:26:45 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:526741bca134f7b36ad6fa4f94f36d315cd25597edcf73db50a65b3011f17423`  
		Last Modified: Thu, 05 Nov 2026 18:26:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe69e1cb310e53e1f9cbe1760c507359ca937c0ae5535806ea56068caaf5316`  
		Last Modified: Thu, 05 Nov 2026 18:26:46 GMT  
		Size: 14.6 MB (14577859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1541d82896ea492e292d0263a0bb994385cd0f629e2088b388ff9ae6abba80e`  
		Last Modified: Thu, 05 Nov 2026 18:26:47 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ee590e7b5bfa0999d3000d888f48158ccc368b3eab1db4fdb75f777dafe509`  
		Last Modified: Thu, 05 Nov 2026 18:26:47 GMT  
		Size: 18.7 MB (18669506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80efbf5645f02cff47047ed520a45d5ad3e4df70be0082a62e5c24fa38d514f3`  
		Last Modified: Thu, 05 Nov 2026 18:26:47 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6fbc626835bd16649247aa4f8a87b02c174100df57f66d4a05bd1e9afb6357e`  
		Last Modified: Thu, 05 Nov 2026 18:26:47 GMT  
		Size: 22.1 KB (22069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:ac247365939d11d6c391c40dc126e4c4c1f20a58fdc8bb1d7ead613648857780
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 KB (295599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3b6c53dad0d6ccd280839bc87ac4205b628eb740f1a76da49910e4c84f49ac`

```dockerfile
```

-	Layers:
	-	`sha256:897b754caf697853ca6517b2629a05126e0f9ead6e5db2b05cd1feb97f1f8479`  
		Last Modified: Thu, 05 Nov 2026 18:26:45 GMT  
		Size: 256.3 KB (256268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd07ae1cc389ae82773c1ab3d4283e6dcf950f069dc8a2f340fd3b0ed1c2ff02`  
		Last Modified: Thu, 05 Nov 2026 18:26:45 GMT  
		Size: 39.3 KB (39331 bytes)  
		MIME: application/vnd.in-toto+json

### `php:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull php@sha256:d72ddf8d357f81542450e217baef8fc88d6c77267d53967ddb90dd9342f23319
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44350550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5685bb3584aa37e7c8d32f3b965d2a6d2d7768848ead59331493519109980780`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:32 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:52:32 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:52:32 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:52:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:52:32 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:52:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:52:32 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:52:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:52:32 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 18:52:32 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 18:52:32 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 18:52:32 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 18:52:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:52:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:56:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:56:09 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:56:10 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e59a340ecc2dec295da1a1d26468e6e0d222185aa28e4de33ba888d07b2078`  
		Last Modified: Thu, 05 Nov 2026 18:56:18 GMT  
		Size: 3.5 MB (3506074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25c44168bd8ac5a51be28e1b1d1e86e6a96d0b9ab312e33e78997e9190d6cdd`  
		Last Modified: Thu, 05 Nov 2026 18:56:09 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c40976b6bce2c34f185ede3223ba72452070921084bdf2b62b9fbc445162bfe`  
		Last Modified: Thu, 05 Nov 2026 18:56:09 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf145a93346970739febc8a36ffdb1798c34b7aede4ef24fc39444a548d91d4`  
		Last Modified: Thu, 05 Nov 2026 18:56:18 GMT  
		Size: 14.6 MB (14577860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86fead835d20d1839d85383429743871722bfe6628bca4e45b76a88cda3d5e6e`  
		Last Modified: Thu, 05 Nov 2026 18:56:18 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cbc93685cdb31f65c0dd817981723f30a076e75f0b9059e4f69f4999bc041a7`  
		Last Modified: Thu, 05 Nov 2026 18:56:19 GMT  
		Size: 22.1 MB (22050208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49fe22b184ba2b0879aae02c4868351b3fc51495d2283eaf7ac6e668d4940892`  
		Last Modified: Thu, 05 Nov 2026 18:56:19 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6bfe4eb5b8e03752e1b18a493bc9a1803717dafb5d042e87f31348642bf359b`  
		Last Modified: Thu, 05 Nov 2026 18:56:19 GMT  
		Size: 22.1 KB (22101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:6d4bc740e78640cf2ebb5509cabaebba212d1c386e7870e370d17ba47c1f7ade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.7 KB (295684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49b868b47a884e930b8bf81b6f30781c97affc99dfdc97d01348f8c46ccba326`

```dockerfile
```

-	Layers:
	-	`sha256:43c746b9f51ee90ad5a7aa6fa5e675d141ce28b58b08c584ec751ef9093424f6`  
		Last Modified: Thu, 05 Nov 2026 18:56:18 GMT  
		Size: 256.3 KB (256304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:486827178e2905808c6fbe427256def4890735ff0d51ce9553b2bf1a8f5e7b9b`  
		Last Modified: Thu, 05 Nov 2026 18:56:17 GMT  
		Size: 39.4 KB (39380 bytes)  
		MIME: application/vnd.in-toto+json

### `php:alpine3.23` - linux; 386

```console
$ docker pull php@sha256:ddf95fd1f970d7be3a407ef3edb2c8b3248f519f67c7bfc521cede4b9523cec0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45154343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765f370f29b24a16b6c6bf39e0d8a666da948e3604935bc2256534db63d0b6ee`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:17:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:17:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:17:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:17:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:17:11 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 18:17:11 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 18:17:11 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 18:17:11 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 18:17:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:17:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:20:35 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:20:35 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:20:35 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:20:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:20:35 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5ab0db030d4a5f49fe1604f58aac3bbe511c0850d5d3acf790ed2cadf496a7c`  
		Last Modified: Thu, 05 Nov 2026 18:20:43 GMT  
		Size: 3.5 MB (3526874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23519e0a156dd341d96db175d6df0db568a2421b87d3470641bcf559fcee0456`  
		Last Modified: Thu, 05 Nov 2026 18:20:43 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a5dae3cb2971da297698d31e8fd6e799455c11a179b1bc9e0f065323ab23240`  
		Last Modified: Thu, 05 Nov 2026 18:20:43 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f86df7d55f623cce4c088d9561a776c5da9448be85e4aba28a44ece94480830`  
		Last Modified: Thu, 05 Nov 2026 18:20:43 GMT  
		Size: 14.6 MB (14577827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc7ba0ae8ba7f02565958fb9ec09af57bcd9ff8106dc5dc872059c971de480d7`  
		Last Modified: Thu, 05 Nov 2026 18:20:44 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026ccb34e8ecdd8c1d8f0dc5857ccd8a9e35ff08d786c3a8d42b5dda3d15cfac`  
		Last Modified: Thu, 05 Nov 2026 18:20:45 GMT  
		Size: 23.3 MB (23344713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1de7fd2978590b58bb7ae66e8f188cb54e3b6170d2752ff0288fe6d642403a8`  
		Last Modified: Thu, 05 Nov 2026 18:20:45 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07912d7ba83b3363a1dca272180b38da873b9ad31b1511535074a3351225bef0`  
		Last Modified: Thu, 05 Nov 2026 18:20:45 GMT  
		Size: 22.3 KB (22268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:2bc57364405330a737d4fd75f31af80716d41c2ecfb44dc7f1b3c0be405090b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.9 KB (298887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1559a55d28c44ed6021e57eb4e2c7156b28767e24fc53d61090457c8192c1fb7`

```dockerfile
```

-	Layers:
	-	`sha256:0f65b29b74ae02b217aa6ea1a671f745e42a278bb58c765625bc2777cc748216`  
		Last Modified: Thu, 05 Nov 2026 18:20:43 GMT  
		Size: 259.8 KB (259795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14c0cd7b28e80eb8f29208b0c704430411b88144b62ee53d7402ee388a81da3e`  
		Last Modified: Thu, 05 Nov 2026 18:20:43 GMT  
		Size: 39.1 KB (39092 bytes)  
		MIME: application/vnd.in-toto+json

### `php:alpine3.23` - linux; ppc64le

```console
$ docker pull php@sha256:2a25035d0f6c011a2834f9f7bb552de16686d8b7de85d9713b6f88b4f689d15f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45079663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa32df61ee7620e1ed64477c04294528364616a6633e5a805e5399a4ea116a49`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:51:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 22 Oct 2026 10:51:19 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 22 Oct 2026 10:51:19 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 22 Oct 2026 10:51:19 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 22 Oct 2026 10:51:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 22 Oct 2026 10:51:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:51:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:51:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 22 Oct 2026 10:51:20 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 22 Oct 2026 10:51:20 GMT
ENV PHP_VERSION=8.5.12
# Thu, 22 Oct 2026 10:51:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 22 Oct 2026 10:51:20 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 22 Oct 2026 11:09:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 22 Oct 2026 11:09:50 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:16:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 22 Oct 2026 11:16:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:16:46 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 22 Oct 2026 11:16:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 22 Oct 2026 11:16:46 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c5e78850d1ccd59b2668cc658056e2729eac399c337387dd24ba677d27a1d48`  
		Last Modified: Thu, 22 Oct 2026 10:56:13 GMT  
		Size: 3.7 MB (3664480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22bd84bbe0ec060290b3aff4d6a4793a4f6b33b68fcb3698814a768442c8fa3`  
		Last Modified: Thu, 22 Oct 2026 10:56:13 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c4819d4477ee8d52e3fa42316f9e75a3dbf8eb47ac135a67e24ec92559ca41`  
		Last Modified: Thu, 22 Oct 2026 10:56:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a2dfc5e881ef99216ca9832ec878aba0ab15724e71a2f37f321b8762719e91`  
		Last Modified: Thu, 22 Oct 2026 11:17:09 GMT  
		Size: 14.6 MB (14577863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7affd805adf75347328db85e4ff58abf2d59b058924beb3bfdbfe69bf09ad3f9`  
		Last Modified: Thu, 22 Oct 2026 11:17:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279f0b38f04e394775fca6071257e75fd01aa600fab3e705408d561c11267b39`  
		Last Modified: Thu, 22 Oct 2026 11:17:09 GMT  
		Size: 23.0 MB (22992723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01328d7f4a0db44efe2173bb085f858d921d2d0efd1faec5bf3670ad4119631a`  
		Last Modified: Thu, 22 Oct 2026 11:17:08 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f1ca128ee199863f52e05d557884567a7bcaeb054e1b1257edeff6c86584b43`  
		Last Modified: Thu, 22 Oct 2026 11:17:09 GMT  
		Size: 22.1 KB (22122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:40366ac6303900ea98837354b4df4206ca4e9bc381ace525d6dfa05cb24afb6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 KB (295489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:200353f1e4608c1cad8b0cd2c69d5d29759fb8b15555fdfe95be0d17e562b788`

```dockerfile
```

-	Layers:
	-	`sha256:f4b9a5a321054c948240ef484b99c54db2ddc0f7c730bad2065631fae48492b9`  
		Last Modified: Thu, 22 Oct 2026 11:17:08 GMT  
		Size: 256.3 KB (256257 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87374b5534c9a7e5fc84bd5af5bb8d659ec26608ba6505b85d0c69b3974956fb`  
		Last Modified: Thu, 22 Oct 2026 11:17:08 GMT  
		Size: 39.2 KB (39232 bytes)  
		MIME: application/vnd.in-toto+json

### `php:alpine3.23` - linux; riscv64

```console
$ docker pull php@sha256:07c8eb81b7e36e8378d2547f253e03f1794d68570cfa6e9db90ab8e3362ad775
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42856515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7ce642edfb53864e336023fc6a979e3be2f07ddd5368da24fc80fe71a8e440`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 19:12:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 24 Oct 2026 19:12:16 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Sat, 24 Oct 2026 19:12:16 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Sat, 24 Oct 2026 19:12:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 24 Oct 2026 19:12:17 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 24 Oct 2026 19:12:17 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_VERSION=8.5.12
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Sun, 25 Oct 2026 00:52:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sun, 25 Oct 2026 00:52:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sun, 25 Oct 2026 01:57:17 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sun, 25 Oct 2026 01:57:17 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sun, 25 Oct 2026 01:57:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sun, 25 Oct 2026 01:57:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sun, 25 Oct 2026 01:57:22 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b154fd5622374b2b22208c20e5c2f7ea6063545f72a1fa82ace2fcc16233439f`  
		Last Modified: Sat, 24 Oct 2026 20:17:28 GMT  
		Size: 3.6 MB (3630757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aeed8417eb3f9e6991ece59c4edd6fffb9209f16426f13fc69964b7d2a6d015`  
		Last Modified: Sat, 24 Oct 2026 20:17:27 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9131d702d31cfa740f6ee17896229a6af7c5eeda3a2cac611535ff23f26d11ab`  
		Last Modified: Sat, 24 Oct 2026 20:17:27 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e08ac2a2edde9d8a6d9701c1ebd2b97a4b7dd1d7da7100907620abb1b1e0732`  
		Last Modified: Sun, 25 Oct 2026 01:58:42 GMT  
		Size: 14.6 MB (14577839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59832951e0988c237a8b5c7eea41e42629e1fff4f08ca303306f73b88d278405`  
		Last Modified: Sun, 25 Oct 2026 01:58:38 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3bc80f517fa61864dd291928418d4ddd4087f5c1b5030960c29b5183e38b761`  
		Last Modified: Sun, 25 Oct 2026 01:58:43 GMT  
		Size: 21.0 MB (21042121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1614223e50bf7cc6c73dbd25c0b8b48ca6eee6491dc06bddb305f7e8ca921458`  
		Last Modified: Sun, 25 Oct 2026 01:58:38 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd91744ce83fc10c8f2e1f0eed7e1148b4cc88efc101d3bd74072bf663d0fe1`  
		Last Modified: Sun, 25 Oct 2026 01:58:40 GMT  
		Size: 22.1 KB (22089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:4fef9fa86580c28d428dbc8b28c025a1dbe2062dce4ceb562a29fe5bad2db28a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 KB (295485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8de400b164fd5bcc6ce6d125aee1321ec672b8a681f852e4800108db46a359c`

```dockerfile
```

-	Layers:
	-	`sha256:6eca484457ab5d0b5b78edc0814884f1b5335321eae75a88cb57caa9ea3f94a2`  
		Last Modified: Sun, 25 Oct 2026 01:58:38 GMT  
		Size: 256.3 KB (256253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0299d1c5b6e11d1acfcce58f40eed2dede8ee0a4a05fc0341239e03ced6b38bd`  
		Last Modified: Sun, 25 Oct 2026 01:58:38 GMT  
		Size: 39.2 KB (39232 bytes)  
		MIME: application/vnd.in-toto+json

### `php:alpine3.23` - linux; s390x

```console
$ docker pull php@sha256:a9a0a63440a39147e8576c29bf5a4df5c4c585721133ce843872e4951ad2637e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43737000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb5fa337da0e34d8873a24aee233d70f31d10d36ac4de6905fd5edf3d443a64`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:20:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:20:11 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:20:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:20:11 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 18:24:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:24:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:28:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:28:50 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:28:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:28:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:28:51 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fae5855a537729a8d995a0f9a9a3cd72dcdcfc4a66f719860a8c6ab56bb6b5c`  
		Last Modified: Thu, 05 Nov 2026 18:24:22 GMT  
		Size: 3.7 MB (3691043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4adc505f4637c412f27cfd947e220b4c8d78fc62591f4fb809ca952992232385`  
		Last Modified: Thu, 05 Nov 2026 18:24:22 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43b22878885b84660a986c0f25a10bfb6e425fd789d956405248d31394b5ac3b`  
		Last Modified: Thu, 05 Nov 2026 18:24:22 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f00bdd5cf77a07f72926b72992606961fd776203b91f1b23ce5670a34ffd3352`  
		Last Modified: Thu, 05 Nov 2026 18:29:06 GMT  
		Size: 14.6 MB (14577842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294bd63ab60f6aae87a2650b780d7b177274ddf9eb81d3cf05f22f4609ae3a7c`  
		Last Modified: Thu, 05 Nov 2026 18:29:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ef7db664c650ec32062d8e3a86b44c30fcb916a234931dd3d98869b02af827`  
		Last Modified: Thu, 05 Nov 2026 18:29:06 GMT  
		Size: 21.7 MB (21723611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a09a61bea7c282da76e1c25398edc2e6ba195fb36f54f1fff6e55d52eef191c`  
		Last Modified: Thu, 05 Nov 2026 18:29:05 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7ff6f327743390cabb2c0683ebf9eaad1b9851949f6d6e59d63a46a17a062c`  
		Last Modified: Thu, 05 Nov 2026 18:29:06 GMT  
		Size: 22.1 KB (22076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:377f6026fbe23dfe6d32d4d6ddc8821b04440ded71bdd103d7dbdc3f4ed715fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.4 KB (295353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:123586908affbf383ce374d15a6744b0e3abd80220ab17554a57ca620c8b5323`

```dockerfile
```

-	Layers:
	-	`sha256:1f0c8b01e40d8b1e6ba8cd75d70a4fdb56d902a1ff03c2e31518eb0a9046a3c9`  
		Last Modified: Thu, 05 Nov 2026 18:29:05 GMT  
		Size: 256.2 KB (256199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:100df60b22fb9dd168e73b540e1efb4af5ecdebad782ffde5ea195182f25fdd2`  
		Last Modified: Thu, 05 Nov 2026 18:29:05 GMT  
		Size: 39.2 KB (39154 bytes)  
		MIME: application/vnd.in-toto+json
