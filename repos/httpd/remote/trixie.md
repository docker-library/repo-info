## `httpd:trixie`

```console
$ docker pull httpd@sha256:d3accb516506c05ae0068bb54ba6798a10b249b64db91268fca692326cb02b4b
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

### `httpd:trixie` - linux; amd64

```console
$ docker pull httpd@sha256:c492904b9367e83e16e0e8c0a3175b0bb97b861023a17dcdfd09cd4c8b6efd9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45323556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8110099cc30bd98a5b4c11e84cd69b0dc2a85eca846a68a11cccb4a03ce99bc3`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:14:50 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 28 Oct 2026 01:14:50 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:14:50 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX" # buildkit
# Wed, 28 Oct 2026 01:14:50 GMT
WORKDIR /usr/local/apache2
# Wed, 28 Oct 2026 01:14:55 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		libaprutil1-ldap 		libldap-common 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:14:55 GMT
ENV HTTPD_VERSION=2.4.69
# Wed, 28 Oct 2026 01:14:55 GMT
ENV HTTPD_SHA256=c5e6ebc66e349b87d7fc6916ae7cc2a808ed348003de134cf9e9d89d3e2cc73d
# Wed, 28 Oct 2026 01:14:55 GMT
ENV HTTPD_PATCHES=
# Wed, 28 Oct 2026 01:16:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		bzip2 		dpkg-dev 		gcc 		gnupg 		libapr1-dev 		libaprutil1-dev 		libbrotli-dev 		libcurl4-openssl-dev 		libjansson-dev 		liblua5.2-dev 		libnghttp2-dev 		libpcre2-dev 		libssl-dev 		libxml2-dev 		make 		patch 		wget 		zlib1g-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		DE29FB3971E71543FD2DC049508EAEC5302DA568 		13155B0E9E634F42BF6C163FDDBA64BA2C312D2F 		8B39757B1D8A994DF2433ED58B3A601F08C975E5 		31EE1A81B8D066548156D37B7D6DBFD1F08E012A 		A10208FEC3152DD7C0C9B59B361522D782AB7BD1 		3DE024AFDA7A4B15CB6C14410F81AA8AB0D5F771 		EB138C6AF0FC691001B16D93344A844D751D7F27 		CBA5A7C21EC143314C41393E5B968010E04F9A89 		3C016F2B764621BB549C66B516A96495E2226795 		937FB3994A242BA9BF49E93021454AF0CC8B0F7E 		EAD1359A4C0F2D37472AAF28F55DF0293A4E7AC9 		4C1EADADB4EF5007579C919C6635B6C0DE885DD3 		01E475360FCCF1D0F24B9D145D414AE1E005C9CB 		92CCEF0AA7DD46AC3A0F498BCA6939748103A37E 		D395C7573A68B9796D38C258153FA0CD75A67692 		FA39B617B61493FD283503E7EED1EA392261D073 		984FB3350C1D5C7A3282255BB31B213D208F5064 		FE7A49DAA875E890B4167F76CCB2EB46E76CF6D0 		39F6691A0ECF0C50E8BB849CF78875F642721F00 		29A2BA848177B73878277FA475CAA2A3F39B3750 		120A8667241AEDD4A78B46104C042818311A3DE5 		453510BDA6C5855624E009236D0BC73A40581837 		0DE5C55C6BF3B2352DABB89E13249B4FEC88A0BF 		7CDBED100806552182F98844E8E7E00B4DAA1988 		A8BA9617EF3BCCAC3B29B869EDB105896F9522D8 		3E6AC004854F3A7F03566B592FF06894E55B0D0E 		5B5181C2C0AB13E59DA3F7A3EC582EB639FF092C 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		65B2D44FE74BD5E3DE3AC3F082781DE46D5954FA 		8935926745E1CE7E3ED748F6EC99EE267EB5F61A 		E3480043595621FE56105F112AB12A7ADC55C003 		93525CFCF6FDFFB3FD9700DD5A4B10AE43B56A27 		C55AB7B9139EB2263CD1AABC19B033D1760C227B 		26F51EF9A82F4ACB43F1903ED377C9E7D1944C66 	; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	CPPFLAGS="$(dpkg-buildflags --get CPPFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 		--enable-pie 		CFLAGS="-pipe $CFLAGS" 		CPPFLAGS="$CPPFLAGS" 		LDFLAGS="-Wl,--as-needed $LDFLAGS" 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*User)\s+daemon\s*$!\1 www-data!g' 		-e 's!^(\s*Group)\s+daemon\s*$!\1 www-data!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 	grep -E '^\s*User www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 	grep -E '^\s*Group www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		httpd -v # buildkit
# Wed, 28 Oct 2026 01:16:51 GMT
STOPSIGNAL SIGWINCH
# Wed, 28 Oct 2026 01:16:51 GMT
COPY httpd-foreground /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:16:51 GMT
EXPOSE map[80/tcp:{}]
# Wed, 28 Oct 2026 01:16:51 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ce773c1ed1394d5dce9c11e2f0337820ae95a692f9bc6f48beef3a9e7df923`  
		Last Modified: Wed, 28 Oct 2026 01:16:58 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:580ce4f97bc3602c6d3a4e760441b87ab736b20448b17daf51fc4da74c0afbc6`  
		Last Modified: Wed, 28 Oct 2026 01:16:59 GMT  
		Size: 2.0 MB (2006284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a12aab7af459ff676a40d61ddadcb9c9e16894628c9d93775238baeb052a71b`  
		Last Modified: Wed, 28 Oct 2026 01:16:59 GMT  
		Size: 13.5 MB (13461567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39e6d442c0c61fcdd1d48a295c4066e451bdf11cc5dc47f35fd76a16e09ecaf`  
		Last Modified: Wed, 28 Oct 2026 01:16:59 GMT  
		Size: 291.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `httpd:trixie` - unknown; unknown

```console
$ docker pull httpd@sha256:6d588174cd1ae044dad6acbe6545889c637dd70d4e37cf16e09ba73fec1cbd44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d77775896d9f03747512966e345f50c26e82c31576debf19931ef0810935d6c7`

```dockerfile
```

-	Layers:
	-	`sha256:9238c414ccf25f7eefb0109c26e6c90dcb88da4f5eba95464f1827f45c98cafb`  
		Last Modified: Wed, 28 Oct 2026 01:16:59 GMT  
		Size: 2.3 MB (2297329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9cb53993977a3bf83aa36a78583f37d03ab5853ab5ec05f38df54efe3b1f0d1`  
		Last Modified: Wed, 28 Oct 2026 01:16:58 GMT  
		Size: 37.6 KB (37611 bytes)  
		MIME: application/vnd.in-toto+json

### `httpd:trixie` - linux; arm variant v5

```console
$ docker pull httpd@sha256:cd58720dc4ddb7602cdf157c443eb92199ba11cfcc9f2e01d2caabb3adb28cbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42939774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ec0e2e0478abd9142ae502263808d5f56c7f02aed7e9c055cf084976e38345`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:14:36 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 28 Oct 2026 01:14:36 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:14:36 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX" # buildkit
# Wed, 28 Oct 2026 01:14:36 GMT
WORKDIR /usr/local/apache2
# Wed, 28 Oct 2026 01:14:44 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		libaprutil1-ldap 		libldap-common 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:14:44 GMT
ENV HTTPD_VERSION=2.4.69
# Wed, 28 Oct 2026 01:14:44 GMT
ENV HTTPD_SHA256=c5e6ebc66e349b87d7fc6916ae7cc2a808ed348003de134cf9e9d89d3e2cc73d
# Wed, 28 Oct 2026 01:14:44 GMT
ENV HTTPD_PATCHES=
# Wed, 28 Oct 2026 01:17:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		bzip2 		dpkg-dev 		gcc 		gnupg 		libapr1-dev 		libaprutil1-dev 		libbrotli-dev 		libcurl4-openssl-dev 		libjansson-dev 		liblua5.2-dev 		libnghttp2-dev 		libpcre2-dev 		libssl-dev 		libxml2-dev 		make 		patch 		wget 		zlib1g-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		DE29FB3971E71543FD2DC049508EAEC5302DA568 		13155B0E9E634F42BF6C163FDDBA64BA2C312D2F 		8B39757B1D8A994DF2433ED58B3A601F08C975E5 		31EE1A81B8D066548156D37B7D6DBFD1F08E012A 		A10208FEC3152DD7C0C9B59B361522D782AB7BD1 		3DE024AFDA7A4B15CB6C14410F81AA8AB0D5F771 		EB138C6AF0FC691001B16D93344A844D751D7F27 		CBA5A7C21EC143314C41393E5B968010E04F9A89 		3C016F2B764621BB549C66B516A96495E2226795 		937FB3994A242BA9BF49E93021454AF0CC8B0F7E 		EAD1359A4C0F2D37472AAF28F55DF0293A4E7AC9 		4C1EADADB4EF5007579C919C6635B6C0DE885DD3 		01E475360FCCF1D0F24B9D145D414AE1E005C9CB 		92CCEF0AA7DD46AC3A0F498BCA6939748103A37E 		D395C7573A68B9796D38C258153FA0CD75A67692 		FA39B617B61493FD283503E7EED1EA392261D073 		984FB3350C1D5C7A3282255BB31B213D208F5064 		FE7A49DAA875E890B4167F76CCB2EB46E76CF6D0 		39F6691A0ECF0C50E8BB849CF78875F642721F00 		29A2BA848177B73878277FA475CAA2A3F39B3750 		120A8667241AEDD4A78B46104C042818311A3DE5 		453510BDA6C5855624E009236D0BC73A40581837 		0DE5C55C6BF3B2352DABB89E13249B4FEC88A0BF 		7CDBED100806552182F98844E8E7E00B4DAA1988 		A8BA9617EF3BCCAC3B29B869EDB105896F9522D8 		3E6AC004854F3A7F03566B592FF06894E55B0D0E 		5B5181C2C0AB13E59DA3F7A3EC582EB639FF092C 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		65B2D44FE74BD5E3DE3AC3F082781DE46D5954FA 		8935926745E1CE7E3ED748F6EC99EE267EB5F61A 		E3480043595621FE56105F112AB12A7ADC55C003 		93525CFCF6FDFFB3FD9700DD5A4B10AE43B56A27 		C55AB7B9139EB2263CD1AABC19B033D1760C227B 		26F51EF9A82F4ACB43F1903ED377C9E7D1944C66 	; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	CPPFLAGS="$(dpkg-buildflags --get CPPFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 		--enable-pie 		CFLAGS="-pipe $CFLAGS" 		CPPFLAGS="$CPPFLAGS" 		LDFLAGS="-Wl,--as-needed $LDFLAGS" 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*User)\s+daemon\s*$!\1 www-data!g' 		-e 's!^(\s*Group)\s+daemon\s*$!\1 www-data!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 	grep -E '^\s*User www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 	grep -E '^\s*Group www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		httpd -v # buildkit
# Wed, 28 Oct 2026 01:17:22 GMT
STOPSIGNAL SIGWINCH
# Wed, 28 Oct 2026 01:17:22 GMT
COPY httpd-foreground /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:17:22 GMT
EXPOSE map[80/tcp:{}]
# Wed, 28 Oct 2026 01:17:22 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25664ef3cedcdbdee4e3f893deb4f7f560927075cea161fbfc06c06f145b6b2c`  
		Last Modified: Wed, 28 Oct 2026 01:17:30 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84313a500344237247641e0398520848c7ffd0b163275c248d2043a2f15bc310`  
		Last Modified: Wed, 28 Oct 2026 01:17:30 GMT  
		Size: 1.9 MB (1919515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f444895a57580cf97ff29e01012a9ab8388416e509cd77d726c092ddc1915fef`  
		Last Modified: Wed, 28 Oct 2026 01:17:30 GMT  
		Size: 13.0 MB (13001120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634761c960fa543d7714fdb39811b71f5c0b2a34b23c9a3fd47a6b5f2c16be41`  
		Last Modified: Wed, 28 Oct 2026 01:17:30 GMT  
		Size: 294.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `httpd:trixie` - unknown; unknown

```console
$ docker pull httpd@sha256:693d82712a15de2aa1a809f15e9a7d31e2d557f8dd7f5d3363e096a8a9596232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2338110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a112a2991ac1acd340fd6e135dcf8c1ac8f8e6e3d43549a8774289ca80387b3d`

```dockerfile
```

-	Layers:
	-	`sha256:2246f1531d79fc12f402eadd970856fab83f7c20992234442b5281a738eb97b0`  
		Last Modified: Wed, 28 Oct 2026 01:17:30 GMT  
		Size: 2.3 MB (2300361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47ead679bad28baa38af16ec419919b91d24e388b0b53a2d652af318a20c9e00`  
		Last Modified: Wed, 28 Oct 2026 01:17:30 GMT  
		Size: 37.7 KB (37749 bytes)  
		MIME: application/vnd.in-toto+json

### `httpd:trixie` - linux; arm variant v7

```console
$ docker pull httpd@sha256:5c2c0f32cf3cf454155c0b080e8ae6bdd5904f3a89006496c165374c8d49145f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40627095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2a8fc0b94d2c1a7e0bb451388680d6badf625a5d80ba497f952c8150bbb989`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:16:08 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 28 Oct 2026 01:16:08 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:16:08 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX" # buildkit
# Wed, 28 Oct 2026 01:16:08 GMT
WORKDIR /usr/local/apache2
# Wed, 28 Oct 2026 01:16:15 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		libaprutil1-ldap 		libldap-common 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:16:15 GMT
ENV HTTPD_VERSION=2.4.69
# Wed, 28 Oct 2026 01:16:15 GMT
ENV HTTPD_SHA256=c5e6ebc66e349b87d7fc6916ae7cc2a808ed348003de134cf9e9d89d3e2cc73d
# Wed, 28 Oct 2026 01:16:15 GMT
ENV HTTPD_PATCHES=
# Wed, 28 Oct 2026 01:18:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		bzip2 		dpkg-dev 		gcc 		gnupg 		libapr1-dev 		libaprutil1-dev 		libbrotli-dev 		libcurl4-openssl-dev 		libjansson-dev 		liblua5.2-dev 		libnghttp2-dev 		libpcre2-dev 		libssl-dev 		libxml2-dev 		make 		patch 		wget 		zlib1g-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		DE29FB3971E71543FD2DC049508EAEC5302DA568 		13155B0E9E634F42BF6C163FDDBA64BA2C312D2F 		8B39757B1D8A994DF2433ED58B3A601F08C975E5 		31EE1A81B8D066548156D37B7D6DBFD1F08E012A 		A10208FEC3152DD7C0C9B59B361522D782AB7BD1 		3DE024AFDA7A4B15CB6C14410F81AA8AB0D5F771 		EB138C6AF0FC691001B16D93344A844D751D7F27 		CBA5A7C21EC143314C41393E5B968010E04F9A89 		3C016F2B764621BB549C66B516A96495E2226795 		937FB3994A242BA9BF49E93021454AF0CC8B0F7E 		EAD1359A4C0F2D37472AAF28F55DF0293A4E7AC9 		4C1EADADB4EF5007579C919C6635B6C0DE885DD3 		01E475360FCCF1D0F24B9D145D414AE1E005C9CB 		92CCEF0AA7DD46AC3A0F498BCA6939748103A37E 		D395C7573A68B9796D38C258153FA0CD75A67692 		FA39B617B61493FD283503E7EED1EA392261D073 		984FB3350C1D5C7A3282255BB31B213D208F5064 		FE7A49DAA875E890B4167F76CCB2EB46E76CF6D0 		39F6691A0ECF0C50E8BB849CF78875F642721F00 		29A2BA848177B73878277FA475CAA2A3F39B3750 		120A8667241AEDD4A78B46104C042818311A3DE5 		453510BDA6C5855624E009236D0BC73A40581837 		0DE5C55C6BF3B2352DABB89E13249B4FEC88A0BF 		7CDBED100806552182F98844E8E7E00B4DAA1988 		A8BA9617EF3BCCAC3B29B869EDB105896F9522D8 		3E6AC004854F3A7F03566B592FF06894E55B0D0E 		5B5181C2C0AB13E59DA3F7A3EC582EB639FF092C 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		65B2D44FE74BD5E3DE3AC3F082781DE46D5954FA 		8935926745E1CE7E3ED748F6EC99EE267EB5F61A 		E3480043595621FE56105F112AB12A7ADC55C003 		93525CFCF6FDFFB3FD9700DD5A4B10AE43B56A27 		C55AB7B9139EB2263CD1AABC19B033D1760C227B 		26F51EF9A82F4ACB43F1903ED377C9E7D1944C66 	; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	CPPFLAGS="$(dpkg-buildflags --get CPPFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 		--enable-pie 		CFLAGS="-pipe $CFLAGS" 		CPPFLAGS="$CPPFLAGS" 		LDFLAGS="-Wl,--as-needed $LDFLAGS" 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*User)\s+daemon\s*$!\1 www-data!g' 		-e 's!^(\s*Group)\s+daemon\s*$!\1 www-data!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 	grep -E '^\s*User www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 	grep -E '^\s*Group www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		httpd -v # buildkit
# Wed, 28 Oct 2026 01:18:42 GMT
STOPSIGNAL SIGWINCH
# Wed, 28 Oct 2026 01:18:42 GMT
COPY httpd-foreground /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:18:42 GMT
EXPOSE map[80/tcp:{}]
# Wed, 28 Oct 2026 01:18:42 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec0c84ea1ece7a51257681385fe99a9b63d856c31ee90fd92dc0769f0d83583a`  
		Last Modified: Wed, 28 Oct 2026 01:18:49 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcdaee265728160648b1de0602704e136d0d70f27d6c4b1030d2c1f7eb1304d6`  
		Last Modified: Wed, 28 Oct 2026 01:18:50 GMT  
		Size: 1.8 MB (1829999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28e19ae710f4190f86e0f0b08070ff84b90168cc5a808957e587fb50e9c2c87`  
		Last Modified: Wed, 28 Oct 2026 01:18:53 GMT  
		Size: 12.5 MB (12524460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3eb0dca43b5370da1765d7760a6038f1ad4e6c88f8b8280ad292d88761e10f`  
		Last Modified: Wed, 28 Oct 2026 01:18:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `httpd:trixie` - unknown; unknown

```console
$ docker pull httpd@sha256:e8f0db9f53941702457dce7d81a16c53d17b6819e6339acb12e4112c5d42e225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2336624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2501d996201180983e9d0e5a0390fb17a0174599f93df70ee93bfb793502a31`

```dockerfile
```

-	Layers:
	-	`sha256:0de50d7bc6e7355a71f048c01bfbce1c0fdc4984235548d7984c9d5671205733`  
		Last Modified: Wed, 28 Oct 2026 01:18:50 GMT  
		Size: 2.3 MB (2298876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b64518eda438e39cba165c3609b8843140141d5bfd9e58febdad2a7983d1486`  
		Last Modified: Wed, 28 Oct 2026 01:18:49 GMT  
		Size: 37.7 KB (37748 bytes)  
		MIME: application/vnd.in-toto+json

### `httpd:trixie` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:effe7b2a2ea2160e1558fe76220fd5ca98fbcacd763dac109e1831301d060404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45596204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d82ac79049c3ea02a547e796ed5684ba94bed692ca2d7d9bf820ed157c8447`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:14:30 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 28 Oct 2026 01:14:30 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:14:30 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX" # buildkit
# Wed, 28 Oct 2026 01:14:30 GMT
WORKDIR /usr/local/apache2
# Wed, 28 Oct 2026 01:14:36 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		libaprutil1-ldap 		libldap-common 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:14:36 GMT
ENV HTTPD_VERSION=2.4.69
# Wed, 28 Oct 2026 01:14:36 GMT
ENV HTTPD_SHA256=c5e6ebc66e349b87d7fc6916ae7cc2a808ed348003de134cf9e9d89d3e2cc73d
# Wed, 28 Oct 2026 01:14:36 GMT
ENV HTTPD_PATCHES=
# Wed, 28 Oct 2026 01:16:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		bzip2 		dpkg-dev 		gcc 		gnupg 		libapr1-dev 		libaprutil1-dev 		libbrotli-dev 		libcurl4-openssl-dev 		libjansson-dev 		liblua5.2-dev 		libnghttp2-dev 		libpcre2-dev 		libssl-dev 		libxml2-dev 		make 		patch 		wget 		zlib1g-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		DE29FB3971E71543FD2DC049508EAEC5302DA568 		13155B0E9E634F42BF6C163FDDBA64BA2C312D2F 		8B39757B1D8A994DF2433ED58B3A601F08C975E5 		31EE1A81B8D066548156D37B7D6DBFD1F08E012A 		A10208FEC3152DD7C0C9B59B361522D782AB7BD1 		3DE024AFDA7A4B15CB6C14410F81AA8AB0D5F771 		EB138C6AF0FC691001B16D93344A844D751D7F27 		CBA5A7C21EC143314C41393E5B968010E04F9A89 		3C016F2B764621BB549C66B516A96495E2226795 		937FB3994A242BA9BF49E93021454AF0CC8B0F7E 		EAD1359A4C0F2D37472AAF28F55DF0293A4E7AC9 		4C1EADADB4EF5007579C919C6635B6C0DE885DD3 		01E475360FCCF1D0F24B9D145D414AE1E005C9CB 		92CCEF0AA7DD46AC3A0F498BCA6939748103A37E 		D395C7573A68B9796D38C258153FA0CD75A67692 		FA39B617B61493FD283503E7EED1EA392261D073 		984FB3350C1D5C7A3282255BB31B213D208F5064 		FE7A49DAA875E890B4167F76CCB2EB46E76CF6D0 		39F6691A0ECF0C50E8BB849CF78875F642721F00 		29A2BA848177B73878277FA475CAA2A3F39B3750 		120A8667241AEDD4A78B46104C042818311A3DE5 		453510BDA6C5855624E009236D0BC73A40581837 		0DE5C55C6BF3B2352DABB89E13249B4FEC88A0BF 		7CDBED100806552182F98844E8E7E00B4DAA1988 		A8BA9617EF3BCCAC3B29B869EDB105896F9522D8 		3E6AC004854F3A7F03566B592FF06894E55B0D0E 		5B5181C2C0AB13E59DA3F7A3EC582EB639FF092C 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		65B2D44FE74BD5E3DE3AC3F082781DE46D5954FA 		8935926745E1CE7E3ED748F6EC99EE267EB5F61A 		E3480043595621FE56105F112AB12A7ADC55C003 		93525CFCF6FDFFB3FD9700DD5A4B10AE43B56A27 		C55AB7B9139EB2263CD1AABC19B033D1760C227B 		26F51EF9A82F4ACB43F1903ED377C9E7D1944C66 	; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	CPPFLAGS="$(dpkg-buildflags --get CPPFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 		--enable-pie 		CFLAGS="-pipe $CFLAGS" 		CPPFLAGS="$CPPFLAGS" 		LDFLAGS="-Wl,--as-needed $LDFLAGS" 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*User)\s+daemon\s*$!\1 www-data!g' 		-e 's!^(\s*Group)\s+daemon\s*$!\1 www-data!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 	grep -E '^\s*User www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 	grep -E '^\s*Group www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		httpd -v # buildkit
# Wed, 28 Oct 2026 01:16:43 GMT
STOPSIGNAL SIGWINCH
# Wed, 28 Oct 2026 01:16:43 GMT
COPY httpd-foreground /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:16:43 GMT
EXPOSE map[80/tcp:{}]
# Wed, 28 Oct 2026 01:16:43 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e693a0dfad2b90e038505e5e863faf30852fbe20d1c12e0ae8290e1eaf90faf`  
		Last Modified: Wed, 28 Oct 2026 01:16:51 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e0ca8d562fa3c84f411e42082bca8f148c1a8ab8629e6ae5ae9daff8f8627f`  
		Last Modified: Wed, 28 Oct 2026 01:16:51 GMT  
		Size: 2.0 MB (1980650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380dc69404b2aa740a4bb63c1c0b06c910442b7afd60a49fc53459aea04021a2`  
		Last Modified: Wed, 28 Oct 2026 01:16:51 GMT  
		Size: 13.4 MB (13401589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4522f21c440745934e8597bde257d6e3067f8d92104df7ab5c9780b1f33b640`  
		Last Modified: Wed, 28 Oct 2026 01:16:51 GMT  
		Size: 291.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `httpd:trixie` - unknown; unknown

```console
$ docker pull httpd@sha256:1b5adabf2cb1946fbb2e65e6bc67820c35038eb04b0d7636c3040acaad81fc6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2335458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b8eab5261093b98e0273661857c05d14e7d5e95124539a12866da1b90e5bfbb`

```dockerfile
```

-	Layers:
	-	`sha256:4d5c352c0170bd783b056a4849434e4238a106008dfcb318435559b83dc91010`  
		Last Modified: Wed, 28 Oct 2026 01:16:51 GMT  
		Size: 2.3 MB (2297666 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d558b74c79329346f9a8590802b5f744f653c4f333cd3823cd34bdecc8eabb0`  
		Last Modified: Wed, 28 Oct 2026 01:16:51 GMT  
		Size: 37.8 KB (37792 bytes)  
		MIME: application/vnd.in-toto+json

### `httpd:trixie` - linux; 386

```console
$ docker pull httpd@sha256:ca90d03a7b94245918ffff04b073e9c7d95cf20047be431034f697b69aa87418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46664422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d582976f75ec125d059dfcb1dd4bf01a64725b4bfe9b48ed155f5c761df78801`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:14:16 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 28 Oct 2026 01:14:16 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:14:16 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX" # buildkit
# Wed, 28 Oct 2026 01:14:16 GMT
WORKDIR /usr/local/apache2
# Wed, 28 Oct 2026 01:14:22 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		libaprutil1-ldap 		libldap-common 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:14:22 GMT
ENV HTTPD_VERSION=2.4.69
# Wed, 28 Oct 2026 01:14:22 GMT
ENV HTTPD_SHA256=c5e6ebc66e349b87d7fc6916ae7cc2a808ed348003de134cf9e9d89d3e2cc73d
# Wed, 28 Oct 2026 01:14:22 GMT
ENV HTTPD_PATCHES=
# Wed, 28 Oct 2026 01:16:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		bzip2 		dpkg-dev 		gcc 		gnupg 		libapr1-dev 		libaprutil1-dev 		libbrotli-dev 		libcurl4-openssl-dev 		libjansson-dev 		liblua5.2-dev 		libnghttp2-dev 		libpcre2-dev 		libssl-dev 		libxml2-dev 		make 		patch 		wget 		zlib1g-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		DE29FB3971E71543FD2DC049508EAEC5302DA568 		13155B0E9E634F42BF6C163FDDBA64BA2C312D2F 		8B39757B1D8A994DF2433ED58B3A601F08C975E5 		31EE1A81B8D066548156D37B7D6DBFD1F08E012A 		A10208FEC3152DD7C0C9B59B361522D782AB7BD1 		3DE024AFDA7A4B15CB6C14410F81AA8AB0D5F771 		EB138C6AF0FC691001B16D93344A844D751D7F27 		CBA5A7C21EC143314C41393E5B968010E04F9A89 		3C016F2B764621BB549C66B516A96495E2226795 		937FB3994A242BA9BF49E93021454AF0CC8B0F7E 		EAD1359A4C0F2D37472AAF28F55DF0293A4E7AC9 		4C1EADADB4EF5007579C919C6635B6C0DE885DD3 		01E475360FCCF1D0F24B9D145D414AE1E005C9CB 		92CCEF0AA7DD46AC3A0F498BCA6939748103A37E 		D395C7573A68B9796D38C258153FA0CD75A67692 		FA39B617B61493FD283503E7EED1EA392261D073 		984FB3350C1D5C7A3282255BB31B213D208F5064 		FE7A49DAA875E890B4167F76CCB2EB46E76CF6D0 		39F6691A0ECF0C50E8BB849CF78875F642721F00 		29A2BA848177B73878277FA475CAA2A3F39B3750 		120A8667241AEDD4A78B46104C042818311A3DE5 		453510BDA6C5855624E009236D0BC73A40581837 		0DE5C55C6BF3B2352DABB89E13249B4FEC88A0BF 		7CDBED100806552182F98844E8E7E00B4DAA1988 		A8BA9617EF3BCCAC3B29B869EDB105896F9522D8 		3E6AC004854F3A7F03566B592FF06894E55B0D0E 		5B5181C2C0AB13E59DA3F7A3EC582EB639FF092C 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		65B2D44FE74BD5E3DE3AC3F082781DE46D5954FA 		8935926745E1CE7E3ED748F6EC99EE267EB5F61A 		E3480043595621FE56105F112AB12A7ADC55C003 		93525CFCF6FDFFB3FD9700DD5A4B10AE43B56A27 		C55AB7B9139EB2263CD1AABC19B033D1760C227B 		26F51EF9A82F4ACB43F1903ED377C9E7D1944C66 	; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	CPPFLAGS="$(dpkg-buildflags --get CPPFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 		--enable-pie 		CFLAGS="-pipe $CFLAGS" 		CPPFLAGS="$CPPFLAGS" 		LDFLAGS="-Wl,--as-needed $LDFLAGS" 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*User)\s+daemon\s*$!\1 www-data!g' 		-e 's!^(\s*Group)\s+daemon\s*$!\1 www-data!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 	grep -E '^\s*User www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 	grep -E '^\s*Group www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		httpd -v # buildkit
# Wed, 28 Oct 2026 01:16:37 GMT
STOPSIGNAL SIGWINCH
# Wed, 28 Oct 2026 01:16:37 GMT
COPY httpd-foreground /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:16:37 GMT
EXPOSE map[80/tcp:{}]
# Wed, 28 Oct 2026 01:16:37 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1d514d8d1bb92654520bb10dde34a0d46b71a4e447b969938549af213563b6`  
		Last Modified: Wed, 28 Oct 2026 01:16:45 GMT  
		Size: 145.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2add00aa95040235d815b7cd58433b589c99cff641d53bef53c4a830d54d8f92`  
		Last Modified: Wed, 28 Oct 2026 01:16:45 GMT  
		Size: 2.1 MB (2069935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7588c58a9253c4bde8f42ae7f2c2b67f40c4bc7d0d4187697e7f6a40234c4a5b`  
		Last Modified: Wed, 28 Oct 2026 01:16:45 GMT  
		Size: 13.2 MB (13225431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6deff82fc4ac738ff13ca3c3fd9dccf356e5c3f9d09101f6c7bbe759e262e06`  
		Last Modified: Wed, 28 Oct 2026 01:16:45 GMT  
		Size: 293.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `httpd:trixie` - unknown; unknown

```console
$ docker pull httpd@sha256:de8e35a5a9613afb4fa37bd950765ef2f660da573e2a26d53db5159323c8d968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6613f4a204ae465d19685ae4336a7447be24b458664826c475d13d19075c9dc`

```dockerfile
```

-	Layers:
	-	`sha256:40c9d1deeabffc8ec14cfe85cb9b33134adf1c3249efb951a7b72eade54099c9`  
		Last Modified: Wed, 28 Oct 2026 01:16:45 GMT  
		Size: 2.3 MB (2294428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8344acbeb2bc09e08c59ce328587b36b895d11e11e17d723cf2e98949f51e56f`  
		Last Modified: Wed, 28 Oct 2026 01:16:44 GMT  
		Size: 37.6 KB (37555 bytes)  
		MIME: application/vnd.in-toto+json

### `httpd:trixie` - linux; ppc64le

```console
$ docker pull httpd@sha256:5c3529fd93925490d3c6239c9baa921e303ee0db3c53af8d3b47b13d43dd07b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50249535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aef7cbfebd2bada50a520b2c1ea01cfc66191921477b6df5d6fb2aa4c27f60d`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:36:37 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 28 Oct 2026 01:36:37 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:36:37 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX" # buildkit
# Wed, 28 Oct 2026 01:36:38 GMT
WORKDIR /usr/local/apache2
# Wed, 28 Oct 2026 01:36:51 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		libaprutil1-ldap 		libldap-common 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:36:51 GMT
ENV HTTPD_VERSION=2.4.69
# Wed, 28 Oct 2026 01:36:51 GMT
ENV HTTPD_SHA256=c5e6ebc66e349b87d7fc6916ae7cc2a808ed348003de134cf9e9d89d3e2cc73d
# Wed, 28 Oct 2026 01:36:51 GMT
ENV HTTPD_PATCHES=
# Wed, 28 Oct 2026 01:41:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		bzip2 		dpkg-dev 		gcc 		gnupg 		libapr1-dev 		libaprutil1-dev 		libbrotli-dev 		libcurl4-openssl-dev 		libjansson-dev 		liblua5.2-dev 		libnghttp2-dev 		libpcre2-dev 		libssl-dev 		libxml2-dev 		make 		patch 		wget 		zlib1g-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		DE29FB3971E71543FD2DC049508EAEC5302DA568 		13155B0E9E634F42BF6C163FDDBA64BA2C312D2F 		8B39757B1D8A994DF2433ED58B3A601F08C975E5 		31EE1A81B8D066548156D37B7D6DBFD1F08E012A 		A10208FEC3152DD7C0C9B59B361522D782AB7BD1 		3DE024AFDA7A4B15CB6C14410F81AA8AB0D5F771 		EB138C6AF0FC691001B16D93344A844D751D7F27 		CBA5A7C21EC143314C41393E5B968010E04F9A89 		3C016F2B764621BB549C66B516A96495E2226795 		937FB3994A242BA9BF49E93021454AF0CC8B0F7E 		EAD1359A4C0F2D37472AAF28F55DF0293A4E7AC9 		4C1EADADB4EF5007579C919C6635B6C0DE885DD3 		01E475360FCCF1D0F24B9D145D414AE1E005C9CB 		92CCEF0AA7DD46AC3A0F498BCA6939748103A37E 		D395C7573A68B9796D38C258153FA0CD75A67692 		FA39B617B61493FD283503E7EED1EA392261D073 		984FB3350C1D5C7A3282255BB31B213D208F5064 		FE7A49DAA875E890B4167F76CCB2EB46E76CF6D0 		39F6691A0ECF0C50E8BB849CF78875F642721F00 		29A2BA848177B73878277FA475CAA2A3F39B3750 		120A8667241AEDD4A78B46104C042818311A3DE5 		453510BDA6C5855624E009236D0BC73A40581837 		0DE5C55C6BF3B2352DABB89E13249B4FEC88A0BF 		7CDBED100806552182F98844E8E7E00B4DAA1988 		A8BA9617EF3BCCAC3B29B869EDB105896F9522D8 		3E6AC004854F3A7F03566B592FF06894E55B0D0E 		5B5181C2C0AB13E59DA3F7A3EC582EB639FF092C 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		65B2D44FE74BD5E3DE3AC3F082781DE46D5954FA 		8935926745E1CE7E3ED748F6EC99EE267EB5F61A 		E3480043595621FE56105F112AB12A7ADC55C003 		93525CFCF6FDFFB3FD9700DD5A4B10AE43B56A27 		C55AB7B9139EB2263CD1AABC19B033D1760C227B 		26F51EF9A82F4ACB43F1903ED377C9E7D1944C66 	; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	CPPFLAGS="$(dpkg-buildflags --get CPPFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 		--enable-pie 		CFLAGS="-pipe $CFLAGS" 		CPPFLAGS="$CPPFLAGS" 		LDFLAGS="-Wl,--as-needed $LDFLAGS" 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*User)\s+daemon\s*$!\1 www-data!g' 		-e 's!^(\s*Group)\s+daemon\s*$!\1 www-data!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 	grep -E '^\s*User www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 	grep -E '^\s*Group www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		httpd -v # buildkit
# Wed, 28 Oct 2026 01:41:32 GMT
STOPSIGNAL SIGWINCH
# Wed, 28 Oct 2026 01:41:32 GMT
COPY httpd-foreground /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:41:32 GMT
EXPOSE map[80/tcp:{}]
# Wed, 28 Oct 2026 01:41:32 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4b73ba1575ab9afae4249c818303d25b1fc6cbcbca196ad0fbeebb9f38f167`  
		Last Modified: Wed, 28 Oct 2026 01:41:47 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e7666818515cc690af46aa55c67bf6ef84b9ac1b6a081bbef34f1ab0e7caa0`  
		Last Modified: Wed, 28 Oct 2026 01:41:47 GMT  
		Size: 2.1 MB (2149093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d665071c8021db4e49efcc0281297ec4559ad5d1017feb00ed65d10db352d8cf`  
		Last Modified: Wed, 28 Oct 2026 01:41:48 GMT  
		Size: 14.4 MB (14433706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b54ef6b29fa46820c85143e8174fcaec967c2a979667bbb4d53c59a7e47e8b4f`  
		Last Modified: Wed, 28 Oct 2026 01:41:47 GMT  
		Size: 295.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `httpd:trixie` - unknown; unknown

```console
$ docker pull httpd@sha256:c09460f3b150264bceb0e94b7646f5c91d3c3c6d400aac63ea986fca289ddb0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2338862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6640d4d86d7600d27b9c0e8b47d7a4c23665e8335bdf5d4a4371c2e7c7b7208d`

```dockerfile
```

-	Layers:
	-	`sha256:774d84e1075e6dee974717d120691523f4a2647ed9ab29e9f809853245d78775`  
		Last Modified: Wed, 28 Oct 2026 01:41:47 GMT  
		Size: 2.3 MB (2301179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae90aa14764eda1801870217d12ef87c44db295e140acb679fcfb7f5c9dff95a`  
		Last Modified: Wed, 28 Oct 2026 01:41:47 GMT  
		Size: 37.7 KB (37683 bytes)  
		MIME: application/vnd.in-toto+json

### `httpd:trixie` - linux; riscv64

```console
$ docker pull httpd@sha256:f849d0839c8ba0af53c66bb08a9f06e73dc001023b6a2b30c80ab51fd3500f8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43484078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e41bb81c4296c485f37f86aa4b7d41c0187ae5bc67f408c25b8e0f56bf3ed22`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 02:35:02 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 21 Oct 2026 02:35:02 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 02:35:02 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX" # buildkit
# Wed, 21 Oct 2026 02:35:03 GMT
WORKDIR /usr/local/apache2
# Wed, 21 Oct 2026 02:35:59 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		libaprutil1-ldap 		libldap-common 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:35:59 GMT
ENV HTTPD_VERSION=2.4.69
# Wed, 21 Oct 2026 02:35:59 GMT
ENV HTTPD_SHA256=c5e6ebc66e349b87d7fc6916ae7cc2a808ed348003de134cf9e9d89d3e2cc73d
# Wed, 21 Oct 2026 02:35:59 GMT
ENV HTTPD_PATCHES=
# Wed, 21 Oct 2026 02:59:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		bzip2 		dpkg-dev 		gcc 		gnupg 		libapr1-dev 		libaprutil1-dev 		libbrotli-dev 		libcurl4-openssl-dev 		libjansson-dev 		liblua5.2-dev 		libnghttp2-dev 		libpcre2-dev 		libssl-dev 		libxml2-dev 		make 		patch 		wget 		zlib1g-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		DE29FB3971E71543FD2DC049508EAEC5302DA568 		13155B0E9E634F42BF6C163FDDBA64BA2C312D2F 		8B39757B1D8A994DF2433ED58B3A601F08C975E5 		31EE1A81B8D066548156D37B7D6DBFD1F08E012A 		A10208FEC3152DD7C0C9B59B361522D782AB7BD1 		3DE024AFDA7A4B15CB6C14410F81AA8AB0D5F771 		EB138C6AF0FC691001B16D93344A844D751D7F27 		CBA5A7C21EC143314C41393E5B968010E04F9A89 		3C016F2B764621BB549C66B516A96495E2226795 		937FB3994A242BA9BF49E93021454AF0CC8B0F7E 		EAD1359A4C0F2D37472AAF28F55DF0293A4E7AC9 		4C1EADADB4EF5007579C919C6635B6C0DE885DD3 		01E475360FCCF1D0F24B9D145D414AE1E005C9CB 		92CCEF0AA7DD46AC3A0F498BCA6939748103A37E 		D395C7573A68B9796D38C258153FA0CD75A67692 		FA39B617B61493FD283503E7EED1EA392261D073 		984FB3350C1D5C7A3282255BB31B213D208F5064 		FE7A49DAA875E890B4167F76CCB2EB46E76CF6D0 		39F6691A0ECF0C50E8BB849CF78875F642721F00 		29A2BA848177B73878277FA475CAA2A3F39B3750 		120A8667241AEDD4A78B46104C042818311A3DE5 		453510BDA6C5855624E009236D0BC73A40581837 		0DE5C55C6BF3B2352DABB89E13249B4FEC88A0BF 		7CDBED100806552182F98844E8E7E00B4DAA1988 		A8BA9617EF3BCCAC3B29B869EDB105896F9522D8 		3E6AC004854F3A7F03566B592FF06894E55B0D0E 		5B5181C2C0AB13E59DA3F7A3EC582EB639FF092C 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		65B2D44FE74BD5E3DE3AC3F082781DE46D5954FA 		8935926745E1CE7E3ED748F6EC99EE267EB5F61A 		E3480043595621FE56105F112AB12A7ADC55C003 		93525CFCF6FDFFB3FD9700DD5A4B10AE43B56A27 		C55AB7B9139EB2263CD1AABC19B033D1760C227B 		26F51EF9A82F4ACB43F1903ED377C9E7D1944C66 	; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	CPPFLAGS="$(dpkg-buildflags --get CPPFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 		--enable-pie 		CFLAGS="-pipe $CFLAGS" 		CPPFLAGS="$CPPFLAGS" 		LDFLAGS="-Wl,--as-needed $LDFLAGS" 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*User)\s+daemon\s*$!\1 www-data!g' 		-e 's!^(\s*Group)\s+daemon\s*$!\1 www-data!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 	grep -E '^\s*User www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 	grep -E '^\s*Group www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		httpd -v # buildkit
# Wed, 21 Oct 2026 02:59:35 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 02:59:35 GMT
COPY httpd-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 02:59:35 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 02:59:35 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0299565d789cacefb2bdfd879c842e7531ea2998b323f303ccc5b79cff6b9f8f`  
		Last Modified: Wed, 21 Oct 2026 03:00:55 GMT  
		Size: 145.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea0f47ceb145e84d5e38619ae149c20ae1c4dfe97947e64ae6dd3ae96ceffb8d`  
		Last Modified: Wed, 21 Oct 2026 03:00:55 GMT  
		Size: 2.0 MB (1967828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9ac945c365f9be89791eb108d63d7058512b639044cab0fe5a9eca79bb336eb`  
		Last Modified: Wed, 21 Oct 2026 03:00:57 GMT  
		Size: 13.2 MB (13181909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c78b18dbce2cba959f6e613034b57c552594f3962f7a28b7cb4d39f1214102`  
		Last Modified: Wed, 21 Oct 2026 03:00:55 GMT  
		Size: 293.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `httpd:trixie` - unknown; unknown

```console
$ docker pull httpd@sha256:2da218232968eb07c68ec14092b1c5bc3663c4ff1d7f7738e9de4efdba26ceec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2329081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0710cca0db1554d047896c24ead2cea54340cd71bb580a3c103f19c44e21ab8`

```dockerfile
```

-	Layers:
	-	`sha256:285fcda985dcec6c1b0a28325913d61c1bd57d90f7b37a01ed7947232040b2cd`  
		Last Modified: Wed, 21 Oct 2026 03:00:55 GMT  
		Size: 2.3 MB (2291398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7d3864fd365cb41016da992039d8450a34f85f673428ea7e6bb0c26edb107a3`  
		Last Modified: Wed, 21 Oct 2026 03:00:54 GMT  
		Size: 37.7 KB (37683 bytes)  
		MIME: application/vnd.in-toto+json

### `httpd:trixie` - linux; s390x

```console
$ docker pull httpd@sha256:a5ee624fb48fe792529a0a83721c3eb0fcffa535ba187fc3c540b85f29da38a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45609449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3320dcad825e0fb27bb506b90b0bb22a24dd559463c11753d8b15b2c8660ac4e`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:18:44 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 28 Oct 2026 01:18:44 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:18:44 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX" # buildkit
# Wed, 28 Oct 2026 01:18:44 GMT
WORKDIR /usr/local/apache2
# Wed, 28 Oct 2026 01:18:49 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		libaprutil1-ldap 		libldap-common 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:18:49 GMT
ENV HTTPD_VERSION=2.4.69
# Wed, 28 Oct 2026 01:18:49 GMT
ENV HTTPD_SHA256=c5e6ebc66e349b87d7fc6916ae7cc2a808ed348003de134cf9e9d89d3e2cc73d
# Wed, 28 Oct 2026 01:18:49 GMT
ENV HTTPD_PATCHES=
# Wed, 28 Oct 2026 01:20:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		bzip2 		dpkg-dev 		gcc 		gnupg 		libapr1-dev 		libaprutil1-dev 		libbrotli-dev 		libcurl4-openssl-dev 		libjansson-dev 		liblua5.2-dev 		libnghttp2-dev 		libpcre2-dev 		libssl-dev 		libxml2-dev 		make 		patch 		wget 		zlib1g-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		DE29FB3971E71543FD2DC049508EAEC5302DA568 		13155B0E9E634F42BF6C163FDDBA64BA2C312D2F 		8B39757B1D8A994DF2433ED58B3A601F08C975E5 		31EE1A81B8D066548156D37B7D6DBFD1F08E012A 		A10208FEC3152DD7C0C9B59B361522D782AB7BD1 		3DE024AFDA7A4B15CB6C14410F81AA8AB0D5F771 		EB138C6AF0FC691001B16D93344A844D751D7F27 		CBA5A7C21EC143314C41393E5B968010E04F9A89 		3C016F2B764621BB549C66B516A96495E2226795 		937FB3994A242BA9BF49E93021454AF0CC8B0F7E 		EAD1359A4C0F2D37472AAF28F55DF0293A4E7AC9 		4C1EADADB4EF5007579C919C6635B6C0DE885DD3 		01E475360FCCF1D0F24B9D145D414AE1E005C9CB 		92CCEF0AA7DD46AC3A0F498BCA6939748103A37E 		D395C7573A68B9796D38C258153FA0CD75A67692 		FA39B617B61493FD283503E7EED1EA392261D073 		984FB3350C1D5C7A3282255BB31B213D208F5064 		FE7A49DAA875E890B4167F76CCB2EB46E76CF6D0 		39F6691A0ECF0C50E8BB849CF78875F642721F00 		29A2BA848177B73878277FA475CAA2A3F39B3750 		120A8667241AEDD4A78B46104C042818311A3DE5 		453510BDA6C5855624E009236D0BC73A40581837 		0DE5C55C6BF3B2352DABB89E13249B4FEC88A0BF 		7CDBED100806552182F98844E8E7E00B4DAA1988 		A8BA9617EF3BCCAC3B29B869EDB105896F9522D8 		3E6AC004854F3A7F03566B592FF06894E55B0D0E 		5B5181C2C0AB13E59DA3F7A3EC582EB639FF092C 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		65B2D44FE74BD5E3DE3AC3F082781DE46D5954FA 		8935926745E1CE7E3ED748F6EC99EE267EB5F61A 		E3480043595621FE56105F112AB12A7ADC55C003 		93525CFCF6FDFFB3FD9700DD5A4B10AE43B56A27 		C55AB7B9139EB2263CD1AABC19B033D1760C227B 		26F51EF9A82F4ACB43F1903ED377C9E7D1944C66 	; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	CPPFLAGS="$(dpkg-buildflags --get CPPFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 		--enable-pie 		CFLAGS="-pipe $CFLAGS" 		CPPFLAGS="$CPPFLAGS" 		LDFLAGS="-Wl,--as-needed $LDFLAGS" 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*User)\s+daemon\s*$!\1 www-data!g' 		-e 's!^(\s*Group)\s+daemon\s*$!\1 www-data!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 	grep -E '^\s*User www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 	grep -E '^\s*Group www-data$' "$HTTPD_PREFIX/conf/httpd.conf"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		httpd -v # buildkit
# Wed, 28 Oct 2026 01:20:45 GMT
STOPSIGNAL SIGWINCH
# Wed, 28 Oct 2026 01:20:45 GMT
COPY httpd-foreground /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:20:45 GMT
EXPOSE map[80/tcp:{}]
# Wed, 28 Oct 2026 01:20:45 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a2743a5dd02be54a25d8262d968d3f62d55cbc8e00978ee0d8a050d5983b80c`  
		Last Modified: Wed, 28 Oct 2026 01:20:56 GMT  
		Size: 145.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f738967a922bdb084ad076d9e97c7bf3939437c8fe38aa2b49fa3dbe1a7fde95`  
		Last Modified: Wed, 28 Oct 2026 01:20:56 GMT  
		Size: 2.0 MB (2042289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a77f06ec9e128674d2d6a26cc48a92f4c7d4654042e40ecfa08bd7e7a49c2bf`  
		Last Modified: Wed, 28 Oct 2026 01:20:57 GMT  
		Size: 13.6 MB (13643769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e1f310ad417bbc4865ba26a107b59ebf84c7e43aeeaae8504a1e19dc4bc55cf`  
		Last Modified: Wed, 28 Oct 2026 01:20:56 GMT  
		Size: 293.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `httpd:trixie` - unknown; unknown

```console
$ docker pull httpd@sha256:f671b8f6b12c8b6125678fdd352935150f4519c95829386cc804f8a9b55c4fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2336348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b25c05ab2a8c6c40e120b97edf474fb21f417eb06cc10c2f2a88ca8f6c366e29`

```dockerfile
```

-	Layers:
	-	`sha256:3ef0769224111742a76eb61a0197bfdb7ac2f2e859ce4394bbb74da2687e2a75`  
		Last Modified: Wed, 28 Oct 2026 01:20:56 GMT  
		Size: 2.3 MB (2298737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1616c9a710aa73293197e1e52a0829f80ea8f66cca9e784821539940241dc647`  
		Last Modified: Wed, 28 Oct 2026 01:20:56 GMT  
		Size: 37.6 KB (37611 bytes)  
		MIME: application/vnd.in-toto+json
