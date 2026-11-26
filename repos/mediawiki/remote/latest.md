## `mediawiki:latest`

```console
$ docker pull mediawiki@sha256:7b3031566b116d3e9a0e0cad4cdb6c1551aa2d552d74786b497e33982612d4fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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

### `mediawiki:latest` - linux; amd64

```console
$ docker pull mediawiki@sha256:efb4194defd6b0c0958025ebf2353caca492c5b8e8938b2f99b11d43850b2a12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.3 MB (347315522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b333c16a424f71e2143eae5aa3f6ad421a06a014a51801ac7a2e5f3270ebd43b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:18:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:18:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:18:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:18:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:18:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:18:30 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:18:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:24:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:24:48 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:24:48 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:24:48 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:24:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:24:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:24:48 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:24:48 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:24:48 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:24:48 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 04:24:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:24:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:27:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:14 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:27:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:27:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:27:14 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 04:27:14 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:14 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:27:14 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:27:14 GMT
CMD ["apache2-foreground"]
# Thu, 26 Nov 2026 06:26:00 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		librsvg2-bin 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:26:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 		libonig-dev 		liblua5.1-0-dev 	; 		docker-php-ext-install -j "$(nproc)" 		calendar 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install APCu-5.1.28; 	pecl install LuaSandbox-4.1.2; 	docker-php-ext-enable 		apcu 		luasandbox 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:26:59 GMT
RUN set -eux; 	a2enmod rewrite; 	{ 		echo "<Directory /var/www/html>"; 		echo "  RewriteEngine On"; 		echo "  RewriteCond %{REQUEST_FILENAME} !-f"; 		echo "  RewriteCond %{REQUEST_FILENAME} !-d"; 		echo "  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]"; 		echo "</Directory>"; 	} > "$APACHE_CONFDIR/conf-available/short-url.conf"; 	a2enconf short-url # buildkit
# Thu, 26 Nov 2026 06:26:59 GMT
RUN sed -i "s/<\/VirtualHost>/\tAllowEncodedSlashes NoDecode\n<\/VirtualHost>/" "$APACHE_CONFDIR/sites-available/000-default.conf" # buildkit
# Thu, 26 Nov 2026 06:26:59 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 26 Nov 2026 06:26:59 GMT
RUN set -eux; 	mkdir -p /var/www/data; 	chown -R www-data:www-data /var/www/data # buildkit
# Thu, 26 Nov 2026 06:27:19 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.46
# Thu, 26 Nov 2026 06:27:19 GMT
ENV MEDIAWIKI_VERSION=1.46.3
# Thu, 26 Nov 2026 06:27:19 GMT
RUN set -eux; 	fetchDeps=" 		gnupg 		dirmngr 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 		curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz; 	curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz.sig" -o mediawiki.tar.gz.sig; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 		D7D6767D135A514BEB86E9BA75682B08E8A3FEC4 		441276E9CCD15F44F6D97D18C119E1A64D70938E 		F7F780D82EBFB8A56556E7EE82403E59F9F8CD79 		1D98867E82982C8FE0ABC25F9B69B3109D3BB7B0 		E059C034E7A430583C252F4AA8F734246D73B586 		7759DE19A22260232F251342FC4D45E75D14112B 	; 	gpg --batch --verify mediawiki.tar.gz.sig mediawiki.tar.gz; 	tar -x --strip-components=1 -f mediawiki.tar.gz; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" mediawiki.tar.gz.sig mediawiki.tar.gz; 	chown -R www-data:www-data extensions skins cache images; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:27:19 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:747e743ad987668cabdfda91d537ead35e0e1d14dc80bb097ddae0a1e060e746`  
		Last Modified: Tue, 24 Nov 2026 04:21:06 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7984e164f95866aa4da96ed0196af15fdd3ade278b33b49dbeac655a47d3f6f1`  
		Last Modified: Tue, 24 Nov 2026 04:21:09 GMT  
		Size: 117.8 MB (117839038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9a1d87fc009ec1041805502b778672fe9918858c3a3f481e6450c4fae4ce76b`  
		Last Modified: Tue, 24 Nov 2026 04:21:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22344644b4f444ab0388d69de082672046fb6345f70426367a0c0bf08755082d`  
		Last Modified: Tue, 24 Nov 2026 04:27:24 GMT  
		Size: 4.2 MB (4243953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3264d1260c98aa180d8fb333ad1bf6ba2fc972734d52b45b558b9c5999890c0f`  
		Last Modified: Tue, 24 Nov 2026 04:27:24 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5927cf3c0eb1a6564517d1c4420c3c5118d43f637e103b73d16697080d8abe`  
		Last Modified: Tue, 24 Nov 2026 04:27:24 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9859618750bcdf5797631ce37c1010aa79adf1cdec9883f4edb0800ac74036b5`  
		Last Modified: Tue, 24 Nov 2026 04:27:24 GMT  
		Size: 12.8 MB (12849465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35411c83048021b648f3acb189e7e30f7cfa65d97aafb5caed5d44295cfb45b6`  
		Last Modified: Tue, 24 Nov 2026 04:27:25 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad359aaffe12d06a4ef1a83db4a3f5771d790d00f1166f89b2b0bfbdd435ac45`  
		Last Modified: Tue, 24 Nov 2026 04:27:25 GMT  
		Size: 11.8 MB (11765370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ec0a597d17b901a77162d5e926f2e165f5203dc3bd2d4e11407d155267b592`  
		Last Modified: Tue, 24 Nov 2026 04:27:25 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:528ad6dc63cfd9d89d594b2aea98be45fc94a17a574848c6fa46c4148be91b4f`  
		Last Modified: Tue, 24 Nov 2026 04:27:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b6aefba1d783a47298821ef81307fd895cc374482ed0af5b2338f9ecf3a46b`  
		Last Modified: Tue, 24 Nov 2026 04:27:26 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a360d2831d659ce732572fc0e94748b7722071c87faa1e375f1706eec47a81`  
		Last Modified: Tue, 24 Nov 2026 04:27:26 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14966b065438790da660c4735741a49e75bc0a7738ca1675e13999d6a3f2765d`  
		Last Modified: Thu, 26 Nov 2026 06:27:38 GMT  
		Size: 53.4 MB (53391873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8f6cbe718a30a7aa2e2e388a3cb6a4ec189aea127e8949037820ed7c72a241`  
		Last Modified: Thu, 26 Nov 2026 06:27:37 GMT  
		Size: 17.8 MB (17815971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e48340da9ffddec985d664394fb12e23b3039657d101b6b6ce2fc867c7f64a4`  
		Last Modified: Thu, 26 Nov 2026 06:27:36 GMT  
		Size: 577.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c68671ae1dee55e05fa1b2ac21ceb1800d41cd1c9a51abdc4695ceb0bd8cd7`  
		Last Modified: Thu, 26 Nov 2026 06:27:36 GMT  
		Size: 905.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5b63650e3b765856a5ee2b0e524031e9d900447b9229225a2719edcf164126`  
		Last Modified: Thu, 26 Nov 2026 06:27:37 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4fb4b8177da387ff1c47bdf8083f75679397e3cd8eff71abeaa0e6ce7be8bfa`  
		Last Modified: Thu, 26 Nov 2026 06:27:37 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83ca7d820f98218cd05bcddf4ee78615448c2d36cb19b4c081a3da1482182024`  
		Last Modified: Thu, 26 Nov 2026 06:27:41 GMT  
		Size: 99.6 MB (99560027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mediawiki:latest` - unknown; unknown

```console
$ docker pull mediawiki@sha256:d7b33fe180f1b4029965afd788f3c2e94ca6d729c17f546572400fa6ac32843f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 KB (49203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:529505281ca2303b1d6c1a17f059f12abc10dd58a6e068046565790e6e6e9399`

```dockerfile
```

-	Layers:
	-	`sha256:b4542bacdaa3667aa9873b7ba576dd72b7f75957a7c35c98a5df8bbb223d2091`  
		Last Modified: Thu, 26 Nov 2026 06:27:36 GMT  
		Size: 49.2 KB (49203 bytes)  
		MIME: application/vnd.in-toto+json

### `mediawiki:latest` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:9f56fa8940b3bc6efe045da94fceb6085c16408d2c70b7e4d703ea5c5dfdd8ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (317994134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f9b158c0fd0bd94e7c9ce40a2905407129b9c5b27bdbe01b1b04d97f8c35e7`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:19:36 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:20:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:20:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:20:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:20:01 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:20:01 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:20:01 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:23:57 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:23:57 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:23:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:23:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:23:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:23:57 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:23:57 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:23:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:23:57 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 04:24:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:24:10 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:27:08 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:08 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:27:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:27:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:27:08 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 04:27:08 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:08 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:27:08 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:27:08 GMT
CMD ["apache2-foreground"]
# Thu, 26 Nov 2026 06:26:09 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		librsvg2-bin 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:27:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 		libonig-dev 		liblua5.1-0-dev 	; 		docker-php-ext-install -j "$(nproc)" 		calendar 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install APCu-5.1.28; 	pecl install LuaSandbox-4.1.2; 	docker-php-ext-enable 		apcu 		luasandbox 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:27:26 GMT
RUN set -eux; 	a2enmod rewrite; 	{ 		echo "<Directory /var/www/html>"; 		echo "  RewriteEngine On"; 		echo "  RewriteCond %{REQUEST_FILENAME} !-f"; 		echo "  RewriteCond %{REQUEST_FILENAME} !-d"; 		echo "  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]"; 		echo "</Directory>"; 	} > "$APACHE_CONFDIR/conf-available/short-url.conf"; 	a2enconf short-url # buildkit
# Thu, 26 Nov 2026 06:27:26 GMT
RUN sed -i "s/<\/VirtualHost>/\tAllowEncodedSlashes NoDecode\n<\/VirtualHost>/" "$APACHE_CONFDIR/sites-available/000-default.conf" # buildkit
# Thu, 26 Nov 2026 06:27:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 26 Nov 2026 06:27:26 GMT
RUN set -eux; 	mkdir -p /var/www/data; 	chown -R www-data:www-data /var/www/data # buildkit
# Thu, 26 Nov 2026 06:27:52 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.46
# Thu, 26 Nov 2026 06:27:52 GMT
ENV MEDIAWIKI_VERSION=1.46.3
# Thu, 26 Nov 2026 06:27:52 GMT
RUN set -eux; 	fetchDeps=" 		gnupg 		dirmngr 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 		curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz; 	curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz.sig" -o mediawiki.tar.gz.sig; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 		D7D6767D135A514BEB86E9BA75682B08E8A3FEC4 		441276E9CCD15F44F6D97D18C119E1A64D70938E 		F7F780D82EBFB8A56556E7EE82403E59F9F8CD79 		1D98867E82982C8FE0ABC25F9B69B3109D3BB7B0 		E059C034E7A430583C252F4AA8F734246D73B586 		7759DE19A22260232F251342FC4D45E75D14112B 	; 	gpg --batch --verify mediawiki.tar.gz.sig mediawiki.tar.gz; 	tar -x --strip-components=1 -f mediawiki.tar.gz; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" mediawiki.tar.gz.sig mediawiki.tar.gz; 	chown -R www-data:www-data extensions skins cache images; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:27:52 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:765f338d97704434a841d90f36d23f143b3a4a68c4aaf42a31845a0d11d56b19`  
		Last Modified: Tue, 24 Nov 2026 04:23:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e592306bcae09d254722c4c34278ed279c6ddaaa95000fdf4b88fb360d0374d`  
		Last Modified: Tue, 24 Nov 2026 04:23:42 GMT  
		Size: 94.9 MB (94884509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5512d34161724c55018fcf3b753907884138ec39498ecd93361ae7f4c83cd73`  
		Last Modified: Tue, 24 Nov 2026 04:23:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71ac5877ec449ab8bf1b8e547c75b0cedec2ff4ccf032885adaf2be797072ac8`  
		Last Modified: Tue, 24 Nov 2026 04:27:18 GMT  
		Size: 4.1 MB (4099904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:131b38999e2b425a06a7a784f2e27e5456ce480a997024a03951dd65a029c30c`  
		Last Modified: Tue, 24 Nov 2026 04:27:18 GMT  
		Size: 426.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd0dde17754d5ffbf149d64f975bc4cafbaf8ba363c6ea0d417476990fa32fd`  
		Last Modified: Tue, 24 Nov 2026 04:27:18 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ac496a737ba82a0ce21c3877d048b18d93fa3e3fe418b737b7a19eaace8c80`  
		Last Modified: Tue, 24 Nov 2026 04:27:19 GMT  
		Size: 12.8 MB (12846641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81244fa084092bfbbd79d57d2f4ae5e3b7acdee5b279c0543f125cb286dabd41`  
		Last Modified: Tue, 24 Nov 2026 04:27:19 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e89ca215649dd0ba0f50c64aef4aa8c7ad684f18b4471974e7f354004300a9`  
		Last Modified: Tue, 24 Nov 2026 04:27:20 GMT  
		Size: 10.6 MB (10646508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78401cf29078809befca92c1871b1893f570cf2982b2110dab5167996571a5a`  
		Last Modified: Tue, 24 Nov 2026 04:27:20 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b59a6179650fe5577d5896c3a098265371e215acc224f5ac4f8ba1504cfef4`  
		Last Modified: Tue, 24 Nov 2026 04:27:20 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05eda8142defbc6867baf7a97766dc3a711d12f097a31df33c5790b16889f259`  
		Last Modified: Tue, 24 Nov 2026 04:27:21 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5d68a00cdec7c6a67da7c673cbe5b9195b34b7a1f6358469762007998cbdaf`  
		Last Modified: Tue, 24 Nov 2026 04:27:21 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea1f39749673979801c9b37896437bfb612b6f5a2d3290991ed04ff7d91d9c`  
		Last Modified: Thu, 26 Nov 2026 06:28:12 GMT  
		Size: 50.9 MB (50894836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e072ffedc227f343c1d8fcdee3dc7549ad5502d3c6d129efcc62ab707141d69`  
		Last Modified: Thu, 26 Nov 2026 06:28:11 GMT  
		Size: 17.1 MB (17051306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fccc728b6a1b1d5bda9a7e4839e84551839c0b3c6b9b0e24c50464be205f294`  
		Last Modified: Thu, 26 Nov 2026 06:28:10 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a56576bd15f429d2c0a722c3d022985e54c57873d68fc599b10ce26935aa5f4a`  
		Last Modified: Thu, 26 Nov 2026 06:28:10 GMT  
		Size: 905.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cd9c74fcb830d9c636b3eb1bd98fec27b64074d87da5716a0533ba8d44dcf35`  
		Last Modified: Thu, 26 Nov 2026 06:28:11 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc41448b5dd318ce4d4a0524d050bf3c66fcd1513afff1cbe03b0ebe83e558f`  
		Last Modified: Thu, 26 Nov 2026 06:28:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7485a6232286e1334b9d614cfd77c80d2cf78c4e241e182d09ca4d2f59e29c13`  
		Last Modified: Thu, 26 Nov 2026 06:28:15 GMT  
		Size: 99.6 MB (99554011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mediawiki:latest` - unknown; unknown

```console
$ docker pull mediawiki@sha256:523bb6ca1312c8992762f2fdf55528cc4185dd515178c0fe387bf11d4e80eda3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 KB (49352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4fb7fffbf8e3dffa85ab7e0cedf2eee464f07936ebec474a860a659a79796e`

```dockerfile
```

-	Layers:
	-	`sha256:7da40cab787085daaa13efc46541651b252977235047c88cc7fc7174b942b469`  
		Last Modified: Thu, 26 Nov 2026 06:28:10 GMT  
		Size: 49.4 KB (49352 bytes)  
		MIME: application/vnd.in-toto+json

### `mediawiki:latest` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:a8b6f3cfaca44c4068b48097494b92593658b39e0226fa5fb0e12bade58e09da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302634316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6af6c65d25f7a1f21682b75b8b6b26b31ba238bf0ffea4e04da387447dff318`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:30:08 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:30:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:30:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:30:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:30:26 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:30:26 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:30:26 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:35:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:35:59 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:35:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:35:59 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:35:59 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:35:59 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:35:59 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:35:59 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:35:59 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:35:59 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 04:43:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:43:21 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:45:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:45:58 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:45:58 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:45:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:45:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:45:58 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 04:45:58 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:45:58 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:45:58 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:45:58 GMT
CMD ["apache2-foreground"]
# Thu, 26 Nov 2026 06:26:14 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		librsvg2-bin 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:27:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 		libonig-dev 		liblua5.1-0-dev 	; 		docker-php-ext-install -j "$(nproc)" 		calendar 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install APCu-5.1.28; 	pecl install LuaSandbox-4.1.2; 	docker-php-ext-enable 		apcu 		luasandbox 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:27:23 GMT
RUN set -eux; 	a2enmod rewrite; 	{ 		echo "<Directory /var/www/html>"; 		echo "  RewriteEngine On"; 		echo "  RewriteCond %{REQUEST_FILENAME} !-f"; 		echo "  RewriteCond %{REQUEST_FILENAME} !-d"; 		echo "  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]"; 		echo "</Directory>"; 	} > "$APACHE_CONFDIR/conf-available/short-url.conf"; 	a2enconf short-url # buildkit
# Thu, 26 Nov 2026 06:27:24 GMT
RUN sed -i "s/<\/VirtualHost>/\tAllowEncodedSlashes NoDecode\n<\/VirtualHost>/" "$APACHE_CONFDIR/sites-available/000-default.conf" # buildkit
# Thu, 26 Nov 2026 06:27:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 26 Nov 2026 06:27:24 GMT
RUN set -eux; 	mkdir -p /var/www/data; 	chown -R www-data:www-data /var/www/data # buildkit
# Thu, 26 Nov 2026 06:27:46 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.46
# Thu, 26 Nov 2026 06:27:46 GMT
ENV MEDIAWIKI_VERSION=1.46.3
# Thu, 26 Nov 2026 06:27:46 GMT
RUN set -eux; 	fetchDeps=" 		gnupg 		dirmngr 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 		curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz; 	curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz.sig" -o mediawiki.tar.gz.sig; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 		D7D6767D135A514BEB86E9BA75682B08E8A3FEC4 		441276E9CCD15F44F6D97D18C119E1A64D70938E 		F7F780D82EBFB8A56556E7EE82403E59F9F8CD79 		1D98867E82982C8FE0ABC25F9B69B3109D3BB7B0 		E059C034E7A430583C252F4AA8F734246D73B586 		7759DE19A22260232F251342FC4D45E75D14112B 	; 	gpg --batch --verify mediawiki.tar.gz.sig mediawiki.tar.gz; 	tar -x --strip-components=1 -f mediawiki.tar.gz; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" mediawiki.tar.gz.sig mediawiki.tar.gz; 	chown -R www-data:www-data extensions skins cache images; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:27:46 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:445b4c5aaeed9d202d99e1a00987310dd24af2104aee1174ef48c83e5725ae3e`  
		Last Modified: Tue, 24 Nov 2026 04:33:43 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918c823326cd310cea5e4245e040bccfc5eabf89fc6dc8d4b60e6eeba500e6bc`  
		Last Modified: Tue, 24 Nov 2026 04:33:46 GMT  
		Size: 86.3 MB (86257423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55fa52c76973b6c6044aa92a226297c4f0a565b1239a8542a31660358624ce4`  
		Last Modified: Tue, 24 Nov 2026 04:33:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9edd9115d13b8c40482200fa259308d152f742a8502c07bb428dc22180577a`  
		Last Modified: Tue, 24 Nov 2026 04:39:11 GMT  
		Size: 3.8 MB (3768154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8399d8c0e554c0cbbfa10351d151aa97c58b02538d6b28dd83651b42f5b8ec6`  
		Last Modified: Tue, 24 Nov 2026 04:39:10 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed4b2001950e4d45f072ead0c035e347a3a02334add4dbc00e20bc9374046cd`  
		Last Modified: Tue, 24 Nov 2026 04:39:10 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65a7ff7bbf4723d8214ba17ff7ebd9e1daac15cdaf4755376f063297ab65034`  
		Last Modified: Tue, 24 Nov 2026 04:46:09 GMT  
		Size: 12.8 MB (12846710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa26699b98325e2245a1b3da3dd12b842302bfce37aafb760cb17be761783eba`  
		Last Modified: Tue, 24 Nov 2026 04:46:08 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87399bc244bbc957a4389b67e94a305cdc9527475841b3ddf524377b58d242d2`  
		Last Modified: Tue, 24 Nov 2026 04:46:09 GMT  
		Size: 10.1 MB (10114072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ddf43315f2c2672a8d33e93b3e8d07e1ae0ca9efac415d983ee2bdb29b64d83`  
		Last Modified: Tue, 24 Nov 2026 04:46:08 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:840c6a5ba8c42465749d9e35f97c56ab9582e502c973b513507620548b93aad2`  
		Last Modified: Tue, 24 Nov 2026 04:46:09 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd77d573510e8996e66df135f2fbe49e7d596c5b60a6eb753778df688d03f10`  
		Last Modified: Tue, 24 Nov 2026 04:46:09 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a508d227871dc940a87b9d39c02570d8e905d98cd57bf3fa88ba330a8f80d13a`  
		Last Modified: Tue, 24 Nov 2026 04:46:10 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2020e479e2e2750cbb7b930fe1d50f996393d5fed04fded067841133203fd4a`  
		Last Modified: Thu, 26 Nov 2026 06:28:07 GMT  
		Size: 47.0 MB (47026935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d475871c4dc74ef3914a180107e96baa89e69c0ba43d862f0a8cf5ee94aafe0a`  
		Last Modified: Thu, 26 Nov 2026 06:28:06 GMT  
		Size: 16.8 MB (16795989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af81718b50f90a6afa34f81a3f95a7e2492522cc545b82bd9f532f2f2feee6e0`  
		Last Modified: Thu, 26 Nov 2026 06:28:05 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1cc5c2bb114a9c9cba697396f279db54a5f0f6c2b8082029a7780636c53d237`  
		Last Modified: Thu, 26 Nov 2026 06:28:05 GMT  
		Size: 905.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c2f416e3835c2f01ca3a0efd2d52f4a2e3fae856d1bdec6c0b29fe011e28873`  
		Last Modified: Thu, 26 Nov 2026 06:28:06 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196d6e299119ddd861006f167606620581d8e5914f2a8405c286c17dc72a188f`  
		Last Modified: Thu, 26 Nov 2026 06:28:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7931ec51a97f37dbac9e331dba2c92581b34ac6d4e3ba563120ac921bd36ef93`  
		Last Modified: Thu, 26 Nov 2026 06:28:09 GMT  
		Size: 99.6 MB (99554914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mediawiki:latest` - unknown; unknown

```console
$ docker pull mediawiki@sha256:f95c28bc7abea75d0118cc92bd0590c0e3c3935f88852b1dbd7c0ca2c29bf32c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 KB (49353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7684d8cc546953219b92c8d089654fd4ccc5555c165f7d878249f6a25b621a92`

```dockerfile
```

-	Layers:
	-	`sha256:c951d656be1b0bd3773a10e6f120ef9d05d0a51ef8124892b3fe97fb7f3df650`  
		Last Modified: Thu, 26 Nov 2026 06:28:05 GMT  
		Size: 49.4 KB (49353 bytes)  
		MIME: application/vnd.in-toto+json

### `mediawiki:latest` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:8bbbcfe5cd1707f0a3573eabc20e101c9cc2dbefef718b92ed19c3b2eb601636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338866600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9e340d4021bb616e17fe218e4c4d073d59f92997d85b8cc3e3503e894a53cd2`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:18:27 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:18:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:18:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:18:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:18:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:18:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:18:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:18:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:18:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:18:52 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:18:52 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 04:26:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:26:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:30:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:30:36 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:30:36 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:30:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:30:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:30:36 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 04:30:36 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:30:36 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:30:36 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:30:36 GMT
CMD ["apache2-foreground"]
# Thu, 26 Nov 2026 06:25:46 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		librsvg2-bin 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:27:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 		libonig-dev 		liblua5.1-0-dev 	; 		docker-php-ext-install -j "$(nproc)" 		calendar 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install APCu-5.1.28; 	pecl install LuaSandbox-4.1.2; 	docker-php-ext-enable 		apcu 		luasandbox 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:27:35 GMT
RUN set -eux; 	a2enmod rewrite; 	{ 		echo "<Directory /var/www/html>"; 		echo "  RewriteEngine On"; 		echo "  RewriteCond %{REQUEST_FILENAME} !-f"; 		echo "  RewriteCond %{REQUEST_FILENAME} !-d"; 		echo "  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]"; 		echo "</Directory>"; 	} > "$APACHE_CONFDIR/conf-available/short-url.conf"; 	a2enconf short-url # buildkit
# Thu, 26 Nov 2026 06:27:35 GMT
RUN sed -i "s/<\/VirtualHost>/\tAllowEncodedSlashes NoDecode\n<\/VirtualHost>/" "$APACHE_CONFDIR/sites-available/000-default.conf" # buildkit
# Thu, 26 Nov 2026 06:27:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 26 Nov 2026 06:27:35 GMT
RUN set -eux; 	mkdir -p /var/www/data; 	chown -R www-data:www-data /var/www/data # buildkit
# Thu, 26 Nov 2026 06:27:55 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.46
# Thu, 26 Nov 2026 06:27:55 GMT
ENV MEDIAWIKI_VERSION=1.46.3
# Thu, 26 Nov 2026 06:27:55 GMT
RUN set -eux; 	fetchDeps=" 		gnupg 		dirmngr 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 		curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz; 	curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz.sig" -o mediawiki.tar.gz.sig; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 		D7D6767D135A514BEB86E9BA75682B08E8A3FEC4 		441276E9CCD15F44F6D97D18C119E1A64D70938E 		F7F780D82EBFB8A56556E7EE82403E59F9F8CD79 		1D98867E82982C8FE0ABC25F9B69B3109D3BB7B0 		E059C034E7A430583C252F4AA8F734246D73B586 		7759DE19A22260232F251342FC4D45E75D14112B 	; 	gpg --batch --verify mediawiki.tar.gz.sig mediawiki.tar.gz; 	tar -x --strip-components=1 -f mediawiki.tar.gz; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" mediawiki.tar.gz.sig mediawiki.tar.gz; 	chown -R www-data:www-data extensions skins cache images; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:27:55 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33bb3bb99026cc1e1c0933406e42901b986bf190cbacfaeed05d210ac297d60`  
		Last Modified: Tue, 24 Nov 2026 04:22:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f5607917deb524ebd854c6502d4e5f6c31302161f238ec21942bcd73cfabe97`  
		Last Modified: Tue, 24 Nov 2026 04:22:36 GMT  
		Size: 110.2 MB (110180359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dec7be45c9709de51cc476c59078eb7ff1072a15149877c57f532ba9a7abd5`  
		Last Modified: Tue, 24 Nov 2026 04:22:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0f38ae2eed98fa15f407f055a0f295560fc15aed5a8f776302794188c7cbf0`  
		Last Modified: Tue, 24 Nov 2026 04:22:33 GMT  
		Size: 4.3 MB (4321172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfacb3260ef5a89b6f71296206652fbb83a87e4e836c1f413155bd138fef76e`  
		Last Modified: Tue, 24 Nov 2026 04:22:33 GMT  
		Size: 426.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c8a6b9365916afe135be56f7ce3c913802a6ce4c54e1ac48b058a185bacb5f`  
		Last Modified: Tue, 24 Nov 2026 04:22:34 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876e40cc372ed4311eb92d130ccdbc644ad550550e5af3bdb493b65cd72fa90c`  
		Last Modified: Tue, 24 Nov 2026 04:30:48 GMT  
		Size: 12.8 MB (12849068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f951a1f831a51c40f45343d2f019ce3297d26df0234e791b986447e8b3812c7`  
		Last Modified: Tue, 24 Nov 2026 04:30:47 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc2662c2fd6cab55332c4ff57a8f7ff5afc2442d58e290d01aa1481133714d8`  
		Last Modified: Tue, 24 Nov 2026 04:30:48 GMT  
		Size: 11.8 MB (11786839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdebc8199818b6d4fdae0d515351d3e6beea40f1479b52e8b53da04971635981`  
		Last Modified: Tue, 24 Nov 2026 04:30:47 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f6ca007a1671143dc67b564ba655516b85102f2175fd198ed32bd1ca48ab666`  
		Last Modified: Tue, 24 Nov 2026 04:30:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4677d2df2010072f9adc3a77e78d003562f81af17eb535e45b285192ee44bb5d`  
		Last Modified: Tue, 24 Nov 2026 04:30:48 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95810a58bb1f4d09caf9671263922551aae24d44efffe0e6d3cfb9a9c09e2cdd`  
		Last Modified: Tue, 24 Nov 2026 04:30:49 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccde1c32623b8b91c22f221ce48992c72eca4a6ee44baa90c88e172ff03080d2`  
		Last Modified: Thu, 26 Nov 2026 06:28:16 GMT  
		Size: 51.9 MB (51937472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f91227b8261c1804d4b7caa741de54cc7d273ec268fa48524141cd5643527ad`  
		Last Modified: Thu, 26 Nov 2026 06:28:15 GMT  
		Size: 18.0 MB (18025752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d37ec26cda5a084c14757a08f7c7312eba411cf29a98066ade209fd429767f8`  
		Last Modified: Thu, 26 Nov 2026 06:28:14 GMT  
		Size: 576.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b298584223f0b00d7aaa3079ff96c54ecc3dd59246ff8ad475b13185be399dc2`  
		Last Modified: Thu, 26 Nov 2026 06:28:14 GMT  
		Size: 903.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac2d26852bb532a2692cc117b1d8518a47087d432f1a0cc29f6e4a7339eb9ff2`  
		Last Modified: Thu, 26 Nov 2026 06:28:15 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c099c20fc259753796610d9cf47987e7263807f3ae958deeb1f65ac042c365f`  
		Last Modified: Thu, 26 Nov 2026 06:28:15 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4e0efc0b4514282e8f28bae93fb66b4f1ff13f83fdbb557ee8ddf7e2a312c6`  
		Last Modified: Thu, 26 Nov 2026 06:28:18 GMT  
		Size: 99.6 MB (99560266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mediawiki:latest` - unknown; unknown

```console
$ docker pull mediawiki@sha256:699617d990a493716c95d4ad318b5bbe28d52a4c0cda01a59e5a75b65510156f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 KB (49397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156d4e090afc3a316dd1417e7db737fcdbb3a17c8d5e6afdb97916419b41dfbb`

```dockerfile
```

-	Layers:
	-	`sha256:ef59b90cb28d9e431df7afed9a6d3e4098e9fd1ec881416cafe6b92edb2e716d`  
		Last Modified: Thu, 26 Nov 2026 06:28:14 GMT  
		Size: 49.4 KB (49397 bytes)  
		MIME: application/vnd.in-toto+json

### `mediawiki:latest` - linux; 386

```console
$ docker pull mediawiki@sha256:ecad457984606a9dc682df8b0d54677638249ea8a462d02de10e85db079daa8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350365997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e25f8bf030f0916c060990483e61cd53315413b8f74fdbc4b021dc21dd062022`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:16:26 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:16:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:16:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:16:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:16:44 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:16:44 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:16:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:24:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:24:37 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:24:37 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:24:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:24:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:24:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:24:37 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:24:37 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:24:37 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:24:37 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 04:24:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:24:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:27:40 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:40 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:27:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:27:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:27:40 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 04:27:40 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:40 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:27:40 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:27:40 GMT
CMD ["apache2-foreground"]
# Thu, 26 Nov 2026 06:26:02 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		librsvg2-bin 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:27:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 		libonig-dev 		liblua5.1-0-dev 	; 		docker-php-ext-install -j "$(nproc)" 		calendar 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install APCu-5.1.28; 	pecl install LuaSandbox-4.1.2; 	docker-php-ext-enable 		apcu 		luasandbox 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:27:13 GMT
RUN set -eux; 	a2enmod rewrite; 	{ 		echo "<Directory /var/www/html>"; 		echo "  RewriteEngine On"; 		echo "  RewriteCond %{REQUEST_FILENAME} !-f"; 		echo "  RewriteCond %{REQUEST_FILENAME} !-d"; 		echo "  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]"; 		echo "</Directory>"; 	} > "$APACHE_CONFDIR/conf-available/short-url.conf"; 	a2enconf short-url # buildkit
# Thu, 26 Nov 2026 06:27:13 GMT
RUN sed -i "s/<\/VirtualHost>/\tAllowEncodedSlashes NoDecode\n<\/VirtualHost>/" "$APACHE_CONFDIR/sites-available/000-default.conf" # buildkit
# Thu, 26 Nov 2026 06:27:13 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 26 Nov 2026 06:27:13 GMT
RUN set -eux; 	mkdir -p /var/www/data; 	chown -R www-data:www-data /var/www/data # buildkit
# Thu, 26 Nov 2026 06:27:35 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.46
# Thu, 26 Nov 2026 06:27:35 GMT
ENV MEDIAWIKI_VERSION=1.46.3
# Thu, 26 Nov 2026 06:27:35 GMT
RUN set -eux; 	fetchDeps=" 		gnupg 		dirmngr 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 		curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz; 	curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz.sig" -o mediawiki.tar.gz.sig; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 		D7D6767D135A514BEB86E9BA75682B08E8A3FEC4 		441276E9CCD15F44F6D97D18C119E1A64D70938E 		F7F780D82EBFB8A56556E7EE82403E59F9F8CD79 		1D98867E82982C8FE0ABC25F9B69B3109D3BB7B0 		E059C034E7A430583C252F4AA8F734246D73B586 		7759DE19A22260232F251342FC4D45E75D14112B 	; 	gpg --batch --verify mediawiki.tar.gz.sig mediawiki.tar.gz; 	tar -x --strip-components=1 -f mediawiki.tar.gz; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" mediawiki.tar.gz.sig mediawiki.tar.gz; 	chown -R www-data:www-data extensions skins cache images; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:27:35 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b772583969f8d177751b4c2a61e4c8f2f88435b552dd66dc6ce6ee3905c63435`  
		Last Modified: Tue, 24 Nov 2026 04:20:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35cd4f67a76fd13bfa8485186e8450d1dc7403d46c69c269a064a08f940d6c83`  
		Last Modified: Tue, 24 Nov 2026 04:20:29 GMT  
		Size: 116.1 MB (116139628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ca784223732308715dcd11d818211ec4abea55688cf1e386b8a2f8a1934b9ef`  
		Last Modified: Tue, 24 Nov 2026 04:20:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f93a33581535ca9d3f75a1511835c8d0528e07a999a118ad93bf5d073223b7`  
		Last Modified: Tue, 24 Nov 2026 04:27:51 GMT  
		Size: 4.5 MB (4477287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48232924fa2b406149b9c69619afa366d7618e4e1ad233e7f2b87173459040eb`  
		Last Modified: Tue, 24 Nov 2026 04:27:50 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c23ee6c538be6a796617ff17e20360a923985f63186934a51c2c7fc216d0156`  
		Last Modified: Tue, 24 Nov 2026 04:27:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d9d3f293731238233290259dbd8ec7f000116ebd73872903476c37b77d586a3`  
		Last Modified: Tue, 24 Nov 2026 04:27:51 GMT  
		Size: 12.8 MB (12848244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71498012e5d85c3d2b9b2ba87efb54d6e793683cd616f9901463b2f4fb8a64b6`  
		Last Modified: Tue, 24 Nov 2026 04:27:51 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc021fae4b70f2c97c0ce0357703fcac2fbbbaf8939166f02b705f5dd489e30`  
		Last Modified: Tue, 24 Nov 2026 04:27:52 GMT  
		Size: 12.1 MB (12051596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18056a76fbe6e66e531eeefb5ef5f2aae66a835f0d120e30f8074d5a103e0bab`  
		Last Modified: Tue, 24 Nov 2026 04:27:52 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627ee6e86007f139a596c3de08e36cdb5136313372d065a27491e764c0e6c3fa`  
		Last Modified: Tue, 24 Nov 2026 04:27:52 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:501972212ae6a740ee58e41744da59b8885120168b865dcfe760dc364eacb89e`  
		Last Modified: Tue, 24 Nov 2026 04:27:53 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b8a1f446b72b6a9c8ec0db28a1bd08103da5b28689c857cc06c3b420e03fa9`  
		Last Modified: Tue, 24 Nov 2026 04:27:53 GMT  
		Size: 888.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9397a685f3dac06690f24e962ca3aacaa49a397e7d25f3ba5d244326a3d4193d`  
		Last Modified: Thu, 26 Nov 2026 06:27:55 GMT  
		Size: 55.9 MB (55898677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ce6e02e0e1b6a80083449daac7c37f9f770408b6c6f4a507652292c1e4b382`  
		Last Modified: Thu, 26 Nov 2026 06:27:54 GMT  
		Size: 18.0 MB (18026223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b1b5a4c02aa6dfea8e538149135a9de7da1600a1b0a1e4c624c06c500883ccf`  
		Last Modified: Thu, 26 Nov 2026 06:27:53 GMT  
		Size: 576.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6c4057500b68e1bb2e4234634845900eee7be1c06ebea76c8d433ed2bad5ca`  
		Last Modified: Thu, 26 Nov 2026 06:27:53 GMT  
		Size: 904.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52dff115ea1176244484fa3f814dc0ad74301549a8e2b6871f7397cb169b0dc2`  
		Last Modified: Thu, 26 Nov 2026 06:27:55 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d09cc1802347a2bd6af3f333bfbf7064f928319e37940eed62fbc9ce78e960a`  
		Last Modified: Thu, 26 Nov 2026 06:27:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6834869948950ff44ed1b72336d3a292e12e088e61efc3e80adab91521b4046`  
		Last Modified: Thu, 26 Nov 2026 06:27:58 GMT  
		Size: 99.6 MB (99558776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mediawiki:latest` - unknown; unknown

```console
$ docker pull mediawiki@sha256:4e6955d80fbdc3cc840230aa06e5dc7432fbb41af7919f6c1e426653c55ae35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 KB (49159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74a2a96e58a3566e58efb304f84ecd5bff30965fab828753c62660306b11f1d`

```dockerfile
```

-	Layers:
	-	`sha256:11bd0bc431bd9554c9b7093878b36f3a17472b3ee7626a17a068c94a6f8fca35`  
		Last Modified: Thu, 26 Nov 2026 06:27:53 GMT  
		Size: 49.2 KB (49159 bytes)  
		MIME: application/vnd.in-toto+json

### `mediawiki:latest` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:508fb9f99d78a5816dbcd5f20962eabb237ff19c469e5a4b5f1e78e69b172196
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.4 MB (349428902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad08462a22e5e9aaec2f13598ba9be3261fa29f76beff916aaea6c6c8e2372d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:45:01 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:45:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:45:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:45:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:45:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:45:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:45:38 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:47:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:47:41 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:47:42 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:47:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:47:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:47:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:47:42 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:47:42 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:47:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:47:42 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 05:44:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 05:44:52 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:49:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 05:49:43 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:49:43 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 05:49:43 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 05:49:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 05:49:43 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 05:49:43 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:49:44 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 05:49:44 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 05:49:44 GMT
CMD ["apache2-foreground"]
# Thu, 26 Nov 2026 06:25:29 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		librsvg2-bin 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:27:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 		libonig-dev 		liblua5.1-0-dev 	; 		docker-php-ext-install -j "$(nproc)" 		calendar 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install APCu-5.1.28; 	pecl install LuaSandbox-4.1.2; 	docker-php-ext-enable 		apcu 		luasandbox 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:27:22 GMT
RUN set -eux; 	a2enmod rewrite; 	{ 		echo "<Directory /var/www/html>"; 		echo "  RewriteEngine On"; 		echo "  RewriteCond %{REQUEST_FILENAME} !-f"; 		echo "  RewriteCond %{REQUEST_FILENAME} !-d"; 		echo "  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]"; 		echo "</Directory>"; 	} > "$APACHE_CONFDIR/conf-available/short-url.conf"; 	a2enconf short-url # buildkit
# Thu, 26 Nov 2026 06:27:23 GMT
RUN sed -i "s/<\/VirtualHost>/\tAllowEncodedSlashes NoDecode\n<\/VirtualHost>/" "$APACHE_CONFDIR/sites-available/000-default.conf" # buildkit
# Thu, 26 Nov 2026 06:27:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 26 Nov 2026 06:27:24 GMT
RUN set -eux; 	mkdir -p /var/www/data; 	chown -R www-data:www-data /var/www/data # buildkit
# Thu, 26 Nov 2026 06:28:06 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.46
# Thu, 26 Nov 2026 06:28:06 GMT
ENV MEDIAWIKI_VERSION=1.46.3
# Thu, 26 Nov 2026 06:28:06 GMT
RUN set -eux; 	fetchDeps=" 		gnupg 		dirmngr 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 		curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz; 	curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz.sig" -o mediawiki.tar.gz.sig; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 		D7D6767D135A514BEB86E9BA75682B08E8A3FEC4 		441276E9CCD15F44F6D97D18C119E1A64D70938E 		F7F780D82EBFB8A56556E7EE82403E59F9F8CD79 		1D98867E82982C8FE0ABC25F9B69B3109D3BB7B0 		E059C034E7A430583C252F4AA8F734246D73B586 		7759DE19A22260232F251342FC4D45E75D14112B 	; 	gpg --batch --verify mediawiki.tar.gz.sig mediawiki.tar.gz; 	tar -x --strip-components=1 -f mediawiki.tar.gz; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" mediawiki.tar.gz.sig mediawiki.tar.gz; 	chown -R www-data:www-data extensions skins cache images; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 06:28:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8f5ce7d31213d5f9c5607f76270fc6ef86556267bebb4755a23a5aebf877e8`  
		Last Modified: Tue, 24 Nov 2026 04:50:43 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e987991216317ea818c73d42c843dda577c5014fe08681bb0113a9eea7c58a`  
		Last Modified: Tue, 24 Nov 2026 04:50:47 GMT  
		Size: 109.6 MB (109613218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1fff38c69adcef57aee572a5bd36021c5f41099326c1e2c1543cf3a9ec95da`  
		Last Modified: Tue, 24 Nov 2026 04:50:43 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f74ef4bae84eeb5690491cd4449f4332318458484fb42ace5abd08913f8ac10`  
		Last Modified: Tue, 24 Nov 2026 04:52:33 GMT  
		Size: 4.9 MB (4899963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb74f75471956280e94b31f8a45646cfad9e898826a524908fb50ce63e6f23e9`  
		Last Modified: Tue, 24 Nov 2026 04:52:33 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73075a6b63cc02cdc50c4b6feac2e70134ebab6080a2d801474cb3d96cef15c8`  
		Last Modified: Tue, 24 Nov 2026 04:52:33 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aacdf7a7f7c059cb7c06c8d33c222ad33a6fa56fd6ed55e0e0de3c08f07b807`  
		Last Modified: Tue, 24 Nov 2026 05:50:07 GMT  
		Size: 12.8 MB (12848328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28d8be4436b31e94b48b59e803f9664c21286cf8720e0ff64620ffac2d98ba4`  
		Last Modified: Tue, 24 Nov 2026 05:50:07 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a84f221d71ec16145705b7e3dd4cd39013ad36a927179528e85a1d75653c97cd`  
		Last Modified: Tue, 24 Nov 2026 05:50:07 GMT  
		Size: 12.2 MB (12178669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3b7cb52886c3422e26028a1ddd27706f5d2f7ed0c94a9e7ebf10972d98c4e4`  
		Last Modified: Tue, 24 Nov 2026 05:50:07 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b49daf39d67b2fa6157c304eb4b30625d6f100e2d1498f529e8eb3eec27a3dc7`  
		Last Modified: Tue, 24 Nov 2026 05:50:08 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d29465c315932086eaf10dab8f4d9d85cfe7fd302307bdc13829b697794a69`  
		Last Modified: Tue, 24 Nov 2026 05:50:08 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2e569da99776dd57dc0466b0f7b4a79e8441c06d1970402209ab7d377821d3`  
		Last Modified: Tue, 24 Nov 2026 05:50:08 GMT  
		Size: 886.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83837a774a57f8665cf8bc35bbca4c87d9db858d62b2558ce0fc64359e3db996`  
		Last Modified: Thu, 26 Nov 2026 06:28:47 GMT  
		Size: 58.7 MB (58740668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f594af616b28f6ef0e7c2fc010facbef38d19629b700cfe724bdd4cb99c84b9`  
		Last Modified: Thu, 26 Nov 2026 06:28:45 GMT  
		Size: 17.9 MB (17927449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c030aca276fba2c24eaeb7a5fb41d0e7dab416766686deb03c3a625d21d52c6a`  
		Last Modified: Thu, 26 Nov 2026 06:28:44 GMT  
		Size: 579.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956f60e1d2f97ae19e277cff78c8ac7815c1dfaa0e6e3bbdd5819b2982192e7a`  
		Last Modified: Thu, 26 Nov 2026 06:28:45 GMT  
		Size: 903.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3c92119582cbf9ecee3043ff061647951192961fe8179836abb8803cec1954`  
		Last Modified: Thu, 26 Nov 2026 06:28:46 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1511fa3483e419b8eccdd1b471b0008ade832b559fce118ee844b0e2a558ecb7`  
		Last Modified: Thu, 26 Nov 2026 06:28:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e9a65cc8ff08238d47c23e4a65885df88114c4231a5b585b94761b160e1d17`  
		Last Modified: Thu, 26 Nov 2026 06:28:49 GMT  
		Size: 99.6 MB (99560316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mediawiki:latest` - unknown; unknown

```console
$ docker pull mediawiki@sha256:f7d17eb2115fac3623a5c4aa0e429c90d0d08a4c97bb099f2d217d576f7ee0c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 KB (49259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:682c81c71a1c8a32bc585c05a1f8c1251e56868bcf1ce58e5436d71ee07ef26f`

```dockerfile
```

-	Layers:
	-	`sha256:85403c8d99cebe0859d49875897841d319ae7d89e3fa6a0e2e343cdab2edc9ab`  
		Last Modified: Thu, 26 Nov 2026 06:28:44 GMT  
		Size: 49.3 KB (49259 bytes)  
		MIME: application/vnd.in-toto+json
