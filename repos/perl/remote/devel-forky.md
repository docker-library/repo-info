## `perl:devel-forky`

```console
$ docker pull perl@sha256:d8f6d8aadb9c95ed078f60f30fb1ffd4f7d4b9280f450e3287228aa899b00adf
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
$ docker pull perl@sha256:671373bcbec6574ed422265760d397dc9868f9ed10fca4b1c2aa1c74a2730c9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.6 MB (322635427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa30e51a86b48fd485ad081aeff5b8267cfebbf20c9e15c237383086c01dceb`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 08:18:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:23:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:12:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 22:02:53 GMT
WORKDIR /usr/src/perl
# Thu, 19 Nov 2026 22:08:36 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 19 Nov 2026 22:08:36 GMT
WORKDIR /usr/src/app
# Thu, 19 Nov 2026 22:08:36 GMT
CMD ["perl5.45.5" "-de0"]
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
	-	`sha256:053ffa3b8389169aaabff27b2dbe0da6dfff82e0a7cb4328c8aa2b6491e1f332`  
		Last Modified: Thu, 19 Nov 2026 22:08:57 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:804ebdc1d356bf34b76d04fed567e900842b9333f5d911dba04414374ddc8556`  
		Last Modified: Thu, 19 Nov 2026 22:08:58 GMT  
		Size: 15.8 MB (15800810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddabd9d8f791a1dc576d62b7c9f95613b166175bb330942138e689375c71797`  
		Last Modified: Thu, 19 Nov 2026 22:08:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:0b75284588d94c431686bf12ea7a9b0136a7339c53b753aef8a0613508cc4265
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16686387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c789217cf1d5818dab1cfbe9cec1c097ad4d14f18e2d7d534d4052c2c968737b`

```dockerfile
```

-	Layers:
	-	`sha256:1d3530045c643f02af9142c09799686f4e53e321a80bb3601143c20dff172341`  
		Last Modified: Thu, 19 Nov 2026 22:08:58 GMT  
		Size: 16.7 MB (16668748 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc637618b3299ffd9717837116f4c421c5e530c6bad920a577ce8165be94b1a3`  
		Last Modified: Thu, 19 Nov 2026 22:08:57 GMT  
		Size: 17.6 KB (17639 bytes)  
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
$ docker pull perl@sha256:34caeaf481d7c10ea2e9a3214460dd15e433fd042ed518858fde87e10db97ec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.0 MB (390046336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872f50e5732c09a54ae7d52c0ec515c95eec4d132885df4242407a4c3a7c412f`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 10:08:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 17:25:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 20:47:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Fri, 20 Nov 2026 00:21:34 GMT
WORKDIR /usr/src/perl
# Fri, 20 Nov 2026 00:32:59 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 20 Nov 2026 00:33:01 GMT
WORKDIR /usr/src/app
# Fri, 20 Nov 2026 00:33:01 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:9ec24ed89fd499a55bd6dbf4d5bf634cd52f8162f30831727cb57d35595f9ca2`  
		Last Modified: Thu, 05 Nov 2026 06:15:10 GMT  
		Size: 54.5 MB (54524271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1182c08a2b24dc381354b1007527c1b1b3c8308810b4dba7d8d5f5e8b13320db`  
		Last Modified: Thu, 05 Nov 2026 10:09:21 GMT  
		Size: 30.5 MB (30488710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cfb55da5dc0f00dc768ab2cad3541a19591b325ebab4b000ffc13b45412a92`  
		Last Modified: Thu, 05 Nov 2026 17:25:54 GMT  
		Size: 86.3 MB (86275031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c6d2ff4c62f97a8546243ceb1ae691bc2a3744674c450dedc1957f045f37841`  
		Last Modified: Thu, 05 Nov 2026 20:49:09 GMT  
		Size: 202.1 MB (202088535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f2876a691de0882631d73e7cbd89504e5000c1bb7b6ddb8467dbc5caf9ff45`  
		Last Modified: Fri, 20 Nov 2026 00:33:54 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c386db03ccf4dc5a0d903a08fe75cc3fb34b7a109304123b4d14a8c43cd414e7`  
		Last Modified: Fri, 20 Nov 2026 00:33:55 GMT  
		Size: 16.7 MB (16669524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:828944dba9216c3cde3136c0bb7ef35289b66af43aaccb4c2b36854e8cbdc45a`  
		Last Modified: Fri, 20 Nov 2026 00:33:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:561c25a2ac54978526a42c77e57726e784f1f6b723bcdbe8f50a745244a268f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16903553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e108a0ba27028fea87a2619b67705fedf5890ea5ea5145e7ff9948538fd4e7`

```dockerfile
```

-	Layers:
	-	`sha256:ee0ec9e4af7c9ecbeae63acdc4d41f7029f444685a7bcbd85b141d3b662e3968`  
		Last Modified: Fri, 20 Nov 2026 00:33:55 GMT  
		Size: 16.9 MB (16885946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab1dd263559e5792a599448d5ef2d66bf2c92233b21af48ca1696f30c0fc29c5`  
		Last Modified: Fri, 20 Nov 2026 00:33:54 GMT  
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
$ docker pull perl@sha256:d4466bd70acec4a2d569c0a04551a08fbb6ebc2852135f56fd8e600d4d2ac8e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.0 MB (355010091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87551c180b400c0f2f44ad7f2e91be6f330eb79e52d56ee2bfb923a03298e22c`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:56:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:21:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 21:53:29 GMT
WORKDIR /usr/src/perl
# Thu, 19 Nov 2026 21:58:46 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 19 Nov 2026 21:58:46 GMT
WORKDIR /usr/src/app
# Thu, 19 Nov 2026 21:58:46 GMT
CMD ["perl5.45.5" "-de0"]
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
	-	`sha256:b02f2117f8297e3c8b000b7bfd60998025adf93a3269abc8bbf5f761387098bd`  
		Last Modified: Thu, 19 Nov 2026 21:59:01 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d08752b4df8540294320b2de2c3c616b965900f5a77e2bc71f8e984b3a22adcf`  
		Last Modified: Thu, 19 Nov 2026 21:59:19 GMT  
		Size: 17.2 MB (17239538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041c0f204d69430659594216ad51d3d7c883f0f42f8c1867a0871018bc2cf8fb`  
		Last Modified: Thu, 19 Nov 2026 21:59:18 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-forky` - unknown; unknown

```console
$ docker pull perl@sha256:d619db90500b6bd4dad3404d19aa0f708c35fd1d560718754539399fddc0cc9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16706443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b8ea28f895ca7717b929475a76f845fa5f8be47c13d7a5e4120433cfd68ea6`

```dockerfile
```

-	Layers:
	-	`sha256:353582da88e4d8230ad7b7b06c4a3b4a259c01792cc4d9f758796d13491cf402`  
		Last Modified: Thu, 19 Nov 2026 21:59:19 GMT  
		Size: 16.7 MB (16688874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57becb1654af2e122b86e17df354629dc6f8249c327cb802b226c953ed1a3f37`  
		Last Modified: Thu, 19 Nov 2026 21:59:18 GMT  
		Size: 17.6 KB (17569 bytes)  
		MIME: application/vnd.in-toto+json
