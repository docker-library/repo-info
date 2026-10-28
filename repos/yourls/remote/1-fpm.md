## `yourls:1-fpm`

```console
$ docker pull yourls@sha256:87135e67aabaa60f37092d2b8c62cb55a12096130c00d27fe5843fcffd695009
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

### `yourls:1-fpm` - linux; amd64

```console
$ docker pull yourls@sha256:5c2f14bf1617aacbf698246a43f986a742f278210c91da3d2e31259e5b98333f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.4 MB (183444438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1eb341cb855626ac8424da2bdd0be75be317db7dc4a30c27e3c777a873fd5ea`
-	Entrypoint: `["container-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:19:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:19:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:19:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:19:19 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:19:19 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:19:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:19:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:19:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:19:19 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 28 Oct 2026 01:19:19 GMT
ENV PHP_VERSION=8.5.12
# Wed, 28 Oct 2026 01:19:19 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 28 Oct 2026 01:19:19 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 28 Oct 2026 01:19:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:19:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:22:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:22:07 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:22:07 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:22:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:22:07 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:22:07 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 28 Oct 2026 01:22:07 GMT
STOPSIGNAL SIGQUIT
# Wed, 28 Oct 2026 01:22:07 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 28 Oct 2026 01:22:07 GMT
CMD ["php-fpm"]
# Wed, 28 Oct 2026 02:22:35 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)"     bcmath     pdo_mysql     mysqli # buildkit
# Wed, 28 Oct 2026 02:22:35 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 28 Oct 2026 02:22:37 GMT
ARG YOURLS_VERSION=1.10.6
# Wed, 28 Oct 2026 02:22:37 GMT
ARG YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
# Wed, 28 Oct 2026 02:22:37 GMT
ENV YOURLS_VERSION=1.10.6
# Wed, 28 Oct 2026 02:22:37 GMT
ENV YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
# Wed, 28 Oct 2026 02:22:37 GMT
# ARGS: YOURLS_VERSION=1.10.6 YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls # buildkit
# Wed, 28 Oct 2026 02:22:37 GMT
COPY --chown=www-data:www-data config-container.php /usr/src/yourls/user/ # buildkit
# Wed, 28 Oct 2026 02:22:37 GMT
COPY container-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:22:37 GMT
ENTRYPOINT ["container-entrypoint.sh"]
# Wed, 28 Oct 2026 02:22:37 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b981edc2cd056a4bd220fb845de0ff29cc88881bced5505231cd8ec9157f0a`  
		Last Modified: Wed, 28 Oct 2026 01:22:28 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72c730a41a79a88037c8c841f865e25497c0647ceec634fdd6efcdae12b2e8ad`  
		Last Modified: Wed, 28 Oct 2026 01:22:31 GMT  
		Size: 117.8 MB (117838060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96cd404114fe31c0a2ff0e1977e10cd0f27eddf7682a494866304711f5c81a16`  
		Last Modified: Wed, 28 Oct 2026 01:22:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4f87061aab7d637e579d89d0afee2465cf34b0021ddd64bb5f08f3bce37bee2`  
		Last Modified: Wed, 28 Oct 2026 01:22:29 GMT  
		Size: 14.7 MB (14702709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8990e051ece74c9aa8cd2a771a78fdf93a2aa319d378195c119fb0d95d7e74`  
		Last Modified: Wed, 28 Oct 2026 01:22:29 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:690096fb3b6d0ff856e6b676704fc52275f6f7db191df14211df9ee5774c59a8`  
		Last Modified: Wed, 28 Oct 2026 01:22:30 GMT  
		Size: 15.3 MB (15326818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f581f1151ae904cb19198569fe9706ced0e333aec7d088107978227032033230`  
		Last Modified: Wed, 28 Oct 2026 01:22:31 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a559ab110064b415308cb4ab3ec980e06f656ea81941cf2be95e17eb49a8f95c`  
		Last Modified: Wed, 28 Oct 2026 01:22:31 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43749be7547435245d4c090b9891936a7b398500cbe36d50ac8b535c4d8709f2`  
		Last Modified: Wed, 28 Oct 2026 01:22:32 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcc4d933193a3f6e5c2e796452c4882993e4b35048b2894d430f29ac757147f9`  
		Last Modified: Wed, 28 Oct 2026 02:22:42 GMT  
		Size: 108.7 KB (108688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0284b129fdedbcbffc5da8d5f7402eae9dc86d4829b27c6560e6c4edf3548462`  
		Last Modified: Wed, 28 Oct 2026 02:22:42 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11d67d7b07cbbec31a6462f27eee1f707b0432d1ff03b52be1b86a3ae6799e1`  
		Last Modified: Wed, 28 Oct 2026 02:22:42 GMT  
		Size: 5.6 MB (5595725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8820ff8c2e930ae44f8252d7936e884fcbbb433bda3e59bf592bc982afc32acd`  
		Last Modified: Wed, 28 Oct 2026 02:22:42 GMT  
		Size: 2.3 KB (2313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e0a783255e03f3f7636064e832009b4a3e9df675a4250041d56745044246c2`  
		Last Modified: Wed, 28 Oct 2026 02:22:43 GMT  
		Size: 1.6 KB (1625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `yourls:1-fpm` - unknown; unknown

```console
$ docker pull yourls@sha256:a094acae480c3363e6cc9b92003bc23747e1e77034e3b34874b056b12501e985
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db64bec2a40009b6a94af507ce4f2c82a6a3898ae8c3a15f63c183d429a2ef3b`

```dockerfile
```

-	Layers:
	-	`sha256:dda82570af609e0a223ff0355906a59234add2e0c842cad4ecd810f7dc81e19c`  
		Last Modified: Wed, 28 Oct 2026 02:22:42 GMT  
		Size: 26.7 KB (26683 bytes)  
		MIME: application/vnd.in-toto+json

### `yourls:1-fpm` - linux; arm variant v5

```console
$ docker pull yourls@sha256:4af98edc62ff8cfc0f632b0506a2d134fd3225d3af055853758a7fe2838cbe2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156610694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c816da7dbf16dbfbb8e7419513f1ce7d05d431b95499714437cc6d0f61b310`
-	Entrypoint: `["container-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:18:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:19:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:19:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:19:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:19:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:19:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:19:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:19:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:19:22 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 28 Oct 2026 01:19:22 GMT
ENV PHP_VERSION=8.5.12
# Wed, 28 Oct 2026 01:19:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 28 Oct 2026 01:19:22 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 28 Oct 2026 01:19:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:19:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:22:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:22:49 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:22:50 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:22:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:22:50 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:22:50 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 28 Oct 2026 01:22:50 GMT
STOPSIGNAL SIGQUIT
# Wed, 28 Oct 2026 01:22:50 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 28 Oct 2026 01:22:50 GMT
CMD ["php-fpm"]
# Wed, 28 Oct 2026 03:04:57 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)"     bcmath     pdo_mysql     mysqli # buildkit
# Wed, 28 Oct 2026 03:04:57 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 28 Oct 2026 03:04:58 GMT
ARG YOURLS_VERSION=1.10.6
# Wed, 28 Oct 2026 03:04:58 GMT
ARG YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
# Wed, 28 Oct 2026 03:04:58 GMT
ENV YOURLS_VERSION=1.10.6
# Wed, 28 Oct 2026 03:04:58 GMT
ENV YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
# Wed, 28 Oct 2026 03:04:58 GMT
# ARGS: YOURLS_VERSION=1.10.6 YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls # buildkit
# Wed, 28 Oct 2026 03:04:58 GMT
COPY --chown=www-data:www-data config-container.php /usr/src/yourls/user/ # buildkit
# Wed, 28 Oct 2026 03:04:58 GMT
COPY container-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 03:04:58 GMT
ENTRYPOINT ["container-entrypoint.sh"]
# Wed, 28 Oct 2026 03:04:58 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74989e1817e30dfb90a42c1483bd7e362a829e7f53a61aa033d65b20a0ed98ab`  
		Last Modified: Wed, 28 Oct 2026 01:23:08 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f27fafdd0cca25dc385ff73184ba60fed4974dfbaae25129fd96e9a2284d7a5a`  
		Last Modified: Wed, 28 Oct 2026 01:23:11 GMT  
		Size: 94.9 MB (94882735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2e18f1bebb790e239612bb852ddb61fe7d47747f6eb32f994c863376037965`  
		Last Modified: Wed, 28 Oct 2026 01:22:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ddb756a94f27bfbc211f922d9abdb5ed35c47376ef9107d0fba856414c20569`  
		Last Modified: Wed, 28 Oct 2026 01:23:09 GMT  
		Size: 14.7 MB (14700244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:699794ac3764d0c287a1979877b6253c64558245f50ce2281c3cb5bddb239b15`  
		Last Modified: Wed, 28 Oct 2026 01:23:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a31b6b3da87bf8a43a8e42a8e583036eeca599e2fec808c648bb030d8b6c62`  
		Last Modified: Wed, 28 Oct 2026 01:23:09 GMT  
		Size: 13.3 MB (13298815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c03611c830bccfa28496aa509d20042c138c987c29021200e7a5a2ce848b99c0`  
		Last Modified: Wed, 28 Oct 2026 01:23:10 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ed1766a4e55f19232afe766f91f1134340f3bb8e9efb42a1ffac44e28203c1`  
		Last Modified: Wed, 28 Oct 2026 01:23:11 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f184432abbfbd80022b3e02f39fbe401a9fb3a315cf02fe1496073b4acb36ba1`  
		Last Modified: Wed, 28 Oct 2026 01:23:11 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e70d2cf58d2adf01c3b4085688d4439f9539a8edf243d4d5de8c0cb19987696`  
		Last Modified: Wed, 28 Oct 2026 03:05:03 GMT  
		Size: 97.3 KB (97293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0617232f1fc85c81bf10ece2a68a610fe050e99b9665a7835d9d5cf1b892bc69`  
		Last Modified: Wed, 28 Oct 2026 03:05:04 GMT  
		Size: 328.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f583a06b835ec1466ec2539f9d54e6d37b19994084cbabdd7bd614e336e8642`  
		Last Modified: Wed, 28 Oct 2026 03:05:04 GMT  
		Size: 5.6 MB (5595729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84302cf0c7bfbe5bfec01afc024a3392ad1c640a3f105dcb07310b690c2a1251`  
		Last Modified: Wed, 28 Oct 2026 03:05:03 GMT  
		Size: 2.3 KB (2314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023b62a9e7cf2e1971c59e652c2a8f919953bd1386439676acf0afbf4df4b42a`  
		Last Modified: Wed, 28 Oct 2026 03:05:05 GMT  
		Size: 1.6 KB (1625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `yourls:1-fpm` - unknown; unknown

```console
$ docker pull yourls@sha256:1493e3e0b0967908c46bfe8c789a3ff6fd3283239a2640bc473efe0aab4c328e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54a6f6396479223b35a341c48eb727c2163fbdef49a5eed57e652f8d29d404b8`

```dockerfile
```

-	Layers:
	-	`sha256:d8b6bac91e4797c75ba190000514eca62cc0b8721328bfd4a7bdabe792e8640c`  
		Last Modified: Wed, 28 Oct 2026 03:05:03 GMT  
		Size: 26.8 KB (26778 bytes)  
		MIME: application/vnd.in-toto+json

### `yourls:1-fpm` - linux; arm variant v7

```console
$ docker pull yourls@sha256:5bdff08079b3dc2360dc378bde606c54a30d13eb6e37af7f95f65acd716f8670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.5 MB (145523712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15596460ccea4b6184a5133d41d8f7cf9be3f6190f4914aa631df049eb94f71`
-	Entrypoint: `["container-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:29:25 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:29:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:29:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:29:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:29:44 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:29:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:29:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:29:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:29:44 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 28 Oct 2026 01:29:44 GMT
ENV PHP_VERSION=8.5.12
# Wed, 28 Oct 2026 01:29:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 28 Oct 2026 01:29:44 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 28 Oct 2026 01:29:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:29:55 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:32:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:32:53 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:32:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:32:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:32:53 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:32:53 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 28 Oct 2026 01:32:53 GMT
STOPSIGNAL SIGQUIT
# Wed, 28 Oct 2026 01:32:53 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 28 Oct 2026 01:32:53 GMT
CMD ["php-fpm"]
# Wed, 28 Oct 2026 03:25:42 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)"     bcmath     pdo_mysql     mysqli # buildkit
# Wed, 28 Oct 2026 03:25:42 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 28 Oct 2026 03:25:44 GMT
ARG YOURLS_VERSION=1.10.6
# Wed, 28 Oct 2026 03:25:44 GMT
ARG YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
# Wed, 28 Oct 2026 03:25:44 GMT
ENV YOURLS_VERSION=1.10.6
# Wed, 28 Oct 2026 03:25:44 GMT
ENV YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
# Wed, 28 Oct 2026 03:25:44 GMT
# ARGS: YOURLS_VERSION=1.10.6 YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls # buildkit
# Wed, 28 Oct 2026 03:25:44 GMT
COPY --chown=www-data:www-data config-container.php /usr/src/yourls/user/ # buildkit
# Wed, 28 Oct 2026 03:25:44 GMT
COPY container-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 03:25:44 GMT
ENTRYPOINT ["container-entrypoint.sh"]
# Wed, 28 Oct 2026 03:25:44 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a5695cf5ab2b8068f84f46e693a64170aa6d4d7b3a774e53b7ca67ec802eec`  
		Last Modified: Wed, 28 Oct 2026 01:33:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eaf361d4dc3f18a8e4de28e001f22fa2ec4e907f082b96377d5d3b18307bc88`  
		Last Modified: Wed, 28 Oct 2026 01:33:13 GMT  
		Size: 86.3 MB (86256733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec1772887e47ad084e215eeefde3f7e47244c37466d6803d9658602522cd3d4a`  
		Last Modified: Wed, 28 Oct 2026 01:33:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2e5cfec9df68612d32ba2fcd842bd03f42bf156fc1226364dc70bee4b18eca6`  
		Last Modified: Wed, 28 Oct 2026 01:33:11 GMT  
		Size: 14.7 MB (14700393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6c7b5e93d333b5b57df4959594c087c2efaaa1cef821bea5a04a9bcd014606`  
		Last Modified: Wed, 28 Oct 2026 01:33:11 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23b67761f2a0df84f54169d6ccca5334fa7c83d8a40f9b188a3d97597ebc0f36`  
		Last Modified: Wed, 28 Oct 2026 01:33:12 GMT  
		Size: 12.6 MB (12590383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9051c0b662582199b2c2062e028832ddfa2ac3dcfc7c71b1461d648c553def8`  
		Last Modified: Wed, 28 Oct 2026 01:33:12 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ebf2bc311764fecc03ad380b356d751915bbb411c1fd1c71d9ef6ec4b2cb818`  
		Last Modified: Wed, 28 Oct 2026 01:33:12 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99cf00eadf8047475e8c67e594542c014b2b50a8297e14197b6242bf4187641`  
		Last Modified: Wed, 28 Oct 2026 01:33:13 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6af5143c86771b9822398f3b32a02092901bc7aef0f525884d8aae6ae4a9603`  
		Last Modified: Wed, 28 Oct 2026 03:25:48 GMT  
		Size: 91.1 KB (91100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c572289fb892fb1fb18ff663634c64208dd49e2a948a2d7c46b0733ce05e7807`  
		Last Modified: Wed, 28 Oct 2026 03:25:49 GMT  
		Size: 328.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d69ff5004ed1eb27c0f30d88620da9e3c60f714ee7ce53da5a36384f0e9c909`  
		Last Modified: Wed, 28 Oct 2026 03:25:49 GMT  
		Size: 5.6 MB (5595726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90fb5bfe7fccd10f34eec60eb6d4f02aeca483b35b9b95a2e83c66cf018294b`  
		Last Modified: Wed, 28 Oct 2026 03:25:48 GMT  
		Size: 2.3 KB (2317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8d4078e7f9b75b27df2724e33fac16f6c0e3f33784e99880e60b08dec21de5`  
		Last Modified: Wed, 28 Oct 2026 03:25:50 GMT  
		Size: 1.6 KB (1624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `yourls:1-fpm` - unknown; unknown

```console
$ docker pull yourls@sha256:416ac6b81623968afd9a1630154d6196e44283a17f979ba2269d44c74879cafd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f34fce5b3573dc905bb8b64bff9b785654e9fc9d58bd5ebb87caa2fe466622`

```dockerfile
```

-	Layers:
	-	`sha256:c40d304e7a53fefe832273faa2bef3ef0ced158b71a21a9791117547704e8de1`  
		Last Modified: Wed, 28 Oct 2026 03:25:48 GMT  
		Size: 26.8 KB (26778 bytes)  
		MIME: application/vnd.in-toto+json

### `yourls:1-fpm` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:9e0332a09a32f7c62de2633a02130e73d7458d702a0769203361308778ae5120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175716354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b29a10c84fa0832c2419d0d8c7959d953cf13ee2377e093e0a7ea2d78dde18b`
-	Entrypoint: `["container-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:19:27 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:19:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:19:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:19:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:19:44 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:19:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:19:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:19:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:19:44 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 28 Oct 2026 01:19:44 GMT
ENV PHP_VERSION=8.5.12
# Wed, 28 Oct 2026 01:19:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 28 Oct 2026 01:19:44 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 28 Oct 2026 01:19:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:19:52 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:23:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:23:02 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:23:03 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:23:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:23:03 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:23:03 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 28 Oct 2026 01:23:03 GMT
STOPSIGNAL SIGQUIT
# Wed, 28 Oct 2026 01:23:03 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 28 Oct 2026 01:23:03 GMT
CMD ["php-fpm"]
# Wed, 28 Oct 2026 02:33:18 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)"     bcmath     pdo_mysql     mysqli # buildkit
# Wed, 28 Oct 2026 02:33:18 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 28 Oct 2026 02:33:19 GMT
ARG YOURLS_VERSION=1.10.6
# Wed, 28 Oct 2026 02:33:19 GMT
ARG YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
# Wed, 28 Oct 2026 02:33:19 GMT
ENV YOURLS_VERSION=1.10.6
# Wed, 28 Oct 2026 02:33:19 GMT
ENV YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
# Wed, 28 Oct 2026 02:33:19 GMT
# ARGS: YOURLS_VERSION=1.10.6 YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls # buildkit
# Wed, 28 Oct 2026 02:33:19 GMT
COPY --chown=www-data:www-data config-container.php /usr/src/yourls/user/ # buildkit
# Wed, 28 Oct 2026 02:33:19 GMT
COPY container-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:33:19 GMT
ENTRYPOINT ["container-entrypoint.sh"]
# Wed, 28 Oct 2026 02:33:19 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7b461a928f570e809a7027c2c9dbc01da64d6f69c40f95757fe6e365b65076`  
		Last Modified: Wed, 28 Oct 2026 01:23:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b11bdff3ec0519d6b28ec95ad71c3e5cc9f25b872ff9fa0850c345ad9160f3d0`  
		Last Modified: Wed, 28 Oct 2026 01:23:27 GMT  
		Size: 110.2 MB (110178538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecdad115a9cf9fd90a77a1e149c9c64a9727413095ea51896c28279e8aac3d3`  
		Last Modified: Wed, 28 Oct 2026 01:23:23 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578f446180ca40893e8e70de2145762570f5f67ae611ff5a1fa188d762f288dd`  
		Last Modified: Wed, 28 Oct 2026 01:23:24 GMT  
		Size: 14.7 MB (14702288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae9af51c8ea7478c61d883af18eeaaac76c7fff5495961a961bf6747059bd661`  
		Last Modified: Wed, 28 Oct 2026 01:23:25 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9ee4fdd150ffc36c5e22e4bb73c5922f6efa8efef4d15e80879322e1b4e1a39`  
		Last Modified: Wed, 28 Oct 2026 01:23:25 GMT  
		Size: 14.9 MB (14903079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c91e279ab84668bc525caaebc2c5a89ac629c3994bc5c3295dd1a73b18f0dc3`  
		Last Modified: Wed, 28 Oct 2026 01:23:26 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3b9111110900274befd0c9d1712977ebae47f06c1bc58fb05ca85fbd403e35`  
		Last Modified: Wed, 28 Oct 2026 01:23:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8590ff483c9b2a852d38dbdaf6a5d725856466efd76f1f72cd542789e5ee6c8`  
		Last Modified: Wed, 28 Oct 2026 01:23:27 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c052c0be706c70165c3a71f0020441932937c7e3aa7eedcab4edda098a8b33e`  
		Last Modified: Wed, 28 Oct 2026 02:33:24 GMT  
		Size: 106.0 KB (106017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc5445f375da79bb84010ef83180fbcec36986d962bd3e52a2cd96bdd87fc2a`  
		Last Modified: Wed, 28 Oct 2026 02:33:24 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b053f6cee7fd757daeed1058be861ed8488eb6d704382ccaa1dff324ceb672a`  
		Last Modified: Wed, 28 Oct 2026 02:33:24 GMT  
		Size: 5.6 MB (5595730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4ac9c8e784b3e6ff753ce82683a06c25b7e3b02de9fd208e74d145fd8cdd6e`  
		Last Modified: Wed, 28 Oct 2026 02:33:24 GMT  
		Size: 2.3 KB (2315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369edb3b3a0e10d1c08a8147fb09a4afc8a10ec8ad8a8dc83206d039f4637b1c`  
		Last Modified: Wed, 28 Oct 2026 02:33:25 GMT  
		Size: 1.6 KB (1625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `yourls:1-fpm` - unknown; unknown

```console
$ docker pull yourls@sha256:759d9330279c8b04015014b0c6d31504a671ba672762179d82dff387fc7377ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f273550bd24311adc0ac47ae8fc32b09b941f88d510895aef5582083c3f0a0fb`

```dockerfile
```

-	Layers:
	-	`sha256:c77bead36711efc6095df58f321fe86cac3dcb9c5d38624a34581c12d85647c2`  
		Last Modified: Wed, 28 Oct 2026 02:33:24 GMT  
		Size: 26.8 KB (26817 bytes)  
		MIME: application/vnd.in-toto+json

### `yourls:1-fpm` - linux; 386

```console
$ docker pull yourls@sha256:537bd14c82745e3e06fd0753e2f488a5872479047d2768a1b2066a3b5a141d29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.7 MB (183682471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbdd0d5693870e5f20c5066abd9ce3e3e7e0cd8dd60bd87a936b3925300f8c0d`
-	Entrypoint: `["container-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:20:06 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:20:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:20:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:20:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:20:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:20:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:20:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:20:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:20:23 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 28 Oct 2026 01:20:23 GMT
ENV PHP_VERSION=8.5.12
# Wed, 28 Oct 2026 01:20:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 28 Oct 2026 01:20:23 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 28 Oct 2026 01:20:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:20:31 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:23:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:23:23 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:23:23 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:23:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:23:23 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:23:23 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 28 Oct 2026 01:23:23 GMT
STOPSIGNAL SIGQUIT
# Wed, 28 Oct 2026 01:23:23 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 28 Oct 2026 01:23:23 GMT
CMD ["php-fpm"]
# Wed, 28 Oct 2026 02:28:08 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)"     bcmath     pdo_mysql     mysqli # buildkit
# Wed, 28 Oct 2026 02:28:08 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 28 Oct 2026 02:28:08 GMT
ARG YOURLS_VERSION=1.10.6
# Wed, 28 Oct 2026 02:28:08 GMT
ARG YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
# Wed, 28 Oct 2026 02:28:08 GMT
ENV YOURLS_VERSION=1.10.6
# Wed, 28 Oct 2026 02:28:08 GMT
ENV YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
# Wed, 28 Oct 2026 02:28:08 GMT
# ARGS: YOURLS_VERSION=1.10.6 YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls # buildkit
# Wed, 28 Oct 2026 02:28:08 GMT
COPY --chown=www-data:www-data config-container.php /usr/src/yourls/user/ # buildkit
# Wed, 28 Oct 2026 02:28:08 GMT
COPY container-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:28:08 GMT
ENTRYPOINT ["container-entrypoint.sh"]
# Wed, 28 Oct 2026 02:28:08 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d90dafa380ec840b164f8365ddfb6237fea5f4082241ddcefa497b4a9450f4e`  
		Last Modified: Wed, 28 Oct 2026 01:23:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741950fb904e273e60b66b83668940c532e2236f35fa1d630909a3fc0a0995aa`  
		Last Modified: Wed, 28 Oct 2026 01:23:45 GMT  
		Size: 116.1 MB (116139269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c35f358e13242ea07f016454ab9233a33ac569aa6fb832cea20e604f397e544`  
		Last Modified: Wed, 28 Oct 2026 01:23:42 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9b025eb68e2dabeb37fd62269a73a3c88ad0ad9f6960540f0471fc7a0f40ae`  
		Last Modified: Wed, 28 Oct 2026 01:23:42 GMT  
		Size: 14.7 MB (14701659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41692b48fceedeed4907fd70cecbd1e02121416c05fa5e3499de53583bff23a6`  
		Last Modified: Wed, 28 Oct 2026 01:23:43 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f22710cfdca5c710db26129f81692a03d5b9e3c76f200de3e9d65419c450ab9`  
		Last Modified: Wed, 28 Oct 2026 01:23:44 GMT  
		Size: 15.7 MB (15747990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63fd61c43d194710805d72f73378c62cf389b5e75c08a893b64c490cf02a1197`  
		Last Modified: Wed, 28 Oct 2026 01:23:44 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54905fb30236a42fc37b3001f57510f387e220c36ecb37488265f398d4bbc845`  
		Last Modified: Wed, 28 Oct 2026 01:23:44 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ddd29d81fd42b0d712c934498a88dc638830a0850143fa0b5c9b4b908e89b9e`  
		Last Modified: Wed, 28 Oct 2026 01:23:45 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bbbd4905bad9d827068c13d706607ba01a20a2de05d6a7e61e99c39d5d95f92`  
		Last Modified: Wed, 28 Oct 2026 02:28:13 GMT  
		Size: 112.0 KB (112036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e59bd64a23f5a3f333d4827ed42184b4821ea0ca65e92d4a76d5f9673ca359e`  
		Last Modified: Wed, 28 Oct 2026 02:28:13 GMT  
		Size: 328.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ceb5f22ae030562aa047c3295627b0c6b22496f617144c485d0091a1b38421`  
		Last Modified: Wed, 28 Oct 2026 02:28:13 GMT  
		Size: 5.6 MB (5595726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7bcccc60998d7eccb4926b49be4bdb69d63914a667964386454cdd92507626`  
		Last Modified: Wed, 28 Oct 2026 02:28:13 GMT  
		Size: 2.3 KB (2314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e9c6445cda1ec0036f04381ce11a9467022bd86a7a22b0c22510e00e7fe655`  
		Last Modified: Wed, 28 Oct 2026 02:28:14 GMT  
		Size: 1.6 KB (1623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `yourls:1-fpm` - unknown; unknown

```console
$ docker pull yourls@sha256:932064ae8c03e743253b942b9f3ceebb760fca9b638622a8f74c9cd8f2e4823e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 KB (26647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8cb254d7977304881bfda36dbfc9d0f0fcc5c6bb64148cd9be1e97d6693809d`

```dockerfile
```

-	Layers:
	-	`sha256:2711f7f7fc62af3f284493990ebb7f2b78b73532e20e79e5e4a9880a9823f243`  
		Last Modified: Wed, 28 Oct 2026 02:28:13 GMT  
		Size: 26.6 KB (26647 bytes)  
		MIME: application/vnd.in-toto+json

### `yourls:1-fpm` - linux; ppc64le

```console
$ docker pull yourls@sha256:59943f436e0917b84da42db9892330186632abc9aaa1e4e9eddb82105b5a99e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.2 MB (179170007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5546ec8d1b507036902222e4dd211b760a0c20ee9266f2154d220f1595451f5`
-	Entrypoint: `["container-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 21 Oct 2026 18:51:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 18:51:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 18:51:39 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 18:51:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 18:51:39 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 18:51:39 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 21 Oct 2026 18:51:39 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 18:51:39 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 21 Oct 2026 18:51:39 GMT
CMD ["php-fpm"]
# Thu, 22 Oct 2026 03:44:06 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)"     bcmath     pdo_mysql     mysqli # buildkit
# Thu, 22 Oct 2026 03:44:06 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 22 Oct 2026 03:44:08 GMT
ARG YOURLS_VERSION=1.10.6
# Thu, 22 Oct 2026 03:44:08 GMT
ARG YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
# Thu, 22 Oct 2026 03:44:08 GMT
ENV YOURLS_VERSION=1.10.6
# Thu, 22 Oct 2026 03:44:08 GMT
ENV YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
# Thu, 22 Oct 2026 03:44:08 GMT
# ARGS: YOURLS_VERSION=1.10.6 YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls # buildkit
# Thu, 22 Oct 2026 03:44:09 GMT
COPY --chown=www-data:www-data config-container.php /usr/src/yourls/user/ # buildkit
# Thu, 22 Oct 2026 03:44:09 GMT
COPY container-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 03:44:09 GMT
ENTRYPOINT ["container-entrypoint.sh"]
# Thu, 22 Oct 2026 03:44:09 GMT
CMD ["php-fpm"]
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
	-	`sha256:24ff3a56501221a40e789d6750112f70291f79232e680bbed223afad3a4ff1df`  
		Last Modified: Wed, 21 Oct 2026 18:52:16 GMT  
		Size: 15.5 MB (15457818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06cad5edacecbb34b8c98ed69fa0fd73bbd46e9f561d91b278fd872abd1c2826`  
		Last Modified: Wed, 21 Oct 2026 18:52:16 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:049b4ac218699d7e6688023a4f30476c44a5b06b836578d82eef807b29820675`  
		Last Modified: Wed, 21 Oct 2026 18:52:16 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a482d1b7888ff19f019bb31871f2d0365d826d3a3adbc5e0cb65fd66128287`  
		Last Modified: Wed, 21 Oct 2026 18:52:16 GMT  
		Size: 9.3 KB (9268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1caf77acfa289b2342de449c2ead72b06e14042a2ff028a37ed4568cb5190c86`  
		Last Modified: Thu, 22 Oct 2026 03:44:31 GMT  
		Size: 117.6 KB (117621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42a96c3ea242804727d0f8c68c4629536c4e939e33d1f5d837a252d2384734c6`  
		Last Modified: Thu, 22 Oct 2026 03:44:31 GMT  
		Size: 329.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907d446a8cefcffdea4015432285cbc2757d581c0a0af7d79d2698c81eb76f26`  
		Last Modified: Thu, 22 Oct 2026 03:44:31 GMT  
		Size: 5.6 MB (5595728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0919f958d9154bf51770502ce6b5db6c9bc70902ecd78ed743c47b6b114b772f`  
		Last Modified: Thu, 22 Oct 2026 03:44:31 GMT  
		Size: 2.3 KB (2316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45f8dc87e1f46dc9007bb8a250c02e1a6f7592f868ef067a777d937ff81fb6d6`  
		Last Modified: Thu, 22 Oct 2026 03:44:32 GMT  
		Size: 1.6 KB (1625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `yourls:1-fpm` - unknown; unknown

```console
$ docker pull yourls@sha256:2762696c12a003f8d02de32e73887ed1f826bde37daffd503c017ec186b32971
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae2cd2b360a98b890463280dffeb87d2e9f7a6f64cd53327446e72c1372e9cb6`

```dockerfile
```

-	Layers:
	-	`sha256:9de7dcd06b6ed2e8fdc0560ce198e0f8146a0e2abfde8d9da694b70f4550a8f2`  
		Last Modified: Thu, 22 Oct 2026 03:44:31 GMT  
		Size: 26.7 KB (26731 bytes)  
		MIME: application/vnd.in-toto+json

### `yourls:1-fpm` - linux; riscv64

```console
$ docker pull yourls@sha256:7dd7f4b0085e856b29d69dcb5cb6a7684cd3720f06f10a6b7b4c836b5d05591b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.6 MB (209630237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f092214bbfdda5ea1409dd96b49d55011d739b7e9854016530412ddbba4667`
-	Entrypoint: `["container-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
# Fri, 23 Oct 2026 14:44:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 23 Oct 2026 14:44:01 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 14:44:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 23 Oct 2026 14:44:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 23 Oct 2026 14:44:02 GMT
WORKDIR /var/www/html
# Fri, 23 Oct 2026 14:44:02 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Fri, 23 Oct 2026 14:44:02 GMT
STOPSIGNAL SIGQUIT
# Fri, 23 Oct 2026 14:44:02 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 23 Oct 2026 14:44:02 GMT
CMD ["php-fpm"]
# Mon, 26 Oct 2026 18:54:44 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)"     bcmath     pdo_mysql     mysqli # buildkit
# Mon, 26 Oct 2026 18:54:44 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Mon, 26 Oct 2026 18:54:48 GMT
ARG YOURLS_VERSION=1.10.6
# Mon, 26 Oct 2026 18:54:48 GMT
ARG YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
# Mon, 26 Oct 2026 18:54:48 GMT
ENV YOURLS_VERSION=1.10.6
# Mon, 26 Oct 2026 18:54:48 GMT
ENV YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
# Mon, 26 Oct 2026 18:54:48 GMT
# ARGS: YOURLS_VERSION=1.10.6 YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls # buildkit
# Mon, 26 Oct 2026 18:54:48 GMT
COPY --chown=www-data:www-data config-container.php /usr/src/yourls/user/ # buildkit
# Mon, 26 Oct 2026 18:54:48 GMT
COPY container-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 18:54:48 GMT
ENTRYPOINT ["container-entrypoint.sh"]
# Mon, 26 Oct 2026 18:54:48 GMT
CMD ["php-fpm"]
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
	-	`sha256:f88f111f6938a17ffe502998aeb6f837ee2880606e5fb929e702ae0497da220b`  
		Last Modified: Fri, 23 Oct 2026 14:47:21 GMT  
		Size: 14.3 MB (14275767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0caffc8117960b6aab004b0a86795feb78ea74dd46d9010979b94c0f1ca681d5`  
		Last Modified: Fri, 23 Oct 2026 14:47:18 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c3f92b806112c07d16ff0c5500509c67b3015396ed3a96b4e8bdd9f844688f`  
		Last Modified: Fri, 23 Oct 2026 14:47:18 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6321242b880a94b7d31a9362291e6772f2640d6ccc9f8d1e14f570df00ca4fa3`  
		Last Modified: Fri, 23 Oct 2026 14:47:19 GMT  
		Size: 9.3 KB (9270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c203e28aa08fcd79436cf9b55c87e1c8c9dfc6222dd1cfdc10a9498cc58f9a5`  
		Last Modified: Mon, 26 Oct 2026 18:55:39 GMT  
		Size: 106.9 KB (106875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893b3440ead68622569a27f671ce68bc7a75f2acbcc693c6bb937c4a185f14d5`  
		Last Modified: Mon, 26 Oct 2026 18:55:39 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b453dbad61302e5fc3013c70d9654c4d81aea967ce9e31d4a0209572daa405eb`  
		Last Modified: Mon, 26 Oct 2026 18:55:40 GMT  
		Size: 5.6 MB (5595738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b61564bd3593e289184671c0ca4999664581a9688f627581faa6858c7edd75`  
		Last Modified: Mon, 26 Oct 2026 18:55:39 GMT  
		Size: 2.3 KB (2316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aafabee209f25d3c40e73ecbbefc18bfb2477542f9b8b5948bc07d68758aae0`  
		Last Modified: Mon, 26 Oct 2026 18:55:40 GMT  
		Size: 1.6 KB (1627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `yourls:1-fpm` - unknown; unknown

```console
$ docker pull yourls@sha256:1f8472aaf70a568ac2ecc65184eb1917515978fa4dc8c1f0cd23b4e76ebd10e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9801967c2b8d0a23f9fd5c757e75526e7cb05bcc4c4c638cec4b49286eec8f5`

```dockerfile
```

-	Layers:
	-	`sha256:53bc9482a2ddc5f5b040a29aefed2a2081372f1fbb84c093dc7c1af8e3e2d879`  
		Last Modified: Mon, 26 Oct 2026 18:55:39 GMT  
		Size: 26.7 KB (26730 bytes)  
		MIME: application/vnd.in-toto+json

### `yourls:1-fpm` - linux; s390x

```console
$ docker pull yourls@sha256:be93f27bbe6d61e5e3886cd40122ac9921a15cb974013450a1f72644265e7540
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157540482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89cec1fdf11a66c8fef2b2369a63327b193a306c161c97c4b184e9fe7a1f71ac`
-	Entrypoint: `["container-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:28:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:28:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:28:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:28:38 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHP_VERSION=8.5.12
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 28 Oct 2026 01:35:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:35:55 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:43:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:43:01 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:43:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:43:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:43:01 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:43:01 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 28 Oct 2026 01:43:01 GMT
STOPSIGNAL SIGQUIT
# Wed, 28 Oct 2026 01:43:01 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 28 Oct 2026 01:43:01 GMT
CMD ["php-fpm"]
# Wed, 28 Oct 2026 04:10:26 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)"     bcmath     pdo_mysql     mysqli # buildkit
# Wed, 28 Oct 2026 04:10:26 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 28 Oct 2026 04:10:27 GMT
ARG YOURLS_VERSION=1.10.6
# Wed, 28 Oct 2026 04:10:27 GMT
ARG YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
# Wed, 28 Oct 2026 04:10:27 GMT
ENV YOURLS_VERSION=1.10.6
# Wed, 28 Oct 2026 04:10:27 GMT
ENV YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
# Wed, 28 Oct 2026 04:10:27 GMT
# ARGS: YOURLS_VERSION=1.10.6 YOURLS_SHA256=95549b8463c67a88eaa93f5dd8079599bc895f5ca047001ce385d1afdda26563
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls # buildkit
# Wed, 28 Oct 2026 04:10:27 GMT
COPY --chown=www-data:www-data config-container.php /usr/src/yourls/user/ # buildkit
# Wed, 28 Oct 2026 04:10:27 GMT
COPY container-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 04:10:27 GMT
ENTRYPOINT ["container-entrypoint.sh"]
# Wed, 28 Oct 2026 04:10:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2cc3117588066d5749725e17816918b30cbfc73a8d8b07a3a4c032275c91692`  
		Last Modified: Wed, 28 Oct 2026 01:31:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c983c92f36e7eb471e57ad0f801ed6c2471416760949afa6f3daf17c3b72ca`  
		Last Modified: Wed, 28 Oct 2026 01:31:50 GMT  
		Size: 92.6 MB (92569764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb26f92ac8c9fe210da9a84d3a7d90fbb06735061ddbd56b354f3a376ff17db`  
		Last Modified: Wed, 28 Oct 2026 01:31:48 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efbd6f3e6958e7ba59d12fd5b4fd07f7fabf49d19b47cd450b2ee708d45308eb`  
		Last Modified: Wed, 28 Oct 2026 01:39:33 GMT  
		Size: 14.7 MB (14701049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7293fa468f482fd8faef65b31c34930f269398aa28033546e824c56e9aec672a`  
		Last Modified: Wed, 28 Oct 2026 01:39:32 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8410ed503cdbf74e5b09a26e156fdfb46f3fd547ee9b8260a9f6122055646825`  
		Last Modified: Wed, 28 Oct 2026 01:43:17 GMT  
		Size: 14.6 MB (14621828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8098d6b173451d96a6a2ce4e8909756b906834ef9fcf9d6e7d16eec7a3803dd7`  
		Last Modified: Wed, 28 Oct 2026 01:43:16 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:574597bb3a501943bc261bc614f9fe59d40c6523493449deeb5ab71b46a2c966`  
		Last Modified: Wed, 28 Oct 2026 01:43:16 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a73ecf576e8fbab949b4ddebb30c9a733cc662e744d98f8ec1dee1be3b98e9`  
		Last Modified: Wed, 28 Oct 2026 01:43:16 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73865ba3cdd302e42e12180482cd02941a761ec25155e656088344ea81d7a677`  
		Last Modified: Wed, 28 Oct 2026 04:10:35 GMT  
		Size: 112.0 KB (111994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92ffe01fe946808b06e9fa9e94798d865ea5973d41abfdffb68c0cc85df1c45`  
		Last Modified: Wed, 28 Oct 2026 04:10:35 GMT  
		Size: 327.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023f79185bd844faa116b1fab29cbb99a085e3edb907214cd36fde36cfc69136`  
		Last Modified: Wed, 28 Oct 2026 04:10:35 GMT  
		Size: 5.6 MB (5595730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba2913c6bf49c3bc4e6423953672b3b9951bd049064222819fe2fe093adc1fb`  
		Last Modified: Wed, 28 Oct 2026 04:10:35 GMT  
		Size: 2.3 KB (2314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c16e02feb1d73e6c3bf93f711c240a561000c9b6f0eeeb500d8db5847804ac`  
		Last Modified: Wed, 28 Oct 2026 04:10:36 GMT  
		Size: 1.6 KB (1624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `yourls:1-fpm` - unknown; unknown

```console
$ docker pull yourls@sha256:b13a15a45030008a11dc79fd87d602f3f465298023c5eb1558aa0b5aba39d96d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab981298d611023a31d9d32fa8135952af7aab081300cfb9266b6eadbdb8d95`

```dockerfile
```

-	Layers:
	-	`sha256:e7f36b193c398d8c1aa40d65ca7cdafe860c03037c3067d30932a83b71dc3b58`  
		Last Modified: Wed, 28 Oct 2026 04:10:36 GMT  
		Size: 26.7 KB (26677 bytes)  
		MIME: application/vnd.in-toto+json
