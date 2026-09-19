## `perl:devel-threaded-bookworm`

```console
$ docker pull perl@sha256:ed10cacf2ecfbce5b79817312c7741484ea526fb92138c00cc890a4e78cf3cbe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `perl:devel-threaded-bookworm` - linux; amd64

```console
$ docker pull perl@sha256:a27c104794636c139711b971e4f838b7f4fbdc8b21c2c44d21152557071d258b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.9 MB (364940215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b89772f4008b608e82178f6b4cdd2af7898102a2a947c909555a81837ec58f`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:20:48 GMT
WORKDIR /usr/src/perl
# Sat, 19 Sep 2026 03:30:50 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Sat, 19 Sep 2026 03:30:50 GMT
WORKDIR /usr/src/app
# Sat, 19 Sep 2026 03:30:50 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81578410df169380efec491bfdc60a7e586d4b48ef4c0aeb9b6ff085812d9a7d`  
		Last Modified: Sat, 19 Sep 2026 01:46:20 GMT  
		Size: 64.4 MB (64424271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9e8d0a007171cac57d643a3982902d45431cd860400eea55e18df75fc0b12a`  
		Last Modified: Sat, 19 Sep 2026 02:17:13 GMT  
		Size: 211.7 MB (211707818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259e4d4d962ccc956fc5633709cd07ed53c23156ce06456c487d17a5715490f9`  
		Last Modified: Sat, 19 Sep 2026 03:25:51 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90960036978d2b0c90ff8475083de1a7dac7e1dbcfb6ea3bc457bab590ddaabb`  
		Last Modified: Sat, 19 Sep 2026 03:31:08 GMT  
		Size: 16.2 MB (16248344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9cf4b095bf367fca5f3918fbe7a1421748e9b44b0866e629f998d994ae7e8a`  
		Last Modified: Sat, 19 Sep 2026 03:31:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:fc43a0e65d5dd52e12a8105ebfdb890a365e517d78471556d2050d6efa778d4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15890357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1c03137add1b7ae365f8cdb720bf99a39879a0c3544bae4c68771064f81525`

```dockerfile
```

-	Layers:
	-	`sha256:af5a3cf27f4154f312c3b5655de7038525cb2d0b7bf010ff92712e1e2e8c48c3`  
		Last Modified: Sat, 19 Sep 2026 03:31:08 GMT  
		Size: 15.9 MB (15872658 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b477d85199e22f61c9289b2ec7a211d75a7863a0f2fd2e4689dabd80717949b8`  
		Last Modified: Sat, 19 Sep 2026 03:31:07 GMT  
		Size: 17.7 KB (17699 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-bookworm` - linux; arm variant v7

```console
$ docker pull perl@sha256:0a0beef37dcbfe38c6b95f82261991bc506d82493943c02a54d867a4b0383e16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.7 MB (316729885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b6101bcdd7c13dea3e4d2567b775f9330bc7424fb858039a05c7827fda5fcd1`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:26:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:14:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 04:18:54 GMT
WORKDIR /usr/src/perl
# Sat, 19 Sep 2026 04:30:33 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Sat, 19 Sep 2026 04:30:33 GMT
WORKDIR /usr/src/app
# Sat, 19 Sep 2026 04:30:33 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:a6c5079853e28bf683246929969c9815b5fe2309ca7008420ffa4f3b69991189`  
		Last Modified: Sat, 19 Sep 2026 00:02:43 GMT  
		Size: 44.2 MB (44202209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8a5fc11ebbfafa0cb2b3f94f30ae822f4f3c68b9cc1fc076c7fac3bd1a4e8f`  
		Last Modified: Sat, 19 Sep 2026 01:28:07 GMT  
		Size: 22.0 MB (21959053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b05f2afa4aeb0abd1b387e407cc8939c894ecaf8fbd3b034a72e34dae98c9a2`  
		Last Modified: Sat, 19 Sep 2026 02:26:25 GMT  
		Size: 59.7 MB (59661780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55431d0e22ef9fe8b47a39bd4f2c9bd323015a25f2aeadded820c9f776531fa2`  
		Last Modified: Sat, 19 Sep 2026 03:15:16 GMT  
		Size: 175.6 MB (175608766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a827f2b7a9702ae7ac2e404b9f8f8987e7dad23fc7fc84a71cda0bc0b86e8929`  
		Last Modified: Sat, 19 Sep 2026 04:24:34 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8e7d28dfeb04676e4e73ebeec72bd8521bea514afb39c2a7ce4e751bb36f28`  
		Last Modified: Sat, 19 Sep 2026 04:30:51 GMT  
		Size: 15.3 MB (15297811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554d36acf46ac3b2bbff70eae5386ef9f7e24602d1fb4b86baa6d04f1aed3666`  
		Last Modified: Sat, 19 Sep 2026 04:30:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:9c8201b9067ce99e44789517d0f257b7ee25e37f8738cfe11c0f37b4421fd120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15692896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:336c62d686a89af5a6c6dde443c02c63840ed0449a50f39419f7e57d627c87a0`

```dockerfile
```

-	Layers:
	-	`sha256:e5bc6a204a063a916b17ed7214fd7c92a0fc09761689c63ff4b3b9ec63d2ad11`  
		Last Modified: Sat, 19 Sep 2026 04:30:51 GMT  
		Size: 15.7 MB (15675126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6a0bc1bf2b5489228cff47d8b1fab84defd370b588637e0384d1c06ebd038be`  
		Last Modified: Sat, 19 Sep 2026 04:30:51 GMT  
		Size: 17.8 KB (17770 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-bookworm` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:50b65d9398bc88a3f3caba771607f280bf00dbf60cb9738211c45595280b6564
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.1 MB (356136393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b674b437088cc9761069c15a53815b1a61444d797ea9e6fc2ed398748c61f0a2`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:31:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:18:03 GMT
WORKDIR /usr/src/perl
# Sat, 19 Sep 2026 03:28:32 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Sat, 19 Sep 2026 03:28:32 GMT
WORKDIR /usr/src/app
# Sat, 19 Sep 2026 03:28:32 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328a0fa474a1ca8d79c015c72bce6d935298ea38f98b4e04dec9e350442e03d7`  
		Last Modified: Sat, 19 Sep 2026 01:31:38 GMT  
		Size: 64.5 MB (64500108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3ba406c16b69d4aa51efbc3e6261745f96834c1468f508f6c0eedfc94b57ad`  
		Last Modified: Sat, 19 Sep 2026 02:16:41 GMT  
		Size: 203.4 MB (203421216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d9fd2877be8cc56ee675fb2374399e7a35f02b1b12f04e515e544917c224fd`  
		Last Modified: Sat, 19 Sep 2026 03:23:24 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c72ac7785e31ffe836677e27ab01e94c271489cefc002be7e5127c31437cf2f`  
		Last Modified: Sat, 19 Sep 2026 03:28:50 GMT  
		Size: 16.2 MB (16197173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffcb88242b9a889553bff1c06072713d81aca6154371ec2ba5eea97dc0deec6d`  
		Last Modified: Sat, 19 Sep 2026 03:28:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:77e7a07b6511abb47873eff8a3ab253309e8229322644b650188ac56558f70f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15918962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ffb25392076ce7fbfb9e6186ad5714dc125188c28df9fcee47028c1a4d3d16c`

```dockerfile
```

-	Layers:
	-	`sha256:e4b6ee98292885437882548c478a18785a8d7a870329d2efb9cebd22690bd7ed`  
		Last Modified: Sat, 19 Sep 2026 03:28:50 GMT  
		Size: 15.9 MB (15901172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7edb3246a22b7a2745d14fac32225858a31a830942fe4843b6432f418f3d7cfe`  
		Last Modified: Sat, 19 Sep 2026 03:28:50 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-bookworm` - linux; 386

```console
$ docker pull perl@sha256:f7d4dcc8bf2db4e097a28dba2fde45855b8202776654a21e559c77fe2ee5469b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.1 MB (367057069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:864b5a7e5870abe91cffb9ce295d97cd6d5242edad6302eadf701991438c2724`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:49:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:35:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:14:12 GMT
WORKDIR /usr/src/perl
# Sat, 19 Sep 2026 03:24:39 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Sat, 19 Sep 2026 03:24:39 GMT
WORKDIR /usr/src/app
# Sat, 19 Sep 2026 03:24:39 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef8e3c04f871b1b16e9e51e8bd832c4d6c6367991bf2fb4fa68e1ada0e92f4d`  
		Last Modified: Sat, 19 Sep 2026 00:49:43 GMT  
		Size: 24.9 MB (24889211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5707b21c933ac81a1325c7daf018024e4ba50850e560f2913144ce64343b9d3b`  
		Last Modified: Sat, 19 Sep 2026 01:35:29 GMT  
		Size: 66.3 MB (66257299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f002589ea9ffed9d13043e7864c8ed045e3b473b90e4c5bdbc6dc29e56222ad8`  
		Last Modified: Sat, 19 Sep 2026 02:17:11 GMT  
		Size: 210.6 MB (210611416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:038644b08f63d6455633eb88fc29dc1dc9224258ca72f431f2c56eba8e7ad437`  
		Last Modified: Sat, 19 Sep 2026 03:19:30 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85fde16f1900fe612bb7d35dc8170cb7b180dc28bfe6251eb400526f1afb14e7`  
		Last Modified: Sat, 19 Sep 2026 03:24:55 GMT  
		Size: 15.8 MB (15807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1501f4ffe1b487f29f60420c8cac89617ff2d6be76bc2234b6869e0537f8066f`  
		Last Modified: Sat, 19 Sep 2026 03:24:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:9f3cf10daa4d4bc4a35fb413bf654d142953219310d0faccc098d4dc51ca6ffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15868554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169efd21e50a4d48fae3eb3c289f034891bcccc33e83d10d19e88756a8a14cc4`

```dockerfile
```

-	Layers:
	-	`sha256:c46f823b1f20c52d36932fb10633914ba365de01ea3a91a8f2752c92906f41fa`  
		Last Modified: Sat, 19 Sep 2026 03:24:55 GMT  
		Size: 15.9 MB (15850882 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b2fb2cf29fe54dfc828662d86bf0e32404737c10d73ddb54959df972cb0577c`  
		Last Modified: Sat, 19 Sep 2026 03:24:54 GMT  
		Size: 17.7 KB (17672 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-bookworm` - linux; ppc64le

```console
$ docker pull perl@sha256:b8673ed37ec5f13536b1e8b81b27cf35063941f4b862fa2ab0841acc54ff2bfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.0 MB (378959775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f0bf2c0e9a2d518b6c90e4fa111bcbdfe43d976ad5df4fa849c22dede23667`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 03:15:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 09:05:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 11:47:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 12:28:39 GMT
WORKDIR /usr/src/perl
# Sat, 19 Sep 2026 13:35:30 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Sat, 19 Sep 2026 13:35:30 GMT
WORKDIR /usr/src/app
# Sat, 19 Sep 2026 13:35:30 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e9f3363ace736c21292a425cd627663814b1275272b7cf79f502454af1cac`  
		Last Modified: Sat, 19 Sep 2026 03:16:20 GMT  
		Size: 25.7 MB (25703264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb8363b45637c8da3b7da1113159dbb24fb241a976701cf530477d2ae974472`  
		Last Modified: Sat, 19 Sep 2026 09:06:01 GMT  
		Size: 69.8 MB (69849171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1f42cfff6bccb389c94a581a2974609f4fae57ecf4d6812e395f1ac5f757fd2`  
		Last Modified: Sat, 19 Sep 2026 11:48:44 GMT  
		Size: 214.8 MB (214767033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1038b8e35d146c22fc5b24ebc15196766f3c897a8c21f0e230a422eeb5815bc`  
		Last Modified: Sat, 19 Sep 2026 12:37:16 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9ca8bcdad0a5b0e7bf3f48680be0a18a5b2d33f610381d2a697ed54e49d4ef`  
		Last Modified: Sat, 19 Sep 2026 13:36:06 GMT  
		Size: 16.3 MB (16290736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6913fb3601b29fb47848eda0b1a5904e9528f2a76a554c3de99fca500d5b1b`  
		Last Modified: Sat, 19 Sep 2026 13:36:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:41ada0e19da219879811ffa0a5288a8895e17386060f13cb98df3ecfb9f296db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15866902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45e237d4d66401211cc4480a83bee1b59b69d8328483d4a55bcd671ed09bcc5f`

```dockerfile
```

-	Layers:
	-	`sha256:00631a1660bfc70f27b543f1991ece84dbb028a869fad26d28613d41b9809c06`  
		Last Modified: Sat, 19 Sep 2026 13:36:05 GMT  
		Size: 15.8 MB (15849165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdc6f3aeef8349a51cff0987bcdbd987ceea2cdd5ac1213df803bf1e21c65ecf`  
		Last Modified: Sat, 19 Sep 2026 13:36:05 GMT  
		Size: 17.7 KB (17737 bytes)  
		MIME: application/vnd.in-toto+json
