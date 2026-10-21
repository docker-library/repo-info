## `mediawiki:stable-fpm-alpine`

```console
$ docker pull mediawiki@sha256:5abaf05dc0e65576232af97966b9c9433eb7c4301211af1ce5950b7ceca383db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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

### `mediawiki:stable-fpm-alpine` - linux; amd64

```console
$ docker pull mediawiki@sha256:10382e54508ddbb27ec87fc31589dd15815a611534e638c994ec0e76e2493f4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168008386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ac912615cbae02c99c15de2625db510e35212e67fe849a26a6f3587806f2e9d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 15:48:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 15:48:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 15:48:11 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 15:48:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:48:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:48:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:48:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:48:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:48:11 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 21 Oct 2026 15:48:11 GMT
ENV PHP_VERSION=8.3.36
# Wed, 21 Oct 2026 15:48:11 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.36.tar.xz.asc
# Wed, 21 Oct 2026 15:48:11 GMT
ENV PHP_SHA256=dd54693aa334c5c4d72e9aee96b082c2473750a18a6c1d105789c93a3b1692fd
# Wed, 21 Oct 2026 15:58:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 15:58:30 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:01:18 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 16:01:18 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:01:19 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 16:01:19 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 16:01:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 16:01:19 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 16:01:20 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 21 Oct 2026 16:01:20 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 16:01:20 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 21 Oct 2026 16:01:20 GMT
CMD ["php-fpm"]
# Wed, 21 Oct 2026 16:36:58 GMT
RUN set -eux; 		apk add --no-cache 		git 		imagemagick 		python3 	; # buildkit
# Wed, 21 Oct 2026 16:38:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		icu-dev 		lua5.1-dev 		oniguruma-dev 	; 		docker-php-ext-install -j "$(nproc)" 		calendar 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install APCu-5.1.28; 	pecl install LuaSandbox-4.1.2; 	docker-php-ext-enable 		apcu 		luasandbox 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .mediawiki-phpext-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 16:38:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 21 Oct 2026 16:38:03 GMT
RUN set -eux; 	mkdir -p /var/www/data; 	chown -R www-data:www-data /var/www/data # buildkit
# Wed, 21 Oct 2026 16:38:16 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.46
# Wed, 21 Oct 2026 16:38:16 GMT
ENV MEDIAWIKI_VERSION=1.46.2
# Wed, 21 Oct 2026 16:38:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .fetch-deps 		bzip2 		gnupg 	; 		curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz; 	curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz.sig" -o mediawiki.tar.gz.sig; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 		D7D6767D135A514BEB86E9BA75682B08E8A3FEC4 		441276E9CCD15F44F6D97D18C119E1A64D70938E 		F7F780D82EBFB8A56556E7EE82403E59F9F8CD79 		1D98867E82982C8FE0ABC25F9B69B3109D3BB7B0 		E059C034E7A430583C252F4AA8F734246D73B586 		7759DE19A22260232F251342FC4D45E75D14112B 	; 	gpg --batch --verify mediawiki.tar.gz.sig mediawiki.tar.gz; 	tar -x --strip-components=1 -f mediawiki.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" mediawiki.tar.gz.sig mediawiki.tar.gz; 	chown -R www-data:www-data extensions skins cache images; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 16:38:16 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe425a9cb3bb590e8e91734da806b4b53f5e52564a7f3ac882fcdd50ee10eb00`  
		Last Modified: Wed, 21 Oct 2026 15:51:43 GMT  
		Size: 6.0 MB (5965188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c683de6f3f5b3a172dbf88f19bfeec03aafe154f7073b2c015cb337ef9cb7110`  
		Last Modified: Wed, 21 Oct 2026 15:51:43 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc34b1c3d03751c0058db5248abf8ca2c0fa44adc305838a26dc44b5c239a82`  
		Last Modified: Wed, 21 Oct 2026 15:51:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:809a0535ab8fb58ed1f8fa04d07cf92231b7d5cd0214b3227090bd4440372c3a`  
		Last Modified: Wed, 21 Oct 2026 16:01:27 GMT  
		Size: 12.7 MB (12692586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e4c1abd8f649fce0621f666d9a5f073836d55b1a73ca3ad5ed9d75209d47c9`  
		Last Modified: Wed, 21 Oct 2026 16:01:26 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb07433db7bda2c6367bf52def58f0f26e6ba4d1ba965519229f2d4e75973f3`  
		Last Modified: Wed, 21 Oct 2026 16:01:27 GMT  
		Size: 13.5 MB (13517931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88493f928f5546c9c1d64fe1d96c9d9d47a6778cc001d771be03f02e6ca803c`  
		Last Modified: Wed, 21 Oct 2026 16:01:26 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7077e3b0287a8ebf22ae22260db1e2530d9dc36ed622ae69097e15c12af6f0cf`  
		Last Modified: Wed, 21 Oct 2026 16:01:28 GMT  
		Size: 22.5 KB (22456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b9b87cfb41d3f43ef5fd70ee3d0b0a93ad6c35bedf5b4af404cd220c9a65cc5`  
		Last Modified: Wed, 21 Oct 2026 16:01:27 GMT  
		Size: 22.5 KB (22462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71702a8fa0dfa01770183b3966096744ab257a719aecf865eb5c435c2229cdec`  
		Last Modified: Wed, 21 Oct 2026 16:01:28 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de21b5f043361e27ab66fc834e3fe12564583f86ac4b47ca15a9fa260cb05b7`  
		Last Modified: Wed, 21 Oct 2026 16:38:34 GMT  
		Size: 27.7 MB (27688054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c997339c422f2823aedac6212db6052e513185158352588eef30631c5e1b1046`  
		Last Modified: Wed, 21 Oct 2026 16:38:33 GMT  
		Size: 5.1 MB (5133890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76183527c57dbcf58ed9f2d4cdeb78f911cfb2144b7999932e5c01c03e4b95a7`  
		Last Modified: Wed, 21 Oct 2026 16:38:33 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:390430a35a7e5103fe7f7e7568124fa6b71b931b1db337a029effb570a9d1aaf`  
		Last Modified: Wed, 21 Oct 2026 16:38:33 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437dbbb3b5c2ffd10d289a2200f5e0bb6ea76c903b388d362c3779f0a219483e`  
		Last Modified: Wed, 21 Oct 2026 16:38:36 GMT  
		Size: 99.1 MB (99102251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mediawiki:stable-fpm-alpine` - unknown; unknown

```console
$ docker pull mediawiki@sha256:ef70bac23800fa3e1d042b64237fcd253d358761d5acde8601dc3ec8f675ed39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 KB (33260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f677d865d1df7b7041d59b1e2f0b23b85c7f73e31387e66596a5012edde26473`

```dockerfile
```

-	Layers:
	-	`sha256:b6a0212c87f727075f78283387c202b8857504348637427332d8a6d18f0f1d0d`  
		Last Modified: Wed, 21 Oct 2026 16:38:33 GMT  
		Size: 33.3 KB (33260 bytes)  
		MIME: application/vnd.in-toto+json

### `mediawiki:stable-fpm-alpine` - linux; arm variant v6

```console
$ docker pull mediawiki@sha256:24a89968ce0b0944843404e4bcee67cfe9ecfd54c03460b36cd83ce1af33f743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164644353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b38ec0689c033420269af07491396bb2acdc7c756623195a528b1e8d2bda590`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 15:51:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 15:51:59 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 15:51:59 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 15:51:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:51:59 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:51:59 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:51:59 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:51:59 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:51:59 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 21 Oct 2026 15:51:59 GMT
ENV PHP_VERSION=8.3.36
# Wed, 21 Oct 2026 15:51:59 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.36.tar.xz.asc
# Wed, 21 Oct 2026 15:51:59 GMT
ENV PHP_SHA256=dd54693aa334c5c4d72e9aee96b082c2473750a18a6c1d105789c93a3b1692fd
# Wed, 21 Oct 2026 15:59:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 15:59:23 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:02:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 16:02:05 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:02:06 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 16:02:07 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 16:02:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 16:02:07 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 16:02:07 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 21 Oct 2026 16:02:07 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 16:02:07 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 21 Oct 2026 16:02:07 GMT
CMD ["php-fpm"]
# Wed, 21 Oct 2026 16:21:03 GMT
RUN set -eux; 		apk add --no-cache 		git 		imagemagick 		python3 	; # buildkit
# Wed, 21 Oct 2026 16:22:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		icu-dev 		lua5.1-dev 		oniguruma-dev 	; 		docker-php-ext-install -j "$(nproc)" 		calendar 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install APCu-5.1.28; 	pecl install LuaSandbox-4.1.2; 	docker-php-ext-enable 		apcu 		luasandbox 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .mediawiki-phpext-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 16:22:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 21 Oct 2026 16:22:12 GMT
RUN set -eux; 	mkdir -p /var/www/data; 	chown -R www-data:www-data /var/www/data # buildkit
# Wed, 21 Oct 2026 16:22:28 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.46
# Wed, 21 Oct 2026 16:22:28 GMT
ENV MEDIAWIKI_VERSION=1.46.2
# Wed, 21 Oct 2026 16:22:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .fetch-deps 		bzip2 		gnupg 	; 		curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz; 	curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz.sig" -o mediawiki.tar.gz.sig; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 		D7D6767D135A514BEB86E9BA75682B08E8A3FEC4 		441276E9CCD15F44F6D97D18C119E1A64D70938E 		F7F780D82EBFB8A56556E7EE82403E59F9F8CD79 		1D98867E82982C8FE0ABC25F9B69B3109D3BB7B0 		E059C034E7A430583C252F4AA8F734246D73B586 		7759DE19A22260232F251342FC4D45E75D14112B 	; 	gpg --batch --verify mediawiki.tar.gz.sig mediawiki.tar.gz; 	tar -x --strip-components=1 -f mediawiki.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" mediawiki.tar.gz.sig mediawiki.tar.gz; 	chown -R www-data:www-data extensions skins cache images; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 16:22:28 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71f3b785e6be396ac7127e190cb88f2d882647b01efdeac9e433112630baadd`  
		Last Modified: Wed, 21 Oct 2026 15:55:21 GMT  
		Size: 5.6 MB (5555946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd25bcc5aae0c189aef24258593a06d4e2c25a66c3000a628bb720f2a87767c3`  
		Last Modified: Wed, 21 Oct 2026 15:55:21 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed8175732bc91d43cc174b3239f220e0ebea97c84282b319b580a1b80814ee2`  
		Last Modified: Wed, 21 Oct 2026 15:55:21 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df9cd5df5f47a63151c8ecc267f930c4bb5b372342aaed27d57fd5143879dc0`  
		Last Modified: Wed, 21 Oct 2026 16:02:13 GMT  
		Size: 12.7 MB (12692606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729f0dfecaf5adfd0b6b8cb1bdb7b907b1aa1b42b6c441fb95ec757719958c2d`  
		Last Modified: Wed, 21 Oct 2026 16:02:13 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae53daf43d68d82a25e3e5e8729b58dfe04f7ad7cc906413b523a68e090fe523`  
		Last Modified: Wed, 21 Oct 2026 16:02:13 GMT  
		Size: 12.2 MB (12236467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97884d1dfa6ceec7e7ca82f86291dae65f0778ba1c255efcb827900868904ed2`  
		Last Modified: Wed, 21 Oct 2026 16:02:12 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556d0b081ef54036f0e8946716e2269cacadbbd90116894c47339e974fc6caf7`  
		Last Modified: Wed, 21 Oct 2026 16:02:13 GMT  
		Size: 22.2 KB (22234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3a9d356cce9235bcc12fae7f409d1c0d6b940a78a3e6bfc2001b656ec39f2b`  
		Last Modified: Wed, 21 Oct 2026 16:02:14 GMT  
		Size: 22.3 KB (22251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db42adb784854924c9628c6c95a9900858f4056a2ed9cb6bd1a2f1ad21b8cd27`  
		Last Modified: Wed, 21 Oct 2026 16:02:14 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2477efa3db2ff3446759f9f01d19f363be755d8701dc6a4dafd4b5909a032b6b`  
		Last Modified: Wed, 21 Oct 2026 16:22:48 GMT  
		Size: 26.8 MB (26818692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18297b7a30dfd547c8b3b2700f3a07ccdf37e035643d17db9c80b8d697fc0d3f`  
		Last Modified: Wed, 21 Oct 2026 16:22:48 GMT  
		Size: 4.6 MB (4624054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4beeb7484c3f10a45d6b0cc95c73dfd53b28a748df9d5c3894836e806206e5c`  
		Last Modified: Wed, 21 Oct 2026 16:22:48 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfdfddc0ad8557f9ad0cef8b4ec7f75360dbcab8e81a88fbad96d5fcf468d321`  
		Last Modified: Wed, 21 Oct 2026 16:22:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a185aabb47e3f961e5b996125d9f83594a4cdc467abba463992f002efbc3ccfa`  
		Last Modified: Wed, 21 Oct 2026 16:22:51 GMT  
		Size: 99.1 MB (99103158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mediawiki:stable-fpm-alpine` - unknown; unknown

```console
$ docker pull mediawiki@sha256:8b00e694ead39d9a277774f3cc4597a9d0bea046344833b93f0192cf19cabf0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 KB (33386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a2277150b58643a128ea03f635a445995be12a0af521253ee712aa2a5e2954`

```dockerfile
```

-	Layers:
	-	`sha256:838794f152e269b806baabfd326ed1a7f25904a9a03074acb4fddcc9f4fa7c73`  
		Last Modified: Wed, 21 Oct 2026 16:22:47 GMT  
		Size: 33.4 KB (33386 bytes)  
		MIME: application/vnd.in-toto+json

### `mediawiki:stable-fpm-alpine` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:2a91fed62db0d0d7f185888d523822321bddf85e89d3c50d612d5a230d9def42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159880801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17654af61146927fa289e15a96e831fc5879758412c87e7f7710e22d35b6f57d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 17:45:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 25 Sep 2026 17:45:18 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Fri, 25 Sep 2026 17:45:18 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Fri, 25 Sep 2026 17:45:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Sep 2026 17:45:18 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Fri, 25 Sep 2026 17:45:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:45:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:45:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Fri, 25 Sep 2026 17:45:18 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Fri, 25 Sep 2026 17:45:18 GMT
ENV PHP_VERSION=8.3.35
# Fri, 25 Sep 2026 17:45:18 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Fri, 25 Sep 2026 17:45:18 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:45:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 25 Sep 2026 17:45:21 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:48:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 17:48:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:48:13 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 17:48:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 17:48:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:48:14 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:48:14 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Fri, 25 Sep 2026 17:48:14 GMT
STOPSIGNAL SIGQUIT
# Fri, 25 Sep 2026 17:48:14 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 25 Sep 2026 17:48:14 GMT
CMD ["php-fpm"]
# Mon, 05 Oct 2026 18:58:43 GMT
RUN set -eux; 		apk add --no-cache 		git 		imagemagick 		python3 	; # buildkit
# Mon, 05 Oct 2026 18:59:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		icu-dev 		lua5.1-dev 		oniguruma-dev 	; 		docker-php-ext-install -j "$(nproc)" 		calendar 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install APCu-5.1.28; 	pecl install LuaSandbox-4.1.2; 	docker-php-ext-enable 		apcu 		luasandbox 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .mediawiki-phpext-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Mon, 05 Oct 2026 18:59:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 05 Oct 2026 18:59:55 GMT
RUN set -eux; 	mkdir -p /var/www/data; 	chown -R www-data:www-data /var/www/data # buildkit
# Mon, 05 Oct 2026 19:01:05 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.46
# Mon, 05 Oct 2026 19:01:05 GMT
ENV MEDIAWIKI_VERSION=1.46.2
# Mon, 05 Oct 2026 19:01:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .fetch-deps 		bzip2 		gnupg 	; 		curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz; 	curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz.sig" -o mediawiki.tar.gz.sig; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 		D7D6767D135A514BEB86E9BA75682B08E8A3FEC4 		441276E9CCD15F44F6D97D18C119E1A64D70938E 		F7F780D82EBFB8A56556E7EE82403E59F9F8CD79 		1D98867E82982C8FE0ABC25F9B69B3109D3BB7B0 		E059C034E7A430583C252F4AA8F734246D73B586 		7759DE19A22260232F251342FC4D45E75D14112B 	; 	gpg --batch --verify mediawiki.tar.gz.sig mediawiki.tar.gz; 	tar -x --strip-components=1 -f mediawiki.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" mediawiki.tar.gz.sig mediawiki.tar.gz; 	chown -R www-data:www-data extensions skins cache images; 		apk del --no-network .fetch-deps # buildkit
# Mon, 05 Oct 2026 19:01:05 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dceea0b9087c4eb63031905cda48dba81a378e680f21a780d745b546c2534d2`  
		Last Modified: Fri, 25 Sep 2026 17:48:21 GMT  
		Size: 3.3 MB (3258271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf44e98fce6f06c3c26cce0834a3b07d27418774f582cf506edc2b6fc8b42af`  
		Last Modified: Fri, 25 Sep 2026 17:48:20 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:928d5040e112973be27b1cf9ccccb2ccd960e362f85c01f15fe4a5e829cf2639`  
		Last Modified: Fri, 25 Sep 2026 17:48:20 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b2d57dfd893d5b24bdda8d37684669e13f346e8bb0d4e7603c2ee7e79523fb8`  
		Last Modified: Fri, 25 Sep 2026 17:48:21 GMT  
		Size: 12.6 MB (12645623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff8c823704df6cb254bae1a55b7fa33b04ed2781a5e948d74187b0521076c3f`  
		Last Modified: Fri, 25 Sep 2026 17:48:21 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b329b46a0f0bc9cb7a5fa9f3d60dde1a8551f2b8ff5caf89db94c509277745`  
		Last Modified: Fri, 25 Sep 2026 17:48:22 GMT  
		Size: 11.4 MB (11445399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39721f34283630ffd8592a40f4a05323873f627106df65790f50750c67f5e9a2`  
		Last Modified: Fri, 25 Sep 2026 17:48:22 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a43dfc7f5481ffd3afc9041621327c3605b7ed414a3da856c5242c64ee9b32`  
		Last Modified: Fri, 25 Sep 2026 17:48:22 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba5f3f20be2b535ee74e8b22ab73bcb27636b534f084c5b86982435e4e6e2793`  
		Last Modified: Fri, 25 Sep 2026 17:48:23 GMT  
		Size: 22.2 KB (22245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f69c7e22757828fb8f9234dd48e5508614286bc66ce4a9d8e3a63d64f49d7827`  
		Last Modified: Fri, 25 Sep 2026 17:48:23 GMT  
		Size: 9.2 KB (9248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1c23d192f8231be1f79a242ae4dae4553c3ce1a323148401b7ee667cfc10b3`  
		Last Modified: Mon, 05 Oct 2026 19:01:24 GMT  
		Size: 25.4 MB (25403921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cd8392556f5e440d4ef982e6741572903072d6964fd5c50963dadaaa28c0548`  
		Last Modified: Mon, 05 Oct 2026 19:01:24 GMT  
		Size: 4.7 MB (4703006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f7272f0125eb4c0f12877bb121daca0bf79b116617f0d91083a235fc3836d45`  
		Last Modified: Mon, 05 Oct 2026 19:01:23 GMT  
		Size: 323.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35bbae93c8bfc3eeeca2c09617658989cfb2a1801b47c420cee97c4d001f163f`  
		Last Modified: Mon, 05 Oct 2026 19:01:23 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f9f6fc4680eabd9c034f93d734aa047544a04fd89d2d6686f4f06cd0c238f3`  
		Last Modified: Mon, 05 Oct 2026 19:01:27 GMT  
		Size: 99.1 MB (99101076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mediawiki:stable-fpm-alpine` - unknown; unknown

```console
$ docker pull mediawiki@sha256:208c0f7991fe01251d36ebc9a6fa72ec77c2a62be41c93ab349e397849cf1f85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 KB (33387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1df4ced80cbd8da13c7ac4e93fb60c12eb97f318e9c0b92292b414d456a1495`

```dockerfile
```

-	Layers:
	-	`sha256:d7836e60857dfd2ef6b9b94b77be966c5f830590848f99d8a7a42187d2ba0158`  
		Last Modified: Mon, 05 Oct 2026 19:01:23 GMT  
		Size: 33.4 KB (33387 bytes)  
		MIME: application/vnd.in-toto+json

### `mediawiki:stable-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:8c6cbc62490f024d37f6bb93d6182617afb34abe32f653fc02da09587e87fb35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165439343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2503583dcfca9555afb4e7daf5a363cceb48e1e8f6daa29b91238a2f507b6adf`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 17:41:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 25 Sep 2026 17:41:59 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Fri, 25 Sep 2026 17:41:59 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Fri, 25 Sep 2026 17:41:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Sep 2026 17:41:59 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Fri, 25 Sep 2026 17:41:59 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:41:59 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:41:59 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Fri, 25 Sep 2026 17:41:59 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Fri, 25 Sep 2026 17:41:59 GMT
ENV PHP_VERSION=8.3.35
# Fri, 25 Sep 2026 17:41:59 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Fri, 25 Sep 2026 17:41:59 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:42:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 25 Sep 2026 17:42:02 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:46:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 17:46:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:46:22 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 17:46:23 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 17:46:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:46:23 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:46:23 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Fri, 25 Sep 2026 17:46:23 GMT
STOPSIGNAL SIGQUIT
# Fri, 25 Sep 2026 17:46:23 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 25 Sep 2026 17:46:23 GMT
CMD ["php-fpm"]
# Mon, 05 Oct 2026 19:05:15 GMT
RUN set -eux; 		apk add --no-cache 		git 		imagemagick 		python3 	; # buildkit
# Mon, 05 Oct 2026 19:07:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		icu-dev 		lua5.1-dev 		oniguruma-dev 	; 		docker-php-ext-install -j "$(nproc)" 		calendar 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install APCu-5.1.28; 	pecl install LuaSandbox-4.1.2; 	docker-php-ext-enable 		apcu 		luasandbox 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .mediawiki-phpext-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Mon, 05 Oct 2026 19:07:20 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 05 Oct 2026 19:07:20 GMT
RUN set -eux; 	mkdir -p /var/www/data; 	chown -R www-data:www-data /var/www/data # buildkit
# Mon, 05 Oct 2026 19:07:58 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.46
# Mon, 05 Oct 2026 19:07:58 GMT
ENV MEDIAWIKI_VERSION=1.46.2
# Mon, 05 Oct 2026 19:07:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .fetch-deps 		bzip2 		gnupg 	; 		curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz; 	curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz.sig" -o mediawiki.tar.gz.sig; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 		D7D6767D135A514BEB86E9BA75682B08E8A3FEC4 		441276E9CCD15F44F6D97D18C119E1A64D70938E 		F7F780D82EBFB8A56556E7EE82403E59F9F8CD79 		1D98867E82982C8FE0ABC25F9B69B3109D3BB7B0 		E059C034E7A430583C252F4AA8F734246D73B586 		7759DE19A22260232F251342FC4D45E75D14112B 	; 	gpg --batch --verify mediawiki.tar.gz.sig mediawiki.tar.gz; 	tar -x --strip-components=1 -f mediawiki.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" mediawiki.tar.gz.sig mediawiki.tar.gz; 	chown -R www-data:www-data extensions skins cache images; 		apk del --no-network .fetch-deps # buildkit
# Mon, 05 Oct 2026 19:07:58 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5757d1518c525f076c4a08716d579b93d5e7e425579a2703360c4661c6216506`  
		Last Modified: Fri, 25 Sep 2026 17:46:30 GMT  
		Size: 3.5 MB (3501051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:defadd1b609b14b2ff5dd0bd3cf7597a407f7f7358a79b89b3a23350166894e7`  
		Last Modified: Fri, 25 Sep 2026 17:46:30 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84017befb376b5c1e3032d5d0591de12b9f2c0d5f1ada13ac306a01bde564afa`  
		Last Modified: Fri, 25 Sep 2026 17:46:30 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44dfdd165011df9aebd316332b06e45524eb32fdf4a3f066cdbc94b47130f963`  
		Last Modified: Fri, 25 Sep 2026 17:46:30 GMT  
		Size: 12.6 MB (12645619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14899fe4be4a1c5e4301a64af96aa06c85e7583d7ea98893b9b726715ad5c2cd`  
		Last Modified: Fri, 25 Sep 2026 17:46:31 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2bf577f098a104b8a9cc16abb305fcdddfae6311ab11a9182d6b8e759cf209e`  
		Last Modified: Fri, 25 Sep 2026 17:46:32 GMT  
		Size: 13.3 MB (13319961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1aef74c7b783472b06594cddea789cc0ea011722895deeb31458260d346a787`  
		Last Modified: Fri, 25 Sep 2026 17:46:31 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56e18b463ab1517c669ff833ca6bc988fcd3f67cdc13ac2e6efe240ef9e2a43`  
		Last Modified: Fri, 25 Sep 2026 17:46:32 GMT  
		Size: 22.2 KB (22239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068e362aeaacabefe7f300945d4b13abb40907b4efb18cd8e1809544fa91b687`  
		Last Modified: Fri, 25 Sep 2026 17:46:32 GMT  
		Size: 22.3 KB (22259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99f5e2ba749c6d5adace028a8dc8dd7d29e7c76b3dc5c9bd63f889ef14c5cafd`  
		Last Modified: Fri, 25 Sep 2026 17:46:32 GMT  
		Size: 9.3 KB (9251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab77307bea871a547968d300f6a256aad716656e9f17e57850517f3de63068a`  
		Last Modified: Mon, 05 Oct 2026 19:08:17 GMT  
		Size: 27.2 MB (27206863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f615ff5778d905485c0cf6a14d452c2dbb439890bfdface2fdea90c738f795d3`  
		Last Modified: Mon, 05 Oct 2026 19:08:16 GMT  
		Size: 5.4 MB (5417449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68dbbaec5bec2a574959f7af835a50a284f658a83993e3644fddb40a400e9b43`  
		Last Modified: Mon, 05 Oct 2026 19:08:16 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32357d8537c7dbcc8ba81208cc51b60e9f13a396f26a4ce9f042fb17fade0f28`  
		Last Modified: Mon, 05 Oct 2026 19:08:16 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ab63093ee838bb5861cdf4082ef20e40e2cdf8e77d405008dd79adf5cb7c5e`  
		Last Modified: Mon, 05 Oct 2026 19:08:20 GMT  
		Size: 99.1 MB (99102413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mediawiki:stable-fpm-alpine` - unknown; unknown

```console
$ docker pull mediawiki@sha256:5e63f986c2fcc864c7b18b80b8e1ccc43d9df7da808d5f67576c86977237ad57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 KB (33414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2df1fa502997602df36c40823bb36a6e9e6074aefa2a1b6dd5be556705c429a`

```dockerfile
```

-	Layers:
	-	`sha256:1c541fd8424c261ebff0fa868126636be0658b00785d29bad7ccb0db88c4ca66`  
		Last Modified: Mon, 05 Oct 2026 19:08:16 GMT  
		Size: 33.4 KB (33414 bytes)  
		MIME: application/vnd.in-toto+json

### `mediawiki:stable-fpm-alpine` - linux; 386

```console
$ docker pull mediawiki@sha256:1f4e62a5f5998467f5f98237d04ea56d5bafeb8e54fd4c4b0ebd58af2c9beda2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166320749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c15a2355038158e6f293793e4935cbcc41ca940898af0938c18285dd63b7d3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 17:42:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 25 Sep 2026 17:42:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Fri, 25 Sep 2026 17:42:11 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Fri, 25 Sep 2026 17:42:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Sep 2026 17:42:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Fri, 25 Sep 2026 17:42:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:42:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:42:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Fri, 25 Sep 2026 17:42:12 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Fri, 25 Sep 2026 17:42:12 GMT
ENV PHP_VERSION=8.3.35
# Fri, 25 Sep 2026 17:42:12 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Fri, 25 Sep 2026 17:42:12 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:42:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 25 Sep 2026 17:42:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:45:17 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 17:45:17 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:45:17 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 17:45:18 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 17:45:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:45:18 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:45:18 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Fri, 25 Sep 2026 17:45:18 GMT
STOPSIGNAL SIGQUIT
# Fri, 25 Sep 2026 17:45:18 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 25 Sep 2026 17:45:18 GMT
CMD ["php-fpm"]
# Mon, 05 Oct 2026 18:59:02 GMT
RUN set -eux; 		apk add --no-cache 		git 		imagemagick 		python3 	; # buildkit
# Mon, 05 Oct 2026 19:00:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		icu-dev 		lua5.1-dev 		oniguruma-dev 	; 		docker-php-ext-install -j "$(nproc)" 		calendar 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install APCu-5.1.28; 	pecl install LuaSandbox-4.1.2; 	docker-php-ext-enable 		apcu 		luasandbox 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .mediawiki-phpext-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Mon, 05 Oct 2026 19:00:13 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 05 Oct 2026 19:00:13 GMT
RUN set -eux; 	mkdir -p /var/www/data; 	chown -R www-data:www-data /var/www/data # buildkit
# Mon, 05 Oct 2026 19:01:11 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.46
# Mon, 05 Oct 2026 19:01:11 GMT
ENV MEDIAWIKI_VERSION=1.46.2
# Mon, 05 Oct 2026 19:01:11 GMT
RUN set -eux; 	apk add --no-cache --virtual .fetch-deps 		bzip2 		gnupg 	; 		curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz; 	curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz.sig" -o mediawiki.tar.gz.sig; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 		D7D6767D135A514BEB86E9BA75682B08E8A3FEC4 		441276E9CCD15F44F6D97D18C119E1A64D70938E 		F7F780D82EBFB8A56556E7EE82403E59F9F8CD79 		1D98867E82982C8FE0ABC25F9B69B3109D3BB7B0 		E059C034E7A430583C252F4AA8F734246D73B586 		7759DE19A22260232F251342FC4D45E75D14112B 	; 	gpg --batch --verify mediawiki.tar.gz.sig mediawiki.tar.gz; 	tar -x --strip-components=1 -f mediawiki.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" mediawiki.tar.gz.sig mediawiki.tar.gz; 	chown -R www-data:www-data extensions skins cache images; 		apk del --no-network .fetch-deps # buildkit
# Mon, 05 Oct 2026 19:01:11 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bbb134a68bb0d534fcc605be7bc9a3c34368f1a83fcfc3ae057cebcb8a9153e`  
		Last Modified: Fri, 25 Sep 2026 17:45:25 GMT  
		Size: 3.5 MB (3524555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e0a739bf59160d187afb3b15fae777ae152da78e612600d9c87418511f3155`  
		Last Modified: Fri, 25 Sep 2026 17:45:25 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8285e57bd70aaa20522a421f1795152dab810371f31fcdd8251c6e01706ec446`  
		Last Modified: Fri, 25 Sep 2026 17:45:25 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06f872cd35c2fe2d5bbc972c87e12024a907f0ae4c90d115a0518f67ce0d8558`  
		Last Modified: Fri, 25 Sep 2026 17:45:25 GMT  
		Size: 12.6 MB (12645589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2804f635b4a22360b4f49dead032bc118fddaeb2b12f66d0b52bf85591c202`  
		Last Modified: Fri, 25 Sep 2026 17:45:26 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ab6aa2561b3823caadde67203f3c651a4ab5f263040c88f4aff09467f9d22b5`  
		Last Modified: Fri, 25 Sep 2026 17:45:27 GMT  
		Size: 13.7 MB (13695283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cade62581b573a1caf09658d2c8c6854b640a72da7f8c99a81d86d2d537c6c05`  
		Last Modified: Fri, 25 Sep 2026 17:45:26 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af5acb9bd8e68a19131836d8b5a67dd99676a302bd103bdc7b6e0b5abe5d3cb`  
		Last Modified: Fri, 25 Sep 2026 17:45:27 GMT  
		Size: 22.4 KB (22427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b3c8207808a397bc2097ce813ebe12b0e9bdb8a00a220fc812290579dc6fcd5`  
		Last Modified: Fri, 25 Sep 2026 17:45:27 GMT  
		Size: 22.4 KB (22440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58eb522d903041228c83db786515a94faf80664bbd30e368116eb445c330b96`  
		Last Modified: Fri, 25 Sep 2026 17:45:28 GMT  
		Size: 9.3 KB (9252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6029e431ff3332b37f3ed80ccca2c859e0bc1afecf32a21ef9a3ea4391a8baab`  
		Last Modified: Mon, 05 Oct 2026 19:01:29 GMT  
		Size: 28.3 MB (28344497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c515baf483da04a0b78e596e0af8641a9c18d3baa8482be9f783420852b4cee4`  
		Last Modified: Mon, 05 Oct 2026 19:01:28 GMT  
		Size: 5.3 MB (5273328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27caedee7e23b296b9cf043f66e36d526d437464badf14b162d1f24e3432c122`  
		Last Modified: Mon, 05 Oct 2026 19:01:28 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f92b0b1f1d4b01abc674518bdb2947582785a5f0af2664fbe8ac630ee70c6337`  
		Last Modified: Mon, 05 Oct 2026 19:01:28 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30ad4b571e5b8c60d7b73202abce7fd50b809581cecad9a3e0fdbc294874a10`  
		Last Modified: Mon, 05 Oct 2026 19:01:31 GMT  
		Size: 99.1 MB (99102014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mediawiki:stable-fpm-alpine` - unknown; unknown

```console
$ docker pull mediawiki@sha256:d4705de2a20bdc6e6c82e96de3d6d975eccdc391bac6ea3a98eb7e21ee0b9de3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 KB (33228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e3c358b22ab6da6cdcc6d722c18f9013b596d56427351ce1cf754c7ab08d6a2`

```dockerfile
```

-	Layers:
	-	`sha256:f10b07cb0f01ffe1e39131e68c8a68ee4c6917b030ad70c9676cf86da0b56159`  
		Last Modified: Mon, 05 Oct 2026 19:01:28 GMT  
		Size: 33.2 KB (33228 bytes)  
		MIME: application/vnd.in-toto+json

### `mediawiki:stable-fpm-alpine` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:f90c225c8f64ba9ef80b1494a389240e433d6dbc8c3c84fa721e4f49acc72e42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167212048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caee750907553bae94a2379a2e1db65ee911aea37d537bf5867119abb778f882`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 21:35:21 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 21:35:22 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 21:35:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 21:35:22 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_VERSION=8.3.35
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:59:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 25 Sep 2026 17:59:10 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 18:04:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 18:04:28 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 18:04:30 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 18:04:32 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 18:04:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 18:04:33 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 18:04:34 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Fri, 25 Sep 2026 18:04:34 GMT
STOPSIGNAL SIGQUIT
# Fri, 25 Sep 2026 18:04:34 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 25 Sep 2026 18:04:34 GMT
CMD ["php-fpm"]
# Mon, 05 Oct 2026 19:02:43 GMT
RUN set -eux; 		apk add --no-cache 		git 		imagemagick 		python3 	; # buildkit
# Mon, 05 Oct 2026 19:04:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		icu-dev 		lua5.1-dev 		oniguruma-dev 	; 		docker-php-ext-install -j "$(nproc)" 		calendar 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install APCu-5.1.28; 	pecl install LuaSandbox-4.1.2; 	docker-php-ext-enable 		apcu 		luasandbox 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .mediawiki-phpext-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Mon, 05 Oct 2026 19:04:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 05 Oct 2026 19:04:36 GMT
RUN set -eux; 	mkdir -p /var/www/data; 	chown -R www-data:www-data /var/www/data # buildkit
# Mon, 05 Oct 2026 19:05:02 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.46
# Mon, 05 Oct 2026 19:05:02 GMT
ENV MEDIAWIKI_VERSION=1.46.2
# Mon, 05 Oct 2026 19:05:02 GMT
RUN set -eux; 	apk add --no-cache --virtual .fetch-deps 		bzip2 		gnupg 	; 		curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz; 	curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz.sig" -o mediawiki.tar.gz.sig; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 		D7D6767D135A514BEB86E9BA75682B08E8A3FEC4 		441276E9CCD15F44F6D97D18C119E1A64D70938E 		F7F780D82EBFB8A56556E7EE82403E59F9F8CD79 		1D98867E82982C8FE0ABC25F9B69B3109D3BB7B0 		E059C034E7A430583C252F4AA8F734246D73B586 		7759DE19A22260232F251342FC4D45E75D14112B 	; 	gpg --batch --verify mediawiki.tar.gz.sig mediawiki.tar.gz; 	tar -x --strip-components=1 -f mediawiki.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" mediawiki.tar.gz.sig mediawiki.tar.gz; 	chown -R www-data:www-data extensions skins cache images; 		apk del --no-network .fetch-deps # buildkit
# Mon, 05 Oct 2026 19:05:02 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94dd3b632bc8356dfcd2913d56c4dafaee9f64ea172ed02d121456debc7e09e3`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 3.7 MB (3664991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ffba323cefd4aec9e70567151bff96ffe7dcd359abe0c80e30f54fdb9d519d3`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 928.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f076f58842bb9537630b1ddc9001cb2a7d48b3dc3da8088c3b602853fa14e686`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be4cf205e3da8adce83f2a2e6f7a667741b1040e23921e5c4a613e1dccd81b4`  
		Last Modified: Fri, 25 Sep 2026 18:03:27 GMT  
		Size: 12.6 MB (12645640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:837133aa69ef01a15cc1eeb8d32ee8444918c32726d5dbede929029ed1544795`  
		Last Modified: Fri, 25 Sep 2026 18:03:27 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc7fd4fb65ddd03b507d2f9d9eb8a3c2179f9d187d7494f0cd94051a9cc5aa9`  
		Last Modified: Fri, 25 Sep 2026 18:04:50 GMT  
		Size: 14.0 MB (13988655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a8913608a334179aed49ba50f045a29c9e9865289b13b11ea5bd2db522007d0`  
		Last Modified: Fri, 25 Sep 2026 18:04:49 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ee4d8de808cb8e60829525acb284a529c071ed3240fa6a84d5cfad70f5c915`  
		Last Modified: Fri, 25 Sep 2026 18:04:49 GMT  
		Size: 22.3 KB (22274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a0c7b9876572467628ec26d7d067d4cdcc196e6f9e613da16ad540f9473bc2`  
		Last Modified: Fri, 25 Sep 2026 18:04:49 GMT  
		Size: 22.3 KB (22296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aea57f087feb33dc2ff74e204de00539b2c263721418e77d6a0a5b4618a7fd0`  
		Last Modified: Fri, 25 Sep 2026 18:04:51 GMT  
		Size: 9.3 KB (9252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a564f2a1a1822ebd259d4639195f8fab6986213afd0b4e404bfae541280606e1`  
		Last Modified: Mon, 05 Oct 2026 19:05:43 GMT  
		Size: 29.0 MB (28956691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd1926d802bcd72ae8f682fb84145ee1ad4659bf3d28ada486971379c64bbf9`  
		Last Modified: Mon, 05 Oct 2026 19:05:42 GMT  
		Size: 5.0 MB (4978710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec03e09208f4f4637f5c7749ef7d37b0da07e4a891c949ecb66d3434f2f90cc`  
		Last Modified: Mon, 05 Oct 2026 19:05:42 GMT  
		Size: 328.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5886440abc8b7715ef16ad17386475cd57c25e5424fd46b910d6c5b9c59b9ad9`  
		Last Modified: Mon, 05 Oct 2026 19:05:42 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c0272fd24df28db16b409d16cc12a64c9671a9bde0db15799df2e7cba2a3769`  
		Last Modified: Mon, 05 Oct 2026 19:05:46 GMT  
		Size: 99.1 MB (99101468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mediawiki:stable-fpm-alpine` - unknown; unknown

```console
$ docker pull mediawiki@sha256:4d3863591a56203586aabcc65c9c9f022e469070aad153258886fd04d8a21003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 KB (33309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2c08e464f61eacc311176d4ee2872d53b6d8dea8157be1059526d64838ff70`

```dockerfile
```

-	Layers:
	-	`sha256:190ee5793ebadf613d7b07aa43f021fcdd2d6fda0098e577cf0ca1dc345885ad`  
		Last Modified: Mon, 05 Oct 2026 19:05:42 GMT  
		Size: 33.3 KB (33309 bytes)  
		MIME: application/vnd.in-toto+json
