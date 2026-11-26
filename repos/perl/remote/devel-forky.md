## `perl:devel-forky`

```console
$ docker pull perl@sha256:b252a5f1ae0bc454fc83e5e6a49a6f5d3b31341ebc48f3189875f9c94793765c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `perl:devel-forky` - linux; amd64

```console
$ docker pull perl@sha256:10a8622b4e959a2e61abef5822b39378389fed20c4acbe7f2799eaf627e7dd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.3 MB (387294953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acfb6f10f79271c35b863f37f07ba107cb1c0652c19a9751249c2791c746356a`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:39:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:21:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:15:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:30:28 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:35:06 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:35:06 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:35:06 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:e0532024bbbbe838be5cdb81657e837efca9a68f1a5e2c55bc6bd02a30fae548`  
		Last Modified: Tue, 24 Nov 2026 03:40:04 GMT  
		Size: 50.8 MB (50824479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88679e6561358812a7e8ee3a27635a14d2a615b8fe0bedacfea7315727a46bdd`  
		Last Modified: Tue, 24 Nov 2026 04:39:29 GMT  
		Size: 28.5 MB (28492186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88212a19b9a5ce95004aed9a150e83fcff30fe37e47bcd6c5236065310f32831`  
		Last Modified: Tue, 24 Nov 2026 05:21:20 GMT  
		Size: 80.7 MB (80656278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85bd5cebd5cbbb3dacfa9b9d29b1e8613657e373601bd3aa45fe6c4f67a923fe`  
		Last Modified: Tue, 24 Nov 2026 06:16:09 GMT  
		Size: 210.6 MB (210577620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a1b4e17a29f773816f5835602817f0a73bb31e2692d697ffca626798a6f34f`  
		Last Modified: Tue, 24 Nov 2026 07:35:30 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e109e2d7fc53aa7c80abed163bc53070ea0f1fd938e7f95dda21309719a58682`  
		Last Modified: Tue, 24 Nov 2026 07:35:31 GMT  
		Size: 16.7 MB (16744125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c153a33ba5e36b553fdc050bb1112b66163378b97cbaed0ee4dc3ac308cd8c`  
		Last Modified: Tue, 24 Nov 2026 07:35:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:eb870e2c3a9833563dad8b7dd232d36fc3880b43ded2066801b098c56e10ca8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16941336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc63872b1550f411eae49d8f66b239f15f1d6bca3a652518dbbc9a91db965ca`

```dockerfile
```

-	Layers:
	-	`sha256:2298a2dde7080c84ac73b917e45ba889e6a3cb5e31a72face09def2f89ff986f`  
		Last Modified: Tue, 24 Nov 2026 07:35:31 GMT  
		Size: 16.9 MB (16923768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a45ac7f26f092be8dccd1abd8ddd3ba45a5738c38927d1e10fb34e1a1f0deae`  
		Last Modified: Tue, 24 Nov 2026 07:35:30 GMT  
		Size: 17.6 KB (17568 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-forky` - linux; arm variant v7

```console
$ docker pull perl@sha256:a2c69e429e920d991921e9dd0943f8c045848dc145dcc99c0ed6d25a6dbfbf54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.9 MB (323859801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2facd402693fff74df182d79c2f7d20ddd6acb1cf187197d0994409cffa5cf`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 05:16:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:42:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:13:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 08:37:35 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 08:43:15 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 08:43:15 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 08:43:15 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:ad15e1ccf6667f0b5d63e5965cca3e5ec1c04c4e3f2c41af33d31b007d744dcd`  
		Last Modified: Tue, 24 Nov 2026 03:39:59 GMT  
		Size: 46.8 MB (46761292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1143882d9322f3f9a5e283934cdafa1116ddb376b1373be2859f35ccd6fc0594`  
		Last Modified: Tue, 24 Nov 2026 05:16:16 GMT  
		Size: 25.7 MB (25652342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa902717ac1e6162cfdd88e0a136bf97966259da8488a4ea77f525fe4f13e4b1`  
		Last Modified: Tue, 24 Nov 2026 06:42:26 GMT  
		Size: 74.1 MB (74067196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e708c8cf5f0cd18ff0bf9357a9a2546e564c6ac842b006f851e879666cff1d3c`  
		Last Modified: Tue, 24 Nov 2026 07:14:09 GMT  
		Size: 161.6 MB (161578009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7725ed7fd9bbe0d2d54e9c93f1eed7ca1d254778d2869ce0489fa4d7316ed1f`  
		Last Modified: Tue, 24 Nov 2026 08:43:37 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d70247cde365addc7b964a911b8a6d6d81f99ba151f8dbae74f62956ab65c35`  
		Last Modified: Tue, 24 Nov 2026 08:43:37 GMT  
		Size: 15.8 MB (15800696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80602caa8ce7a76d2ed6d81445203fdc2ac85381a91f40a9c48b3e5cfdce81f2`  
		Last Modified: Tue, 24 Nov 2026 08:43:37 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:37116b654cb093018c28e21d69b075e6d82000f38b4d4336cd50a3094fae9b24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16726579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ae1adff193c86cd2e86ad9f782f1f9bba8e4184767c2efc8805f72ec030b41`

```dockerfile
```

-	Layers:
	-	`sha256:80f8dd14c128c8282bdef9d77d980127885f9542d7b2353ad892dbbf33dabe53`  
		Last Modified: Tue, 24 Nov 2026 08:43:37 GMT  
		Size: 16.7 MB (16708938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44f4b89ea1b2860c0391dfe315156794c056448c93dfc4573e120967eb1261fb`  
		Last Modified: Tue, 24 Nov 2026 08:43:36 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-forky` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:89f018647a3a4a66d0f82b0b3a76fa2c2e8a935cde5b688cf7b020bdadef4800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.5 MB (371503004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d378f5652622728c26f6f91c48325cef88183a96005a2f5b51a0607ed6598847`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:43:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:32:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:13:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:31:45 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:36:29 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:36:29 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:36:29 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:f2d0466274a27fafe53b0ab31eac3d74e9c4c21ed2c12e050bfaffdc8a143a68`  
		Last Modified: Tue, 24 Nov 2026 03:40:15 GMT  
		Size: 50.0 MB (49959536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1fe612f86f020e2e30e6954733495ebb32e497ad47e90706869e4c2fca69ae2`  
		Last Modified: Tue, 24 Nov 2026 04:43:39 GMT  
		Size: 27.4 MB (27385671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7267a19dce8d5e2a5891a284403197ddab43fddf8e15612d2ebfb8c652cffbb`  
		Last Modified: Tue, 24 Nov 2026 05:33:11 GMT  
		Size: 79.0 MB (79011936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a630181683c0c2f08cb6f81f26ca911f8b46f1ac63de725c31834dd56e6782ea`  
		Last Modified: Tue, 24 Nov 2026 06:14:39 GMT  
		Size: 198.5 MB (198544960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1849513ec272f370843f073f86ebad5038d07345b3dcaada9e35ce945d6c46`  
		Last Modified: Tue, 24 Nov 2026 07:36:51 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c050b74eae602bf3eeb2270098d61fa33450d863e364557a99f4e12357185e`  
		Last Modified: Tue, 24 Nov 2026 07:36:52 GMT  
		Size: 16.6 MB (16600637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f3285623a955bee7ce035eda5bdf59ca0ed17abada58045a334cce252246158`  
		Last Modified: Tue, 24 Nov 2026 07:36:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:65c414b5a249ad2096d0d4bf2b0ba72139d237881b40e168f668497b309ae159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17047775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a06fb71028f00beeb80fd50a15c5792d01466b70576a16384afaad4fef8e239`

```dockerfile
```

-	Layers:
	-	`sha256:6543754f2e0f57149c1a90c3c599ae4c8739a4fecaf79a1677e6f35c06cb583a`  
		Last Modified: Tue, 24 Nov 2026 07:36:52 GMT  
		Size: 17.0 MB (17030114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4608161b0973bbbe033a56f83c6af859095dff6fa5364008167454fdd20cb0f5`  
		Last Modified: Tue, 24 Nov 2026 07:36:51 GMT  
		Size: 17.7 KB (17661 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-forky` - linux; ppc64le

```console
$ docker pull perl@sha256:da2eb2d9c633285db78deaef54fabe83651713a86918aebe7f2221f692158187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.2 MB (391190293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebe8be6123f9948b9ee5a966ba06c95520bc294504db12c8f5010d6ec1806b5`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 06:51:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 14:03:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 16:56:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 19:34:55 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 19:43:39 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 19:43:40 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 19:43:40 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:8c9c871a59639f586eab4e27a4e6dde32d5de918c3c725dcf429285aa24641a4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 55.4 MB (55430740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e972f99456c6523626c70628380eebc3727e7c065093bd8b6cf7ac8785b35726`  
		Last Modified: Tue, 24 Nov 2026 06:52:08 GMT  
		Size: 30.5 MB (30539861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:366145ec0cb581e04446f24449afbf9beca020bf59560e88131f87aec1f321ad`  
		Last Modified: Tue, 24 Nov 2026 14:04:12 GMT  
		Size: 86.5 MB (86499386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d64487d2d299824114f744a21298fbfbf5f0dfe29b4a8093bca003f8fd72561`  
		Last Modified: Tue, 24 Nov 2026 16:58:09 GMT  
		Size: 202.1 MB (202050023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d640ebd22341d10a87b97f6ef51d7c4d8031d0b8c58ade567ef8df862c2b15fb`  
		Last Modified: Tue, 24 Nov 2026 19:44:40 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70b2be80d9fcbe13cbd45b231bdecb02889e2dccabe627c8be862d7e5967d9c3`  
		Last Modified: Tue, 24 Nov 2026 19:44:41 GMT  
		Size: 16.7 MB (16670018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e468f26340f75c363ce555a7bef59b5ca91502c68769a3f496dcdcf3f5b2537`  
		Last Modified: Tue, 24 Nov 2026 19:44:40 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:70f92c1db0175cae9b9bbbc577137a35a543df71f3247d3c773a6039669582ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16943821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26eb05a3d63fe8e88cde6bdea902df3a3e4f698849ac1afa292a6697af2c124d`

```dockerfile
```

-	Layers:
	-	`sha256:86bf02653f5b354d0445158b9aea598a8ef3688c9001149c4f292082f96bde82`  
		Last Modified: Tue, 24 Nov 2026 19:44:41 GMT  
		Size: 16.9 MB (16926214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d93c2bfee8d3e9756b24ff2dc2224795cd6827d104f834805024312db616147a`  
		Last Modified: Tue, 24 Nov 2026 19:44:40 GMT  
		Size: 17.6 KB (17607 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-forky` - linux; riscv64

```console
$ docker pull perl@sha256:d6bf773b01cb5acd0ebbeaba0ccef51ec3edd58b087692236a236e2896652779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **528.0 MB (528047479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c483dc3ee25f5fe39ea592e469494cc3f9b4fddcb6105d1667bc9db49ac015fe`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1793827419'
# Sat, 07 Nov 2026 04:12:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sun, 08 Nov 2026 18:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 11 Nov 2026 22:46:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Mon, 16 Nov 2026 17:43:08 GMT
WORKDIR /usr/src/perl
# Mon, 16 Nov 2026 18:59:23 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Mon, 16 Nov 2026 18:59:24 GMT
WORKDIR /usr/src/app
# Mon, 16 Nov 2026 18:59:24 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:af6814c9b170f0ad2c29fb9a95b0e4fbd5b006cf40779c5aad8ca65ea06385ca`  
		Last Modified: Thu, 05 Nov 2026 07:20:48 GMT  
		Size: 47.3 MB (47262981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:804f345d2c293931117d186b7ea9940c8b2f0071589026ba4be5a6074242cf37`  
		Last Modified: Sat, 07 Nov 2026 04:14:37 GMT  
		Size: 27.5 MB (27488278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1408c8cedab483c3b8c87a3a903d2bf05c152d52f874985da2d6ca93867e6dba`  
		Last Modified: Sun, 08 Nov 2026 18:45:30 GMT  
		Size: 77.9 MB (77876334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15859fc30870f551ebfbb74ce1b96124a72a1e6c0a77ec0252bacbc7b8d371da`  
		Last Modified: Wed, 11 Nov 2026 23:05:05 GMT  
		Size: 359.3 MB (359330259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45f0631a830ecf8eb754779174b1453ddbf7afafd4fa6b8893ebc9da8f737743`  
		Last Modified: Mon, 16 Nov 2026 19:08:27 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e5696a520b9a6a46f62847678fb0c9c0656fa4a23ecb2ef2ea39afe58861ab`  
		Last Modified: Mon, 16 Nov 2026 19:08:32 GMT  
		Size: 16.1 MB (16089361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e959e45f7bb0684249ed3119adb545d0d9975e8dc2db986f55b8e9a8174f8696`  
		Last Modified: Mon, 16 Nov 2026 19:08:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:1bdc37cd4d132adfb697dc376f10cc70c0d5917913c67e32efafbe8c36aac432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16972568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aad9c5c499369594400ac9387bc421f3ad5422ccdf958f67ac91c4f8d7fb075`

```dockerfile
```

-	Layers:
	-	`sha256:f4190dd99cc0c66661182396106d710eb457cf7a9c80855f6b3675db732b17df`  
		Last Modified: Mon, 16 Nov 2026 19:08:32 GMT  
		Size: 17.0 MB (16954961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e459a05ce14935ac0838417c0b53fd8b67305dc76d6a3c44cb32b15d756d61b1`  
		Last Modified: Mon, 16 Nov 2026 19:08:27 GMT  
		Size: 17.6 KB (17607 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-forky` - linux; s390x

```console
$ docker pull perl@sha256:93ce91b8c3c433d52c0c9ddbb2d9ae1027b0543dcce079e3750487bbc37504ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.5 MB (356460433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ab3b82c8332cae9d2c4dd6b752b8c650340d07c92daf3241217d51b538afc3`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:52:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:41:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:14:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 08:18:19 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 08:26:37 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 08:26:37 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 08:26:37 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:a1c5eacac2275bcace23e821f0eb1d47f962bdcf22d863bf28709cb8b3953b7e`  
		Last Modified: Tue, 24 Nov 2026 03:39:06 GMT  
		Size: 49.9 MB (49863272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4df43e56d4aaaa7b350b094f3202a2410c8a7766c010d1e11839c68a7bf90eb`  
		Last Modified: Tue, 24 Nov 2026 04:53:11 GMT  
		Size: 27.8 MB (27775262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6689293e6ab97848a0f78f496f0429d7bb6b6532a1149a16738727f98aa1e8ba`  
		Last Modified: Tue, 24 Nov 2026 05:42:24 GMT  
		Size: 80.5 MB (80470982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd60df2ecc85658688ef2f992aa82c538f9eac044d10e11b447bf88e5692759`  
		Last Modified: Tue, 24 Nov 2026 06:14:58 GMT  
		Size: 181.1 MB (181111596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84685104caf23507eabde82a312cf6125a90a79e74c14ec81f676cbb8824dadb`  
		Last Modified: Tue, 24 Nov 2026 08:27:29 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449fe656401e584c404cc2990fa956f9849f24b39e3a308e743f3d48ba4bbf6c`  
		Last Modified: Tue, 24 Nov 2026 08:27:30 GMT  
		Size: 17.2 MB (17239056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294aac988bb0985f021038e497f1fbdcf30a8f4c55b107aa5a8e538f36848667`  
		Last Modified: Tue, 24 Nov 2026 08:27:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:3eb3d4506e127ed715772b1bf301a6e6d8507960280435551ba142e54315cef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16746573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4446c466a687fe6c2165ef805d8cf1e9ea30e70d31440b0a123d15a4cdaaa1a7`

```dockerfile
```

-	Layers:
	-	`sha256:c5449601df51de991b0d6c8ef12b6032ccf292588efadfa72be3878f0cd7a2db`  
		Last Modified: Tue, 24 Nov 2026 08:27:30 GMT  
		Size: 16.7 MB (16729004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05c0cae9c019dfce4b7bfd6abe260046606bd989c5aa610a8feb951ea4f7fa50`  
		Last Modified: Tue, 24 Nov 2026 08:27:29 GMT  
		Size: 17.6 KB (17569 bytes)  
		MIME: application/vnd.in-toto+json
