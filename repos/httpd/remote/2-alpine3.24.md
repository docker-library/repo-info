## `httpd:2-alpine3.24`

```console
$ docker pull httpd@sha256:610eddacdacf681838190f5e2fda06dba783384c71610b247a765e8f8faadfc6
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

### `httpd:2-alpine3.24` - linux; amd64

```console
$ docker pull httpd@sha256:ab148432aee464788f3b2fb739a3658a3060732606ee86272becefb63a8d934a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20786031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:129f066f088ae5e70350ac057bd84786ddcb85101fd55193714520338a73985a`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 21:39:43 GMT
RUN set -x 	&& adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 10 Nov 2026 21:39:43 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 10 Nov 2026 21:39:43 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:39:43 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX" # buildkit
# Tue, 10 Nov 2026 21:39:43 GMT
WORKDIR /usr/local/apache2
# Tue, 10 Nov 2026 21:39:44 GMT
RUN set -eux; 	apk add --no-cache 		apr 		apr-util 		apr-util-ldap 		ca-certificates 		perl 	; # buildkit
# Tue, 10 Nov 2026 21:39:44 GMT
ENV HTTPD_VERSION=2.4.70
# Tue, 10 Nov 2026 21:39:44 GMT
ENV HTTPD_SHA256=1eefd7dc95836c5872894ce8e6a37f773d5a6764f0766869d39b8bcf0b1bafc3
# Tue, 10 Nov 2026 21:39:44 GMT
ENV HTTPD_PATCHES=
# Tue, 10 Nov 2026 21:40:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		apr-dev 		apr-util-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		patch 		curl-dev 		jansson-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 		brotli-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			'https://www.apache.org/dyn/closer.cgi?action=download&filename=' 			https://downloads.apache.org/ 			https://www-us.apache.org/dist/ 			https://www.apache.org/dist/ 			https://archive.apache.org/dist/ 		; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		DE29FB3971E71543FD2DC049508EAEC5302DA568 		13155B0E9E634F42BF6C163FDDBA64BA2C312D2F 		8B39757B1D8A994DF2433ED58B3A601F08C975E5 		31EE1A81B8D066548156D37B7D6DBFD1F08E012A 		A10208FEC3152DD7C0C9B59B361522D782AB7BD1 		3DE024AFDA7A4B15CB6C14410F81AA8AB0D5F771 		EB138C6AF0FC691001B16D93344A844D751D7F27 		CBA5A7C21EC143314C41393E5B968010E04F9A89 		3C016F2B764621BB549C66B516A96495E2226795 		937FB3994A242BA9BF49E93021454AF0CC8B0F7E 		EAD1359A4C0F2D37472AAF28F55DF0293A4E7AC9 		4C1EADADB4EF5007579C919C6635B6C0DE885DD3 		01E475360FCCF1D0F24B9D145D414AE1E005C9CB 		92CCEF0AA7DD46AC3A0F498BCA6939748103A37E 		D395C7573A68B9796D38C258153FA0CD75A67692 		FA39B617B61493FD283503E7EED1EA392261D073 		984FB3350C1D5C7A3282255BB31B213D208F5064 		FE7A49DAA875E890B4167F76CCB2EB46E76CF6D0 		39F6691A0ECF0C50E8BB849CF78875F642721F00 		29A2BA848177B73878277FA475CAA2A3F39B3750 		120A8667241AEDD4A78B46104C042818311A3DE5 		453510BDA6C5855624E009236D0BC73A40581837 		0DE5C55C6BF3B2352DABB89E13249B4FEC88A0BF 		7CDBED100806552182F98844E8E7E00B4DAA1988 		A8BA9617EF3BCCAC3B29B869EDB105896F9522D8 		3E6AC004854F3A7F03566B592FF06894E55B0D0E 		5B5181C2C0AB13E59DA3F7A3EC582EB639FF092C 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		65B2D44FE74BD5E3DE3AC3F082781DE46D5954FA 		8935926745E1CE7E3ED748F6EC99EE267EB5F61A 		E3480043595621FE56105F112AB12A7ADC55C003 		93525CFCF6FDFFB3FD9700DD5A4B10AE43B56A27 		C55AB7B9139EB2263CD1AABC19B033D1760C227B 		26F51EF9A82F4ACB43F1903ED377C9E7D1944C66 	; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*User)\s+daemon\s*$!\1 www-data!g' 		-e 's!^(\s*Group)\s+daemon\s*$!\1 www-data!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 	grep -E '^\s*User www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 	grep -E '^\s*Group www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 		deps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .httpd-so-deps $deps; 	apk del --no-network .build-deps; 		httpd -v # buildkit
# Tue, 10 Nov 2026 21:40:41 GMT
STOPSIGNAL SIGWINCH
# Tue, 10 Nov 2026 21:40:41 GMT
COPY httpd-foreground /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:40:41 GMT
EXPOSE map[80/tcp:{}]
# Tue, 10 Nov 2026 21:40:41 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8590807ad028c4ebdc739a9df04111c559974f1015ebaf644bca9b65145afcc6`  
		Last Modified: Tue, 10 Nov 2026 21:40:47 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d943e1ccc06af063c30fd43f3dc7099d530196fca20a8a6a61ccc3b594328c8`  
		Last Modified: Tue, 10 Nov 2026 21:40:47 GMT  
		Size: 145.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8589b3d00f552c6f4165575732f3d5ab3b0b975a6f74cf53ecb1bd87f64a205d`  
		Last Modified: Tue, 10 Nov 2026 21:40:48 GMT  
		Size: 11.0 MB (11027811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9c4c98d974fa53621bd0122bc1f46f50fad94986b36705bc06189d50b2ac2e`  
		Last Modified: Tue, 10 Nov 2026 21:40:47 GMT  
		Size: 5.9 MB (5903155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5f5f45757f1a26d7b9f68333c0040c0add1e4b94ed7262882c0a7a40b716aa0`  
		Last Modified: Tue, 10 Nov 2026 21:40:48 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `httpd:2-alpine3.24` - unknown; unknown

```console
$ docker pull httpd@sha256:3992ba3144e455d5a45e05d6a83a8c5c4b585f8b77830dc40e1e4ca23f930465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1222186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1306930a403828603bb6831a5036aec5c71d9c4bc2af9b81899027dbc6b0ada5`

```dockerfile
```

-	Layers:
	-	`sha256:6d0da4e624d4e9d0be3f3e930291265880a4297cae0cd4f6af3b310b1968bde6`  
		Last Modified: Tue, 10 Nov 2026 21:40:47 GMT  
		Size: 1.2 MB (1183980 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb3f118b6ef5ec6c50db69ee1d482a2f2f6ab75be631af121f56355c938107af`  
		Last Modified: Tue, 10 Nov 2026 21:40:47 GMT  
		Size: 38.2 KB (38206 bytes)  
		MIME: application/vnd.in-toto+json

### `httpd:2-alpine3.24` - linux; arm variant v6

```console
$ docker pull httpd@sha256:d9b8aee21d39214945dbe8655f94b88479db64bf69ed7b49ffe7ea19da833343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.6 MB (19556113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1bf54815155ca2f3297880af689b1fbbece12c7145027cdbd374128cbd66472`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 21:47:26 GMT
RUN set -x 	&& adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 10 Nov 2026 21:47:26 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 10 Nov 2026 21:47:26 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:47:26 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX" # buildkit
# Tue, 10 Nov 2026 21:47:26 GMT
WORKDIR /usr/local/apache2
# Tue, 10 Nov 2026 21:47:27 GMT
RUN set -eux; 	apk add --no-cache 		apr 		apr-util 		apr-util-ldap 		ca-certificates 		perl 	; # buildkit
# Tue, 10 Nov 2026 21:47:27 GMT
ENV HTTPD_VERSION=2.4.70
# Tue, 10 Nov 2026 21:47:27 GMT
ENV HTTPD_SHA256=1eefd7dc95836c5872894ce8e6a37f773d5a6764f0766869d39b8bcf0b1bafc3
# Tue, 10 Nov 2026 21:47:27 GMT
ENV HTTPD_PATCHES=
# Tue, 10 Nov 2026 21:48:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		apr-dev 		apr-util-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		patch 		curl-dev 		jansson-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 		brotli-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			'https://www.apache.org/dyn/closer.cgi?action=download&filename=' 			https://downloads.apache.org/ 			https://www-us.apache.org/dist/ 			https://www.apache.org/dist/ 			https://archive.apache.org/dist/ 		; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		DE29FB3971E71543FD2DC049508EAEC5302DA568 		13155B0E9E634F42BF6C163FDDBA64BA2C312D2F 		8B39757B1D8A994DF2433ED58B3A601F08C975E5 		31EE1A81B8D066548156D37B7D6DBFD1F08E012A 		A10208FEC3152DD7C0C9B59B361522D782AB7BD1 		3DE024AFDA7A4B15CB6C14410F81AA8AB0D5F771 		EB138C6AF0FC691001B16D93344A844D751D7F27 		CBA5A7C21EC143314C41393E5B968010E04F9A89 		3C016F2B764621BB549C66B516A96495E2226795 		937FB3994A242BA9BF49E93021454AF0CC8B0F7E 		EAD1359A4C0F2D37472AAF28F55DF0293A4E7AC9 		4C1EADADB4EF5007579C919C6635B6C0DE885DD3 		01E475360FCCF1D0F24B9D145D414AE1E005C9CB 		92CCEF0AA7DD46AC3A0F498BCA6939748103A37E 		D395C7573A68B9796D38C258153FA0CD75A67692 		FA39B617B61493FD283503E7EED1EA392261D073 		984FB3350C1D5C7A3282255BB31B213D208F5064 		FE7A49DAA875E890B4167F76CCB2EB46E76CF6D0 		39F6691A0ECF0C50E8BB849CF78875F642721F00 		29A2BA848177B73878277FA475CAA2A3F39B3750 		120A8667241AEDD4A78B46104C042818311A3DE5 		453510BDA6C5855624E009236D0BC73A40581837 		0DE5C55C6BF3B2352DABB89E13249B4FEC88A0BF 		7CDBED100806552182F98844E8E7E00B4DAA1988 		A8BA9617EF3BCCAC3B29B869EDB105896F9522D8 		3E6AC004854F3A7F03566B592FF06894E55B0D0E 		5B5181C2C0AB13E59DA3F7A3EC582EB639FF092C 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		65B2D44FE74BD5E3DE3AC3F082781DE46D5954FA 		8935926745E1CE7E3ED748F6EC99EE267EB5F61A 		E3480043595621FE56105F112AB12A7ADC55C003 		93525CFCF6FDFFB3FD9700DD5A4B10AE43B56A27 		C55AB7B9139EB2263CD1AABC19B033D1760C227B 		26F51EF9A82F4ACB43F1903ED377C9E7D1944C66 	; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*User)\s+daemon\s*$!\1 www-data!g' 		-e 's!^(\s*Group)\s+daemon\s*$!\1 www-data!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 	grep -E '^\s*User www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 	grep -E '^\s*Group www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 		deps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .httpd-so-deps $deps; 	apk del --no-network .build-deps; 		httpd -v # buildkit
# Tue, 10 Nov 2026 21:48:39 GMT
STOPSIGNAL SIGWINCH
# Tue, 10 Nov 2026 21:48:39 GMT
COPY httpd-foreground /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:48:39 GMT
EXPOSE map[80/tcp:{}]
# Tue, 10 Nov 2026 21:48:39 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5565e84f90d724786c1913c70d0f84dc3dcdf1f244f790edfb1a6ecba0d1f203`  
		Last Modified: Tue, 10 Nov 2026 21:48:44 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023b93e5d7a8d7ca78ab45d3b507a3daedcd343020a114f8714b82f70e221f00`  
		Last Modified: Tue, 10 Nov 2026 21:48:44 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b8517d3835588bf5cd79742a341eaa9616a06446b342b59181453eef9f98f78`  
		Last Modified: Tue, 10 Nov 2026 21:48:44 GMT  
		Size: 10.2 MB (10248179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a70e8ff95549e6e20266045ae84f74fddce114f57bd4b0b9a71c1b1a76c1ca`  
		Last Modified: Tue, 10 Nov 2026 21:48:44 GMT  
		Size: 5.7 MB (5748137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4854d54f8bb7f0ec2185df734c964165c0ad424d63fd067c6e43ac0560e80f69`  
		Last Modified: Tue, 10 Nov 2026 21:48:45 GMT  
		Size: 288.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `httpd:2-alpine3.24` - unknown; unknown

```console
$ docker pull httpd@sha256:2ab38b3158a5f0965f1393569f19fd39b05806e9b6c71c8380dc83ec210714b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12d3630e0c5216cad89425f5624c9d500bfc9f185bc6a1a6b9321b814e7f2a03`

```dockerfile
```

-	Layers:
	-	`sha256:7a6d25afdf080a238cc6b1819e299e533a9d2f814194bd5e9bf2e48f1c67a018`  
		Last Modified: Tue, 10 Nov 2026 21:48:44 GMT  
		Size: 38.1 KB (38140 bytes)  
		MIME: application/vnd.in-toto+json

### `httpd:2-alpine3.24` - linux; arm variant v7

```console
$ docker pull httpd@sha256:553a59b1256e526cf4143519e5c7e9fe22c371c70949822ac01c5969b0d86365
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18720025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82ba1779bab604fc6ab9c0f1a9445899ce20ef3fc3c31f5355dab750d09130c`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 21:50:21 GMT
RUN set -x 	&& adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 10 Nov 2026 21:50:21 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 10 Nov 2026 21:50:21 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:50:21 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX" # buildkit
# Tue, 10 Nov 2026 21:50:21 GMT
WORKDIR /usr/local/apache2
# Tue, 10 Nov 2026 21:50:22 GMT
RUN set -eux; 	apk add --no-cache 		apr 		apr-util 		apr-util-ldap 		ca-certificates 		perl 	; # buildkit
# Tue, 10 Nov 2026 21:50:22 GMT
ENV HTTPD_VERSION=2.4.70
# Tue, 10 Nov 2026 21:50:22 GMT
ENV HTTPD_SHA256=1eefd7dc95836c5872894ce8e6a37f773d5a6764f0766869d39b8bcf0b1bafc3
# Tue, 10 Nov 2026 21:50:22 GMT
ENV HTTPD_PATCHES=
# Tue, 10 Nov 2026 21:51:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		apr-dev 		apr-util-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		patch 		curl-dev 		jansson-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 		brotli-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			'https://www.apache.org/dyn/closer.cgi?action=download&filename=' 			https://downloads.apache.org/ 			https://www-us.apache.org/dist/ 			https://www.apache.org/dist/ 			https://archive.apache.org/dist/ 		; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		DE29FB3971E71543FD2DC049508EAEC5302DA568 		13155B0E9E634F42BF6C163FDDBA64BA2C312D2F 		8B39757B1D8A994DF2433ED58B3A601F08C975E5 		31EE1A81B8D066548156D37B7D6DBFD1F08E012A 		A10208FEC3152DD7C0C9B59B361522D782AB7BD1 		3DE024AFDA7A4B15CB6C14410F81AA8AB0D5F771 		EB138C6AF0FC691001B16D93344A844D751D7F27 		CBA5A7C21EC143314C41393E5B968010E04F9A89 		3C016F2B764621BB549C66B516A96495E2226795 		937FB3994A242BA9BF49E93021454AF0CC8B0F7E 		EAD1359A4C0F2D37472AAF28F55DF0293A4E7AC9 		4C1EADADB4EF5007579C919C6635B6C0DE885DD3 		01E475360FCCF1D0F24B9D145D414AE1E005C9CB 		92CCEF0AA7DD46AC3A0F498BCA6939748103A37E 		D395C7573A68B9796D38C258153FA0CD75A67692 		FA39B617B61493FD283503E7EED1EA392261D073 		984FB3350C1D5C7A3282255BB31B213D208F5064 		FE7A49DAA875E890B4167F76CCB2EB46E76CF6D0 		39F6691A0ECF0C50E8BB849CF78875F642721F00 		29A2BA848177B73878277FA475CAA2A3F39B3750 		120A8667241AEDD4A78B46104C042818311A3DE5 		453510BDA6C5855624E009236D0BC73A40581837 		0DE5C55C6BF3B2352DABB89E13249B4FEC88A0BF 		7CDBED100806552182F98844E8E7E00B4DAA1988 		A8BA9617EF3BCCAC3B29B869EDB105896F9522D8 		3E6AC004854F3A7F03566B592FF06894E55B0D0E 		5B5181C2C0AB13E59DA3F7A3EC582EB639FF092C 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		65B2D44FE74BD5E3DE3AC3F082781DE46D5954FA 		8935926745E1CE7E3ED748F6EC99EE267EB5F61A 		E3480043595621FE56105F112AB12A7ADC55C003 		93525CFCF6FDFFB3FD9700DD5A4B10AE43B56A27 		C55AB7B9139EB2263CD1AABC19B033D1760C227B 		26F51EF9A82F4ACB43F1903ED377C9E7D1944C66 	; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*User)\s+daemon\s*$!\1 www-data!g' 		-e 's!^(\s*Group)\s+daemon\s*$!\1 www-data!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 	grep -E '^\s*User www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 	grep -E '^\s*Group www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 		deps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .httpd-so-deps $deps; 	apk del --no-network .build-deps; 		httpd -v # buildkit
# Tue, 10 Nov 2026 21:51:36 GMT
STOPSIGNAL SIGWINCH
# Tue, 10 Nov 2026 21:51:36 GMT
COPY httpd-foreground /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:51:36 GMT
EXPOSE map[80/tcp:{}]
# Tue, 10 Nov 2026 21:51:36 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b10482796fe07e6b5f9160e9e638c9590cd1e1d83097c45366a39deb97d9064`  
		Last Modified: Tue, 10 Nov 2026 21:51:42 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295c37fdd9c0499dbe8c082a75949c8d01464442b2f1c68f2cd0d6edada01847`  
		Last Modified: Tue, 10 Nov 2026 21:51:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2746f7dfc2f8d650966d53c11c906782b8c27076b6aafcc16b4a70fb2afc1dc`  
		Last Modified: Tue, 10 Nov 2026 21:51:43 GMT  
		Size: 10.0 MB (10025915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bebd0506d8af831a5ceebf843f369503a02a6c1a8362ab4e27df782845d274b`  
		Last Modified: Tue, 10 Nov 2026 21:51:43 GMT  
		Size: 5.4 MB (5424981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d2c1f9cacadbe6811247dda9b07f21393e1559ad841fc748fa582addcdf55e`  
		Last Modified: Tue, 10 Nov 2026 21:51:43 GMT  
		Size: 287.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `httpd:2-alpine3.24` - unknown; unknown

```console
$ docker pull httpd@sha256:ccf4764171b3c52c3cb51df3726905d7b32603d38f5f376edcbdab40e7835be4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1224745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc59ee0fcee0b8f87843e908d9d154437a79c6784073aafe617eb4a67d9928f`

```dockerfile
```

-	Layers:
	-	`sha256:ddebb3c66b73a960588ac5c4f9fe3ec208cda36b5dc109369403a936f15b9de1`  
		Last Modified: Tue, 10 Nov 2026 21:51:42 GMT  
		Size: 1.2 MB (1186388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad7fbbc5442872662375b44531868459a5049164710f4f9466c3c73f9bb55597`  
		Last Modified: Tue, 10 Nov 2026 21:51:42 GMT  
		Size: 38.4 KB (38357 bytes)  
		MIME: application/vnd.in-toto+json

### `httpd:2-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:52e8a93e1e6bbed69fa472f814b6db440f5b66da0ac9bd4a793f9185c8394cb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21206753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d3ec5b15bccd61658166aa558c1a65af5a96abe6b3f180be4a5a2f70a11eedd`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 21:41:20 GMT
RUN set -x 	&& adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 10 Nov 2026 21:41:20 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 10 Nov 2026 21:41:20 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:41:20 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX" # buildkit
# Tue, 10 Nov 2026 21:41:20 GMT
WORKDIR /usr/local/apache2
# Tue, 10 Nov 2026 21:41:21 GMT
RUN set -eux; 	apk add --no-cache 		apr 		apr-util 		apr-util-ldap 		ca-certificates 		perl 	; # buildkit
# Tue, 10 Nov 2026 21:41:21 GMT
ENV HTTPD_VERSION=2.4.70
# Tue, 10 Nov 2026 21:41:21 GMT
ENV HTTPD_SHA256=1eefd7dc95836c5872894ce8e6a37f773d5a6764f0766869d39b8bcf0b1bafc3
# Tue, 10 Nov 2026 21:41:21 GMT
ENV HTTPD_PATCHES=
# Tue, 10 Nov 2026 21:42:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		apr-dev 		apr-util-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		patch 		curl-dev 		jansson-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 		brotli-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			'https://www.apache.org/dyn/closer.cgi?action=download&filename=' 			https://downloads.apache.org/ 			https://www-us.apache.org/dist/ 			https://www.apache.org/dist/ 			https://archive.apache.org/dist/ 		; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		DE29FB3971E71543FD2DC049508EAEC5302DA568 		13155B0E9E634F42BF6C163FDDBA64BA2C312D2F 		8B39757B1D8A994DF2433ED58B3A601F08C975E5 		31EE1A81B8D066548156D37B7D6DBFD1F08E012A 		A10208FEC3152DD7C0C9B59B361522D782AB7BD1 		3DE024AFDA7A4B15CB6C14410F81AA8AB0D5F771 		EB138C6AF0FC691001B16D93344A844D751D7F27 		CBA5A7C21EC143314C41393E5B968010E04F9A89 		3C016F2B764621BB549C66B516A96495E2226795 		937FB3994A242BA9BF49E93021454AF0CC8B0F7E 		EAD1359A4C0F2D37472AAF28F55DF0293A4E7AC9 		4C1EADADB4EF5007579C919C6635B6C0DE885DD3 		01E475360FCCF1D0F24B9D145D414AE1E005C9CB 		92CCEF0AA7DD46AC3A0F498BCA6939748103A37E 		D395C7573A68B9796D38C258153FA0CD75A67692 		FA39B617B61493FD283503E7EED1EA392261D073 		984FB3350C1D5C7A3282255BB31B213D208F5064 		FE7A49DAA875E890B4167F76CCB2EB46E76CF6D0 		39F6691A0ECF0C50E8BB849CF78875F642721F00 		29A2BA848177B73878277FA475CAA2A3F39B3750 		120A8667241AEDD4A78B46104C042818311A3DE5 		453510BDA6C5855624E009236D0BC73A40581837 		0DE5C55C6BF3B2352DABB89E13249B4FEC88A0BF 		7CDBED100806552182F98844E8E7E00B4DAA1988 		A8BA9617EF3BCCAC3B29B869EDB105896F9522D8 		3E6AC004854F3A7F03566B592FF06894E55B0D0E 		5B5181C2C0AB13E59DA3F7A3EC582EB639FF092C 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		65B2D44FE74BD5E3DE3AC3F082781DE46D5954FA 		8935926745E1CE7E3ED748F6EC99EE267EB5F61A 		E3480043595621FE56105F112AB12A7ADC55C003 		93525CFCF6FDFFB3FD9700DD5A4B10AE43B56A27 		C55AB7B9139EB2263CD1AABC19B033D1760C227B 		26F51EF9A82F4ACB43F1903ED377C9E7D1944C66 	; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*User)\s+daemon\s*$!\1 www-data!g' 		-e 's!^(\s*Group)\s+daemon\s*$!\1 www-data!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 	grep -E '^\s*User www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 	grep -E '^\s*Group www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 		deps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .httpd-so-deps $deps; 	apk del --no-network .build-deps; 		httpd -v # buildkit
# Tue, 10 Nov 2026 21:42:27 GMT
STOPSIGNAL SIGWINCH
# Tue, 10 Nov 2026 21:42:27 GMT
COPY httpd-foreground /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:42:27 GMT
EXPOSE map[80/tcp:{}]
# Tue, 10 Nov 2026 21:42:27 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0881f59b3ae5ca9ed2b06fb0891bad0f8eef503ae295fc541399aedc0815b3`  
		Last Modified: Tue, 10 Nov 2026 21:42:34 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b8771e569748b7ef05de75cb32bb3fb0fb1478a1fb9eaa85191ab1d6ffdf9f`  
		Last Modified: Tue, 10 Nov 2026 21:42:34 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd76c0451102a5b523634040e63fb36846b18dd7b7fab78a45026e7fd2b7acb9`  
		Last Modified: Tue, 10 Nov 2026 21:42:35 GMT  
		Size: 11.0 MB (11001866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256d17db5ba7c2fac894e1d0d1a9a86cab1031b3632cdad61310bed50926d614`  
		Last Modified: Tue, 10 Nov 2026 21:42:35 GMT  
		Size: 6.0 MB (6012897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04188da83656c42aa822219266fa035dee4713cf2ed1276e849a6b9d438d796b`  
		Last Modified: Tue, 10 Nov 2026 21:42:35 GMT  
		Size: 287.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `httpd:2-alpine3.24` - unknown; unknown

```console
$ docker pull httpd@sha256:1c756815ff12255839e5bb0bab941005751d19bd237e4621c342c3fecc944343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1221837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b9f250d2d58b8b91e41a5da9bd8ec07eb12bae75041ff74787f68422d86711`

```dockerfile
```

-	Layers:
	-	`sha256:31707c78145cecfc72747a33eee9096ff5037852262b9523afb433e129aa1230`  
		Last Modified: Tue, 10 Nov 2026 21:42:34 GMT  
		Size: 1.2 MB (1183434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d82ac6a22d5194f200cb55d20f2eab210e3ec6100382558d008a85d06a6c281f`  
		Last Modified: Tue, 10 Nov 2026 21:42:34 GMT  
		Size: 38.4 KB (38403 bytes)  
		MIME: application/vnd.in-toto+json

### `httpd:2-alpine3.24` - linux; 386

```console
$ docker pull httpd@sha256:1cdc64f7427995b4570d6ba334775001ddc03da7e8d411cd29b2f7ebf53db5f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20066402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acf0f4fe000d852136292fb12484742c668e9772f90e93178f50637fcef3cb78`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 21:38:26 GMT
RUN set -x 	&& adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 10 Nov 2026 21:38:26 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 10 Nov 2026 21:38:26 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:38:26 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX" # buildkit
# Tue, 10 Nov 2026 21:38:26 GMT
WORKDIR /usr/local/apache2
# Tue, 10 Nov 2026 21:38:27 GMT
RUN set -eux; 	apk add --no-cache 		apr 		apr-util 		apr-util-ldap 		ca-certificates 		perl 	; # buildkit
# Tue, 10 Nov 2026 21:38:27 GMT
ENV HTTPD_VERSION=2.4.70
# Tue, 10 Nov 2026 21:38:27 GMT
ENV HTTPD_SHA256=1eefd7dc95836c5872894ce8e6a37f773d5a6764f0766869d39b8bcf0b1bafc3
# Tue, 10 Nov 2026 21:38:27 GMT
ENV HTTPD_PATCHES=
# Tue, 10 Nov 2026 21:39:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		apr-dev 		apr-util-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		patch 		curl-dev 		jansson-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 		brotli-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			'https://www.apache.org/dyn/closer.cgi?action=download&filename=' 			https://downloads.apache.org/ 			https://www-us.apache.org/dist/ 			https://www.apache.org/dist/ 			https://archive.apache.org/dist/ 		; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		DE29FB3971E71543FD2DC049508EAEC5302DA568 		13155B0E9E634F42BF6C163FDDBA64BA2C312D2F 		8B39757B1D8A994DF2433ED58B3A601F08C975E5 		31EE1A81B8D066548156D37B7D6DBFD1F08E012A 		A10208FEC3152DD7C0C9B59B361522D782AB7BD1 		3DE024AFDA7A4B15CB6C14410F81AA8AB0D5F771 		EB138C6AF0FC691001B16D93344A844D751D7F27 		CBA5A7C21EC143314C41393E5B968010E04F9A89 		3C016F2B764621BB549C66B516A96495E2226795 		937FB3994A242BA9BF49E93021454AF0CC8B0F7E 		EAD1359A4C0F2D37472AAF28F55DF0293A4E7AC9 		4C1EADADB4EF5007579C919C6635B6C0DE885DD3 		01E475360FCCF1D0F24B9D145D414AE1E005C9CB 		92CCEF0AA7DD46AC3A0F498BCA6939748103A37E 		D395C7573A68B9796D38C258153FA0CD75A67692 		FA39B617B61493FD283503E7EED1EA392261D073 		984FB3350C1D5C7A3282255BB31B213D208F5064 		FE7A49DAA875E890B4167F76CCB2EB46E76CF6D0 		39F6691A0ECF0C50E8BB849CF78875F642721F00 		29A2BA848177B73878277FA475CAA2A3F39B3750 		120A8667241AEDD4A78B46104C042818311A3DE5 		453510BDA6C5855624E009236D0BC73A40581837 		0DE5C55C6BF3B2352DABB89E13249B4FEC88A0BF 		7CDBED100806552182F98844E8E7E00B4DAA1988 		A8BA9617EF3BCCAC3B29B869EDB105896F9522D8 		3E6AC004854F3A7F03566B592FF06894E55B0D0E 		5B5181C2C0AB13E59DA3F7A3EC582EB639FF092C 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		65B2D44FE74BD5E3DE3AC3F082781DE46D5954FA 		8935926745E1CE7E3ED748F6EC99EE267EB5F61A 		E3480043595621FE56105F112AB12A7ADC55C003 		93525CFCF6FDFFB3FD9700DD5A4B10AE43B56A27 		C55AB7B9139EB2263CD1AABC19B033D1760C227B 		26F51EF9A82F4ACB43F1903ED377C9E7D1944C66 	; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*User)\s+daemon\s*$!\1 www-data!g' 		-e 's!^(\s*Group)\s+daemon\s*$!\1 www-data!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 	grep -E '^\s*User www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 	grep -E '^\s*Group www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 		deps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .httpd-so-deps $deps; 	apk del --no-network .build-deps; 		httpd -v # buildkit
# Tue, 10 Nov 2026 21:39:34 GMT
STOPSIGNAL SIGWINCH
# Tue, 10 Nov 2026 21:39:34 GMT
COPY httpd-foreground /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:39:34 GMT
EXPOSE map[80/tcp:{}]
# Tue, 10 Nov 2026 21:39:34 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:457c51b36aeb4ec8272e92e117a0ad3de57fe2a1cb8aacd44b6a4c5046913c7b`  
		Last Modified: Tue, 10 Nov 2026 21:39:40 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db558a08b4810aeb42838803401a725b6579633b6ae2b9a66c48b5c4e545b3bf`  
		Last Modified: Tue, 10 Nov 2026 21:39:40 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123aac7513814aa5344465de089f23330a5ae66d2a8c6441ff9de369b6331b2e`  
		Last Modified: Tue, 10 Nov 2026 21:39:41 GMT  
		Size: 10.6 MB (10581218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219a527f072efe1a1625c5a6491ada0192fbbd13a2f65ca1a2e01694b4b75585`  
		Last Modified: Tue, 10 Nov 2026 21:39:40 GMT  
		Size: 5.8 MB (5803427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce10b84212e5b8fb6fcb75e7a13b4539bf16c51fe14fe00fe98a3ee15e4db83`  
		Last Modified: Tue, 10 Nov 2026 21:39:41 GMT  
		Size: 287.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `httpd:2-alpine3.24` - unknown; unknown

```console
$ docker pull httpd@sha256:a3038ad22432dbbdd2d0d5266987f0f963bbbe201f59ae895e4ad504d8ea20d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1222083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea445a0ff792de63a7fe446153440209bf44563ad4c3353008e6d7d45cf1d5f4`

```dockerfile
```

-	Layers:
	-	`sha256:073ebd7bb1876492a9c784424f799966adaa5a0cafb3ff6b461770419fb879fe`  
		Last Modified: Tue, 10 Nov 2026 21:39:40 GMT  
		Size: 1.2 MB (1183935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d563a2092c43239c043bf29e213f2224dee9130fcfd4477b6af260dc894b485`  
		Last Modified: Tue, 10 Nov 2026 21:39:40 GMT  
		Size: 38.1 KB (38148 bytes)  
		MIME: application/vnd.in-toto+json

### `httpd:2-alpine3.24` - linux; ppc64le

```console
$ docker pull httpd@sha256:e14084dc8f8d3fed34dca897243a4b3cf12431e569469e37b3a9acf7ec3722f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21418711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:086d26777a2c482e83b0e0373fa3edb73e6536a3a84c514decc949820c6ad403`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:31:40 GMT
RUN set -x 	&& adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 21:31:41 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Thu, 05 Nov 2026 21:31:41 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 21:31:41 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX" # buildkit
# Thu, 05 Nov 2026 21:31:41 GMT
WORKDIR /usr/local/apache2
# Thu, 05 Nov 2026 21:31:43 GMT
RUN set -eux; 	apk add --no-cache 		apr 		apr-util 		apr-util-ldap 		ca-certificates 		perl 	; # buildkit
# Thu, 05 Nov 2026 21:31:43 GMT
ENV HTTPD_VERSION=2.4.70
# Thu, 05 Nov 2026 21:31:43 GMT
ENV HTTPD_SHA256=1eefd7dc95836c5872894ce8e6a37f773d5a6764f0766869d39b8bcf0b1bafc3
# Thu, 05 Nov 2026 21:31:43 GMT
ENV HTTPD_PATCHES=
# Tue, 10 Nov 2026 23:29:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		apr-dev 		apr-util-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		patch 		curl-dev 		jansson-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 		brotli-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			'https://www.apache.org/dyn/closer.cgi?action=download&filename=' 			https://downloads.apache.org/ 			https://www-us.apache.org/dist/ 			https://www.apache.org/dist/ 			https://archive.apache.org/dist/ 		; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		DE29FB3971E71543FD2DC049508EAEC5302DA568 		13155B0E9E634F42BF6C163FDDBA64BA2C312D2F 		8B39757B1D8A994DF2433ED58B3A601F08C975E5 		31EE1A81B8D066548156D37B7D6DBFD1F08E012A 		A10208FEC3152DD7C0C9B59B361522D782AB7BD1 		3DE024AFDA7A4B15CB6C14410F81AA8AB0D5F771 		EB138C6AF0FC691001B16D93344A844D751D7F27 		CBA5A7C21EC143314C41393E5B968010E04F9A89 		3C016F2B764621BB549C66B516A96495E2226795 		937FB3994A242BA9BF49E93021454AF0CC8B0F7E 		EAD1359A4C0F2D37472AAF28F55DF0293A4E7AC9 		4C1EADADB4EF5007579C919C6635B6C0DE885DD3 		01E475360FCCF1D0F24B9D145D414AE1E005C9CB 		92CCEF0AA7DD46AC3A0F498BCA6939748103A37E 		D395C7573A68B9796D38C258153FA0CD75A67692 		FA39B617B61493FD283503E7EED1EA392261D073 		984FB3350C1D5C7A3282255BB31B213D208F5064 		FE7A49DAA875E890B4167F76CCB2EB46E76CF6D0 		39F6691A0ECF0C50E8BB849CF78875F642721F00 		29A2BA848177B73878277FA475CAA2A3F39B3750 		120A8667241AEDD4A78B46104C042818311A3DE5 		453510BDA6C5855624E009236D0BC73A40581837 		0DE5C55C6BF3B2352DABB89E13249B4FEC88A0BF 		7CDBED100806552182F98844E8E7E00B4DAA1988 		A8BA9617EF3BCCAC3B29B869EDB105896F9522D8 		3E6AC004854F3A7F03566B592FF06894E55B0D0E 		5B5181C2C0AB13E59DA3F7A3EC582EB639FF092C 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		65B2D44FE74BD5E3DE3AC3F082781DE46D5954FA 		8935926745E1CE7E3ED748F6EC99EE267EB5F61A 		E3480043595621FE56105F112AB12A7ADC55C003 		93525CFCF6FDFFB3FD9700DD5A4B10AE43B56A27 		C55AB7B9139EB2263CD1AABC19B033D1760C227B 		26F51EF9A82F4ACB43F1903ED377C9E7D1944C66 	; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*User)\s+daemon\s*$!\1 www-data!g' 		-e 's!^(\s*Group)\s+daemon\s*$!\1 www-data!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 	grep -E '^\s*User www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 	grep -E '^\s*Group www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 		deps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .httpd-so-deps $deps; 	apk del --no-network .build-deps; 		httpd -v # buildkit
# Tue, 10 Nov 2026 23:29:48 GMT
STOPSIGNAL SIGWINCH
# Tue, 10 Nov 2026 23:29:48 GMT
COPY httpd-foreground /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 23:29:48 GMT
EXPOSE map[80/tcp:{}]
# Tue, 10 Nov 2026 23:29:48 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3648544690f85bf697098fa62481be8193274617377a3b0e764d300b9a3f4a`  
		Last Modified: Thu, 05 Nov 2026 21:33:53 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:140d3972083da97589baa7e62f6cbd94ad5904cfb19c9df309a831f33e3e6b27`  
		Last Modified: Thu, 05 Nov 2026 21:33:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5afd3b0fb7866dd2834e30ef2d91a2828ee762c42a1b45eef35fd5958a4a786`  
		Last Modified: Thu, 05 Nov 2026 21:33:53 GMT  
		Size: 11.3 MB (11294580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1239349a8652f353990c4263eb1a71ce55935f757a4f8d202c040fd43a46ee9`  
		Last Modified: Tue, 10 Nov 2026 23:30:05 GMT  
		Size: 6.3 MB (6300810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:166644e4ba3915ef521da8274f872d82f28da9d2a36c0fbe140e84b729c06c14`  
		Last Modified: Tue, 10 Nov 2026 23:30:05 GMT  
		Size: 291.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `httpd:2-alpine3.24` - unknown; unknown

```console
$ docker pull httpd@sha256:52fe3791168cff85dc6e58f4890b871d0f5bcb5e9ac376bf49f3442de80b7170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1221667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d2cc19063ea4e2e5d1cf838baa8114df12ba68dac9cd73de6f76b83706def5e`

```dockerfile
```

-	Layers:
	-	`sha256:2f00d2ce6c6ad6494d4d9063ebc94021e4490c5b6e27759a02a7bc2e2a9f3add`  
		Last Modified: Tue, 10 Nov 2026 23:30:05 GMT  
		Size: 1.2 MB (1183387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fbec63fe80289daac043720fbdc8461368b370215446364560b464ca7c83342`  
		Last Modified: Tue, 10 Nov 2026 23:30:04 GMT  
		Size: 38.3 KB (38280 bytes)  
		MIME: application/vnd.in-toto+json

### `httpd:2-alpine3.24` - linux; riscv64

```console
$ docker pull httpd@sha256:c7db0f5789ccfd040319d4948d298d60e0abc411c1a9fd0709bc3be3073efe86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 MB (19967748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c38770d3cf5ba2fab51c69f61778b1420c16de505732c89c1417663a8f8f09`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 00:47:05 GMT
RUN set -x 	&& adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 10 Nov 2026 00:47:06 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 10 Nov 2026 00:47:06 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:47:06 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX" # buildkit
# Tue, 10 Nov 2026 00:47:06 GMT
WORKDIR /usr/local/apache2
# Tue, 10 Nov 2026 00:47:13 GMT
RUN set -eux; 	apk add --no-cache 		apr 		apr-util 		apr-util-ldap 		ca-certificates 		perl 	; # buildkit
# Tue, 10 Nov 2026 00:47:13 GMT
ENV HTTPD_VERSION=2.4.69
# Tue, 10 Nov 2026 00:47:13 GMT
ENV HTTPD_SHA256=c5e6ebc66e349b87d7fc6916ae7cc2a808ed348003de134cf9e9d89d3e2cc73d
# Tue, 10 Nov 2026 00:47:13 GMT
ENV HTTPD_PATCHES=
# Tue, 10 Nov 2026 00:57:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		apr-dev 		apr-util-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		patch 		curl-dev 		jansson-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 		brotli-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			'https://www.apache.org/dyn/closer.cgi?action=download&filename=' 			https://downloads.apache.org/ 			https://www-us.apache.org/dist/ 			https://www.apache.org/dist/ 			https://archive.apache.org/dist/ 		; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		DE29FB3971E71543FD2DC049508EAEC5302DA568 		13155B0E9E634F42BF6C163FDDBA64BA2C312D2F 		8B39757B1D8A994DF2433ED58B3A601F08C975E5 		31EE1A81B8D066548156D37B7D6DBFD1F08E012A 		A10208FEC3152DD7C0C9B59B361522D782AB7BD1 		3DE024AFDA7A4B15CB6C14410F81AA8AB0D5F771 		EB138C6AF0FC691001B16D93344A844D751D7F27 		CBA5A7C21EC143314C41393E5B968010E04F9A89 		3C016F2B764621BB549C66B516A96495E2226795 		937FB3994A242BA9BF49E93021454AF0CC8B0F7E 		EAD1359A4C0F2D37472AAF28F55DF0293A4E7AC9 		4C1EADADB4EF5007579C919C6635B6C0DE885DD3 		01E475360FCCF1D0F24B9D145D414AE1E005C9CB 		92CCEF0AA7DD46AC3A0F498BCA6939748103A37E 		D395C7573A68B9796D38C258153FA0CD75A67692 		FA39B617B61493FD283503E7EED1EA392261D073 		984FB3350C1D5C7A3282255BB31B213D208F5064 		FE7A49DAA875E890B4167F76CCB2EB46E76CF6D0 		39F6691A0ECF0C50E8BB849CF78875F642721F00 		29A2BA848177B73878277FA475CAA2A3F39B3750 		120A8667241AEDD4A78B46104C042818311A3DE5 		453510BDA6C5855624E009236D0BC73A40581837 		0DE5C55C6BF3B2352DABB89E13249B4FEC88A0BF 		7CDBED100806552182F98844E8E7E00B4DAA1988 		A8BA9617EF3BCCAC3B29B869EDB105896F9522D8 		3E6AC004854F3A7F03566B592FF06894E55B0D0E 		5B5181C2C0AB13E59DA3F7A3EC582EB639FF092C 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		65B2D44FE74BD5E3DE3AC3F082781DE46D5954FA 		8935926745E1CE7E3ED748F6EC99EE267EB5F61A 		E3480043595621FE56105F112AB12A7ADC55C003 		93525CFCF6FDFFB3FD9700DD5A4B10AE43B56A27 		C55AB7B9139EB2263CD1AABC19B033D1760C227B 		26F51EF9A82F4ACB43F1903ED377C9E7D1944C66 	; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*User)\s+daemon\s*$!\1 www-data!g' 		-e 's!^(\s*Group)\s+daemon\s*$!\1 www-data!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 	grep -E '^\s*User www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 	grep -E '^\s*Group www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 		deps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .httpd-so-deps $deps; 	apk del --no-network .build-deps; 		httpd -v # buildkit
# Tue, 10 Nov 2026 00:57:46 GMT
STOPSIGNAL SIGWINCH
# Tue, 10 Nov 2026 00:57:46 GMT
COPY httpd-foreground /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 00:57:46 GMT
EXPOSE map[80/tcp:{}]
# Tue, 10 Nov 2026 00:57:46 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7010f1c2e986e0589bd61eb7df581212e73774db998bd0dbe35c49b8350984`  
		Last Modified: Tue, 10 Nov 2026 00:58:47 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f6c4852336ae99b7eba517b5b665ab74774761d987b9e90f39dc8672769a9e`  
		Last Modified: Tue, 10 Nov 2026 00:58:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf9486316216c377fdef1f7a63347db97dc03b3bad8a7621dc160e3685e55552`  
		Last Modified: Tue, 10 Nov 2026 00:58:49 GMT  
		Size: 10.5 MB (10481445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b3eb3728ab35e7b1ec5be028e5e4736c857c8749a691702d9d1ef0d6fc71ad`  
		Last Modified: Tue, 10 Nov 2026 00:58:49 GMT  
		Size: 5.9 MB (5904293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:599284f8ce39b3528d93d62f53b00c4b18e6c8105c09f136a458f18b6cbf2572`  
		Last Modified: Tue, 10 Nov 2026 00:58:49 GMT  
		Size: 291.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `httpd:2-alpine3.24` - unknown; unknown

```console
$ docker pull httpd@sha256:da1b53cc87f5ea802fa39bd3ba995e660cbe9d278ca7b8dc8f2c3829a7a7b6b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1221663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6bfab2b38c5e6b423f35affbe45fd5f5e439e7168cf32589b8014a2be1962e`

```dockerfile
```

-	Layers:
	-	`sha256:db931a49a1e55b9e79677f0181d56ae8a4cc69248ffb1820f6213c9e8fdaf265`  
		Last Modified: Tue, 10 Nov 2026 00:58:47 GMT  
		Size: 1.2 MB (1183383 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fe660d67f359a7a1775cebf0ea626a21de194cfdee9cfc1f3313b490c3501bf`  
		Last Modified: Tue, 10 Nov 2026 00:58:47 GMT  
		Size: 38.3 KB (38280 bytes)  
		MIME: application/vnd.in-toto+json

### `httpd:2-alpine3.24` - linux; s390x

```console
$ docker pull httpd@sha256:0d13079d06709fa2a4bf158134a0a3b183b9c20787d26b68356c3a0e5897b246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21425801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2928c54fc75310a9835d38068c22a06b92344391ac95183cba24ab474eedea19`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 22:33:56 GMT
RUN set -x 	&& adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 10 Nov 2026 22:33:57 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 10 Nov 2026 22:33:57 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 22:33:57 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX" # buildkit
# Tue, 10 Nov 2026 22:33:57 GMT
WORKDIR /usr/local/apache2
# Tue, 10 Nov 2026 22:34:00 GMT
RUN set -eux; 	apk add --no-cache 		apr 		apr-util 		apr-util-ldap 		ca-certificates 		perl 	; # buildkit
# Tue, 10 Nov 2026 22:34:00 GMT
ENV HTTPD_VERSION=2.4.70
# Tue, 10 Nov 2026 22:34:00 GMT
ENV HTTPD_SHA256=1eefd7dc95836c5872894ce8e6a37f773d5a6764f0766869d39b8bcf0b1bafc3
# Tue, 10 Nov 2026 22:34:00 GMT
ENV HTTPD_PATCHES=
# Tue, 10 Nov 2026 22:35:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		apr-dev 		apr-util-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		patch 		curl-dev 		jansson-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 		brotli-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			'https://www.apache.org/dyn/closer.cgi?action=download&filename=' 			https://downloads.apache.org/ 			https://www-us.apache.org/dist/ 			https://www.apache.org/dist/ 			https://archive.apache.org/dist/ 		; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		DE29FB3971E71543FD2DC049508EAEC5302DA568 		13155B0E9E634F42BF6C163FDDBA64BA2C312D2F 		8B39757B1D8A994DF2433ED58B3A601F08C975E5 		31EE1A81B8D066548156D37B7D6DBFD1F08E012A 		A10208FEC3152DD7C0C9B59B361522D782AB7BD1 		3DE024AFDA7A4B15CB6C14410F81AA8AB0D5F771 		EB138C6AF0FC691001B16D93344A844D751D7F27 		CBA5A7C21EC143314C41393E5B968010E04F9A89 		3C016F2B764621BB549C66B516A96495E2226795 		937FB3994A242BA9BF49E93021454AF0CC8B0F7E 		EAD1359A4C0F2D37472AAF28F55DF0293A4E7AC9 		4C1EADADB4EF5007579C919C6635B6C0DE885DD3 		01E475360FCCF1D0F24B9D145D414AE1E005C9CB 		92CCEF0AA7DD46AC3A0F498BCA6939748103A37E 		D395C7573A68B9796D38C258153FA0CD75A67692 		FA39B617B61493FD283503E7EED1EA392261D073 		984FB3350C1D5C7A3282255BB31B213D208F5064 		FE7A49DAA875E890B4167F76CCB2EB46E76CF6D0 		39F6691A0ECF0C50E8BB849CF78875F642721F00 		29A2BA848177B73878277FA475CAA2A3F39B3750 		120A8667241AEDD4A78B46104C042818311A3DE5 		453510BDA6C5855624E009236D0BC73A40581837 		0DE5C55C6BF3B2352DABB89E13249B4FEC88A0BF 		7CDBED100806552182F98844E8E7E00B4DAA1988 		A8BA9617EF3BCCAC3B29B869EDB105896F9522D8 		3E6AC004854F3A7F03566B592FF06894E55B0D0E 		5B5181C2C0AB13E59DA3F7A3EC582EB639FF092C 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		65B2D44FE74BD5E3DE3AC3F082781DE46D5954FA 		8935926745E1CE7E3ED748F6EC99EE267EB5F61A 		E3480043595621FE56105F112AB12A7ADC55C003 		93525CFCF6FDFFB3FD9700DD5A4B10AE43B56A27 		C55AB7B9139EB2263CD1AABC19B033D1760C227B 		26F51EF9A82F4ACB43F1903ED377C9E7D1944C66 	; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*User)\s+daemon\s*$!\1 www-data!g' 		-e 's!^(\s*Group)\s+daemon\s*$!\1 www-data!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 	grep -E '^\s*User www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 	grep -E '^\s*Group www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 		deps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .httpd-so-deps $deps; 	apk del --no-network .build-deps; 		httpd -v # buildkit
# Tue, 10 Nov 2026 22:35:51 GMT
STOPSIGNAL SIGWINCH
# Tue, 10 Nov 2026 22:35:52 GMT
COPY httpd-foreground /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 22:35:52 GMT
EXPOSE map[80/tcp:{}]
# Tue, 10 Nov 2026 22:35:52 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:303313925a217ad7bdcbbd17247f170832c173d21698d6c4335bfa7d315df7bc`  
		Last Modified: Tue, 10 Nov 2026 22:36:30 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1da9ac086d286fd65e8f02920e1a883ec81586d8cc6f72163df3285478edf1ca`  
		Last Modified: Tue, 10 Nov 2026 22:36:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ddd0fe95e494f5940d717b64383c27585091c5311cf906134b215ffae3020e7`  
		Last Modified: Tue, 10 Nov 2026 22:36:33 GMT  
		Size: 11.6 MB (11622001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:697473dc94d0dbc1da275ee0e556428537d0fdb7b56393248738870188c26a82`  
		Last Modified: Tue, 10 Nov 2026 22:36:32 GMT  
		Size: 6.1 MB (6081729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f801d01f7bb797cdb98be49c71948fc3ec0d0c8e75b32ffb51057a1e5ab5ee4f`  
		Last Modified: Tue, 10 Nov 2026 22:36:33 GMT  
		Size: 292.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `httpd:2-alpine3.24` - unknown; unknown

```console
$ docker pull httpd@sha256:6cbe52c090249c11995e10ded8a262b289eaa094e569ff0f6d1ac51658177754
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1221535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdf921e8f54a61e1d47dc901a864c10c09cf4a1b3e9f57016bdb0d9c8a418a1`

```dockerfile
```

-	Layers:
	-	`sha256:4fd20a6b1a7a00f4dd3d76a8d07b6cac342a9e4e31614fb20291410da5ea4c8c`  
		Last Modified: Tue, 10 Nov 2026 22:36:31 GMT  
		Size: 1.2 MB (1183329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f90dc6c54b9752bcd5476155d1d2fcdafb154734dd35bb9e0b05830122aec698`  
		Last Modified: Tue, 10 Nov 2026 22:36:28 GMT  
		Size: 38.2 KB (38206 bytes)  
		MIME: application/vnd.in-toto+json
