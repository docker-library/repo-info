## `yourls:apache`

```console
$ docker pull yourls@sha256:24571e2000d2c64390831d054b3ebd3057a89ac1d657da1b995602ebfb0ec1b6
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

### `yourls:apache` - linux; amd64

```console
$ docker pull yourls@sha256:92b6ab40e94828782175d42927c7bee4b399ccda824e6f74852db62bd55c355f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.6 MB (187621328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc7da4af0e16e332fac508f12096c9011b203c6bfc5cd37f251c253ea342ef6`
-	Entrypoint: `["container-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:39:01 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:39:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:39:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:39:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:39:16 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:39:16 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:39:16 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:39:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:39:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:39:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:39:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:39:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:39:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:39:21 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 30 Jul 2026 22:39:21 GMT
ENV PHP_VERSION=8.5.9
# Thu, 30 Jul 2026 22:39:21 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Thu, 30 Jul 2026 22:39:21 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Thu, 30 Jul 2026 22:39:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:39:29 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:42:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:42:05 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:42:05 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:42:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:42:05 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 22:42:05 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:42:05 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:42:05 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 22:42:05 GMT
CMD ["apache2-foreground"]
# Thu, 30 Jul 2026 23:18:26 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)"     bcmath     pdo_mysql     mysqli # buildkit
# Thu, 30 Jul 2026 23:18:26 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 30 Jul 2026 23:18:26 GMT
RUN a2enmod rewrite expires # buildkit
# Thu, 30 Jul 2026 23:18:28 GMT
ARG YOURLS_VERSION=1.10.4
# Thu, 30 Jul 2026 23:18:28 GMT
ARG YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
# Thu, 30 Jul 2026 23:18:28 GMT
ENV YOURLS_VERSION=1.10.4
# Thu, 30 Jul 2026 23:18:28 GMT
ENV YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
# Thu, 30 Jul 2026 23:18:28 GMT
# ARGS: YOURLS_VERSION=1.10.4 YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls # buildkit
# Thu, 30 Jul 2026 23:18:28 GMT
COPY --chown=www-data:www-data config-container.php /usr/src/yourls/user/ # buildkit
# Thu, 30 Jul 2026 23:18:28 GMT
COPY container-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:18:28 GMT
COPY files/vhost.conf /etc/apache2/sites-available/000-default.conf # buildkit
# Thu, 30 Jul 2026 23:18:28 GMT
COPY files/vhost-https.conf /etc/apache2/sites-available/default-ssl.conf # buildkit
# Thu, 30 Jul 2026 23:18:28 GMT
COPY files/ports.conf /etc/apache2/ports.conf # buildkit
# Thu, 30 Jul 2026 23:18:28 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 30 Jul 2026 23:18:28 GMT
EXPOSE map[8443/tcp:{}]
# Thu, 30 Jul 2026 23:18:28 GMT
ENTRYPOINT ["container-entrypoint.sh"]
# Thu, 30 Jul 2026 23:18:28 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ce1b59615d127d7c67d9b4b8b480c44f4ae4ce852e6eb33f62cc9c218f2cece`  
		Last Modified: Thu, 30 Jul 2026 22:42:25 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da292b0233c3c1208dc2d0e88b3961b56b3e1aa2f3630256ac3336d41b495383`  
		Last Modified: Thu, 30 Jul 2026 22:42:28 GMT  
		Size: 117.8 MB (117838849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01514570b91ac3749e59ead93584b38d5388af25bd39d90a9d8fd33bf07c0b5a`  
		Last Modified: Thu, 30 Jul 2026 22:42:25 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4390ddb9bc5aa91d8b0bf5dc956d84008e4f33709aba835c87ee487c6798e7`  
		Last Modified: Thu, 30 Jul 2026 22:42:26 GMT  
		Size: 4.2 MB (4237188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d832006b2db48b2cf267404692ba8c38586974bb6b4bdce8f66adfa92885f0`  
		Last Modified: Thu, 30 Jul 2026 22:42:26 GMT  
		Size: 427.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ab5fe15132b69a02730c6495c2eb7b5566dcec003711c477323aaa15ba524c`  
		Last Modified: Thu, 30 Jul 2026 22:42:26 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ff4dbadb42c1e1a0643c8f59c1ce5694661c42a225d7d2ee6e7060860cccec`  
		Last Modified: Thu, 30 Jul 2026 22:42:27 GMT  
		Size: 14.6 MB (14586632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aba8d6494147215b8835bc8108d64e0e9ba10b21deea84cedd0bb6827dc59f94`  
		Last Modified: Thu, 30 Jul 2026 22:42:27 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8583ad51f7ae6682f5f2b8275258c68900ccb35730ff93a522bb263e0872a14`  
		Last Modified: Thu, 30 Jul 2026 22:42:28 GMT  
		Size: 15.2 MB (15186428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff0d508ac99fdb8ad89001f6d52b07dc758750847e3d66353e541ea316c53b1`  
		Last Modified: Thu, 30 Jul 2026 22:42:29 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28c7f7a9b4c15f56c7b9abdc3569627cfda34b0f2e15b8d5e6c034ff8970266`  
		Last Modified: Thu, 30 Jul 2026 22:42:29 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d04f5da012bb591bdc0229952a2f0a1ef3561cad2afcde082ad62166bee827`  
		Last Modified: Thu, 30 Jul 2026 22:42:29 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5377cd9024d32c678fbaa9c4bcd2e783384961013e16bc96daab6ff11261cb`  
		Last Modified: Thu, 30 Jul 2026 23:18:33 GMT  
		Size: 108.5 KB (108489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a0a8cd172020230c5f2be3d5fcda903433725d2e16aadebf17e9bb24fa1fce7`  
		Last Modified: Thu, 30 Jul 2026 23:18:33 GMT  
		Size: 323.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01bc3e718f335e80bf72e5bbd2ad726e74cf730d048f74198427fab26406a6b1`  
		Last Modified: Thu, 30 Jul 2026 23:18:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:349987477fa5c28e7d88e4d1f27550b46d7c6f9b650d63866b41827f5a456a2d`  
		Last Modified: Thu, 30 Jul 2026 23:18:33 GMT  
		Size: 5.9 MB (5871655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46dbf7435b5c920e502adbedb7976afec5494a503cf94a71e8b8bec87ac11464`  
		Last Modified: Thu, 30 Jul 2026 23:18:34 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c74baa404a895f06e454884a0b3ad15e82e10b9ae86c01dea968c4b92595a25`  
		Last Modified: Thu, 30 Jul 2026 23:18:34 GMT  
		Size: 1.6 KB (1581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b942a62363558f7ea19bf03fd3768f2264cb19a548d2dc5f339966ea8b031eeb`  
		Last Modified: Thu, 30 Jul 2026 23:18:34 GMT  
		Size: 499.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80bf6756ecdd4f590cd5908ed52dd764fb9092fd68931563bc6bf42e8d34b9c`  
		Last Modified: Thu, 30 Jul 2026 23:18:35 GMT  
		Size: 547.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76a58d4e3120cfe6781d19073a234dbe3b8d6263455ffe43f5ddd08c9bcf7c3`  
		Last Modified: Thu, 30 Jul 2026 23:18:35 GMT  
		Size: 328.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `yourls:apache` - unknown; unknown

```console
$ docker pull yourls@sha256:3b6746a117e50252f49f37f79ddaeb40cc987a3a795b81cb5d4643f017da7e4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 KB (47589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa919a5f3812a8fc6007924556c84612a946b51af0dcc5e88883d52815bef9e1`

```dockerfile
```

-	Layers:
	-	`sha256:8316c2d927bfdae6c150cd922ca6208e91b58ac04978efbf1646ffec72fe5e95`  
		Last Modified: Thu, 30 Jul 2026 23:18:33 GMT  
		Size: 47.6 KB (47589 bytes)  
		MIME: application/vnd.in-toto+json

### `yourls:apache` - linux; arm variant v5

```console
$ docker pull yourls@sha256:2fd3c76346b376cefdbcf7858ac687d175e194debc593aef0a78f2c9a3ea9778
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.8 MB (160750802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b825884a2bca971e8686b66ac03fb3d85bc13e4b0285f8da89cb011bff1ae6`
-	Entrypoint: `["container-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:42:35 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:42:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:42:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:42:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:42:58 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:42:58 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:42:58 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:43:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:43:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:43:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:43:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:43:09 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 30 Jul 2026 22:43:09 GMT
ENV PHP_VERSION=8.5.9
# Thu, 30 Jul 2026 22:43:09 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Thu, 30 Jul 2026 22:43:09 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Thu, 30 Jul 2026 22:43:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:43:21 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:46:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:46:56 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:46:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:46:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:46:56 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 22:46:56 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:46:56 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:46:56 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 22:46:56 GMT
CMD ["apache2-foreground"]
# Thu, 30 Jul 2026 23:23:38 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)"     bcmath     pdo_mysql     mysqli # buildkit
# Thu, 30 Jul 2026 23:23:39 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 30 Jul 2026 23:23:39 GMT
RUN a2enmod rewrite expires # buildkit
# Thu, 30 Jul 2026 23:23:39 GMT
ARG YOURLS_VERSION=1.10.4
# Thu, 30 Jul 2026 23:23:39 GMT
ARG YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
# Thu, 30 Jul 2026 23:23:39 GMT
ENV YOURLS_VERSION=1.10.4
# Thu, 30 Jul 2026 23:23:39 GMT
ENV YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
# Thu, 30 Jul 2026 23:23:39 GMT
# ARGS: YOURLS_VERSION=1.10.4 YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls # buildkit
# Thu, 30 Jul 2026 23:23:39 GMT
COPY --chown=www-data:www-data config-container.php /usr/src/yourls/user/ # buildkit
# Thu, 30 Jul 2026 23:23:39 GMT
COPY container-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:23:39 GMT
COPY files/vhost.conf /etc/apache2/sites-available/000-default.conf # buildkit
# Thu, 30 Jul 2026 23:23:39 GMT
COPY files/vhost-https.conf /etc/apache2/sites-available/default-ssl.conf # buildkit
# Thu, 30 Jul 2026 23:23:39 GMT
COPY files/ports.conf /etc/apache2/ports.conf # buildkit
# Thu, 30 Jul 2026 23:23:39 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 30 Jul 2026 23:23:39 GMT
EXPOSE map[8443/tcp:{}]
# Thu, 30 Jul 2026 23:23:39 GMT
ENTRYPOINT ["container-entrypoint.sh"]
# Thu, 30 Jul 2026 23:23:39 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03f3a24efb5f9665137ad56b1d88f45f49eccc4938343831797fc907c28331c`  
		Last Modified: Thu, 30 Jul 2026 22:47:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19aa50d7499ce4b70ca9002c5b9e4b021a754f03d6538d581c334c38451c6b0c`  
		Last Modified: Thu, 30 Jul 2026 22:47:17 GMT  
		Size: 94.9 MB (94886933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a7bfb8267cbd1cbca2caf426022857880a8cc60706763cea5db356f7b57d62a`  
		Last Modified: Thu, 30 Jul 2026 22:47:14 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac2fb291f9e501538ff7177a11a1954e2e8c6b02a989bdc1d1d5651d6ae5a99`  
		Last Modified: Thu, 30 Jul 2026 22:47:15 GMT  
		Size: 4.1 MB (4097234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd493ed1cc055667aee1abcd1f9364c323b7ea9b270e6883d763b48bb3e7ab07`  
		Last Modified: Thu, 30 Jul 2026 22:47:16 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d38776d4288c841cd11ffcc8df946d9295422afe9c3467c6894145b7d25a64b7`  
		Last Modified: Thu, 30 Jul 2026 22:47:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e2e00d9b759b8f87ccadb4112ce4516baa4d3f644d3a2d6153954c20bafecd1`  
		Last Modified: Thu, 30 Jul 2026 22:47:17 GMT  
		Size: 14.6 MB (14583807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4499a16a339c2a8456f6707e7641c6af2466a3d7acd58fe9088264c9b350bf55`  
		Last Modified: Thu, 30 Jul 2026 22:47:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cbd5e3e711c87cd1c3d05afee73e45250745789dea46682ce78fe3d5eefe866`  
		Last Modified: Thu, 30 Jul 2026 22:47:17 GMT  
		Size: 13.2 MB (13248149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afb002e5b32868c4b9d1e376f8763c71f1d50b0ad0177b8f6bd8f95ec62e10b`  
		Last Modified: Thu, 30 Jul 2026 22:47:18 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c07e9c24ea412be1e78a779d678e6ea4e9815c5a020565a735fa52572279cd8`  
		Last Modified: Thu, 30 Jul 2026 22:47:18 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7092a96a02839094f3679470498bbce29c9adb13254b66e3821518e4714d38b8`  
		Last Modified: Thu, 30 Jul 2026 22:47:19 GMT  
		Size: 888.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dafc91cd87f3e55189384fd256f8b9aed0db2d1f78a68434605f6da4570a0c2`  
		Last Modified: Thu, 30 Jul 2026 23:23:44 GMT  
		Size: 97.0 KB (97017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed2fd7525996768c2cfb660f9d87303756c3ae1bb282914bfce36f42f58073d`  
		Last Modified: Thu, 30 Jul 2026 23:23:44 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:223a4e7949e8540fd477ff2319e82f12296427be0bc9a907664c0c7f0f3fc2b3`  
		Last Modified: Thu, 30 Jul 2026 23:23:44 GMT  
		Size: 343.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af7852d6bc723047cee916469927f79973bf525591d106aa2229e6d5d77860e`  
		Last Modified: Thu, 30 Jul 2026 23:23:45 GMT  
		Size: 5.9 MB (5871660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5131830ae9091bebaef2009337c35f01cb42aba5615ddbf685c88d2606b86edf`  
		Last Modified: Thu, 30 Jul 2026 23:23:46 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e03773f53a6b030beda957c490bf51533bab79e806f256c60e86564a62d2ce8`  
		Last Modified: Thu, 30 Jul 2026 23:23:46 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c095528d90f5d098ad982316e31f42d922318f422f6e32fae504e26fa44b21f8`  
		Last Modified: Thu, 30 Jul 2026 23:23:46 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d338ba96f3d0547eb49d2adde061ff6ce6d79ce60a30ed9e231d56e4bd77b70`  
		Last Modified: Thu, 30 Jul 2026 23:23:46 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f1384391ce965c9680fed91abf7ee69d5fbafb5d88d4a7a3107de24377941c`  
		Last Modified: Thu, 30 Jul 2026 23:23:47 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `yourls:apache` - unknown; unknown

```console
$ docker pull yourls@sha256:1ca6b24d1626ab0d1e6079148d62741f31fe727f10aab853e19b77299668f4be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 KB (47721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a7c3350a043d39104ec962b5519850907f9203d4b4aaa3e5bfc29638915545`

```dockerfile
```

-	Layers:
	-	`sha256:e94a5f33de16a453061c8d3bfdb19d692205a3dce9cc6d6e8982c97968ba015b`  
		Last Modified: Thu, 30 Jul 2026 23:23:44 GMT  
		Size: 47.7 KB (47721 bytes)  
		MIME: application/vnd.in-toto+json

### `yourls:apache` - linux; arm variant v7

```console
$ docker pull yourls@sha256:8f5e0998befc3537193e523c0003399ecaffdfadca05838d892d097e8bcb78e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149420331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb2e0ae181f14cc6f679e290b6b5de03f59a9719189cac08ba3aa31f473348a`
-	Entrypoint: `["container-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:49:19 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:49:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:49:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:49:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:49:36 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:49:36 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:49:36 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:49:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:49:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:49:44 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:49:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:49:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:49:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:49:44 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 30 Jul 2026 22:49:44 GMT
ENV PHP_VERSION=8.5.9
# Thu, 30 Jul 2026 22:49:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Thu, 30 Jul 2026 22:49:44 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Thu, 30 Jul 2026 22:49:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:49:54 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:53:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:53:00 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:53:00 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:53:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:53:00 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 22:53:00 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:53:00 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:53:00 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 22:53:00 GMT
CMD ["apache2-foreground"]
# Thu, 30 Jul 2026 23:45:35 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)"     bcmath     pdo_mysql     mysqli # buildkit
# Thu, 30 Jul 2026 23:45:35 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 30 Jul 2026 23:45:35 GMT
RUN a2enmod rewrite expires # buildkit
# Thu, 30 Jul 2026 23:45:36 GMT
ARG YOURLS_VERSION=1.10.4
# Thu, 30 Jul 2026 23:45:36 GMT
ARG YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
# Thu, 30 Jul 2026 23:45:36 GMT
ENV YOURLS_VERSION=1.10.4
# Thu, 30 Jul 2026 23:45:36 GMT
ENV YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
# Thu, 30 Jul 2026 23:45:36 GMT
# ARGS: YOURLS_VERSION=1.10.4 YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls # buildkit
# Thu, 30 Jul 2026 23:45:36 GMT
COPY --chown=www-data:www-data config-container.php /usr/src/yourls/user/ # buildkit
# Thu, 30 Jul 2026 23:45:36 GMT
COPY container-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:45:36 GMT
COPY files/vhost.conf /etc/apache2/sites-available/000-default.conf # buildkit
# Thu, 30 Jul 2026 23:45:36 GMT
COPY files/vhost-https.conf /etc/apache2/sites-available/default-ssl.conf # buildkit
# Thu, 30 Jul 2026 23:45:36 GMT
COPY files/ports.conf /etc/apache2/ports.conf # buildkit
# Thu, 30 Jul 2026 23:45:36 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 30 Jul 2026 23:45:36 GMT
EXPOSE map[8443/tcp:{}]
# Thu, 30 Jul 2026 23:45:36 GMT
ENTRYPOINT ["container-entrypoint.sh"]
# Thu, 30 Jul 2026 23:45:36 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65fd391d29d2c5ded2310fb51c47061f518d0454c17db1bfafce3e0781bdde3`  
		Last Modified: Thu, 30 Jul 2026 22:53:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32a651c4556f0db8d6a60774575dd276424d7855a399323e70138b2ca1033643`  
		Last Modified: Thu, 30 Jul 2026 22:53:19 GMT  
		Size: 86.3 MB (86258121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21feccf19969302189c0a8fb4ccfdefcd61ed66e6df84e7cce8fc6cb74e27ea`  
		Last Modified: Thu, 30 Jul 2026 22:53:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6caaf8613a7a1d3d6b195c9113100c95de66111c82b679c338bd9f1493a422f7`  
		Last Modified: Thu, 30 Jul 2026 22:53:17 GMT  
		Size: 3.8 MB (3762586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e0207673491edfbd91401b056fe8a486e972c92da471b0a21aba16bd003176`  
		Last Modified: Thu, 30 Jul 2026 22:53:18 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a3521453dc6f7b5e9c55db349a72fea7a59681096acc4eb04ee0c26b97e62d`  
		Last Modified: Thu, 30 Jul 2026 22:53:18 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc902fe5ca3a3764f4d6740c3f6698d580f30fc36b0e9be6404a3c698c49ac2`  
		Last Modified: Thu, 30 Jul 2026 22:53:19 GMT  
		Size: 14.6 MB (14583900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01081f96f7d0723ae40f6e7414e5abd863be70d29d27140bfb9f683c90ce620a`  
		Last Modified: Thu, 30 Jul 2026 22:53:19 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b01060dddb6058162a4fe4394a033fb4e0939bf2e48fd11647a8f4324f118ecb`  
		Last Modified: Thu, 30 Jul 2026 22:53:20 GMT  
		Size: 12.6 MB (12635480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8195258b6676bb4a54e98170691725aeee8065fa38308a898e3e910aa42d9864`  
		Last Modified: Thu, 30 Jul 2026 22:53:20 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d726ebce083f3af4d32d2c5fc701e4df6c4fc580baee2c44ca1c0b6e9c4214d`  
		Last Modified: Thu, 30 Jul 2026 22:53:21 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d0e816038be759ea41cc660d6d6b9394cc65b823d40f33108d9427fae9fde9`  
		Last Modified: Thu, 30 Jul 2026 22:53:21 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28da661bc2e799bf4725f93c6cede860b77a66682b175b6349ab06b0886a6584`  
		Last Modified: Thu, 30 Jul 2026 23:45:42 GMT  
		Size: 90.9 KB (90916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c9df63fd8d42d1fcdb7854f71ee367b5ccdd70eca4711f2b5a1a0da07e71ee`  
		Last Modified: Thu, 30 Jul 2026 23:45:42 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7e776320893bdb853fcd3a28047870423d64e82d1c68ac8998962b33e09ee3`  
		Last Modified: Thu, 30 Jul 2026 23:45:42 GMT  
		Size: 344.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4784eca2134079c0544ac681818ce499c54176e147e06416be3c24b7c70518e`  
		Last Modified: Thu, 30 Jul 2026 23:45:42 GMT  
		Size: 5.9 MB (5871655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca74125661e3d70a8b97a2db48da686040016c17d89db838658f6cf01282889`  
		Last Modified: Thu, 30 Jul 2026 23:45:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35fec580deef89f8bc8ae3ee8e8bd1edeeb2f0e742ac72421d3f60aa0a06e36`  
		Last Modified: Thu, 30 Jul 2026 23:45:43 GMT  
		Size: 1.6 KB (1582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05859ca62cafd825ddb82d3d028b916ccf0befa07bb6c81569c56b294856146c`  
		Last Modified: Thu, 30 Jul 2026 23:45:43 GMT  
		Size: 502.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d753eced93d076de8e4f8277776d2daf5508d0649ea1ec13362c589451fd1d4`  
		Last Modified: Thu, 30 Jul 2026 23:45:44 GMT  
		Size: 547.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e87bfe3d0935dbd54dd19a2b92e3b6a272d201439bea529b0dc90aa7572f523`  
		Last Modified: Thu, 30 Jul 2026 23:45:44 GMT  
		Size: 327.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `yourls:apache` - unknown; unknown

```console
$ docker pull yourls@sha256:24b307421e8972919989a95e61bdaa32984a9b93780cbcb952896ce440daca5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 KB (47721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51abbabdabe4e8604fa379f7fcf1b91b2801861c10364dd0727d1b6110339c5`

```dockerfile
```

-	Layers:
	-	`sha256:1c0b8ee26f95846265028e35402bb9c1b882f09fe6cb81269cd8b3a80b07f7c9`  
		Last Modified: Thu, 30 Jul 2026 23:45:42 GMT  
		Size: 47.7 KB (47721 bytes)  
		MIME: application/vnd.in-toto+json

### `yourls:apache` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:4a0518630c104fe4e0d2ec404ccb6d64b3452a5da4f7ae93a1ad7653a4bc7e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.0 MB (179950973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6736b66e2ba234d8bf9993bcac4c8ef0cc9d863b825f76c4e2352fe7b973b511`
-	Entrypoint: `["container-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:39:10 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:39:27 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:39:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:39:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:39:27 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:39:27 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:39:27 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:39:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:39:33 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:39:33 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:39:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:39:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:39:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:39:33 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 30 Jul 2026 22:39:33 GMT
ENV PHP_VERSION=8.5.9
# Thu, 30 Jul 2026 22:39:33 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Thu, 30 Jul 2026 22:39:33 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Thu, 30 Jul 2026 22:39:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:39:42 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:43:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:43:02 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:43:02 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:43:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:43:02 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 22:43:02 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:43:02 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:43:02 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 22:43:02 GMT
CMD ["apache2-foreground"]
# Thu, 30 Jul 2026 23:22:05 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)"     bcmath     pdo_mysql     mysqli # buildkit
# Thu, 30 Jul 2026 23:22:05 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 30 Jul 2026 23:22:05 GMT
RUN a2enmod rewrite expires # buildkit
# Thu, 30 Jul 2026 23:22:06 GMT
ARG YOURLS_VERSION=1.10.4
# Thu, 30 Jul 2026 23:22:06 GMT
ARG YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
# Thu, 30 Jul 2026 23:22:06 GMT
ENV YOURLS_VERSION=1.10.4
# Thu, 30 Jul 2026 23:22:06 GMT
ENV YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
# Thu, 30 Jul 2026 23:22:06 GMT
# ARGS: YOURLS_VERSION=1.10.4 YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls # buildkit
# Thu, 30 Jul 2026 23:22:06 GMT
COPY --chown=www-data:www-data config-container.php /usr/src/yourls/user/ # buildkit
# Thu, 30 Jul 2026 23:22:06 GMT
COPY container-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:22:06 GMT
COPY files/vhost.conf /etc/apache2/sites-available/000-default.conf # buildkit
# Thu, 30 Jul 2026 23:22:06 GMT
COPY files/vhost-https.conf /etc/apache2/sites-available/default-ssl.conf # buildkit
# Thu, 30 Jul 2026 23:22:06 GMT
COPY files/ports.conf /etc/apache2/ports.conf # buildkit
# Thu, 30 Jul 2026 23:22:06 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 30 Jul 2026 23:22:06 GMT
EXPOSE map[8443/tcp:{}]
# Thu, 30 Jul 2026 23:22:06 GMT
ENTRYPOINT ["container-entrypoint.sh"]
# Thu, 30 Jul 2026 23:22:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259004d030478968f7bd1cf4a9a5cb3f905c84c88f0433e195bbdef1763fade`  
		Last Modified: Thu, 30 Jul 2026 22:43:22 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205299e7be05d0def2101f2cf75044b42b3d7c23fab0885553cf7dcafdc477f6`  
		Last Modified: Thu, 30 Jul 2026 22:43:25 GMT  
		Size: 110.2 MB (110170473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aac21d0f838f18677c64bf7702616cd64b74e6e6fd5f9f8d27cab394f1ca7b67`  
		Last Modified: Thu, 30 Jul 2026 22:43:22 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda9371464279c3dda93975449c7ddbfaca0773f9ba8d6a3acee8f158b0835ac`  
		Last Modified: Thu, 30 Jul 2026 22:43:23 GMT  
		Size: 4.3 MB (4312843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eae7baeeb9af36fcaadcce8243305a22580987991fb3b36b64954b3ca8a269a`  
		Last Modified: Thu, 30 Jul 2026 22:43:23 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebeacecd2158134c7a302ff15893ca022bf2c2afa79a05bfa3e80d7c055f2dc8`  
		Last Modified: Thu, 30 Jul 2026 22:43:24 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:497590beb1cbb435125f0b7fd9c75217d0358690b6984d7733f7cf9ef02fc30d`  
		Last Modified: Thu, 30 Jul 2026 22:43:25 GMT  
		Size: 14.6 MB (14586164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f51ad6a8dd1b67ec90c85940f5519ff2270704e9d8ba1a595567af71b1d887b`  
		Last Modified: Thu, 30 Jul 2026 22:43:25 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f8aff5c04ae46a3a6c35aabadaec8b8d7498ed221f3d3b07a24a69998e56eb`  
		Last Modified: Thu, 30 Jul 2026 22:43:25 GMT  
		Size: 14.7 MB (14748972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d875c925f49c4b87cb2c07d1aec9d2843568bac355475495fb1ed429ff41e4c0`  
		Last Modified: Thu, 30 Jul 2026 22:43:26 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c911a6b9ccd8cebde9131a77e2acd7ef4753114ce62f905e561f162a597fefb`  
		Last Modified: Thu, 30 Jul 2026 22:43:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb63d3913d36dd8bdc87d0c8f2e988e885b85b1a85a859db9c5bde270ad61fe`  
		Last Modified: Thu, 30 Jul 2026 22:43:26 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76972bb849d46ec63ff97669089a4eaa20ac3975b4b2fd678277db5568cef3c0`  
		Last Modified: Thu, 30 Jul 2026 23:22:11 GMT  
		Size: 106.0 KB (105958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0c7377ac1fa29920549f650c842c133525f99721d18f341bcfc7842cc17710d`  
		Last Modified: Thu, 30 Jul 2026 23:22:11 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529bd831c7974247b3511c0c5b8344f3436982679c0571522e7d01e433cc84b1`  
		Last Modified: Thu, 30 Jul 2026 23:22:12 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87d868c04eb668e3b270b02cf90711defb2ad51d96f75cebee5247c54fffec70`  
		Last Modified: Thu, 30 Jul 2026 23:22:12 GMT  
		Size: 5.9 MB (5871655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa20abb46c143ed56454c0a659685a00f59039d841e4cda94d928620e1a1215`  
		Last Modified: Thu, 30 Jul 2026 23:22:12 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b64a8d40e298280e41045f2a475730c261e16e8a8b863b297f00a264263557`  
		Last Modified: Thu, 30 Jul 2026 23:22:13 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9911c5160bee7b5c0cfb3da3d085fc5a6fd19a1ea153adc99871419b5314abd`  
		Last Modified: Thu, 30 Jul 2026 23:22:13 GMT  
		Size: 498.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666698d2ee100af67ec55e11dad0e4b3fd92e4c2409fad54c45976d852a330b2`  
		Last Modified: Thu, 30 Jul 2026 23:22:13 GMT  
		Size: 547.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc455a5ce9c9bfa7cc54f9e7672b718cbea32a9ce380baf40bbc729564bb0a1d`  
		Last Modified: Thu, 30 Jul 2026 23:22:14 GMT  
		Size: 327.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `yourls:apache` - unknown; unknown

```console
$ docker pull yourls@sha256:86bf97686998c68d111421e857e2e235e50c60567ff89ad55bf0e708ef31bea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 KB (47786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd672d9aad5630f736bd620ee20e258186c51af4138df8017d187635433cb13c`

```dockerfile
```

-	Layers:
	-	`sha256:0aeb9ca1ae208e5fe216af87bc6c169a2ce2204a03b343c47a7cd3d70e56c345`  
		Last Modified: Thu, 30 Jul 2026 23:22:11 GMT  
		Size: 47.8 KB (47786 bytes)  
		MIME: application/vnd.in-toto+json

### `yourls:apache` - linux; 386

```console
$ docker pull yourls@sha256:0e9841f9966ce4987d15d1baa0273411832b8a93bc98c44edd80977bed0165e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188030850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca0ff5b2c0508ab330bee46dc6ba4f21a4593e77a27e9389400b82e219593635`
-	Entrypoint: `["container-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:35:18 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:35:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:35:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:35:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:35:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:35:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:35:38 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:39:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:39:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:39:22 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:39:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:39:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:39:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:39:22 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 30 Jul 2026 22:39:22 GMT
ENV PHP_VERSION=8.5.9
# Thu, 30 Jul 2026 22:39:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Thu, 30 Jul 2026 22:39:22 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Thu, 30 Jul 2026 22:39:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:39:31 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:42:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:42:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:42:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:42:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:42:57 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 22:42:57 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:42:57 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:42:57 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 22:42:57 GMT
CMD ["apache2-foreground"]
# Thu, 30 Jul 2026 23:18:57 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)"     bcmath     pdo_mysql     mysqli # buildkit
# Thu, 30 Jul 2026 23:18:57 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 30 Jul 2026 23:18:58 GMT
RUN a2enmod rewrite expires # buildkit
# Thu, 30 Jul 2026 23:18:58 GMT
ARG YOURLS_VERSION=1.10.4
# Thu, 30 Jul 2026 23:18:58 GMT
ARG YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
# Thu, 30 Jul 2026 23:18:58 GMT
ENV YOURLS_VERSION=1.10.4
# Thu, 30 Jul 2026 23:18:58 GMT
ENV YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
# Thu, 30 Jul 2026 23:18:58 GMT
# ARGS: YOURLS_VERSION=1.10.4 YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls # buildkit
# Thu, 30 Jul 2026 23:18:58 GMT
COPY --chown=www-data:www-data config-container.php /usr/src/yourls/user/ # buildkit
# Thu, 30 Jul 2026 23:18:58 GMT
COPY container-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:18:58 GMT
COPY files/vhost.conf /etc/apache2/sites-available/000-default.conf # buildkit
# Thu, 30 Jul 2026 23:18:58 GMT
COPY files/vhost-https.conf /etc/apache2/sites-available/default-ssl.conf # buildkit
# Thu, 30 Jul 2026 23:18:58 GMT
COPY files/ports.conf /etc/apache2/ports.conf # buildkit
# Thu, 30 Jul 2026 23:18:58 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 30 Jul 2026 23:18:58 GMT
EXPOSE map[8443/tcp:{}]
# Thu, 30 Jul 2026 23:18:58 GMT
ENTRYPOINT ["container-entrypoint.sh"]
# Thu, 30 Jul 2026 23:18:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e11e0c950d361ea52e816d50445dc0235dd866ad4b6766feede91b4aaf09f57c`  
		Last Modified: Thu, 30 Jul 2026 22:39:04 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b615c28899575e1af3c65c182723b15264ede7fc40818841e874be0c07ba1c6`  
		Last Modified: Thu, 30 Jul 2026 22:39:07 GMT  
		Size: 116.1 MB (116142823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e6fe0a308ca721060b2a830e3ae497a90fd9e931e4be614cf172e0b290c943`  
		Last Modified: Thu, 30 Jul 2026 22:39:04 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be57d74d56bd006d6d5a552167bfe6a758b3d3e57c9df31f22e2801b203a15a`  
		Last Modified: Thu, 30 Jul 2026 22:43:08 GMT  
		Size: 4.5 MB (4469995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce7915a6b3329df37cf6648a3df048c0bf5505bc966f53660d7cd2f5050d232`  
		Last Modified: Thu, 30 Jul 2026 22:43:08 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee8f23df08588d4f81f04af5f53b86fd6631665e64c7b12d063dbc7f59068e1d`  
		Last Modified: Thu, 30 Jul 2026 22:43:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:525195c2beaf3561bba0b799f3815f051c8686e7c0b06e4915128c86a44fa782`  
		Last Modified: Thu, 30 Jul 2026 22:43:09 GMT  
		Size: 14.6 MB (14585427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58df33da6acb41eae4cff08dd7b0a7757960a34ba50e797aaf539c99682b385`  
		Last Modified: Thu, 30 Jul 2026 22:43:09 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a29eb7d4016491c31630bb7c47723d38a868d8e9b777b810f7b3d514063d47`  
		Last Modified: Thu, 30 Jul 2026 22:43:09 GMT  
		Size: 15.5 MB (15541655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12008a3651c742564df093555ae58bdeba7cf7763021776ec3c9e33069d3b3b7`  
		Last Modified: Thu, 30 Jul 2026 22:43:10 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61aa8ffe6897cf9e97d09ff9ff4f69e57d3a394acae634a41a02a6c9396a89a3`  
		Last Modified: Thu, 30 Jul 2026 22:43:10 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc48a0a35f9fd5341bebc48f175ab801229bb6688893ee4076263d229cd147fd`  
		Last Modified: Thu, 30 Jul 2026 22:43:10 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca8ac5a007e6e55940738b4b1b93dce20941eb3f5fad8f1de1dc24ab00ced7b`  
		Last Modified: Thu, 30 Jul 2026 23:19:04 GMT  
		Size: 111.8 KB (111812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfbbb2de69f2ba63039616fc2638ad067c09815e96923ee2e5ce95bd31efffa2`  
		Last Modified: Thu, 30 Jul 2026 23:19:04 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ade6bc93d5781e4840ad35c24b5a22cbc67ae761963a6927a41d8c5e309f68`  
		Last Modified: Thu, 30 Jul 2026 23:19:04 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b0859d436e5ff4a8d9fec92b8a21c50c890b1a8647add378513b2dc244812a0`  
		Last Modified: Thu, 30 Jul 2026 23:19:04 GMT  
		Size: 5.9 MB (5871655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3308918990c0aef78a5ea32590ec46632398ffe3cb557a02e8bae36a6a8aceca`  
		Last Modified: Thu, 30 Jul 2026 23:19:05 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77605f8fe7ba831498c1853d2a2ff31d2cc559fe55fd811ad6568d1b7d913ab7`  
		Last Modified: Thu, 30 Jul 2026 23:19:05 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a945f88df1e90f53158026b7d48cec6950614ccb04d961c03e8c6754f48f4ea5`  
		Last Modified: Thu, 30 Jul 2026 23:19:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d35f3ea78f4d7549316076d2fa6ac1ea0e2ed65c933fe8cb1065eb6ce46113`  
		Last Modified: Thu, 30 Jul 2026 23:19:05 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf456631b47b1d1c6b6b42d4e78e399f2386181ad95155ffc34827f8f744efcb`  
		Last Modified: Thu, 30 Jul 2026 23:19:06 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `yourls:apache` - unknown; unknown

```console
$ docker pull yourls@sha256:c81767302801ae775c0013d58f710d13d16db372d9b6d48e7d7ca58259e7e602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 KB (47531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58631de9bd6e161a0d912004b8419a1a6db13dc06363560d0fff074862f16eda`

```dockerfile
```

-	Layers:
	-	`sha256:307344445068b1cdd2047035ab82ce662d3cedeca79d4beffd8e4cbf4cc65513`  
		Last Modified: Thu, 30 Jul 2026 23:19:03 GMT  
		Size: 47.5 KB (47531 bytes)  
		MIME: application/vnd.in-toto+json

### `yourls:apache` - linux; ppc64le

```console
$ docker pull yourls@sha256:4118acd19eaea8403f483d5540ae09a153f0770a43d85c08d1b27b2602353645
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.0 MB (184026352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb5b204dd0d47d88b30365a071eaca88b959eb500497d914bc4a836e1e381c2b`
-	Entrypoint: `["container-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:47:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:47:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:47:57 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:47:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:49:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:49:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:49:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:49:20 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_VERSION=8.5.9
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Thu, 30 Jul 2026 23:12:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 23:12:11 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:17:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:17:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:17:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:17:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:17:13 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 23:17:13 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:17:14 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:17:14 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 23:17:14 GMT
CMD ["apache2-foreground"]
# Fri, 31 Jul 2026 02:06:32 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)"     bcmath     pdo_mysql     mysqli # buildkit
# Fri, 31 Jul 2026 02:06:32 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Fri, 31 Jul 2026 02:06:33 GMT
RUN a2enmod rewrite expires # buildkit
# Fri, 31 Jul 2026 02:06:35 GMT
ARG YOURLS_VERSION=1.10.4
# Fri, 31 Jul 2026 02:06:35 GMT
ARG YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
# Fri, 31 Jul 2026 02:06:35 GMT
ENV YOURLS_VERSION=1.10.4
# Fri, 31 Jul 2026 02:06:35 GMT
ENV YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
# Fri, 31 Jul 2026 02:06:35 GMT
# ARGS: YOURLS_VERSION=1.10.4 YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls # buildkit
# Fri, 31 Jul 2026 02:06:35 GMT
COPY --chown=www-data:www-data config-container.php /usr/src/yourls/user/ # buildkit
# Fri, 31 Jul 2026 02:06:36 GMT
COPY container-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 02:06:36 GMT
COPY files/vhost.conf /etc/apache2/sites-available/000-default.conf # buildkit
# Fri, 31 Jul 2026 02:06:36 GMT
COPY files/vhost-https.conf /etc/apache2/sites-available/default-ssl.conf # buildkit
# Fri, 31 Jul 2026 02:06:36 GMT
COPY files/ports.conf /etc/apache2/ports.conf # buildkit
# Fri, 31 Jul 2026 02:06:36 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 31 Jul 2026 02:06:36 GMT
EXPOSE map[8443/tcp:{}]
# Fri, 31 Jul 2026 02:06:36 GMT
ENTRYPOINT ["container-entrypoint.sh"]
# Fri, 31 Jul 2026 02:06:36 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd9fd337cd7899e7af7638f29dae4c574aa394164bd2af437580f9c9c2182fa6`  
		Last Modified: Tue, 14 Jul 2026 01:52:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10f965ef16589e91b31b56f5b8058fb73d0f3a06daf05fe4c4ff6c738725671`  
		Last Modified: Tue, 14 Jul 2026 01:52:24 GMT  
		Size: 109.6 MB (109599986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2aa5772e1f0e49ca42c6d5c16739c4491de58fe0b69597250fd50ff7b194b05`  
		Last Modified: Tue, 14 Jul 2026 01:52:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b3d513edcced888c9d701c8b61f84146f8fa67c324bc43ef3724c9a775f6a0`  
		Last Modified: Tue, 14 Jul 2026 01:53:57 GMT  
		Size: 4.9 MB (4885486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d1fe1967cdebe6d53ef0faa1b5c3fdebe6dcc7edf1034bf1440a9eeceb0ec9`  
		Last Modified: Tue, 14 Jul 2026 01:53:57 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09fbb0d901148cd360965bd4cea366f3d6c35c1e1c8805ff4dac6f564115d6b4`  
		Last Modified: Tue, 14 Jul 2026 01:53:57 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d275be66c0ce94b63e3c19e553946c126a9de64958106afef9d5a9639db2cb06`  
		Last Modified: Thu, 30 Jul 2026 23:17:39 GMT  
		Size: 14.6 MB (14600936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a378357f45c5a29faec4e54475fe8e0af0df4ebcde2efee78efcc0a579a4cfbb`  
		Last Modified: Thu, 30 Jul 2026 23:17:38 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbb640d5fc68a1a1c6881e763a65f7f1eef79ae74d0d8b7e2324d6ccaf02211`  
		Last Modified: Thu, 30 Jul 2026 23:17:39 GMT  
		Size: 15.3 MB (15338206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c64f10a4d96f865803b55bf7c6b9f1a8c7f3f796542e0694526c5e4ef34fa01`  
		Last Modified: Thu, 30 Jul 2026 23:17:38 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d3511fb708bfeecd6855f1703cd7dbdaaa5fa7f87dcd396f98aab1a9730bd93`  
		Last Modified: Thu, 30 Jul 2026 23:17:39 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb16171dfab73727ea6bcefac8d9a354f54e779c0c0681ecdaafbb0f50ebc813`  
		Last Modified: Thu, 30 Jul 2026 23:17:39 GMT  
		Size: 886.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509e291943695b99f6fcae24a386e7ccea3fdeb93703e9f08a734e6ed6aa9bdc`  
		Last Modified: Fri, 31 Jul 2026 02:06:45 GMT  
		Size: 117.4 KB (117374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07fb7571c9adbc602fc10a32a1caa897aca30583f73fab05eec0d658701a4faa`  
		Last Modified: Fri, 31 Jul 2026 02:06:45 GMT  
		Size: 328.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7caa8af3f4d2cc48419e3706ea7802c6b36b6a83f1deaa1de141515127d6ecfa`  
		Last Modified: Fri, 31 Jul 2026 02:06:45 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71736a64c39a9a859799904cd7e09b4e1074faaa85edfe6e5cff248a7e9f332f`  
		Last Modified: Fri, 31 Jul 2026 02:06:45 GMT  
		Size: 5.9 MB (5871655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4fc6b2a55958c23a163d8f4cd0546ba6fb066dbac4a0c5ef725b1124b8917ea`  
		Last Modified: Fri, 31 Jul 2026 02:06:46 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b7acbefc5d12e416c7dda66337bdc9b9ba9afd3f57beffeee3b6027d7e6452`  
		Last Modified: Fri, 31 Jul 2026 02:06:46 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87e2731bbdbd545404dd5c09d26fe65ad73aaa073b099916300464bd1421ec5`  
		Last Modified: Fri, 31 Jul 2026 02:06:46 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b28d92f2e21b64636d02788e482d3b0d7cf93a4b1baf0b0b1a7b24d2e534a96`  
		Last Modified: Fri, 31 Jul 2026 02:06:46 GMT  
		Size: 549.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a7265e4f0845f3a67b3447f4353168a3aca27d3a3d88eb1f8327cda728b2a0`  
		Last Modified: Fri, 31 Jul 2026 02:06:47 GMT  
		Size: 327.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `yourls:apache` - unknown; unknown

```console
$ docker pull yourls@sha256:cfede5507150b9fbf921a5dc2d90a591412ef2bc1460ee23e6bf46479630023d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 KB (47663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ec0d29d1d850b59df92c5f21a0a493954dfc607582d159bb6f8159c80ec3f2`

```dockerfile
```

-	Layers:
	-	`sha256:fd15f44f5320a050b87e078c5663ffec4a9001d3fc570f554a4e883d63bb9493`  
		Last Modified: Fri, 31 Jul 2026 02:06:44 GMT  
		Size: 47.7 KB (47663 bytes)  
		MIME: application/vnd.in-toto+json

### `yourls:apache` - linux; riscv64

```console
$ docker pull yourls@sha256:565854dfd622566b3366d74cdd42a03c8ab4b93876ac1a7ae87fc40ecba8a107
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.6 MB (213562147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2edb4b8ce4f8f785bad93f8351c8b676aa3270df2998cb7f8fa398a31705907`
-	Entrypoint: `["container-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 09:54:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 09:56:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 09:56:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 09:56:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 09:56:04 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 09:56:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 09:56:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 10:56:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 10:56:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 10:56:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 10:56:20 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_VERSION=8.5.8
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Fri, 17 Jul 2026 21:54:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 17 Jul 2026 21:54:25 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 23:04:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 17 Jul 2026 23:04:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 23:04:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 17 Jul 2026 23:04:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 17 Jul 2026 23:04:47 GMT
STOPSIGNAL SIGWINCH
# Fri, 17 Jul 2026 23:04:47 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 23:04:47 GMT
WORKDIR /var/www/html
# Fri, 17 Jul 2026 23:04:47 GMT
EXPOSE map[80/tcp:{}]
# Fri, 17 Jul 2026 23:04:47 GMT
CMD ["apache2-foreground"]
# Sun, 19 Jul 2026 23:15:15 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)"     bcmath     pdo_mysql     mysqli # buildkit
# Sun, 19 Jul 2026 23:15:15 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Sun, 19 Jul 2026 23:15:16 GMT
RUN a2enmod rewrite expires # buildkit
# Sun, 19 Jul 2026 23:15:19 GMT
ARG YOURLS_VERSION=1.10.4
# Sun, 19 Jul 2026 23:15:19 GMT
ARG YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
# Sun, 19 Jul 2026 23:15:19 GMT
ENV YOURLS_VERSION=1.10.4
# Sun, 19 Jul 2026 23:15:19 GMT
ENV YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
# Sun, 19 Jul 2026 23:15:19 GMT
# ARGS: YOURLS_VERSION=1.10.4 YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls # buildkit
# Sun, 19 Jul 2026 23:15:20 GMT
COPY --chown=www-data:www-data config-container.php /usr/src/yourls/user/ # buildkit
# Sun, 19 Jul 2026 23:15:20 GMT
COPY container-entrypoint.sh /usr/local/bin/ # buildkit
# Sun, 19 Jul 2026 23:15:20 GMT
COPY files/vhost.conf /etc/apache2/sites-available/000-default.conf # buildkit
# Sun, 19 Jul 2026 23:15:20 GMT
COPY files/vhost-https.conf /etc/apache2/sites-available/default-ssl.conf # buildkit
# Sun, 19 Jul 2026 23:15:21 GMT
COPY files/ports.conf /etc/apache2/ports.conf # buildkit
# Sun, 19 Jul 2026 23:15:21 GMT
EXPOSE map[8080/tcp:{}]
# Sun, 19 Jul 2026 23:15:21 GMT
EXPOSE map[8443/tcp:{}]
# Sun, 19 Jul 2026 23:15:21 GMT
ENTRYPOINT ["container-entrypoint.sh"]
# Sun, 19 Jul 2026 23:15:21 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a402f4872997a5da5da69b3a347e3be938f823a5832732f76105c5c0f83a5263`  
		Last Modified: Tue, 14 Jul 2026 10:54:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdc4e0daeac0ded3e24d493163253fba6e27730e4a4bcb9c47e0bdb251fc803`  
		Last Modified: Tue, 14 Jul 2026 10:54:35 GMT  
		Size: 146.6 MB (146588003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761a368d142cea0913dda9b162f1b07b05fe29534f42d19303f73a5b7851bf22`  
		Last Modified: Tue, 14 Jul 2026 10:54:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b12548da727364739b64ffe3b7e6024c085f26240758f07a1063897bf604f3`  
		Last Modified: Tue, 14 Jul 2026 11:51:35 GMT  
		Size: 4.0 MB (4031666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2abc5f2ae9a0822817e97cfd9c603a15cf51ee33a6c159549c5d68ea9a9d6c22`  
		Last Modified: Tue, 14 Jul 2026 11:51:33 GMT  
		Size: 439.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80986409fbeca1347aceac2e2488b34b43307ab4300617f2b86744d459d2be92`  
		Last Modified: Tue, 14 Jul 2026 11:51:34 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac89c6d08ae68169549d033b9931221888f7e8ebdf00997373e3427f1f08fe4`  
		Last Modified: Fri, 17 Jul 2026 23:08:02 GMT  
		Size: 14.6 MB (14590050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ad33c3b62fc478532836e275c7b898683e54a5ba6f3191667faee176cc530c3`  
		Last Modified: Fri, 17 Jul 2026 23:07:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c480f4c3cceb5323a1460c385ffc03012ce3aea4d5bf869a2287cca217544b8`  
		Last Modified: Fri, 17 Jul 2026 23:08:02 GMT  
		Size: 14.1 MB (14084654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b265c0673b44282fabe89259762a422e1f747ed58a10610e7d5290e0f18360be`  
		Last Modified: Fri, 17 Jul 2026 23:07:57 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b84d9eab70ef78636b4783f67afc22b2dcb771867feb901f28b8b7990d03626e`  
		Last Modified: Fri, 17 Jul 2026 23:08:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f5aa4ea1f78b0617f1bc129f10ac025725d933e4e70b524cb397a49a2a60e0`  
		Last Modified: Fri, 17 Jul 2026 23:08:00 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9217afc74adf4696b0369d23107dcb76590bbc836b7f9859c844d27e6d1950f2`  
		Last Modified: Sun, 19 Jul 2026 23:16:10 GMT  
		Size: 106.7 KB (106671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:128a1f0f964db067fca23ce6e37b593d7e3024ca7ee53688d6efdaec3340bce3`  
		Last Modified: Sun, 19 Jul 2026 23:16:10 GMT  
		Size: 329.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d122e1346b521694dbb72bfdb13f75fe573d7d662a483d2de8ea127935d460d3`  
		Last Modified: Sun, 19 Jul 2026 23:16:10 GMT  
		Size: 349.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b673d4b4427ff8cf972f453e412a5b5f1ab7fcc8706bf2b193bbc04ac19739d0`  
		Last Modified: Sun, 19 Jul 2026 23:16:11 GMT  
		Size: 5.9 MB (5871655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca9421e9014db43ae241deb065c915e5495c964365d7ba4a803bde9fec7bedd3`  
		Last Modified: Sun, 19 Jul 2026 23:16:11 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b295bec97d0c3e32c09260b4c04753e8237d90992d2e818ed3b6845b638a9467`  
		Last Modified: Sun, 19 Jul 2026 23:16:11 GMT  
		Size: 1.6 KB (1587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f708f9571f31f1bbf88489c8783977c32e355273da2526a882c5339a9ad0efb`  
		Last Modified: Sun, 19 Jul 2026 23:16:11 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6a04e1bb13afea33ec8dd98830be785a3eee2ab2f2fbf183adb1d966686cba`  
		Last Modified: Sun, 19 Jul 2026 23:16:12 GMT  
		Size: 550.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523e4cf278db3cefa04a4b7e61a27045b0bba94825671b3afa97695671027e23`  
		Last Modified: Sun, 19 Jul 2026 23:16:12 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `yourls:apache` - unknown; unknown

```console
$ docker pull yourls@sha256:795589a9c00f248c26afd33a7c01ee95b59f13b03b6f40bd22754fd16d9d6049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 KB (47662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0461538a558987fb8b472bb2f658341c88ae06d3a3aa49be0eb17b2ccf6ad230`

```dockerfile
```

-	Layers:
	-	`sha256:8357c8eb62f9352fc7c757c83efe8fd5efab7f293312d5c2444cd5a51a016216`  
		Last Modified: Sun, 19 Jul 2026 23:16:09 GMT  
		Size: 47.7 KB (47662 bytes)  
		MIME: application/vnd.in-toto+json

### `yourls:apache` - linux; s390x

```console
$ docker pull yourls@sha256:5c29d5619801b2a65d5cb220289ce459eeb2e17f5690f99d75e1b746084c5ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161808371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e934fe2ee18c360fecf7909d805f49aee9a7d7e06cc1a89a17f42e0893d325`
-	Entrypoint: `["container-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:22:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:23:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:23:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:23:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:23:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:23:15 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:23:15 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:50:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:50:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:50:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:50:06 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_VERSION=8.5.9
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Thu, 30 Jul 2026 22:50:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:50:15 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:54:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:54:43 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:54:43 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:54:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:54:43 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 22:54:43 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:54:43 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:54:43 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 22:54:43 GMT
CMD ["apache2-foreground"]
# Fri, 31 Jul 2026 00:02:03 GMT
RUN set -eux;     docker-php-ext-install -j "$(nproc)"     bcmath     pdo_mysql     mysqli # buildkit
# Fri, 31 Jul 2026 00:02:03 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Fri, 31 Jul 2026 00:02:04 GMT
RUN a2enmod rewrite expires # buildkit
# Fri, 31 Jul 2026 00:02:05 GMT
ARG YOURLS_VERSION=1.10.4
# Fri, 31 Jul 2026 00:02:05 GMT
ARG YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
# Fri, 31 Jul 2026 00:02:05 GMT
ENV YOURLS_VERSION=1.10.4
# Fri, 31 Jul 2026 00:02:05 GMT
ENV YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
# Fri, 31 Jul 2026 00:02:05 GMT
# ARGS: YOURLS_VERSION=1.10.4 YOURLS_SHA256=1a41606138615c9869e232077b9da7b2a084e8751459f72b6c073bf0f092b808
RUN set -eux;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls # buildkit
# Fri, 31 Jul 2026 00:02:05 GMT
COPY --chown=www-data:www-data config-container.php /usr/src/yourls/user/ # buildkit
# Fri, 31 Jul 2026 00:02:05 GMT
COPY container-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:02:05 GMT
COPY files/vhost.conf /etc/apache2/sites-available/000-default.conf # buildkit
# Fri, 31 Jul 2026 00:02:05 GMT
COPY files/vhost-https.conf /etc/apache2/sites-available/default-ssl.conf # buildkit
# Fri, 31 Jul 2026 00:02:05 GMT
COPY files/ports.conf /etc/apache2/ports.conf # buildkit
# Fri, 31 Jul 2026 00:02:05 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 31 Jul 2026 00:02:05 GMT
EXPOSE map[8443/tcp:{}]
# Fri, 31 Jul 2026 00:02:05 GMT
ENTRYPOINT ["container-entrypoint.sh"]
# Fri, 31 Jul 2026 00:02:05 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d8a2297d172d8695bfdc23da99328c20335f9ac835a9cce44d0dd7f41cbf49`  
		Last Modified: Tue, 14 Jul 2026 01:27:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b73ea782a4865a5a88f2ab43d08888c21446fdc7f7e82f14de666dbde0b9ad3f`  
		Last Modified: Tue, 14 Jul 2026 01:27:49 GMT  
		Size: 92.6 MB (92572779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b23cdcbb2b5a0fb374d4028462f5c1acc9059a0db6b28db6bc9369a4f4d1d93`  
		Last Modified: Tue, 14 Jul 2026 01:27:47 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f2f885b5bef6c2b092ea115d42b40775d130de33e045f04f407fbaea293e97`  
		Last Modified: Thu, 30 Jul 2026 22:55:00 GMT  
		Size: 4.4 MB (4352669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399b60e47da73f31df07352ca26f50d561dfefa83d5fef62fb7b7bc7362a3d11`  
		Last Modified: Thu, 30 Jul 2026 22:55:00 GMT  
		Size: 434.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935fc0db1fd0b61c73c9bff8c2916d45048dfc98bf13ec6cf200e05bb669dba1`  
		Last Modified: Thu, 30 Jul 2026 22:55:00 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a94f87ddd391d9da60d916d6a947774b55bd0822160aba48654d6718a3a3c26`  
		Last Modified: Thu, 30 Jul 2026 22:55:00 GMT  
		Size: 14.6 MB (14584903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10847aca06176fe4d46bb27bdb1553e11509793e78552217577a7cea443e6a67`  
		Last Modified: Thu, 30 Jul 2026 22:55:01 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3674aaf0b36cbc141da88b2954f95d520780f82e64413adbfc5335b3d5de22b7`  
		Last Modified: Thu, 30 Jul 2026 22:55:01 GMT  
		Size: 14.5 MB (14456711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a7ca7a863e5920306c1d3e64fccee037335f675aa51e41dbd09046a5d7c1736`  
		Last Modified: Thu, 30 Jul 2026 22:55:01 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9767e95b6d1b0ed154359975026733c8b40f2b68d3681731bff1b437b5e0acf1`  
		Last Modified: Thu, 30 Jul 2026 22:55:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97acf2032790dd87f126df39290eaaa431dd455c1585c7f29529e7e7bdcf2701`  
		Last Modified: Thu, 30 Jul 2026 22:55:02 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3ee70c24ea41847be4c39313c76809948e3f3f58774dc4dfc1362dcc660702`  
		Last Modified: Fri, 31 Jul 2026 00:02:14 GMT  
		Size: 111.8 KB (111796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1adf333abcacf98102aa429237745d2710dad6f92e964b63de1856d978b4e858`  
		Last Modified: Fri, 31 Jul 2026 00:02:14 GMT  
		Size: 328.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b9b415d37caaeef982c956ea510dcec21990a6e4bc0f5b0e5c7057f37b2333`  
		Last Modified: Fri, 31 Jul 2026 00:02:14 GMT  
		Size: 343.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c4c42f668939ba30e8a8689036af81788c6d7e428299107f2eb5af814588d6`  
		Last Modified: Fri, 31 Jul 2026 00:02:14 GMT  
		Size: 5.9 MB (5871659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020ad3f0f328bfcb3f4a68e61f8bfcf92930332414d30c833218ca19a4154093`  
		Last Modified: Fri, 31 Jul 2026 00:02:15 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48be38dde111fc5d99dd3d986594b1ffa3433ad3c36b46ed494d5ec68ae9115`  
		Last Modified: Fri, 31 Jul 2026 00:02:15 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5d4a8a8b73fbc6a15968cb618bc366053a48a11a7c2fd5d71742dd37864976`  
		Last Modified: Fri, 31 Jul 2026 00:02:15 GMT  
		Size: 501.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8573fa5d1cedb46194285f7dae79fd25b22d1327a5ffc6d95ce536ddcdd6322c`  
		Last Modified: Fri, 31 Jul 2026 00:02:15 GMT  
		Size: 546.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e05b0f3eaa9459bd543814bdde31e3dffe803a70857c5bfd3c04ef68347087f`  
		Last Modified: Fri, 31 Jul 2026 00:02:16 GMT  
		Size: 327.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `yourls:apache` - unknown; unknown

```console
$ docker pull yourls@sha256:2fb0f76eb704661f0bb1eea4bb4682196c3ea31aac4a5ef4e306ce9b17930e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 KB (47578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d1fa6773578b5a0da5f023e5219e04caf4bf6b451e96ad4e59b587825f75a28`

```dockerfile
```

-	Layers:
	-	`sha256:64a57fa0507800411c0c129301630d15da296efbd19eb908a6f4ab29691ab5f1`  
		Last Modified: Fri, 31 Jul 2026 00:02:14 GMT  
		Size: 47.6 KB (47578 bytes)  
		MIME: application/vnd.in-toto+json
