## `perl:devel-trixie`

```console
$ docker pull perl@sha256:48176c239f0db6297e98f335432013a0214d103e1f5304b17ab772dedd8bf644
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
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

### `perl:devel-trixie` - linux; amd64

```console
$ docker pull perl@sha256:dcc68f455c40cc18068a8707fc00382cf63ead69a097213c96062a546adc0fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.9 MB (396929231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5fd67526cd3bd6ef1866ff5ee17606e188b16c457da0b14e84adedc9998a91`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:21:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:15:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:19:53 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:33:15 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:33:15 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:33:15 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0be6780dc18eb58a60fabb4c8bedb0c3ea852f4f3c7d199d0dd2ca073068d3c`  
		Last Modified: Tue, 24 Nov 2026 04:39:30 GMT  
		Size: 25.7 MB (25650878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2acb1a7e2440113768de2c5a81ca8c6c89281a433d4e9f05eecc3082aac2c04`  
		Last Modified: Tue, 24 Nov 2026 05:21:36 GMT  
		Size: 67.8 MB (67818732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807982f6af4fc03f2d394347e6e9bcaab579df144f168742316271ff8f226ac1`  
		Last Modified: Tue, 24 Nov 2026 06:16:16 GMT  
		Size: 237.4 MB (237383741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e175cc900f8e1daede10681a178b4aa6769288cd1d7c45f14775e85285b727e`  
		Last Modified: Tue, 24 Nov 2026 07:24:27 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c235b3c21622d6434950398e0630866ef95ccf559cc964f2d031a3fa8cf14601`  
		Last Modified: Tue, 24 Nov 2026 07:33:33 GMT  
		Size: 16.7 MB (16666328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfb002dad71563e0e1d9a153c9e915232f41283fbd69dadb7e8d598dec87e81`  
		Last Modified: Tue, 24 Nov 2026 07:33:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:209bc726d48e17ef6ad636a9c7010a29503b80141a54a5d43c57e7851469e6c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17225551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a18ae3126d554498787dc42195984ba54f7a1efc8d42b282c7698209e6b6d72`

```dockerfile
```

-	Layers:
	-	`sha256:6af1f52f1da429c2fbcdcbafd5e7c65524ce93f064422aa2d6724d994206fcd0`  
		Last Modified: Tue, 24 Nov 2026 07:33:33 GMT  
		Size: 17.2 MB (17207093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9fcf0469ebc0dd8f4aa40e0a45d6734fcc8aeccc66f1e0da6e5410a71debb71`  
		Last Modified: Tue, 24 Nov 2026 07:33:32 GMT  
		Size: 18.5 KB (18458 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-trixie` - linux; arm variant v5

```console
$ docker pull perl@sha256:b7d25faf9e2aef6b99341d0e3816efe6218472d736a75aee130e6e2b8b69b665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.2 MB (360243417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a186064c2f1e968cacbe68d47d0d4e4a0250abdeb216cc15954336e096a8fdf1`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:00:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:39:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:23:42 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:29:37 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:29:37 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:29:37 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:81e30cd4e7ae71efcf81deb98233bbae603f424a67d390095c38d0b8b2e37386`  
		Last Modified: Tue, 24 Nov 2026 03:40:19 GMT  
		Size: 47.6 MB (47570818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d29a87ca490077f54b80c22054cab3bf32cf8e3c1fe5cce03a29c695ed2cd8a0`  
		Last Modified: Tue, 24 Nov 2026 04:39:48 GMT  
		Size: 24.4 MB (24384767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630eff185c5ed60bf7d671d520e5010b1dd0f6386af977440cfdbddbc7aef680`  
		Last Modified: Tue, 24 Nov 2026 06:01:09 GMT  
		Size: 65.4 MB (65351288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b67cb992eca834ffc9b46a9322ff7f6b3a1c2895a7ab6bb208c93d145b8a431`  
		Last Modified: Tue, 24 Nov 2026 06:40:28 GMT  
		Size: 207.0 MB (206954737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e995885a79201ff1d56414272bf2036ed6ec3438ac20a9d29b8d0c98976114a`  
		Last Modified: Tue, 24 Nov 2026 07:29:56 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b290189caf403db2a4abfd25029c9bc446b5677ad4dcc3e55a5c846223d885`  
		Last Modified: Tue, 24 Nov 2026 07:29:57 GMT  
		Size: 16.0 MB (15981542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:433a5e1bcba55976917b49ecd02e552f243f5c71ff2f392f304d66dc9a788814`  
		Last Modified: Tue, 24 Nov 2026 07:29:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:2f1e13cc5f9feea5b75fd9ebe01cb38d8e9040d524c86fe6a6c9fe91cadab0f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16987870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93c22dcae0ebcbbc32d1b3fdf9e88d71d98cd2f88370631f51bf6149eeda98c`

```dockerfile
```

-	Layers:
	-	`sha256:5e7cfc58369e126c965e8b8dba84aea2d2a071a5565680a0521c7d1014f44214`  
		Last Modified: Tue, 24 Nov 2026 07:29:57 GMT  
		Size: 17.0 MB (16969316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b42d271f2a98181673d30a11aac05a8daacad5078368dfc81eb69d110d5ae7d8`  
		Last Modified: Tue, 24 Nov 2026 07:29:56 GMT  
		Size: 18.6 KB (18554 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-trixie` - linux; arm variant v7

```console
$ docker pull perl@sha256:f2455da255ec16fb619dfec35ef2a4a2b35b2915884ae59c9740ff318be17978
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.5 MB (342507345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99244df07c18afbd1ce6e5f3466c3162b0b61a0db019c583251738b5fe79945f`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:16:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:42:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:13:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 08:34:35 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 08:40:15 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 08:40:15 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 08:40:15 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:dfa0232b027632cfcd6c75af294b9fb093493d5e9bedb208e40bbda0d946291d`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 45.8 MB (45838797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a206e093b7d6b9756ce6436106bd63bfb623d6bd0cde12e4a8b4c232298b048d`  
		Last Modified: Tue, 24 Nov 2026 05:16:21 GMT  
		Size: 23.7 MB (23657477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8301dea1564c32e919589729d3a99d246c0e513c2f4ce53d05c49a87fcba793e`  
		Last Modified: Tue, 24 Nov 2026 06:42:28 GMT  
		Size: 62.8 MB (62752711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b1394821b4d3d6b469d4bf4867a64611feb51a34ff2b83100a6e9b81cd89f5`  
		Last Modified: Tue, 24 Nov 2026 07:14:05 GMT  
		Size: 194.5 MB (194471400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10cf4251368915e84fe257caca61ae2212a5d14ea5f663f610da5b3395aa8f1`  
		Last Modified: Tue, 24 Nov 2026 08:40:37 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f626be4f7b8f7ec292e80fb65de10ef64bdc3ae9a63d779aaa9a6d0ab07c0753`  
		Last Modified: Tue, 24 Nov 2026 08:40:37 GMT  
		Size: 15.8 MB (15786696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79603d5198ef0bf9229cf1e0312352053dbc31f2c965e7ff5dc14d3596c03ae8`  
		Last Modified: Tue, 24 Nov 2026 08:40:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:dc8d0f4979143cc98d2f6de98c9f5825b802cdca25d5000f49c7b95dc7c79581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16993662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e9d02bf17fefbf3bd9ff2152232621e4a970a1b26282e59b731406f27dcf4c`

```dockerfile
```

-	Layers:
	-	`sha256:517e31d9fcb823de90b133ea61fb3952d74f06a6454a0980872f59f7a366dcd0`  
		Last Modified: Tue, 24 Nov 2026 08:40:37 GMT  
		Size: 17.0 MB (16975108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31c68e7b621448e98bf0a81d800a46a2002a5af6a76b7db67ba1940345b5cfa4`  
		Last Modified: Tue, 24 Nov 2026 08:40:37 GMT  
		Size: 18.6 KB (18554 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-trixie` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:5e77fbdb47ce3e5da2224e3a84f629ebddf8189f27cc9985f0baf6e97732dec3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.4 MB (386435458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90c29750da3c5142067c90815c3b201c9abc9a2ebd73e66ce646817970ffb29a`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:33:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:14:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:25:51 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:36:08 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:36:08 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:36:08 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dacf7f1531c38a9330958dd49f965097481ac7feb033dbc834cab26a8120fa0`  
		Last Modified: Tue, 24 Nov 2026 04:43:47 GMT  
		Size: 25.0 MB (25045881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873295aab70feef1201ca10ab9b403b459ce2e560c88640595466a3bb0b2c5ed`  
		Last Modified: Tue, 24 Nov 2026 05:33:30 GMT  
		Size: 67.6 MB (67633993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0906044c4c05ec5672de8a303b188542bc9036eda76195f44ad5786c7bc7239`  
		Last Modified: Tue, 24 Nov 2026 06:14:49 GMT  
		Size: 227.4 MB (227379443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791f3a604ca00031ac4ab0dc8ed6535f2596a2472a34aebc6f5f7e33760b8893`  
		Last Modified: Tue, 24 Nov 2026 07:31:07 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc48e6b9e88cb8a8179e561424fe03b5fc5e121cf13dffc9b1385aa3c3310c6`  
		Last Modified: Tue, 24 Nov 2026 07:36:29 GMT  
		Size: 16.6 MB (16605791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a754405d8fd029afe3f75f5a243bd86d78bcd2a1272ad3632a89bce079166be6`  
		Last Modified: Tue, 24 Nov 2026 07:36:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:234aca1cc31dec643f1fec0e2224a68a2d4d3b30bd2c3a9337a284ae84ef96c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17309373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce81e0eaf3a60a52ce00fe6120d667bde414e4bbb09b66b3bf4eb667c63cda73`

```dockerfile
```

-	Layers:
	-	`sha256:605feece66bd428d2e39aed0546abb214bfa35e4cf75ef6a2e0c773bb690a7c1`  
		Last Modified: Tue, 24 Nov 2026 07:36:29 GMT  
		Size: 17.3 MB (17290787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:264d655eac6ac9885a528428b283b0f36c786ac2a287560e8b1a49761338bc15`  
		Last Modified: Tue, 24 Nov 2026 07:36:28 GMT  
		Size: 18.6 KB (18586 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-trixie` - linux; ppc64le

```console
$ docker pull perl@sha256:022d8393e453070710882beeda18cc1809069b7ae01ebcc4b30218ac35c7141d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.3 MB (402303895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a59c1e6dab0b3107920d72c949788d0823c93ded933320b954391abd45d3c919`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 10:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 17:26:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 20:51:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 21:54:17 GMT
WORKDIR /usr/src/perl
# Fri, 20 Nov 2026 00:19:47 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 20 Nov 2026 00:19:48 GMT
WORKDIR /usr/src/app
# Fri, 20 Nov 2026 00:19:48 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b441821aef48e4927b60b63cc49b02baaf25f64d2d6badc6044a1184761c737`  
		Last Modified: Thu, 05 Nov 2026 10:10:24 GMT  
		Size: 27.0 MB (27023201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5eacbf9637539d8aa77e81054651dcf509dbf3851a0a1aa8980495316a23c2e`  
		Last Modified: Thu, 05 Nov 2026 17:27:43 GMT  
		Size: 73.1 MB (73093471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74542bce662f9d2af3a537e8ff1b094e443166f8dd9befec1119fe5c43a1a52`  
		Last Modified: Thu, 05 Nov 2026 20:52:57 GMT  
		Size: 232.3 MB (232324775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0914eb3d3109f1540026091309bfd81acb7d355b0a7fb29c35e2c312d6dca2ec`  
		Last Modified: Thu, 19 Nov 2026 22:04:58 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01c429f814e07900bee55886f49d4b4923f08d4abc151f4557b13a0967cf61e0`  
		Last Modified: Fri, 20 Nov 2026 00:20:50 GMT  
		Size: 16.6 MB (16636593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4008aeab5f8c3b36cef8c2da2b8c07811be5f68792816955f4d12dd0b82d040`  
		Last Modified: Fri, 20 Nov 2026 00:20:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:b46ba5819a56439971169334b52cfce3ff86e052a43c88fb21928aea28048164
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17209430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffc1a28362911121872b0c155e46dcfc187355af4f959c1757c629933e5d310`

```dockerfile
```

-	Layers:
	-	`sha256:f5fdaa27a81fff4b9fdf82d3d476fb860af874c8348c389b23d2e638ed8d5a6e`  
		Last Modified: Fri, 20 Nov 2026 00:20:50 GMT  
		Size: 17.2 MB (17190917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d58e99ad3d03c77b60d3a370a72dc5b62769f43bdc3b03efa15726d5172c2f7e`  
		Last Modified: Fri, 20 Nov 2026 00:20:49 GMT  
		Size: 18.5 KB (18513 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-trixie` - linux; riscv64

```console
$ docker pull perl@sha256:25039ef6ace5a19c10a1ae055a5e5a1e648d73d78df148cfb73d62e3cc1caf31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **479.9 MB (479925792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ff7240abce6865a8837004d006c7c95fcf0a5d645725d060f9b667fa6228a5`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:22:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sun, 08 Nov 2026 18:57:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 11 Nov 2026 23:37:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Mon, 16 Nov 2026 07:51:38 GMT
WORKDIR /usr/src/perl
# Mon, 16 Nov 2026 17:32:37 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Mon, 16 Nov 2026 17:32:37 GMT
WORKDIR /usr/src/app
# Mon, 16 Nov 2026 17:32:37 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:c14b8ddf6f44cf7593992e51d2d8638d5bf0eab35fec3f4b384bc222453acc76`  
		Last Modified: Thu, 05 Nov 2026 07:37:06 GMT  
		Size: 47.9 MB (47892235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d09fcfc16843f31e6a8131b39886115ea1fdc3bbc9a4874cd58d30f18e2a46b`  
		Last Modified: Sat, 07 Nov 2026 04:24:28 GMT  
		Size: 25.0 MB (24972690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82501d6feec2e203eb2ab6488cc6d27a4a030dc401b02e7c1049226026f71ce7`  
		Last Modified: Sun, 08 Nov 2026 19:01:44 GMT  
		Size: 66.7 MB (66713146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade036d64c0c99f2d487c5a27ab433f753f97769aba4a090e4546c2c49751ffc`  
		Last Modified: Wed, 11 Nov 2026 23:54:07 GMT  
		Size: 324.3 MB (324265996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6870eed3d43e3f55a0c8597414e5f2b9494e75b2ae6b3b417dc9777eff5b931e`  
		Last Modified: Mon, 16 Nov 2026 09:13:06 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd18e9431a791019258b2e9ab4f110d478f2fc3ef2c7e2998901c4fbe6863006`  
		Last Modified: Mon, 16 Nov 2026 17:41:16 GMT  
		Size: 16.1 MB (16081461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1cb7e1c312d46aefe8f2f0f9668ecaacdc2c0828af87ce1b9a7edefc5845980`  
		Last Modified: Mon, 16 Nov 2026 17:41:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:426f9f7d3102ae63c6626cfec0acde73cda361de4225c4467a93463465a4df89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17281664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a7a786de212e0918981a54399cb8a08f0caa6e91b9bf7f3445fac57651a658`

```dockerfile
```

-	Layers:
	-	`sha256:273d6668d08b17c27b942f2c2cfe3b2ae851bb680577308f77e51083377323a1`  
		Last Modified: Mon, 16 Nov 2026 17:41:16 GMT  
		Size: 17.3 MB (17263150 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72421d115679cbe6d324edc397148894ec114242be506e2efe0785dce0f37046`  
		Last Modified: Mon, 16 Nov 2026 17:41:11 GMT  
		Size: 18.5 KB (18514 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-trixie` - linux; s390x

```console
$ docker pull perl@sha256:5e493234b2e4da18bbcfbd4b3b162d51eaabf3bfeaa18d4bc15a351c83d26637
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.0 MB (370010729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9281082dcb5eaab889816c260af8bfbf24ba45ffa328fc802733e4a19baf7569`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:53:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:41:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:14:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 08:09:44 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 08:17:19 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 08:17:20 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 08:17:20 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:e99295c5b1d848573a03490220a471f79f26f0d941445a1a1aafd0b9580e414f`  
		Last Modified: Tue, 24 Nov 2026 03:39:40 GMT  
		Size: 49.5 MB (49482692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3f4ce2bcba42a9f49e1dce7fbd9adaa01993b467a604f99739eb8a2c8ef380`  
		Last Modified: Tue, 24 Nov 2026 04:53:37 GMT  
		Size: 26.8 MB (26829608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b882c152e55bcff64f0d4b9871cc103b5a85e1de8b9ff0bc0015cf9263213ba7`  
		Last Modified: Tue, 24 Nov 2026 05:42:22 GMT  
		Size: 68.7 MB (68663169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c2d1bd9b9ba1ea6690f7f3cd97dc9044d5cc8da41ad14a6715985201049144e`  
		Last Modified: Tue, 24 Nov 2026 06:15:05 GMT  
		Size: 207.8 MB (207779453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5228a3ce927616236ae781ff8e4be62199143a54135db3806b5049e2cc59b5cb`  
		Last Modified: Tue, 24 Nov 2026 08:17:57 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e7ef1e1a6ddabcb2ec6ab231dbcc1015ca4f7a1643b70f3d55e83d68f3cc8e`  
		Last Modified: Tue, 24 Nov 2026 08:17:58 GMT  
		Size: 17.3 MB (17255542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1587f4487b4335bdc3aa2b7d2158ff7fc5e03bd1c97cc38ec262508ad53e91f`  
		Last Modified: Tue, 24 Nov 2026 08:17:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:64b71d8d96548e3563c211671e5f653335db7f5629fab20a371cd5755f417e89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17002783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9ad91b65e76abd31f0d138b3f35716ae3c424dc808e347723527d6500e879c9`

```dockerfile
```

-	Layers:
	-	`sha256:f9c302a22c1b05ad26593284b4c81f4bfa256313128619694bf2c5a3a046f964`  
		Last Modified: Tue, 24 Nov 2026 08:17:58 GMT  
		Size: 17.0 MB (16984325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9310301aa46f0c486590e0e5fb7e3655cd7af6c52bfd4551f4e4ceee77269f3`  
		Last Modified: Tue, 24 Nov 2026 08:17:57 GMT  
		Size: 18.5 KB (18458 bytes)  
		MIME: application/vnd.in-toto+json
