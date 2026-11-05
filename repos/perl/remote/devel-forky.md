## `perl:devel-forky`

```console
$ docker pull perl@sha256:e605490c8c11a58d8696e68ca318ea790bced37707604d50d7231daf86d48aad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `perl:devel-forky` - linux; amd64

```console
$ docker pull perl@sha256:22194a663ba0f1090c0cc7d3a93e2eb80d473bd9a379dcc58677a464ed4e4fbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.5 MB (385536428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a915c590a31091a9e857838df14571dd62abc53f216852ab726fee5cb79ab358`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:38:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:53:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:26:44 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 09:30:42 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 09:30:42 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 09:30:42 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:bf9af81856ea5706eacb27a112348407de5599f59bcd9cd0be856e662cd8a491`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.8 MB (49837510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34adeb06c2a31397c5d2536ff0284a8c250aafe6291026b02f01a24762a15dc6`  
		Last Modified: Thu, 05 Nov 2026 07:38:17 GMT  
		Size: 28.4 MB (28403902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0999058e7bd78f12022d99b9ff1ecc345f9424fdd054db9214a08eac5e3eeb`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 80.5 MB (80450900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816a6b4c4749cb5f0d6910e834d01531feb68ad4ab630a32064676d7f435c953`  
		Last Modified: Thu, 05 Nov 2026 08:54:18 GMT  
		Size: 210.1 MB (210146054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721c4d714ec016bf9fe654ea2131e088d4d77c460972ecc4af9f19e52559f61e`  
		Last Modified: Thu, 05 Nov 2026 09:31:03 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7fbe2d46a04e711e8a774038344b32797597f1d80145d7430f26f74a404a8a`  
		Last Modified: Thu, 05 Nov 2026 09:31:04 GMT  
		Size: 16.7 MB (16697796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e36a475e2742cf051b86ba552cf5dfad30afd4d7309ec3ab92cd904374e721a`  
		Last Modified: Thu, 05 Nov 2026 09:31:03 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:1117180d621d7cc5c0da5b2f1b342147e1d18c5cdeda418e7fc97c44c1af8a2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16901192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5dad3cc0714e88972ea27228f423a341852fab37048614dcebe65ef8f5c08a`

```dockerfile
```

-	Layers:
	-	`sha256:8ea96555a16c01246155c10e1399a0f4de74b3d624f91e5f5fbd299ee70105ce`  
		Last Modified: Thu, 05 Nov 2026 09:31:04 GMT  
		Size: 16.9 MB (16883623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c584a36781078708a486e2b1e9b95b913f87554c0b15b3b7f116f9e3aefc3016`  
		Last Modified: Thu, 05 Nov 2026 09:31:03 GMT  
		Size: 17.6 KB (17569 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-forky` - linux; arm variant v7

```console
$ docker pull perl@sha256:95bfaac756734e7a48445e0ba479e7d2eb9fbb5fd6b774a1709180d233f5a0b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.6 MB (322582827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df491300c75e9e841109f0db06927453f9c7209867d7e1d04d488be73fff5a3c`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 08:18:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:23:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:12:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 11:22:43 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 11:28:14 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 11:28:14 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 11:28:14 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:f4571deac5636a396a2163d6b48f873d6a8a303954c381d1bc5b38f11cd16c10`  
		Last Modified: Thu, 05 Nov 2026 06:16:03 GMT  
		Size: 46.0 MB (46026021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74027cb3ba07a0f98d9ab9adf2ca28c59642b10768028ace48ac6d161679e66`  
		Last Modified: Thu, 05 Nov 2026 08:18:37 GMT  
		Size: 25.6 MB (25626366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa0bc3aa00a30f827098d36970520f68cc635976ef5fd2f7d56bd9984417f04`  
		Last Modified: Thu, 05 Nov 2026 09:23:54 GMT  
		Size: 73.9 MB (73902485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bffad35dfa4af0c43ac1d3eae332b5932aa52da9c4c8527eb2d255c3efea6a`  
		Last Modified: Thu, 05 Nov 2026 10:13:16 GMT  
		Size: 161.3 MB (161279478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f10bd08d1e293ae2874c360ed4b4f969f8c77244cea10cfb9c342955896da17`  
		Last Modified: Thu, 05 Nov 2026 11:28:35 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39b899e39da61b43ca73f7271842101ea36bb7294dbe19c5a1529f68ddc886fb`  
		Last Modified: Thu, 05 Nov 2026 11:28:35 GMT  
		Size: 15.7 MB (15748211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff94a489d442989c667d9f26d79d1ae0210bc01ffecb37eb5f0843c34b7e6775`  
		Last Modified: Thu, 05 Nov 2026 11:28:35 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:4bbbd4eee1f5471b60178066de189a2680aec8aa84b5ea8fb78a6b46e204dfd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16686389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05b1a881e5a6236a080bd30338dcc92469bdb07489f61ebd316eeec03206636d`

```dockerfile
```

-	Layers:
	-	`sha256:5d825865f536d0ff1d5ae52a270f88101983e328d1b69c5ad1fb900f7b19e5b4`  
		Last Modified: Thu, 05 Nov 2026 11:28:35 GMT  
		Size: 16.7 MB (16668748 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b980fce551bc2887ac7369ac620ef0b2428b2ed69abead6c06963fbfdd6d9294`  
		Last Modified: Thu, 05 Nov 2026 11:28:34 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-forky` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:77bff63b007f58fb2052ce7bdda745c8ea2d2a0131a156da723a44050466a98b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.2 MB (370192911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:650307d67d7f0df8344856b7bbc482ea69ea2e1f5b304fc477687997e19bf441`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:42:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:28:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:54:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:35:20 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 09:39:56 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 09:39:56 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 09:39:56 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:779a084ae933b1cf040630a0e7bb02d2f926122fb718be525ae05bbcdc26b6df`  
		Last Modified: Thu, 05 Nov 2026 06:15:48 GMT  
		Size: 49.2 MB (49180235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8135f0fcea163d1131a17fb32e94824499ebd8b67b4fb8cf37f4bc98c95fc2f`  
		Last Modified: Thu, 05 Nov 2026 07:42:10 GMT  
		Size: 27.4 MB (27354458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c66e76dee062588fb59411d96090f681332ebaa78686690c5544a17f096b7fe`  
		Last Modified: Thu, 05 Nov 2026 08:29:15 GMT  
		Size: 78.8 MB (78789345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0797fa1d073916fa03c4a80a6b59e40dc2de43a9a139b53c5ed8e471df4ee02`  
		Last Modified: Thu, 05 Nov 2026 08:55:01 GMT  
		Size: 198.3 MB (198311106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:796f85c4cc3ad26718d5dbe063385fda1bcf3d5198ce25f2f5639a44f56d63da`  
		Last Modified: Thu, 05 Nov 2026 09:40:23 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43dcd229532d9c63bc39932dce43fe62d150234d4c85b40d7eda6be9426a495`  
		Last Modified: Thu, 05 Nov 2026 09:40:24 GMT  
		Size: 16.6 MB (16557503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca28d5ead731e503d17d80160e6c129e786a48aa0b23540a96ee722459b89c7b`  
		Last Modified: Thu, 05 Nov 2026 09:40:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:cf7b791b4567e9f131446529dd0d1cfe78cab65c46c03bae5470da9f08700364
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17007615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51307563b720f351dc3d13033a058c5a584be99a107900ed68c04fa5da134566`

```dockerfile
```

-	Layers:
	-	`sha256:79c8c5b58b05b16574b6480d869aa1ee4ab02a2583fa0819699044d5f3f16bba`  
		Last Modified: Thu, 05 Nov 2026 09:40:24 GMT  
		Size: 17.0 MB (16989954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfb32f8dce28aec7440809462e69a88959610f9e1464bad915d11604d5a1242d`  
		Last Modified: Thu, 05 Nov 2026 09:40:23 GMT  
		Size: 17.7 KB (17661 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-forky` - linux; ppc64le

```console
$ docker pull perl@sha256:f17a974715de639fec1a2ec8658cd96f5ce1f5c12896b48b99bdaf06d36b7915
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.6 MB (389580312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80918c12744b97a98804d51ebd2b5d4d67c15182adef432e506961de8ff210fe`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 04:19:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 11:55:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 15:00:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 15:48:14 GMT
WORKDIR /usr/src/perl
# Wed, 28 Oct 2026 15:56:54 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 28 Oct 2026 15:56:54 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 15:56:54 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:fdff336143ff910156b179d6bd4838477e3c227ef408959418ba38d6f8413346`  
		Last Modified: Wed, 28 Oct 2026 00:21:10 GMT  
		Size: 54.5 MB (54501692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd2f234dfafb380c4eb2278c6bd6d139786df244ad4114ab44335c1b7b7e444`  
		Last Modified: Wed, 28 Oct 2026 04:19:42 GMT  
		Size: 30.5 MB (30515417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aec392254d224322b3d5e33530dcb4bd0e1a4373cf7762c4b302eb8c156c7019`  
		Last Modified: Wed, 28 Oct 2026 11:56:10 GMT  
		Size: 86.2 MB (86239129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db3ff4f9a23e9fd81c20867503bdf00e1e95822bd19587ce86305a09d217a75b`  
		Last Modified: Wed, 28 Oct 2026 15:02:16 GMT  
		Size: 201.7 MB (201703847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538ce493824d1e70dc6ba102525d59c4644359169a846bca501f01ca250c42de`  
		Last Modified: Wed, 28 Oct 2026 15:57:39 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509698bf8a8f5d3aa5aabdb62ec1e7420d76db352b6c584ccedd6e2bdfbd384c`  
		Last Modified: Wed, 28 Oct 2026 15:57:40 GMT  
		Size: 16.6 MB (16619959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c0fc8579a150c1d653da3cfd4da47ec0599b093c0abbe88ad4775557b9e873c`  
		Last Modified: Wed, 28 Oct 2026 15:57:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:13bcc89749ff878c2dc3c37e030f02bcd3add647eb6bdb03c02b8aa0eccc5e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16906768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45749eddfb900d0dd08519fd8be144efed05f196a047332d3469f30373b08d30`

```dockerfile
```

-	Layers:
	-	`sha256:e57f216cca00109a9aa7011e510bb06a5fb7e58f371cca1f69ca640d9c224507`  
		Last Modified: Wed, 28 Oct 2026 15:57:40 GMT  
		Size: 16.9 MB (16889162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7c01a597293cf5a57698b65a94cd9b2a5f4e1d156e19fb758e59da65a4aa5c8`  
		Last Modified: Wed, 28 Oct 2026 15:57:39 GMT  
		Size: 17.6 KB (17606 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-forky` - linux; s390x

```console
$ docker pull perl@sha256:916d5791aee447ae4e7d81f79f970f59d608bc4c3d38fe1b780a18dabb5272f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.0 MB (354972344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be9d6372ff9c199081b42d2fad85ad808e6ae276387c82f405e30a0151437794`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:56:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:21:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:25:39 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 10:32:30 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 10:32:30 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 10:32:30 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:cc8ac2db6c9fd29c12c9ec3701cdeda90a0db47520cd2c224978701e217d1ff1`  
		Last Modified: Thu, 05 Nov 2026 06:14:44 GMT  
		Size: 48.9 MB (48937313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dad4e05ab9117aa621e40ab2282d406dc226ef06ff442de712d5e449395fd04`  
		Last Modified: Thu, 05 Nov 2026 07:57:18 GMT  
		Size: 27.7 MB (27737893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d010e522c3d46d1366ac0e8ea44eddd1c52d09dd067c8659051e1693ddf2665`  
		Last Modified: Thu, 05 Nov 2026 08:49:11 GMT  
		Size: 80.3 MB (80287566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5086794c25b34abfa40b05b385b3c844e1f450c831b0bd8a9af4633493835f7`  
		Last Modified: Thu, 05 Nov 2026 09:21:49 GMT  
		Size: 180.8 MB (180807514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c866a99a9b62a4877e1ab08f98d8b281048139eaebfbd35323e118904e31bb91`  
		Last Modified: Thu, 05 Nov 2026 10:33:01 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da1da40b94ea1bc7fccf16bfdc885e85b4cfb6509535094892a6702fad5cb395`  
		Last Modified: Thu, 05 Nov 2026 10:33:02 GMT  
		Size: 17.2 MB (17201792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:291657c405ff622a55e3caf502c37d274d431a2b56a152f39ed7ff02837fbf63`  
		Last Modified: Thu, 05 Nov 2026 10:33:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:268e51603d592d0fe0eec47a6ac78e032c0f1d2de35214a4edcf298e419fc056
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16706443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d62797cbc357e33a1ec26a76b9602277e0e5f737944db349aa18a46f65bedfee`

```dockerfile
```

-	Layers:
	-	`sha256:6600319ef92289d9546e83c4f56a3f543e801996605d4d4f8763b44963096a9f`  
		Last Modified: Thu, 05 Nov 2026 10:33:02 GMT  
		Size: 16.7 MB (16688874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e995639a6d2b80acc924fbb6abf904352ad3d493d0cc2958f1c198da73af08b4`  
		Last Modified: Thu, 05 Nov 2026 10:33:01 GMT  
		Size: 17.6 KB (17569 bytes)  
		MIME: application/vnd.in-toto+json
