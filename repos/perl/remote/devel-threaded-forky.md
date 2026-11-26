## `perl:devel-threaded-forky`

```console
$ docker pull perl@sha256:413003c98b2022a2eedcf04efcd2d2fa68b4908fd5dbf248ea0c0451a7f8dc4a
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

### `perl:devel-threaded-forky` - linux; amd64

```console
$ docker pull perl@sha256:3f72304a374e0ba9466ed649d0bd4fac186c4e5f1a952a7e1cad448f52f47bd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.3 MB (387335321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a78d646a12a1a60b16c7bfd4a114811b094d1ee89c4c776031d9e85662210852`
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
# Tue, 24 Nov 2026 07:34:04 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:38:40 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:38:40 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:38:40 GMT
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
	-	`sha256:7693dd29b563df9f99f05c95e29636edb28fb434617674ca0f53c9438da9ad9f`  
		Last Modified: Tue, 24 Nov 2026 07:39:00 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:861b782dd8b118776d22d84f97d77527a31e56217780fcf0a15486297bb4f4bd`  
		Last Modified: Tue, 24 Nov 2026 07:39:01 GMT  
		Size: 16.8 MB (16784495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d83901b1dce1b3bcf6338714a08c2a58e9e7cbdc536056e256f47974e3d0f5bc`  
		Last Modified: Tue, 24 Nov 2026 07:39:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:e4fc56c271d6a6fa216e6e03c7e8b792922d95cfa0f5fcdf1d56f400b4b1c84b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16941496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dde3e36ec5fa662de9c4d2064484ffc700dfa87bd3aa421d430a731d9f068e9`

```dockerfile
```

-	Layers:
	-	`sha256:402711517799c1210ac051d0e5deb83450d513ae11c074f1d331d01d02ec3085`  
		Last Modified: Tue, 24 Nov 2026 07:39:01 GMT  
		Size: 16.9 MB (16923822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9eceae1d16114f27d0532895adbe970a2ee29827b31e2d829e72a2861b9c2823`  
		Last Modified: Tue, 24 Nov 2026 07:39:00 GMT  
		Size: 17.7 KB (17674 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-forky` - linux; arm variant v7

```console
$ docker pull perl@sha256:2cac5cf07b2910aefce9f961dca08cdf95eed3e40c73136120648003c80fa816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.9 MB (323886948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19ce573b50d30fd217c22f382d7c8dff754bcd3effece714a230931aa2727bc0`
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
# Tue, 24 Nov 2026 08:40:55 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 08:47:06 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 08:47:06 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 08:47:06 GMT
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
	-	`sha256:ee4b15230e8e33114d88690fe63722f0d55b667c9399871ef861804c6b5d50a0`  
		Last Modified: Tue, 24 Nov 2026 08:47:28 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdbb3c3a29d432fa2741b2a43e0c2eaae52e6eddb04c9a37992641950b13c4df`  
		Last Modified: Tue, 24 Nov 2026 08:47:28 GMT  
		Size: 15.8 MB (15827842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62428cef259c94b6ac6eed61e9ab45cda843e0a5abb48fba4084e54280aa6067`  
		Last Modified: Tue, 24 Nov 2026 08:47:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:6f071f2343fbd6353f9a18a2f2ab0e3357461349eebd5a858e9026fe4f1dcd01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16726738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7b2ed46b7ab2614dee7d71dc1e56657fd1ad4133ffda407f7d157a59a0afc58`

```dockerfile
```

-	Layers:
	-	`sha256:44dddecb02d0b3d9cf940366c7af262d4cb172ea307e328be522a9028f84d4e4`  
		Last Modified: Tue, 24 Nov 2026 08:47:28 GMT  
		Size: 16.7 MB (16708992 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95c307b86b62d7281f50e755aa1f6020df1caaeaa59734d457a1f916dbe5d54c`  
		Last Modified: Tue, 24 Nov 2026 08:47:27 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-forky` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:fabc57cca882d468386ef9ec89ce9321f9769e09a4c8f37c5ac8738964da9e36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.6 MB (371562149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f32adf24d3be2b974fed5295a79264b2d7d29d8b3090ef7fe09cf817859e9d`
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
# Tue, 24 Nov 2026 07:36:43 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:41:48 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:41:48 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:41:48 GMT
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
	-	`sha256:e83d3bac69edd8fc4575615464a06bacd6b8820154c41ff6b0de2afe723c57cb`  
		Last Modified: Tue, 24 Nov 2026 07:42:10 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5469f2d77ad34d5d0927bd341c7f8ed2a297d87913f840fe1ef687191e1bfaae`  
		Last Modified: Tue, 24 Nov 2026 07:42:11 GMT  
		Size: 16.7 MB (16659779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aef27efd54ed8ea3a56738e8dabc1c374a89cd7f108ebe46a973646ceb7d1244`  
		Last Modified: Tue, 24 Nov 2026 07:42:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:e8b2599af2e3515a122fd3434ad3508de853af7aa9d3dbe7d26bd30dc1cfd795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17047934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ff6218faf1e5579a84b1cb4bd328969bedd4bf9318cda15d68c2eddb7f6c97`

```dockerfile
```

-	Layers:
	-	`sha256:e6286069788dfcbfa8e145ca9e980cdf585b06046eca4ec7f23732ad40aba6b1`  
		Last Modified: Tue, 24 Nov 2026 07:42:11 GMT  
		Size: 17.0 MB (17030168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0b9aad02611253e567ed8f7fe4589651e88096bfac84a63c18b26bad7436320`  
		Last Modified: Tue, 24 Nov 2026 07:42:10 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-forky` - linux; ppc64le

```console
$ docker pull perl@sha256:c240dd6fb69f9b99e0bec44b56e2bd5b7a1dde8adc08cef4020d1add7f797aed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.3 MB (391303988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b43812702078f9c37e4923284bb2466dbdd073f198e36c777dd1bacc331c85ea`
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
# Tue, 24 Nov 2026 19:56:11 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 19:56:12 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 19:56:12 GMT
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
	-	`sha256:8e24a91512d25f3d2c5ef6e72bf5927361317def962f397606aabc1bfc78d5d5`  
		Last Modified: Tue, 24 Nov 2026 19:56:58 GMT  
		Size: 16.8 MB (16783713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5d036b6b40332bc22da7e41e3c28a030035e56f5eb12cf37ae6a0fb1f1d6b8`  
		Last Modified: Tue, 24 Nov 2026 19:56:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:66ceb97e6f6f5f1548edf5a141f9a3e83441dd9f688e6a50cfbb471c0c628bac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16943979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e23af2d025efaf8ae12714561fd420e4e5d93726486c1e42aa37bad03ea1d33`

```dockerfile
```

-	Layers:
	-	`sha256:cb283cdbf281bdef42fcb0717e37d1db2a09065f8de202c483a70c69409d3e74`  
		Last Modified: Tue, 24 Nov 2026 19:56:58 GMT  
		Size: 16.9 MB (16926268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7b3f4ca5d466c5a3e37626348a16daf2a2303b0df9a6334289938bea948149b`  
		Last Modified: Tue, 24 Nov 2026 19:56:57 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-forky` - linux; riscv64

```console
$ docker pull perl@sha256:6610fd2cd2589d05d1216d0ca03e40a9ee5d7d999015c594cf12457f9f19930f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **528.1 MB (528091631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ddc4e731cc862a8f8ea72fca0aad6f593091166ce85037f52a2fd3d1c52ad3c`
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
# Mon, 16 Nov 2026 20:05:04 GMT
WORKDIR /usr/src/perl
# Mon, 16 Nov 2026 21:22:54 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Mon, 16 Nov 2026 21:22:55 GMT
WORKDIR /usr/src/app
# Mon, 16 Nov 2026 21:22:55 GMT
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
	-	`sha256:fee12500964be36a07605ef3a20b0f1bcf2bb54dea5ee65e74273909a40219f9`  
		Last Modified: Mon, 16 Nov 2026 21:31:29 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26872a72b47d6fe785e85ba1439fb44ce037c1db28c433b1ddf8dc0be79331f0`  
		Last Modified: Mon, 16 Nov 2026 21:31:34 GMT  
		Size: 16.1 MB (16133513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed83dee1c6315940a2370aa0fd6da8ddda8c021d4e624be278e025e963c549f0`  
		Last Modified: Mon, 16 Nov 2026 21:31:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:2fa28386ebcd1bdedf8536ebf1f9334428d86394f3d4fde0954d66849257724b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16972727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792eb2a9f93428afb73f8acb28fe67040a809fb3b10de096433cde3348427fd7`

```dockerfile
```

-	Layers:
	-	`sha256:618d8577188d1f4be90fdcf731178b2b38e4ef90226e251874cec59357809b2a`  
		Last Modified: Mon, 16 Nov 2026 21:31:34 GMT  
		Size: 17.0 MB (16955015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcc81775c101b8e33ad85cdb10d41391022d9cdf256212ce7d42b14cd8dc130e`  
		Last Modified: Mon, 16 Nov 2026 21:31:29 GMT  
		Size: 17.7 KB (17712 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-forky` - linux; s390x

```console
$ docker pull perl@sha256:2a60750d412236d6195a8450504560f0c089fa9e8e205f61c85b2ac33bd28c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.5 MB (356529147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56b21972202a4a3b18e0598c3f6c967a0df8991a101b37546c8712d436fcf319`
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
# Tue, 24 Nov 2026 08:43:08 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 08:43:08 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 08:43:08 GMT
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
	-	`sha256:5b2e317bc55a1df6df19ab282a6778f981ba9cac82b1e7ab228010a8e75cbf2d`  
		Last Modified: Tue, 24 Nov 2026 08:43:45 GMT  
		Size: 17.3 MB (17307769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d75ef7a6c13bffd9a47690af54b94fd1e5556751891688e3339518c6d28899`  
		Last Modified: Tue, 24 Nov 2026 08:43:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:6c04af9a579da09524bc4e1f65163f49fe279ea3bd960baa0a433d2c300100de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16746732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d5c3700c01791c42ca540032d39a5b287120c49b6273d9b82a257138d01597e`

```dockerfile
```

-	Layers:
	-	`sha256:007b47221a1eba6460817a72ebf28c8935a2edf0a48f891000466a00948fb01c`  
		Last Modified: Tue, 24 Nov 2026 08:43:45 GMT  
		Size: 16.7 MB (16729058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d7c2c5867b3a27c7a42b76557b9da29c3e99e1aa6d465b92ac380f0f384a50c`  
		Last Modified: Tue, 24 Nov 2026 08:43:44 GMT  
		Size: 17.7 KB (17674 bytes)  
		MIME: application/vnd.in-toto+json
