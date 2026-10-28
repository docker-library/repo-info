## `perl:devel-forky`

```console
$ docker pull perl@sha256:a4f0a7a8f8279a8663b30460ce855cfebd0c2d212a8e2a7631ff5cb96732e88f
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
$ docker pull perl@sha256:27e70b85a08e891d4fdae6d4b05d977bdb4ee71473c640943c351ff22b5745cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.3 MB (385327703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8992f429d5260b242dc87fc81f14aafb265c024a454e02f07bb80b9e05e08d18`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:39:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:23:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:15:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:23:15 GMT
WORKDIR /usr/src/perl
# Wed, 28 Oct 2026 04:27:15 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 28 Oct 2026 04:27:15 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 04:27:15 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:65929644eb8cbb6d5dfb27c78d4d6cb80d806c5c2ed37c7b627d5a03a29749cc`  
		Last Modified: Wed, 28 Oct 2026 00:10:34 GMT  
		Size: 49.8 MB (49814412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea818440f99a7fb5fa66dfa730d96329ef0f515da61646e9569c136067cb34d1`  
		Last Modified: Wed, 28 Oct 2026 01:39:50 GMT  
		Size: 28.5 MB (28512452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912f7fb872b47c0231dbad5bac1dbe21ae0bd29e00e45b4912e9d8ff5fa833f7`  
		Last Modified: Wed, 28 Oct 2026 02:23:27 GMT  
		Size: 80.4 MB (80401284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c86a1161bd00e81b23860f65d407e0d35b5ba64b2f237a0784841e86b6bd87`  
		Last Modified: Wed, 28 Oct 2026 03:16:04 GMT  
		Size: 209.9 MB (209901571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78ba037a45d3126ce9b417d60876089a357f57db18adfd040ecd37cdbf8c53c1`  
		Last Modified: Wed, 28 Oct 2026 04:27:36 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576c4333ad55998b8d7c1973baeb127e0cd39d92c9b6f54be43b06dbdb4bdc4a`  
		Last Modified: Wed, 28 Oct 2026 04:27:37 GMT  
		Size: 16.7 MB (16697715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1aab2ca023078fba971030e25b5fd10ad4570e053400e8fdd17dbf25312c924`  
		Last Modified: Wed, 28 Oct 2026 04:27:36 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:5c10a8ed31c75fa04a940f40c056f2fa5673d204ef10763368cb5bc0644d0dad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16904378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c724dcdbc67d5ec1fe591a26f95ef26b50bc836d369f1422cab5df284486cb6c`

```dockerfile
```

-	Layers:
	-	`sha256:e16a780ebc5fcd3d568549c47fb91795453636bc13abca6190815573f21cbcdf`  
		Last Modified: Wed, 28 Oct 2026 04:27:37 GMT  
		Size: 16.9 MB (16886809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce9a6d55ce086934badedc8cfdc63778822dde284250f57722937aebf07c2b5a`  
		Last Modified: Wed, 28 Oct 2026 04:27:36 GMT  
		Size: 17.6 KB (17569 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-forky` - linux; arm variant v7

```console
$ docker pull perl@sha256:6abc2d8efa36f1b8c4ce5f9b6889ebbd18dcda821e383d42c0f91bfc13cd5b15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.4 MB (322391063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:007c7c9a999bfa98cf4a31873ddf7938d4c87c81f4a438e6933c874122686f04`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 02:21:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:47:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:13:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 05:23:37 GMT
WORKDIR /usr/src/perl
# Wed, 28 Oct 2026 05:29:04 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 28 Oct 2026 05:29:04 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 05:29:04 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:04120beab8a285c5eddc34b1a64b3c13ee0d4b39ff8ed18236f14b053877c362`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 46.0 MB (46005247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c9ef57293f97f17623353304a5e9c68415a52dd2dd9d4d99de77fb61e76a2d`  
		Last Modified: Wed, 28 Oct 2026 02:21:32 GMT  
		Size: 25.6 MB (25595834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059712e68808cb6a5ff27609e354a5c38fced224fce3d1435b0912c2ada37d26`  
		Last Modified: Wed, 28 Oct 2026 03:47:35 GMT  
		Size: 73.9 MB (73855417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e3c6b88fb5e9fd1d184c1ea9269827705b2188615917bbab56e76cd0bc73c2`  
		Last Modified: Wed, 28 Oct 2026 04:13:51 GMT  
		Size: 161.2 MB (161186011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc7ab18a45907cec5552410415f81bcf237cc07f8f008e57eacd8a4ce3e4fa94`  
		Last Modified: Wed, 28 Oct 2026 05:29:25 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:079d3d7882e2a07b0873c621d29bf85d5df0072c3e79cc66fa5f3d3cccdc2d73`  
		Last Modified: Wed, 28 Oct 2026 05:29:26 GMT  
		Size: 15.7 MB (15748287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a084be099f123d8b515ca60f847f4c2dd89ce32cef28d3b65b7562df64ae906d`  
		Last Modified: Wed, 28 Oct 2026 05:29:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:8840128b5705211a96393ea0b360958fc0d78ce5c7f01cf1f3483ae090f1c649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16689575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca7dea281f4bb1d8abf8359630bb9b0f5f1fd617796e0a9c1aacf8231f65e3d`

```dockerfile
```

-	Layers:
	-	`sha256:8ba0d757494c071089120ebeb7a2ed91b88ede7b1ca84fd2e9e50981766f6c9b`  
		Last Modified: Wed, 28 Oct 2026 05:29:26 GMT  
		Size: 16.7 MB (16671934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ef145fc4088be930b3f03973f4b3ac9061760898f70c4fe1e20bc87557e76be`  
		Last Modified: Wed, 28 Oct 2026 05:29:25 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-forky` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:b231e5e2723530b3a9ff5a3b69d94ca8eb5873a83455a4645a15f5d296ee0a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.1 MB (370100189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b05b2c7dc5b99697f977192af58fc90232b7453af608c6c84ad78a4773e930`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:43:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:15:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:23:20 GMT
WORKDIR /usr/src/perl
# Wed, 28 Oct 2026 04:27:49 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 28 Oct 2026 04:27:50 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 04:27:50 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:fba7d1c02cf0644704ea4dcf623c9231723afd3f333d8f052a829e427cefc4a7`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 49.1 MB (49143254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1fa1a66f1c4403c3ff5e15f93ed7ef65ec5d3ed0834152f996b24e60199114f`  
		Last Modified: Wed, 28 Oct 2026 01:43:21 GMT  
		Size: 27.4 MB (27429765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f5d13d5b4cb2ecf626f869b4c74afa28ca53bdd2e9e1213516992c5c599bf9`  
		Last Modified: Wed, 28 Oct 2026 02:35:07 GMT  
		Size: 78.8 MB (78757985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca80be1ce2654cca9949276a8e286280cebde116058974a2768b19f1837df37`  
		Last Modified: Wed, 28 Oct 2026 03:15:58 GMT  
		Size: 198.2 MB (198211662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee51f765d2d2f88d1e9c08c5172278819331fa228953ce72c767c9b62ec19f9`  
		Last Modified: Wed, 28 Oct 2026 04:28:12 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb81b28e4a408ee707cce558547ca89f2a9762fe9476a338b3e48db7b99b8d72`  
		Last Modified: Wed, 28 Oct 2026 04:28:13 GMT  
		Size: 16.6 MB (16557255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608bf92d19b46d89c958e588c8821a65deff501dc951fde3a2b03a523aa02728`  
		Last Modified: Wed, 28 Oct 2026 04:28:12 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:22e103e073e2050b2b8d565c360ea62565d5294e5096b7ddfbc62e12364d50cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17010801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f101539d07179728c5acf5529f33acee54ea2f894d3110ef070a061a3aa445ac`

```dockerfile
```

-	Layers:
	-	`sha256:01e0c1a5f84c05b04e0d68751ba2228ad29a471ef39d75cbfaea43757cdfed9d`  
		Last Modified: Wed, 28 Oct 2026 04:28:13 GMT  
		Size: 17.0 MB (16993140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7057f667ed73258a68b0916fd1f46fda278f3dc3a2c231a60539b60ffcceec1e`  
		Last Modified: Wed, 28 Oct 2026 04:28:12 GMT  
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
$ docker pull perl@sha256:bf7815483eddb3323a7aedf584567dfb97334dd0b1fd1b849f8290feb211c081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.8 MB (354825875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b203a5f118ba0b16a474f627bb1bd919fa886ff9cf1dc0c71c7f0ceb26830fd`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 02:42:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:11:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 05:20:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 16:35:08 GMT
WORKDIR /usr/src/perl
# Wed, 28 Oct 2026 16:44:18 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 28 Oct 2026 16:44:19 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 16:44:19 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:d60baeb673f726dfd8d5d1b46f51e89f23e17eb3992e524fa3e225597d8cc8e5`  
		Last Modified: Wed, 28 Oct 2026 00:09:37 GMT  
		Size: 48.9 MB (48910387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d053a611ec912d772ef2485cfd80a68a9dff4b99352e9cbbb359915369783e`  
		Last Modified: Wed, 28 Oct 2026 02:42:36 GMT  
		Size: 27.8 MB (27805740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf56047d9724d8a205ee3987d6c40d7d1a3b7139a73384a53ff14751025b492`  
		Last Modified: Wed, 28 Oct 2026 04:11:40 GMT  
		Size: 80.2 MB (80222844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c3af8a31ca27a039753c550d5d2f001ac93cdbea94344b608e78382bcccadf`  
		Last Modified: Wed, 28 Oct 2026 05:21:39 GMT  
		Size: 180.7 MB (180684937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e3c1d5f226b5b262d041561a32cb6044f99dfc8f93760fa339ca495ac9488df`  
		Last Modified: Wed, 28 Oct 2026 16:45:22 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d23998886818c1c01d8c50d90a6eca6550e4c8d9fec503b6b53d1575addb45`  
		Last Modified: Wed, 28 Oct 2026 16:45:23 GMT  
		Size: 17.2 MB (17201698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f00491abef8ccf8dea24a94ae5d1c360424920c2c6e4368bb7b16cdb1d08f1e`  
		Last Modified: Wed, 28 Oct 2026 16:45:22 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:02461d21f512e4cb46ab4f3c1cec8d70c7fe34869a74a27e900e406020aff68d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16709628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e298ec21e9620f860c5e8bc248a53b31883696727b571bfc1cf44edca9abedcd`

```dockerfile
```

-	Layers:
	-	`sha256:eee2875dc1c24033ec474bf11ec924b5b0b91260aaf84bd8e58fb4464c82a3f0`  
		Last Modified: Wed, 28 Oct 2026 16:45:23 GMT  
		Size: 16.7 MB (16692060 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3124a767dec1d5f2518176e957892a85e01b7d7d18f4b7557a7056d1eb54e347`  
		Last Modified: Wed, 28 Oct 2026 16:45:22 GMT  
		Size: 17.6 KB (17568 bytes)  
		MIME: application/vnd.in-toto+json
