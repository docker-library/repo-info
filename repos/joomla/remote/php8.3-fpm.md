## `joomla:php8.3-fpm`

```console
$ docker pull joomla@sha256:5064c4f1839da9efa3a86181e1f843356a0b1c743705cfe60abfee2dab25910f
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

### `joomla:php8.3-fpm` - linux; amd64

```console
$ docker pull joomla@sha256:c8528393762cc92c7cbbafd2896073e8c7ae56954eb88506aa9b64b281fb1ec8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273839358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d140bb35685a2638680d5be27fc404cd08671f2e783f7982288ea2036c68066a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:22:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:22:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:22:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:22:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:22:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:22:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:22:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:22:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:22:20 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Sat, 19 Sep 2026 00:22:20 GMT
ENV PHP_VERSION=8.3.33
# Sat, 19 Sep 2026 00:22:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Sat, 19 Sep 2026 00:22:20 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Sat, 19 Sep 2026 00:30:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:30:55 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:33:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:33:07 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:33:08 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 00:33:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:33:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:33:08 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:33:08 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 19 Sep 2026 00:33:08 GMT
STOPSIGNAL SIGQUIT
# Sat, 19 Sep 2026 00:33:08 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 19 Sep 2026 00:33:08 GMT
CMD ["php-fpm"]
# Sat, 19 Sep 2026 01:30:08 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 19 Sep 2026 01:30:08 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 19 Sep 2026 01:30:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:31:59 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 19 Sep 2026 01:32:00 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sat, 19 Sep 2026 01:32:00 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Sat, 19 Sep 2026 01:32:00 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 01:32:00 GMT
ENV JOOMLA_VERSION=6.1.3
# Sat, 19 Sep 2026 01:32:00 GMT
ENV JOOMLA_SHA512=0378709fa1ebf06de26e32eeb635c46f0aa05971d206580a00dcde8038bebc6a4e04158e2e43a8f07edecffd62bfe2e07fe3869b8fddab124875c13391052f55
# Sat, 19 Sep 2026 01:32:01 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Sat, 19 Sep 2026 01:32:01 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:32:01 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 19 Sep 2026 01:32:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 01:32:01 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3bed725cd6ecb6a79e662f7d1acce385414e05436b4618f3b9b79ce4bfec14`  
		Last Modified: Sat, 19 Sep 2026 00:25:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866e8ec4e67d47e66756d4ea600b0b903e5372eec93e472e29858480fa3b00af`  
		Last Modified: Sat, 19 Sep 2026 00:25:18 GMT  
		Size: 117.8 MB (117842325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b9c9ac6d65289644eb210084259156e6a7665aad3a09ae71f30d04782b405a8`  
		Last Modified: Sat, 19 Sep 2026 00:25:14 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3676eae6f902efe0a6144655e2e626a0007ec6e7ed96cbf58ade9a75204966f6`  
		Last Modified: Sat, 19 Sep 2026 00:33:18 GMT  
		Size: 12.8 MB (12760609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48430276ac73e6ef10f9868781db44da58aac62deebdf6ff50d7535015f5966a`  
		Last Modified: Sat, 19 Sep 2026 00:33:17 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f68aaed5e8fbfaa15764104a693d4cd6e3edfb27299fbaa49b77f44eac8200`  
		Last Modified: Sat, 19 Sep 2026 00:33:18 GMT  
		Size: 11.9 MB (11904226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b4ab7b88e755a0299deb2aed85c4566bbaffa8bf8a0de3c4bc96e66ddec34b`  
		Last Modified: Sat, 19 Sep 2026 00:33:17 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c6cd8c2cc450dae7b11e0426471fa2061ef1ac59b21acd6736bb18060c4f2c`  
		Last Modified: Sat, 19 Sep 2026 00:33:18 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7076f733235e2583381553ee43b1a40313f39fd5004cc2a30d54b0b79eee908b`  
		Last Modified: Sat, 19 Sep 2026 00:33:18 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c126a61fc8ccdd93b667ac5a2a54910d3dcc0cc6ea51d795d80e000e4d4673b9`  
		Last Modified: Sat, 19 Sep 2026 00:33:19 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e71b8ca77deb677f5d90956acedfbea8ac657a6250666fcbd29e997b2abd0c14`  
		Last Modified: Sat, 19 Sep 2026 01:32:11 GMT  
		Size: 27.4 MB (27410944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2012709214e204d466a554b97eacf8410926362aaa33e7a1b656d029f093038c`  
		Last Modified: Sat, 19 Sep 2026 01:32:12 GMT  
		Size: 45.2 MB (45218352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd0d2c5be3a3ba4abbb499dabd9fe8571f20fb612add19e84c6c41c1265bfd2`  
		Last Modified: Sat, 19 Sep 2026 01:32:09 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52432cfaf1eb99403a45d7504791f545b11207e3811720d3a986c40278a17ee0`  
		Last Modified: Sat, 19 Sep 2026 01:32:09 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b872f622cb1bbe430a7b0b7fb270adc7e229cb95eedf5e59c098a60ee56bb6`  
		Last Modified: Sat, 19 Sep 2026 01:32:12 GMT  
		Size: 28.9 MB (28853887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a9b4eaea1d666ede8938cd21ddb210c58e5d6e6a22d4c1d1b172889a1afc3f`  
		Last Modified: Sat, 19 Sep 2026 01:32:11 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108e5070d7dad2dd22561bd75ad5604f7b49370fafab0484896dde126cc3a5e1`  
		Last Modified: Sat, 19 Sep 2026 01:32:12 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.3-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:354b7eebb316041b067c0977f43864b310dd34a16fe84ab1e1d25ac4782d2483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 KB (46482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72af4aca4913c62d41000714ee65cc1ff91066bd529eda5052e150909f28cbdc`

```dockerfile
```

-	Layers:
	-	`sha256:ea7929383a26482d08fca6699b38395e8e543d4d0403ddbf76e419fcc2c57dec`  
		Last Modified: Sat, 19 Sep 2026 01:32:09 GMT  
		Size: 46.5 KB (46482 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.3-fpm` - linux; arm variant v5

```console
$ docker pull joomla@sha256:2ff08e7aba380e5377b56a7b0cac5efcf3a62bdbed968ad064f14842e66542a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (245010547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e6c61ab74d0aa0f46cca441bb4f712b384799e570d260df987c452b1e47a9ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:32:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:32:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:32:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:32:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:32:26 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:32:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:32:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:32:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:32:26 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Sat, 19 Sep 2026 00:32:26 GMT
ENV PHP_VERSION=8.3.33
# Sat, 19 Sep 2026 00:32:26 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Sat, 19 Sep 2026 00:32:26 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Sat, 19 Sep 2026 00:36:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:36:12 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:38:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:38:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:38:56 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 00:38:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:38:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:38:56 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:38:56 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 19 Sep 2026 00:38:56 GMT
STOPSIGNAL SIGQUIT
# Sat, 19 Sep 2026 00:38:56 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 19 Sep 2026 00:38:56 GMT
CMD ["php-fpm"]
# Sat, 19 Sep 2026 02:11:38 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 19 Sep 2026 02:11:38 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 19 Sep 2026 02:11:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:14:38 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 19 Sep 2026 02:14:38 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sat, 19 Sep 2026 02:14:39 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Sat, 19 Sep 2026 02:14:39 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 02:14:39 GMT
ENV JOOMLA_VERSION=6.1.3
# Sat, 19 Sep 2026 02:14:39 GMT
ENV JOOMLA_SHA512=0378709fa1ebf06de26e32eeb635c46f0aa05971d206580a00dcde8038bebc6a4e04158e2e43a8f07edecffd62bfe2e07fe3869b8fddab124875c13391052f55
# Sat, 19 Sep 2026 02:14:40 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Sat, 19 Sep 2026 02:14:40 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 02:14:40 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 19 Sep 2026 02:14:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 02:14:40 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117ed7c2c17601a7a44419d8b40a1f1b9666ef075f98530156982af5740a31b6`  
		Last Modified: Sat, 19 Sep 2026 00:35:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f6536cb3ff2d00798f262c443e96b20acf6f41cf88b874bf2a4c2177d58e45`  
		Last Modified: Sat, 19 Sep 2026 00:35:54 GMT  
		Size: 94.9 MB (94876879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520d5efedd83498bdc132bdf3412e6afe9222b9082bae1b5b0681cc90616fd2f`  
		Last Modified: Sat, 19 Sep 2026 00:35:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa20ade5aee7e98791ced87ce7603e69893e0b8fbaa64c9340e248f71a08406`  
		Last Modified: Sat, 19 Sep 2026 00:39:06 GMT  
		Size: 12.8 MB (12758265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b057227e156b7246a7dde5c81d577f3022ffdb5f2e4cad442102568c4bea469`  
		Last Modified: Sat, 19 Sep 2026 00:39:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49db9d96b3383291e5cc515b440da1c4598ed6ef90bbee713e2748a57fb8a95b`  
		Last Modified: Sat, 19 Sep 2026 00:39:06 GMT  
		Size: 10.7 MB (10696455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91c668d1f664dc6035ab476b4a0e885a648a34b3fbc968223c7c93822ca65b1`  
		Last Modified: Sat, 19 Sep 2026 00:39:05 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1500e31c370d79010a2b62a39113c0db0e2339dfe8df932101db3943fac05f57`  
		Last Modified: Sat, 19 Sep 2026 00:39:07 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f65989428477929bd49480007d77a1b556d546ddbf637d7fea6c34595d66a7`  
		Last Modified: Sat, 19 Sep 2026 00:39:07 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ebfc0f28c477958e00f31da0d8ad2c489da714b8fd604380903d954a4d7a32`  
		Last Modified: Sat, 19 Sep 2026 00:39:08 GMT  
		Size: 9.3 KB (9259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f4ddcea316c4d6d0e486d63afc8829b4a40662158f662a55b24f8657c8583f`  
		Last Modified: Sat, 19 Sep 2026 02:14:50 GMT  
		Size: 26.8 MB (26822022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f17f41dfc4ee3f6852d425ae963e4ef089c01801a271f1c49dfb16cf1def1f`  
		Last Modified: Sat, 19 Sep 2026 02:14:50 GMT  
		Size: 43.0 MB (42986394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13f99a43ff7f0e597454b01f3fbe69e91ccf4aad587d4f81e117ce731313516`  
		Last Modified: Sat, 19 Sep 2026 02:14:49 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981996b1c2be10ba8fd9787977515044464747d67f54098fad97a8ff423f83e5`  
		Last Modified: Sat, 19 Sep 2026 02:14:49 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dabab0e04eaccac480723f0b8e5fb51f62c0d7f89eb131fb9616b9b599b08e5d`  
		Last Modified: Sat, 19 Sep 2026 02:14:50 GMT  
		Size: 28.9 MB (28853891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe462ac36bb746252faa77003a60e964ebc5a3e44d9fdcfecc4d817c565cf986`  
		Last Modified: Sat, 19 Sep 2026 02:14:50 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9181a0414f883ca6f3106d3ee9796b635d60f15c2291cce4fa30f03165e2b21f`  
		Last Modified: Sat, 19 Sep 2026 02:14:51 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.3-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:337597cc0159f17887238a57d30e3d1795ba0f364f57ad03339e81e6f5ffd63f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 KB (46606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4efe56f0c39752549ae14ed4e2955126c787064270c2fb8593fb9ee32d7650fd`

```dockerfile
```

-	Layers:
	-	`sha256:d850a848c2e7c7f446d8036b55c7139976288f55ec61cf2e7bb7c733204ed82b`  
		Last Modified: Sat, 19 Sep 2026 02:14:48 GMT  
		Size: 46.6 KB (46606 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.3-fpm` - linux; arm variant v7

```console
$ docker pull joomla@sha256:f3f709092b9a15e066abce51f9aeab9634dd65b1942026e249c6921196d58fda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.6 MB (231637937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:850732ac72d5d054a44ee69c06e13eeda9e4b7f55930bb7b9e603d09c6a85300`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:25:49 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:26:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:26:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:26:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:26:08 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:26:08 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:26:08 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:26:08 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:26:08 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Sat, 19 Sep 2026 00:26:08 GMT
ENV PHP_VERSION=8.3.33
# Sat, 19 Sep 2026 00:26:08 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Sat, 19 Sep 2026 00:26:08 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Sat, 19 Sep 2026 00:51:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:51:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:53:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:53:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:53:47 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 00:53:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:53:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:53:47 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:53:47 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 19 Sep 2026 00:53:47 GMT
STOPSIGNAL SIGQUIT
# Sat, 19 Sep 2026 00:53:47 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 19 Sep 2026 00:53:47 GMT
CMD ["php-fpm"]
# Sat, 19 Sep 2026 02:32:19 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 19 Sep 2026 02:32:19 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 19 Sep 2026 02:32:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:35:08 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 19 Sep 2026 02:35:08 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sat, 19 Sep 2026 02:35:08 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Sat, 19 Sep 2026 02:35:08 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 02:35:08 GMT
ENV JOOMLA_VERSION=6.1.3
# Sat, 19 Sep 2026 02:35:08 GMT
ENV JOOMLA_SHA512=0378709fa1ebf06de26e32eeb635c46f0aa05971d206580a00dcde8038bebc6a4e04158e2e43a8f07edecffd62bfe2e07fe3869b8fddab124875c13391052f55
# Sat, 19 Sep 2026 02:35:09 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Sat, 19 Sep 2026 02:35:10 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 02:35:10 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 19 Sep 2026 02:35:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 02:35:10 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79ae0b7d2d5e18cdf92b9bc7c7cc6d69fc8d76fbfd06c09d6a248a1e7f6a2db`  
		Last Modified: Sat, 19 Sep 2026 00:29:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e7720ff517c7f5e358801ece84d54a1aa5f21383d67bb49884b4a775b23e28`  
		Last Modified: Sat, 19 Sep 2026 00:29:13 GMT  
		Size: 86.3 MB (86265197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd86c09c27ad2992af3da81c6fe81c6c4720cee2b8e00627fead5fcd27e971b`  
		Last Modified: Sat, 19 Sep 2026 00:29:11 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc42fc50ca03de27e655d98fddee12b2691dfbf8d08c204e841a5931e1c0fb18`  
		Last Modified: Sat, 19 Sep 2026 00:53:58 GMT  
		Size: 12.8 MB (12758412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:639b96050e420c999fb2bcc7dd5efcc96739696fdc98761ea47a49620d5887b5`  
		Last Modified: Sat, 19 Sep 2026 00:53:57 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e82269c5e8032fc4f0d44c69146449e209c6c358c62997137778743198e603`  
		Last Modified: Sat, 19 Sep 2026 00:53:57 GMT  
		Size: 10.1 MB (10088215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047465698b9cd1b6e60974b595fa398f776322ed4c730b1fe8f7767c1df6b2ba`  
		Last Modified: Sat, 19 Sep 2026 00:53:57 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f641edc0033d13781fd5d3550cb3a2c596d1b7cd9ebffc54414cba76d1428dc`  
		Last Modified: Sat, 19 Sep 2026 00:53:58 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d30da88cd628d9b6e228fa5aa70d1f7ae36df3bd44a21d16b63153fc850a6d`  
		Last Modified: Sat, 19 Sep 2026 00:53:58 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a439b5100ae8af93f62cea4e69997dfe62d6e97a4a59e8fdcf897daaffba60fe`  
		Last Modified: Sat, 19 Sep 2026 00:53:59 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da871c131ae696d9d2c43b1895caf0ea32f8912bbd2d1c3b45ccac59c1810e9`  
		Last Modified: Sat, 19 Sep 2026 02:35:19 GMT  
		Size: 26.0 MB (26025751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a46f52ee4567918e51315e09316f6e21d3a2310a2b0cbab495d03ba547e762c6`  
		Last Modified: Sat, 19 Sep 2026 02:35:19 GMT  
		Size: 41.4 MB (41378946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ad63bfaa2b8b4cd7b6d14514f66b85ff6290a0e59c2ae78555911e1d3f77f2`  
		Last Modified: Sat, 19 Sep 2026 02:35:18 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:589489de5a73873f890bf44fe34478ee3a442d500f4afd7eaf511ebf27bea0fe`  
		Last Modified: Sat, 19 Sep 2026 02:35:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58d34639fb2638cf9ab952435614225b6b4e24441e32be01b26b41c0d635ab8`  
		Last Modified: Sat, 19 Sep 2026 02:35:20 GMT  
		Size: 28.9 MB (28853894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5516fea54609ec1b9498de6008c38cb094eb8e1b8395077f1ea4691ca59b57a`  
		Last Modified: Sat, 19 Sep 2026 02:35:19 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0464adf4bf16ba33d3a44d5456497ff664cb9afcecf14983f101aa060d3480a5`  
		Last Modified: Sat, 19 Sep 2026 02:35:20 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.3-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:5d1ad5ad874428934f8eb250a277b8a610beb53912902f462b8bc861f2640587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 KB (46606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68da408d413e30fc39fde27d69694c0b8259f7d03f0246ba7774bee95762804`

```dockerfile
```

-	Layers:
	-	`sha256:c76b9105e248a31ca4cac748bf7cd8172e6085a4c56b2a45e96eceb8b669a82a`  
		Last Modified: Sat, 19 Sep 2026 02:35:17 GMT  
		Size: 46.6 KB (46606 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.3-fpm` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:9080c2f0a072e1a4a70dc3cedfdc611f94f2ff873f3fcd962397428e6bc69837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265285668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:644a244d966ab4c4d84b82d176f35fe5e43ee169ee3326635d02ce1d06fda187`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:21:30 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:21:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:21:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:21:47 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:21:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:21:48 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:21:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:21:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:21:48 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Sat, 19 Sep 2026 00:21:48 GMT
ENV PHP_VERSION=8.3.33
# Sat, 19 Sep 2026 00:21:48 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Sat, 19 Sep 2026 00:21:48 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Sat, 19 Sep 2026 00:32:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:32:52 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:36:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:36:48 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:36:48 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 00:36:48 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:36:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:36:49 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:36:49 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 19 Sep 2026 00:36:49 GMT
STOPSIGNAL SIGQUIT
# Sat, 19 Sep 2026 00:36:49 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 19 Sep 2026 00:36:49 GMT
CMD ["php-fpm"]
# Sat, 19 Sep 2026 01:37:57 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 19 Sep 2026 01:37:57 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 19 Sep 2026 01:37:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:40:20 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 19 Sep 2026 01:40:20 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sat, 19 Sep 2026 01:40:20 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Sat, 19 Sep 2026 01:40:20 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 01:40:20 GMT
ENV JOOMLA_VERSION=6.1.3
# Sat, 19 Sep 2026 01:40:20 GMT
ENV JOOMLA_SHA512=0378709fa1ebf06de26e32eeb635c46f0aa05971d206580a00dcde8038bebc6a4e04158e2e43a8f07edecffd62bfe2e07fe3869b8fddab124875c13391052f55
# Sat, 19 Sep 2026 01:40:21 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Sat, 19 Sep 2026 01:40:21 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:40:21 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 19 Sep 2026 01:40:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 01:40:21 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9f04cf176bccf87ad5310cc6a03a7f54ec138aa319ab281e0c02d05f24ce1a`  
		Last Modified: Sat, 19 Sep 2026 00:25:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b89d28696cd4114527b663ae80b29c87f2486274ba062551d0275e673919b32a`  
		Last Modified: Sat, 19 Sep 2026 00:25:21 GMT  
		Size: 110.2 MB (110178904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee32c0a79b46bde5577f9f135b3ec82b0f1f21b114fda1b0cd25ff387ae67fab`  
		Last Modified: Sat, 19 Sep 2026 00:25:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57a9fe8bd2368660da818bb5ea89067829f2e930f91777aa142f4dc54dd27e32`  
		Last Modified: Sat, 19 Sep 2026 00:36:59 GMT  
		Size: 12.8 MB (12760146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40b92c2f58e1313eb4c6ef5f2762a5245dcead36bc77a34080c6840c5786730`  
		Last Modified: Sat, 19 Sep 2026 00:36:59 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23093577ac5309916257aadeec59905919bb03becb95c9d3f3f72a53304bb97e`  
		Last Modified: Sat, 19 Sep 2026 00:36:59 GMT  
		Size: 11.9 MB (11926780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7221517944025a6d6c38d0577250e42a41d2bbe421448c5689eeee9868c75a2`  
		Last Modified: Sat, 19 Sep 2026 00:36:59 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bbcee205382caa95eb2b061ebd7c8b2b6d535a13081a1e718790f3db9c8734`  
		Last Modified: Sat, 19 Sep 2026 00:37:00 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c62dbf4ac14a496467fda61d46cef050672dc361f85bc79403f63ebbac278b3e`  
		Last Modified: Sat, 19 Sep 2026 00:37:00 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d874ac7507dc2bacae5cf1a4faa9ae9fd25de86b5ffab77816f5735d2696e5`  
		Last Modified: Sat, 19 Sep 2026 00:37:01 GMT  
		Size: 9.3 KB (9251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79dddcb15a2eb9ddb02783149fc56fdb786a4c8b77c97024d5d28ad9a439071`  
		Last Modified: Sat, 19 Sep 2026 01:40:31 GMT  
		Size: 27.2 MB (27221132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f8982d3847dc67dca7b730bbfefbb25a32055a4dd21cdd30b318b6da5f9f40a`  
		Last Modified: Sat, 19 Sep 2026 01:40:31 GMT  
		Size: 44.1 MB (44136525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe22b20a2a2e67978e440d3b2b4f18f0f8fd67a006f54e23ccdfe4c14451bea`  
		Last Modified: Sat, 19 Sep 2026 01:40:30 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b17c797902ee001e45265b9aa4db5a91b0c3080724763187f5ffbf5db35717d`  
		Last Modified: Sat, 19 Sep 2026 01:40:30 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ec024bec2f40b892606eb28b97d388ee88a4e89969ad915be529ac388e0609`  
		Last Modified: Sat, 19 Sep 2026 01:40:32 GMT  
		Size: 28.9 MB (28853889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd6e5a8fb004f064e481d89b3215b482082e7c895bbe65a900649232d607f89`  
		Last Modified: Sat, 19 Sep 2026 01:40:31 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036ba9d5fe07f22542a89b2229c5f11b501ae8b229c1646ab069e1640e9fd530`  
		Last Modified: Sat, 19 Sep 2026 01:40:32 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.3-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:e9681a83811cc3d7277685062c5cfd71262cfcb59ffecbbe1f9e40841e3f56f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 KB (46645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e821d875f39076830f9b27a98b7c021e8403c0c3e8fc29147cf12714571c68`

```dockerfile
```

-	Layers:
	-	`sha256:7a60d26e1cb763da8a8d3009f307a39f800c6355ce7fed5e6f5e729698980b27`  
		Last Modified: Sat, 19 Sep 2026 01:40:30 GMT  
		Size: 46.6 KB (46645 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.3-fpm` - linux; 386

```console
$ docker pull joomla@sha256:3b841d0ed8a9d80d81849b13057d39faf0a47620b214880569bd207df84a1a96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274607662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48806c4bbdb9cc39cd7465160acb0f465239ed462c011d9c40bc045a8289539`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:25:01 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:25:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:25:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:25:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:25:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:25:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:25:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:25:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:25:21 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Sat, 19 Sep 2026 00:25:21 GMT
ENV PHP_VERSION=8.3.33
# Sat, 19 Sep 2026 00:25:21 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Sat, 19 Sep 2026 00:25:21 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Sat, 19 Sep 2026 00:32:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:32:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:35:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:35:36 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:35:36 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 00:35:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:35:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:35:36 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:35:36 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 19 Sep 2026 00:35:36 GMT
STOPSIGNAL SIGQUIT
# Sat, 19 Sep 2026 00:35:36 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 19 Sep 2026 00:35:36 GMT
CMD ["php-fpm"]
# Sat, 19 Sep 2026 01:40:17 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 19 Sep 2026 01:40:17 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 19 Sep 2026 01:40:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:42:26 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 19 Sep 2026 01:42:26 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sat, 19 Sep 2026 01:42:26 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Sat, 19 Sep 2026 01:42:26 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 01:42:26 GMT
ENV JOOMLA_VERSION=6.1.3
# Sat, 19 Sep 2026 01:42:26 GMT
ENV JOOMLA_SHA512=0378709fa1ebf06de26e32eeb635c46f0aa05971d206580a00dcde8038bebc6a4e04158e2e43a8f07edecffd62bfe2e07fe3869b8fddab124875c13391052f55
# Sat, 19 Sep 2026 01:42:27 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Sat, 19 Sep 2026 01:42:27 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:42:27 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 19 Sep 2026 01:42:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 01:42:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7047dafaadd9ca820ecab3f4de8d9ec3a340899a60fbacaa90cee765f60c7bf`  
		Last Modified: Sat, 19 Sep 2026 00:29:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c8db6782bfd570021c9359a982dc5a02fbb3b132427b7efc3f73e3c4d131cd5`  
		Last Modified: Sat, 19 Sep 2026 00:29:10 GMT  
		Size: 116.1 MB (116148511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57ddd4cdf5e5091ed2a1126a5f82699b2250479863f9fdbe3b714f9a21ff012f`  
		Last Modified: Sat, 19 Sep 2026 00:29:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9204fbc53a1990c07ed648996bec30b7eb2bcef9ab73f186868391c34b19b8b2`  
		Last Modified: Sat, 19 Sep 2026 00:35:47 GMT  
		Size: 12.8 MB (12759531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83309794be6bee2df0dd7723e5d6286d0139ff892ca29353ab82b4b30c5a3088`  
		Last Modified: Sat, 19 Sep 2026 00:35:46 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f2bb488062b8956d57e3e571d99c7f377488856fb6a7bbe3114c4f4595b093`  
		Last Modified: Sat, 19 Sep 2026 00:35:47 GMT  
		Size: 12.2 MB (12167957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d850538e1a61db8786c9f126bb4f56c7c9359cc9dcca597762e59cf767fad522`  
		Last Modified: Sat, 19 Sep 2026 00:35:46 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866ea0a465b90305a25c11e4f5680eaae2d2a2cf55d425edb08407c18b9de6a1`  
		Last Modified: Sat, 19 Sep 2026 00:35:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f070a6c3b64d48647a84e6e51d80b715dd671b675427827ba46ce23194ed510`  
		Last Modified: Sat, 19 Sep 2026 00:35:47 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f1cdb1e4abddc8760157396becffc00a4ebc406530f4e8985b581a594f6521`  
		Last Modified: Sat, 19 Sep 2026 00:35:48 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58385dad1de10c9891be03f95035afc014c1f175109dfc4d9dc545c9735a382f`  
		Last Modified: Sat, 19 Sep 2026 01:42:37 GMT  
		Size: 27.9 MB (27859075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9203cffe50f8916825b4933cf1ce8671bd830a6195b5ec53b0d9f9ee5bcc58c7`  
		Last Modified: Sat, 19 Sep 2026 01:42:38 GMT  
		Size: 45.5 MB (45459700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f220d19dc80e377cf4ff58e9c89e0928d543a1951cc3cc06a490cac86bd6881`  
		Last Modified: Sat, 19 Sep 2026 01:42:35 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca79fe323e30c5381636d6ce8beb00dc2bf0758ac73425eb41c15f57ee25199`  
		Last Modified: Sat, 19 Sep 2026 01:42:35 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef0e1df553977a4af78f1d7606962c3c3807aee0b7569930368f178c95ff9d1`  
		Last Modified: Sat, 19 Sep 2026 01:42:38 GMT  
		Size: 28.9 MB (28853888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56ea15a907f00d39c45abc8e562584207637f584c10fddc7a0736f9dc4df31fa`  
		Last Modified: Sat, 19 Sep 2026 01:42:37 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247d29d724633974d06474b523692895843da76c01bd2a65dce770ff43909da7`  
		Last Modified: Sat, 19 Sep 2026 01:42:38 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.3-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:b6bc3e2ac62ff4787c69027ad7d08b8bf31953fd03ef42e868bd727544a7c8fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 KB (46442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad3357e782451397fc64ee007cdce4ac487a1f4c09997f4f11818afc8cec9e0`

```dockerfile
```

-	Layers:
	-	`sha256:9fa97bbf817cbf76200e23b3ffbb1df17e00e26a9f8c9358ec9756013cab4de1`  
		Last Modified: Sat, 19 Sep 2026 01:42:35 GMT  
		Size: 46.4 KB (46442 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.3-fpm` - linux; ppc64le

```console
$ docker pull joomla@sha256:663e581ba31ec9134f6b75ee6a4d19b96e5a7db2a9e12985e69543dce910f570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.9 MB (272916305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e83db7034ea7c4a89a9d44712acb5de982f7397fa34bca932f023544599fcecf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:43:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:43:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:43:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:43:06 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:43:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:43:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:43:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:43:06 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Sat, 19 Sep 2026 00:43:06 GMT
ENV PHP_VERSION=8.3.33
# Sat, 19 Sep 2026 00:43:06 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Sat, 19 Sep 2026 00:43:06 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Sat, 19 Sep 2026 02:05:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 02:05:10 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:14:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 02:14:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:14:42 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 02:14:43 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 02:14:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 02:14:43 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 02:14:43 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 19 Sep 2026 02:14:43 GMT
STOPSIGNAL SIGQUIT
# Sat, 19 Sep 2026 02:14:43 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 19 Sep 2026 02:14:43 GMT
CMD ["php-fpm"]
# Sat, 19 Sep 2026 09:53:24 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 19 Sep 2026 09:53:24 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 19 Sep 2026 09:53:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 09:58:45 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 19 Sep 2026 09:58:46 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sat, 19 Sep 2026 09:58:46 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Sat, 19 Sep 2026 09:58:46 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 09:58:46 GMT
ENV JOOMLA_VERSION=6.1.3
# Sat, 19 Sep 2026 09:58:46 GMT
ENV JOOMLA_SHA512=0378709fa1ebf06de26e32eeb635c46f0aa05971d206580a00dcde8038bebc6a4e04158e2e43a8f07edecffd62bfe2e07fe3869b8fddab124875c13391052f55
# Sat, 19 Sep 2026 09:58:52 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Sat, 19 Sep 2026 09:58:53 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 09:58:53 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 19 Sep 2026 09:58:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 09:58:53 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39813ba793924296ebb8a62bded13028ed4037275a1d470f32703e0ccc4e7f4b`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3c40dc91528490cb81f134f22f60fa756eb5d16a8a925f10c3efb88701bc7b`  
		Last Modified: Sat, 19 Sep 2026 00:47:53 GMT  
		Size: 109.6 MB (109611682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94404758e516a5835de93374f7b058e4f7c2d2e9bcacfc223e317bd6d1149f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f84cbd2524663da17498babf3f43f7abc3ae976fcedea748394bf852e88191`  
		Last Modified: Sat, 19 Sep 2026 02:10:13 GMT  
		Size: 12.8 MB (12759643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218d6cd9b05f05045114220c472f652be4d7699d7bd252b5f65c566fb2b791cf`  
		Last Modified: Sat, 19 Sep 2026 02:10:12 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ea8ac9e4d1f57c28620076ab15a14245fe1dd066020832975a453ffbcd9f563`  
		Last Modified: Sat, 19 Sep 2026 02:15:06 GMT  
		Size: 12.4 MB (12442011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f9afe9ff7a41409d96f6a4b09929898e977c446155f6f5c850dfdc1b85bafc`  
		Last Modified: Sat, 19 Sep 2026 02:15:06 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e5a55a2e5ed6de9a02c27b2d7e3a2685ff1f17ac65637191f0adbc206a4486`  
		Last Modified: Sat, 19 Sep 2026 02:15:06 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0dee861719759b89b4e2569cc977a89a3073a05cbfe00279303b316f4fd453a`  
		Last Modified: Sat, 19 Sep 2026 02:15:06 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6db12ce05481b83420c223c06c904409896fb75fff8c8fd25a4f19f6ba546b7`  
		Last Modified: Sat, 19 Sep 2026 02:15:07 GMT  
		Size: 9.3 KB (9256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd85f9713d33789b13847dc731413e7836cc79bb543f26756c31fea277f299fb`  
		Last Modified: Sat, 19 Sep 2026 09:59:18 GMT  
		Size: 28.6 MB (28562853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d716f08cfd88a8b5333cc39032a93d38b0dc4df5b039c90c92629ce97ac8d65`  
		Last Modified: Sat, 19 Sep 2026 09:59:19 GMT  
		Size: 47.0 MB (47026380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27b7a164dc51eeac079d1a764c4f9f620a1ccc8c2b9172c9884247dd261765c`  
		Last Modified: Sat, 19 Sep 2026 09:59:16 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d62cdccd7bf9bef37f80415eacf5192e86367c0882a6b71d3060555c7b4df07`  
		Last Modified: Sat, 19 Sep 2026 09:59:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d456fd134b6f26ec32663d808d87bfbd0c87b93a6347af1a011d401d2546e0e`  
		Last Modified: Sat, 19 Sep 2026 09:59:19 GMT  
		Size: 28.9 MB (28853888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd17f259718f1c1bd3c3d963852d4e562034d611c66e84a7076191227d05cdc`  
		Last Modified: Sat, 19 Sep 2026 09:59:18 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52329e03899661aa19f9cde10ac87036817dc0c09b2b6444c1d3e10138017fd`  
		Last Modified: Sat, 19 Sep 2026 09:59:19 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.3-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:a9ff76ff5e83d0dd8416a87f8a56aea4717e8cf902f2aed77e368034356cc2bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 KB (46534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a40498224dbd4fabf2820f75b544bdf4b30e741d89bc3b5f28585a7e219fa0`

```dockerfile
```

-	Layers:
	-	`sha256:648f7292778a153705ad919eef10dbe582a161d0453b601dcfbe736301771f48`  
		Last Modified: Sat, 19 Sep 2026 09:59:16 GMT  
		Size: 46.5 KB (46534 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.3-fpm` - linux; riscv64

```console
$ docker pull joomla@sha256:695b097a0e8128134532a44d9459fbf0303c242e0907e46d0ec2c3a729d6f9f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313211524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:220291041df8af6e47f7df7d2944854874ce648846e211974a6abdc59d085b84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:59:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 09:01:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 09:01:42 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 09:01:42 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Wed, 26 Aug 2026 05:01:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 26 Aug 2026 05:01:01 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 18 Sep 2026 11:19:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 18 Sep 2026 11:19:50 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 18 Sep 2026 11:19:51 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 18 Sep 2026 11:19:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 18 Sep 2026 11:19:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 18 Sep 2026 11:19:52 GMT
WORKDIR /var/www/html
# Fri, 18 Sep 2026 11:19:52 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Fri, 18 Sep 2026 11:19:52 GMT
STOPSIGNAL SIGQUIT
# Fri, 18 Sep 2026 11:19:52 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 18 Sep 2026 11:19:52 GMT
CMD ["php-fpm"]
# Fri, 18 Sep 2026 21:33:16 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Fri, 18 Sep 2026 21:33:16 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 18 Sep 2026 21:33:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 22:01:27 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 18 Sep 2026 22:01:28 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Fri, 18 Sep 2026 22:01:28 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Fri, 18 Sep 2026 22:01:28 GMT
VOLUME [/var/www/html]
# Fri, 18 Sep 2026 22:01:28 GMT
ENV JOOMLA_VERSION=6.1.3
# Fri, 18 Sep 2026 22:01:28 GMT
ENV JOOMLA_SHA512=0378709fa1ebf06de26e32eeb635c46f0aa05971d206580a00dcde8038bebc6a4e04158e2e43a8f07edecffd62bfe2e07fe3869b8fddab124875c13391052f55
# Fri, 18 Sep 2026 22:01:41 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Fri, 18 Sep 2026 22:01:42 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 22:01:42 GMT
COPY makedb.php /makedb.php # buildkit
# Fri, 18 Sep 2026 22:01:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 18 Sep 2026 22:01:42 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ed1f058e041d97ac1f23c511dfbdcbda29ca286b8f0506fbf2a4b5b2bcf462`  
		Last Modified: Tue, 25 Aug 2026 10:00:12 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688c7db522e3fe4f249a63f14f9c5d5e910778c5bda8855e2c1fb2158e676de0`  
		Last Modified: Tue, 25 Aug 2026 10:00:38 GMT  
		Size: 146.6 MB (146592877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f643464284211cc08fd66fb85b4ffba1378df3b209243d0ce8e08b11652df73`  
		Last Modified: Tue, 25 Aug 2026 10:00:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf0301ceb31e1809a0170fc2eaab3540f882ded5d8b27503ffce853fe7ed190`  
		Last Modified: Wed, 26 Aug 2026 05:54:16 GMT  
		Size: 12.8 MB (12775819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979bef2dd3977be55c0b6fb376aafe3932af8c86a0cbf9a76f3a296dc5599d4e`  
		Last Modified: Wed, 26 Aug 2026 05:54:12 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6476e339c8cf2084cee8823f97dc9acfaac91acf692bf5520abd1f18ebc25c4`  
		Last Modified: Fri, 18 Sep 2026 11:22:56 GMT  
		Size: 16.2 MB (16163139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a79e0724e4980989819944aa23e8001d9d618398ecf87b362d3ae43ab836e0`  
		Last Modified: Fri, 18 Sep 2026 11:22:52 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f969fe1e843d80ff019724d595858e9ceab8a32fde3d7509bb1964bfff00a8`  
		Last Modified: Fri, 18 Sep 2026 11:22:53 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21d3d0cd732e71dfb1a0a7857f6ed5d8e5a10e09bb287293d0097015732a95f`  
		Last Modified: Fri, 18 Sep 2026 11:22:53 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970e9b212c881d00b142a36d5ca688ba4d77bff2a458e57f6fd491a6921d7e97`  
		Last Modified: Fri, 18 Sep 2026 11:22:54 GMT  
		Size: 9.3 KB (9259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e55a3f0af7a1e13844dbb357f579a61a615a472e8504c42c06a56cfeba1c04`  
		Last Modified: Fri, 18 Sep 2026 22:04:08 GMT  
		Size: 27.3 MB (27334878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f60c481236983954bca8002de02ee68850107ccd95f8ce8ed3acce867f0aade2`  
		Last Modified: Fri, 18 Sep 2026 22:04:13 GMT  
		Size: 53.2 MB (53175815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada85eb808d239ede8a6272abb01d1757ef2454af117bb2d028baef2ecc40354`  
		Last Modified: Fri, 18 Sep 2026 22:03:57 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9748c27188273f026d3a097621f2138c1db2f86c5329687c27fa5cc267f835a`  
		Last Modified: Fri, 18 Sep 2026 22:03:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3026be18e9c2452d036030f16b116fe3a69bcc2b9e630558de5c11af6f6c95e5`  
		Last Modified: Fri, 18 Sep 2026 22:04:10 GMT  
		Size: 28.9 MB (28853899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93896877190bae6b02816c3303d6536aee0019ee774f85ce2bba01bf3bfabf2`  
		Last Modified: Fri, 18 Sep 2026 22:03:59 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5424e7db658de3f201fc6924e712c76202775d6fb6ba5ddb3bac169d9e860b3`  
		Last Modified: Fri, 18 Sep 2026 22:04:02 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.3-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:e5369c756d4697c57be77cc0d652d9faa4b02699769f546169dc9f25a3a83f12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 KB (46534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae2c2efef21e26fd0e8b5f6d34b22a627d450b3c0588b32b246ececc590f52af`

```dockerfile
```

-	Layers:
	-	`sha256:f800179b930608330526e78fb5f2abec7eeeb50c379f2221e02298cabacafc21`  
		Last Modified: Fri, 18 Sep 2026 22:03:57 GMT  
		Size: 46.5 KB (46534 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.3-fpm` - linux; s390x

```console
$ docker pull joomla@sha256:b50505674519f91fa0d95904692da4579a6a3a41190a3dbff901c03985950bfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248326487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ea9c90158b929005eb7b2a957050fb681e7cf667b28b45c7a9530fb0e39579`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:17:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:17:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:17:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:17:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:17:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:17:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:17:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:17:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:17:15 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Sat, 19 Sep 2026 00:17:15 GMT
ENV PHP_VERSION=8.3.33
# Sat, 19 Sep 2026 00:17:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Sat, 19 Sep 2026 00:17:15 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Sat, 19 Sep 2026 00:34:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:34:06 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:36:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:36:32 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:36:32 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 19 Sep 2026 00:36:32 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:36:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:36:32 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:36:32 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 19 Sep 2026 00:36:32 GMT
STOPSIGNAL SIGQUIT
# Sat, 19 Sep 2026 00:36:32 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 19 Sep 2026 00:36:32 GMT
CMD ["php-fpm"]
# Sat, 19 Sep 2026 01:46:22 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 19 Sep 2026 01:46:22 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 19 Sep 2026 01:46:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:48:01 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 19 Sep 2026 01:48:02 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sat, 19 Sep 2026 01:48:02 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Sat, 19 Sep 2026 01:48:02 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 01:48:02 GMT
ENV JOOMLA_VERSION=6.1.3
# Sat, 19 Sep 2026 01:48:02 GMT
ENV JOOMLA_SHA512=0378709fa1ebf06de26e32eeb635c46f0aa05971d206580a00dcde8038bebc6a4e04158e2e43a8f07edecffd62bfe2e07fe3869b8fddab124875c13391052f55
# Sat, 19 Sep 2026 01:48:03 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Sat, 19 Sep 2026 01:48:03 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 19 Sep 2026 01:48:03 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 19 Sep 2026 01:48:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 01:48:03 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c0e61c94591c110f2e62332ff3f2cdadfe5499c360b4cf071c1ddbcd39cd9b`  
		Last Modified: Sat, 19 Sep 2026 00:19:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7161f69fce6836e8e60ba148679d3d27df97711b7f3276ec70bcbad124ab0981`  
		Last Modified: Sat, 19 Sep 2026 00:19:51 GMT  
		Size: 92.6 MB (92574270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0e8f0efb80a2928aaaaa19f9bc22c9f004fd9e4493bb4361e7ec1db1597ca3`  
		Last Modified: Sat, 19 Sep 2026 00:19:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c60d72d09603a95fd3e01b30dbfd0ca5ef0322eceda4bb90950b33e27f0aa2c`  
		Last Modified: Sat, 19 Sep 2026 00:36:48 GMT  
		Size: 12.8 MB (12758935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:266342a7cea148c0967493b22f3d55b83e9f01179a0230a61b3b73b4d733be65`  
		Last Modified: Sat, 19 Sep 2026 00:36:48 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c99db23e788d275b8de99b5a3f579f5a742986bed67e484bf333a62d30c1f7b`  
		Last Modified: Sat, 19 Sep 2026 00:36:48 GMT  
		Size: 11.8 MB (11774751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a91fc7a388c14a2148364d5a8985695fe62abef59a12706fac1809a567784e3`  
		Last Modified: Sat, 19 Sep 2026 00:36:48 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9477c0b24d73da022b94bf115806c55baba1ca56c2b9c44dc4d2318a0025bc53`  
		Last Modified: Sat, 19 Sep 2026 00:36:49 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed5078da96bec8d6549a62eb6536482d1fdc5166430e3f1ae1837b9b8f901bfb`  
		Last Modified: Sat, 19 Sep 2026 00:36:49 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e1aa338c3df8b83e44677598407530c4137f4048afd8f7e76495a6ff15c8b45`  
		Last Modified: Sat, 19 Sep 2026 00:36:49 GMT  
		Size: 9.3 KB (9258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed34c7205752e1e9c6e2c174d27d832d1177fca89df5ca8ad9df0356add30ae1`  
		Last Modified: Sat, 19 Sep 2026 01:48:16 GMT  
		Size: 27.7 MB (27688632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b322975f45086306de7b0f79b27faed4a674e28baf53114830470d06525459`  
		Last Modified: Sat, 19 Sep 2026 01:48:17 GMT  
		Size: 44.8 MB (44758251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8019bbe9665bc7431eabc53345d1d66333f6fc5829b1072e1143c88969285810`  
		Last Modified: Sat, 19 Sep 2026 01:48:16 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7cefd9284a151abd8f00ca41cdf6ebcd330ca1b1da60d6941a58c7822e1f791`  
		Last Modified: Sat, 19 Sep 2026 01:48:16 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8860894e4ad63ee25bc9916b530fd0f6fa273bcdcf43dfdfa4466524e697c41f`  
		Last Modified: Sat, 19 Sep 2026 01:48:17 GMT  
		Size: 28.9 MB (28853887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2b766afa047fa53222b1ac3dbf8bf6190657d7d43ae43aa253cb0eaaec7014`  
		Last Modified: Sat, 19 Sep 2026 01:48:17 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02f0fb0bca198b123201b6f608c114349bb509e2e76c9058355420fb7fc7bc7d`  
		Last Modified: Sat, 19 Sep 2026 01:48:18 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.3-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:de4809c9c31290e383b8ae6c99cc0b74092b6f8eef797c27421a0c5c7b1fe0a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 KB (46474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c616a74242118ea2f876a5885c77064f3baed0844c55ab902ffae2bc534d04e`

```dockerfile
```

-	Layers:
	-	`sha256:d3250bc5b10a9a35e0be1351e2e10345fc141771b52f53b3d183c0b743113463`  
		Last Modified: Sat, 19 Sep 2026 01:48:16 GMT  
		Size: 46.5 KB (46474 bytes)  
		MIME: application/vnd.in-toto+json
