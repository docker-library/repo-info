## `php:fpm-alpine3.23`

```console
$ docker pull php@sha256:5789d51b5f61afc247a759d3a14e80aa58279d9b999c6ed4c36c8901b5008a3a
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

### `php:fpm-alpine3.23` - linux; amd64

```console
$ docker pull php@sha256:5d6d39b623946162a8a2e456733df4e9672aa97e69f40862443ab565e2b7148d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38841986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6581082ec681e94e96cf6995c328fff6290dfb270331d2dbe97683340f8ebb5f`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:57:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:57:22 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:57:22 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:57:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:57:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:57:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:57:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:57:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:57:22 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 18:57:22 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 18:57:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 18:57:22 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 18:57:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:57:25 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:00:38 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 19:00:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:00:38 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 19:00:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 19:00:38 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 19:00:39 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 19:00:39 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 19:00:39 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 19:00:39 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e54df3262561d199257200d41cc49d5cfbdd46f5e075f1098adc5c8df356e4b6`  
		Last Modified: Thu, 05 Nov 2026 19:00:46 GMT  
		Size: 3.5 MB (3493815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d0d7e7a78ef55ce5435c2777c42f0278e40c89c24533e5b363fc81f000d9b3`  
		Last Modified: Thu, 05 Nov 2026 19:00:45 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e632066b516a955c0c69003742cf545c20abed2adeee7e962f1e20a95683a1`  
		Last Modified: Thu, 05 Nov 2026 19:00:46 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb843ae24ced4970cddee2bee56576557eab6e513b814e350e51e57aaaf0d511`  
		Last Modified: Thu, 05 Nov 2026 19:00:47 GMT  
		Size: 14.6 MB (14577813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6c43659b99ee036cd3fd5973b02aead8911f36ed89ac5324bc5ca476148eb3`  
		Last Modified: Thu, 05 Nov 2026 19:00:47 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:528c6dd21057428cbe35e9686fa3f2f1d17b9fa268aa786d3191dc99bc867db1`  
		Last Modified: Thu, 05 Nov 2026 19:00:48 GMT  
		Size: 16.9 MB (16882132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fcf2fceb34009aa5b07fe284cb93687e20c2d240db792cacf3c4591bc9d0b7`  
		Last Modified: Thu, 05 Nov 2026 19:00:48 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac8cc2b4d471f38f708c3fca4e73f85a71d7c0af7f41ca6359f5671c6cd7395e`  
		Last Modified: Thu, 05 Nov 2026 19:00:48 GMT  
		Size: 22.3 KB (22262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254187a05b9d5edd8fd9e0975d2400b4eb6283f6fc44faffcf00c09b4c97f188`  
		Last Modified: Thu, 05 Nov 2026 19:00:50 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:ff5e9989de57c2d745f0a6b1106f1b803371f9005e387be86507b28b8abe3987
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.8 KB (308798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:124595cf17d3ad356b1564706bee7defa92183a112e6c7bc70482479df97f42f`

```dockerfile
```

-	Layers:
	-	`sha256:3c5068cdec068fa42786aef87557b4f21d525a89d0b36af928c4c121a195f037`  
		Last Modified: Thu, 05 Nov 2026 19:00:46 GMT  
		Size: 259.8 KB (259818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef2da45eca5be07f0ce67e674852b95a3424173ec024ab5dbb46a53b6d5c8775`  
		Last Modified: Thu, 05 Nov 2026 19:00:46 GMT  
		Size: 49.0 KB (48980 bytes)  
		MIME: application/vnd.in-toto+json

### `php:fpm-alpine3.23` - linux; arm variant v6

```console
$ docker pull php@sha256:1849c2b36a7be3af7df576eb422932eab25988c9be11c51ff5a871f8db5372fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36381716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20f1ee31c62047a6341d78edc705eccd535198fd3e21436a9af6a7fb3cf4215`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:21:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:21:52 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:21:53 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:21:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:21:53 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:21:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:21:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:21:53 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:21:53 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 18:21:53 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 18:21:53 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 18:21:53 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 18:25:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:25:05 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:28:18 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:28:18 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:28:18 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:28:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:28:18 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:28:18 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:28:18 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:28:18 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:28:18 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d247d1704d991f6edc0962ede07f8c7363baefa705d41717938237720af0477`  
		Last Modified: Thu, 05 Nov 2026 18:28:24 GMT  
		Size: 3.5 MB (3454534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b5eee13327eb9f4fc8981e806022de31341b92a45a1ece2eebe60b790a7541d`  
		Last Modified: Thu, 05 Nov 2026 18:28:24 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:436e5c85601ae8bae0fc31ce2345a2737a67bd4792b990b5420a0bc5d2eb666a`  
		Last Modified: Thu, 05 Nov 2026 18:28:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94bc5414c0cce393da97b2f29b74dd1383f6a31e6ceb94e75d58c8050662256`  
		Last Modified: Thu, 05 Nov 2026 18:28:25 GMT  
		Size: 14.6 MB (14577856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa398c0f1ad37864de4d9232b58026f198bea74ee6ca11fc0050c28d9acfc44`  
		Last Modified: Thu, 05 Nov 2026 18:28:25 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbf09de72d604475ff168f5f9de59b49580a20c0892bee6d4a27088ad60f0c9`  
		Last Modified: Thu, 05 Nov 2026 18:28:25 GMT  
		Size: 14.8 MB (14755620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6389f43968d25300129e3e609412beaaf1c1b72ac3f9b0d241a6996ca0b6e4`  
		Last Modified: Thu, 05 Nov 2026 18:28:26 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab011f3546d990706438a210b67841f2f9a14ce1e9cbc1d3c3e780b422efe7a`  
		Last Modified: Thu, 05 Nov 2026 18:28:26 GMT  
		Size: 22.1 KB (22065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f459263166b47ec6e960339b9799743e019b036baacf77f556990253ea3464cf`  
		Last Modified: Thu, 05 Nov 2026 18:28:26 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:89ba93213391ea371a526ec47fe0f3f981556a49ea051ab449a69d64d5470bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 KB (48922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dfbd7ca0de8ba56e328860b944ce4210a70f0b5e5bf2c3eecf95aee7517ed5`

```dockerfile
```

-	Layers:
	-	`sha256:8f0c1c0a97cf72885e27028b0b875ba2144184899a549e1338a147ecbc04ae9e`  
		Last Modified: Thu, 05 Nov 2026 18:28:24 GMT  
		Size: 48.9 KB (48922 bytes)  
		MIME: application/vnd.in-toto+json

### `php:fpm-alpine3.23` - linux; arm variant v7

```console
$ docker pull php@sha256:ee8417997e244650b0888000fab48b625b4eb71e8f38efd24f0a5465509ef358
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35078221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58aec28e8ae59d5a50fc0ffdc3fa647d81f46e8470459389e5724402dc06df1c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:20:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:20:22 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:20:22 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:20:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:20:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:20:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:20:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:20:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:20:22 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 18:20:22 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 18:20:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 18:20:22 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 18:23:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:23:46 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:26:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:26:58 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:26:59 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:26:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:26:59 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:26:59 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:26:59 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:26:59 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:26:59 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c2cb973942aaee2498231d8910c8c1b2a257f2888fa8bf6dd587e7444e5b3e`  
		Last Modified: Thu, 05 Nov 2026 18:23:35 GMT  
		Size: 3.3 MB (3262100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed44c8613303f9552c4d87e442886e0ac962bc0eebd1d59017c11c672df72c6`  
		Last Modified: Thu, 05 Nov 2026 18:23:35 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0979c793da842a825d3e5e00fce9b143e58c8a681cdad78ffbe91a304987f4be`  
		Last Modified: Thu, 05 Nov 2026 18:23:35 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688ae32763119a06cc83af83348a02d0ee5ccad4b85fa8a7bacbb3533d8e8ef6`  
		Last Modified: Thu, 05 Nov 2026 18:27:06 GMT  
		Size: 14.6 MB (14577856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0208f4823f8fc4d5a257198e9465039a5d86b60e0dc69fcc548480cdaae1309`  
		Last Modified: Thu, 05 Nov 2026 18:27:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f380696eb22d3ec919e5843d770bb6a5cd00a8c8fc5f0157ef4d11366cd691`  
		Last Modified: Thu, 05 Nov 2026 18:27:06 GMT  
		Size: 13.9 MB (13935992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:794f45f354cc66b03c0bc6ee5199e01617145dc903fbffbe0f0d60930930e0b5`  
		Last Modified: Thu, 05 Nov 2026 18:27:06 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b721ac4a8039286962c8116cc52acab03ad7ba3ca8ecb742062616174d130e7`  
		Last Modified: Thu, 05 Nov 2026 18:27:07 GMT  
		Size: 22.1 KB (22068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d88aac5d1b04bf44c0053c00bb5ac11b33dcf15039486e90df4ae22e0fe23a9`  
		Last Modified: Thu, 05 Nov 2026 18:27:07 GMT  
		Size: 9.3 KB (9260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:f9bfe1e7b284c282686ea90efd8aaf5d4999e184620a551da5fab3f22505368d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.4 KB (305351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28221f08aef427d2aee8798ce9ce1bbb44c52748801338586ef5ca5fe302be2`

```dockerfile
```

-	Layers:
	-	`sha256:ea4da2a44fed45c1b3f8f566265a24fba4041e18f1c3952856ddaf2bd5a8cded`  
		Last Modified: Thu, 05 Nov 2026 18:27:06 GMT  
		Size: 256.2 KB (256214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0948658a6a93c2dc0786ea6de75d439bb0cba4dd7390d08db8e61b222256494`  
		Last Modified: Thu, 05 Nov 2026 18:27:05 GMT  
		Size: 49.1 KB (49137 bytes)  
		MIME: application/vnd.in-toto+json

### `php:fpm-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull php@sha256:bcb1e6ec23f3f3d9fb7f8d8dfb357a773bc59f77657d5ab778db2b2705fe2dbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.6 MB (38602641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db0c893c12718ad72f1f7d385978ffb109878d4beb4d70521794ae1d5940e33`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Thu, 05 Nov 2026 18:52:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:52:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:56:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:56:01 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:56:02 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:56:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:56:02 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:56:02 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:56:02 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:56:02 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:56:02 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a8e58f6b61289e5bff425c0bc876159d3972504766cac93da0c3f5b2d8fc308`  
		Last Modified: Thu, 05 Nov 2026 18:56:09 GMT  
		Size: 3.5 MB (3506076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25c44168bd8ac5a51be28e1b1d1e86e6a96d0b9ab312e33e78997e9190d6cdd`  
		Last Modified: Thu, 05 Nov 2026 18:56:09 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c40976b6bce2c34f185ede3223ba72452070921084bdf2b62b9fbc445162bfe`  
		Last Modified: Thu, 05 Nov 2026 18:56:09 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d27ff352cee51d50846f1bd2599d3c1248033c93a8c505d89685bd52d3757f`  
		Last Modified: Thu, 05 Nov 2026 18:56:09 GMT  
		Size: 14.6 MB (14577858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0917f207a59215b26dd6e759631d97693312d1040c89296b2fde68ca69354daa`  
		Last Modified: Thu, 05 Nov 2026 18:56:10 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d81ca2578291548c44ebb7db8a82a428504e2a70b506fa01ff339af5a4c4052`  
		Last Modified: Thu, 05 Nov 2026 18:56:10 GMT  
		Size: 16.3 MB (16293000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f531f26325ca97218408f8cfbf8f451c668554a484b87bde7b2de9eaaa39d88`  
		Last Modified: Thu, 05 Nov 2026 18:56:10 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc22cef89ad25f507698d12a3f94111e7c053ef5d1d3f970ef0c3b6094f5117`  
		Last Modified: Thu, 05 Nov 2026 18:56:10 GMT  
		Size: 22.1 KB (22109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:945a165db04a62bce2b31c415eee049ed973ab7c87d6c2bd26eff23f08b5dfff`  
		Last Modified: Thu, 05 Nov 2026 18:56:11 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:dfd5dfe245c5d3ad95c69cd3b6a23c057fabad158fec5f21c2b53f994278de88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.4 KB (305408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81102bb5f0fcc90cf5fafee4d3054500e9831cfc56ca59098928cec665ba7d35`

```dockerfile
```

-	Layers:
	-	`sha256:0b0a51fbdad8a94a6502917cfbceaac9887f3aecc45bbacc3d814a462cfbb3d0`  
		Last Modified: Thu, 05 Nov 2026 18:56:09 GMT  
		Size: 256.2 KB (256234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dee2d1fbb3e61fbc0a76754d3a65523d829238ce52061df6b26e927859cc61e5`  
		Last Modified: Thu, 05 Nov 2026 18:56:09 GMT  
		Size: 49.2 KB (49174 bytes)  
		MIME: application/vnd.in-toto+json

### `php:fpm-alpine3.23` - linux; 386

```console
$ docker pull php@sha256:85ddf1a0afcf2ce5703662866c0654907ab7174865a8921d92d8b833e7706bea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39059298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5b17186ad0273c319f19022332eb7ac9cf83fb1239d3398db582f48660657a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:17:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:17:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:17:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:17:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:17:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:17:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:17:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:17:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:17:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 18:17:13 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 18:17:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 18:17:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 18:17:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:17:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:20:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:20:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:20:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:20:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:20:47 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:20:47 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:20:47 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:20:47 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:20:47 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8542826e4b30ae44f132d7496a39f295ab4c921de47b22e13e08fae7ec2b9284`  
		Last Modified: Thu, 05 Nov 2026 18:20:54 GMT  
		Size: 3.5 MB (3526864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0d90fb66b6212373b9c3ea2a0c76184339d8f9eeb22bcb102bfc96cc02cb2e`  
		Last Modified: Thu, 05 Nov 2026 18:20:54 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf40d46a3d4da50917b18e448af7e6b1a96a71d0095a69457fa3e52fe73d442a`  
		Last Modified: Thu, 05 Nov 2026 18:20:54 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02f2ba3a00c21855d25663a69e07aa119b5f4498b906f9524a72671fbf8f88e9`  
		Last Modified: Thu, 05 Nov 2026 18:20:55 GMT  
		Size: 14.6 MB (14577822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aec7b3b022e2accf998fb1b40b813c046258beaec9441894876865f73f64c46a`  
		Last Modified: Thu, 05 Nov 2026 18:20:55 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125214e81425799dd42cd9b9bfe31daf5b06b5058a63bb4189ebafc7f09b1f99`  
		Last Modified: Thu, 05 Nov 2026 18:20:56 GMT  
		Size: 17.2 MB (17240383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246da4c2c93c8a1e2ee6a8b2c478d366453842b699be5f439dc3722b0da4cdd1`  
		Last Modified: Thu, 05 Nov 2026 18:20:56 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c429c6efec435db2df7c25aede48487e4f5341f500dc5b43ade5d69b56afc0bc`  
		Last Modified: Thu, 05 Nov 2026 18:20:56 GMT  
		Size: 22.3 KB (22272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e648891bf79d4da121d230086bb9a4d85a12bd8070148aba6a297118fa0acc6b`  
		Last Modified: Thu, 05 Nov 2026 18:20:57 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:a95b5af6902b4a364d63a0df8b7b1b0b51d3b5c077fa2a5d42540b966f81a7fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 KB (308729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e8163072e1450fc7dcd3e30a2a3165712138e33d3306823d2583b48d40126f`

```dockerfile
```

-	Layers:
	-	`sha256:0c9b384cf3c1234003f7881f21ac4794e456e765705619f188e9989a856d1cbd`  
		Last Modified: Thu, 05 Nov 2026 18:20:54 GMT  
		Size: 259.8 KB (259793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f85d9df44877ccb26a73f553576928e9939532bd6325ff9cbd7ee1341604e49`  
		Last Modified: Thu, 05 Nov 2026 18:20:54 GMT  
		Size: 48.9 KB (48936 bytes)  
		MIME: application/vnd.in-toto+json

### `php:fpm-alpine3.23` - linux; ppc64le

```console
$ docker pull php@sha256:14cf88e00e249caf335e18456705dca1cd395e9593bc7dd4847aba5f05bd3ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39095681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08b3becf60b9aee3f10b75355d372e5fc42f033978d48fa55a97a8ecdb9724be`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Thu, 22 Oct 2026 11:19:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 22 Oct 2026 11:19:29 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:19:31 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 22 Oct 2026 11:19:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 22 Oct 2026 11:19:32 GMT
WORKDIR /var/www/html
# Thu, 22 Oct 2026 11:19:32 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 22 Oct 2026 11:19:32 GMT
STOPSIGNAL SIGQUIT
# Thu, 22 Oct 2026 11:19:32 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 22 Oct 2026 11:19:32 GMT
CMD ["php-fpm"]
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
	-	`sha256:7515ee55e889ad965580c689fd6d2d06fe991f057ee327ae836e4c74c8b6fa9e`  
		Last Modified: Thu, 22 Oct 2026 11:19:56 GMT  
		Size: 17.0 MB (16999439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6671692e06b4226d4b14918294c445e82e11b39c1d1d4b23469770d5f52cdc92`  
		Last Modified: Thu, 22 Oct 2026 11:19:55 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd682146fc8ac70a99e8feef184b0fe235281014ff282645987ee2051af56fd3`  
		Last Modified: Thu, 22 Oct 2026 11:19:55 GMT  
		Size: 22.1 KB (22124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:749305f62db6b4eb5fba97749d0354fdcff348d95b76459016d2d8f22b25b44b`  
		Last Modified: Thu, 22 Oct 2026 11:19:55 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:95d6ed6565c765b643f5dbdb0cd5d8d751dbeaf7acda9df9c60d85b8b28ae575
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.3 KB (304296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed0aa6f5440d2078997f8a6fed168822eda5a3d4f1bbbc68525837ac983dc72`

```dockerfile
```

-	Layers:
	-	`sha256:49c0bc9951580a7455a5062e700f1a9e90904918f2a2342fca136975ae714f9a`  
		Last Modified: Thu, 22 Oct 2026 11:19:55 GMT  
		Size: 256.2 KB (256211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def482b72893f029d941df73193ad0fab0b9201be144964201480659a241295c`  
		Last Modified: Thu, 22 Oct 2026 11:19:55 GMT  
		Size: 48.1 KB (48085 bytes)  
		MIME: application/vnd.in-toto+json

### `php:fpm-alpine3.23` - linux; riscv64

```console
$ docker pull php@sha256:13166265888f2118a645b3bdc4f16cd4e7b57a69160bfac5e8266a49e63f871e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37431424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea92f94cd7bfa5543875565374d28e4245060aaa6238624ce89748b5f1ed9c1`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Sun, 25 Oct 2026 03:05:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sun, 25 Oct 2026 03:05:31 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sun, 25 Oct 2026 03:05:35 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sun, 25 Oct 2026 03:05:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sun, 25 Oct 2026 03:05:36 GMT
WORKDIR /var/www/html
# Sun, 25 Oct 2026 03:05:36 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sun, 25 Oct 2026 03:05:36 GMT
STOPSIGNAL SIGQUIT
# Sun, 25 Oct 2026 03:05:36 GMT
EXPOSE map[9000/tcp:{}]
# Sun, 25 Oct 2026 03:05:36 GMT
CMD ["php-fpm"]
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
	-	`sha256:c7df9ad0227fd7e84f59a7afa5e3360333174ee023241b1857df85d1570e060c`  
		Last Modified: Sun, 25 Oct 2026 03:06:45 GMT  
		Size: 15.6 MB (15607725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7785436ee4fb1adc2f0c7b337fb0e98853c82ac1e24ffbb58548bcfb8a824ce3`  
		Last Modified: Sun, 25 Oct 2026 03:06:42 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea69ba0cc5922cf121d0b6e810226530513dfb74187a805630fc05bbe4f8a9dc`  
		Last Modified: Sun, 25 Oct 2026 03:06:42 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b1308aa92ff7dd0cc4e420d1a41d9dd05875ef53452fa715daf07db11d13a3`  
		Last Modified: Sun, 25 Oct 2026 03:06:43 GMT  
		Size: 9.3 KB (9262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:46a9f99b657203adc04c4b5fd12a45f6b4c54b3edd3fcfc2a6ceacc65beecbb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 KB (305243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461746d3d9af319b4f1b19dd698da6db77a3da4ec0d82ad88f775ee055c6ff7e`

```dockerfile
```

-	Layers:
	-	`sha256:4c7abdf900c11d5c3764e34d0fc5067aaed12d0de740393d2d1eedfe3294361e`  
		Last Modified: Sun, 25 Oct 2026 03:06:42 GMT  
		Size: 256.2 KB (256207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b13543eeafafeee7f79833ba0aa0cd2f739852f7aa460e920f0b988837f790ba`  
		Last Modified: Sun, 25 Oct 2026 03:06:42 GMT  
		Size: 49.0 KB (49036 bytes)  
		MIME: application/vnd.in-toto+json

### `php:fpm-alpine3.23` - linux; s390x

```console
$ docker pull php@sha256:b595b0808980d583710a7527fb9b7f7001beb7132d08b1ede4665cd6f116812a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 MB (38154256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5da479a8cdb275249f3aa0f477d1ac47d0aa97eb6a28ebcdd103d6bd3b2f1a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Thu, 05 Nov 2026 18:30:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:30:16 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:30:17 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:30:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:30:17 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:30:17 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:30:17 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:30:17 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:30:17 GMT
CMD ["php-fpm"]
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
	-	`sha256:d53044e02f5f12e9ecc634e542a06ae777ed7d22e39469eff5e666569047942b`  
		Last Modified: Thu, 05 Nov 2026 18:30:29 GMT  
		Size: 16.1 MB (16131567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667353f5dd120e30b0aed691e669f8856cf3b66208ca451129d2170b384fc649`  
		Last Modified: Thu, 05 Nov 2026 18:30:29 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd45876939c316b2208f0e0508552b5c32f83849e4e7815b30474702dd44966`  
		Last Modified: Thu, 05 Nov 2026 18:30:29 GMT  
		Size: 22.1 KB (22082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d4c76b0458185aa7483ee5fadca79c98b0fbf303ed496e81e3dbac7a3bcbc7`  
		Last Modified: Thu, 05 Nov 2026 18:30:29 GMT  
		Size: 9.3 KB (9260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:390c20d73603362f254de6bbe07637c0c66a571d485a27cb03994a7949528433
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.2 KB (304206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c97063b2f9912f5f35e1c1792f44e4ecf5fd576f89f9147309bc47976e472cf`

```dockerfile
```

-	Layers:
	-	`sha256:bfcdf6c6afe9162a4ba3987de81e5fdef596ea90c1d83537f12d4c7562d0ae44`  
		Last Modified: Thu, 05 Nov 2026 18:30:29 GMT  
		Size: 256.2 KB (256177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad4932a9303089241829ee9d8097d5bc4555ec2616abaec174b9b48d6bce85b0`  
		Last Modified: Thu, 05 Nov 2026 18:30:29 GMT  
		Size: 48.0 KB (48029 bytes)  
		MIME: application/vnd.in-toto+json
