## `perl:5-trixie`

```console
$ docker pull perl@sha256:73963e10cb0f478591aead108b910314b3f2ec91c25642cf0344eb563ef96e6b
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

### `perl:5-trixie` - linux; amd64

```console
$ docker pull perl@sha256:fe7b9daf80c1a6dba1f58122dce9233e25479b6c736267376e7671d2f048a08c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.4 MB (396380256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db1197010313c57df001ac07d01cab86d52bf571e789aaa18ff4f505dbfcb8e`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:21:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:15:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:19:43 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:23:39 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:23:39 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:23:39 GMT
CMD ["perl5.44.0" "-de0"]
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
	-	`sha256:7cf2b9d76585ff3175a3cb8698d77199d67f404c7836dd36230df53e78f63bc1`  
		Last Modified: Tue, 24 Nov 2026 07:23:56 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e4b647b857706d88145820f2c0855d6c4fedcc92776a0cf9006927f9d70f46`  
		Last Modified: Tue, 24 Nov 2026 07:23:57 GMT  
		Size: 16.1 MB (16117353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7278700a8e491b9dc0f17c937721a801b5b00a9fdae3a2d80c572dc4aebf1db`  
		Last Modified: Tue, 24 Nov 2026 07:23:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:0fd060dc9a76c74c025310c4ac8ebe3e5dc24f73ee750829377260cb3baeba35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17227823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c144e8150cca2d57decba7c54220467c2f4655cc7d8d3385ecbb4b4385ff5fd0`

```dockerfile
```

-	Layers:
	-	`sha256:991e1974f161c3957418cceea34f00425f48449a15f047840ff1bc7a9dd22adb`  
		Last Modified: Tue, 24 Nov 2026 07:23:57 GMT  
		Size: 17.2 MB (17208267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d6cb976cf627c71584fccfc74369295744e53334346d21e30ac636c7faeb625`  
		Last Modified: Tue, 24 Nov 2026 07:23:56 GMT  
		Size: 19.6 KB (19556 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-trixie` - linux; arm variant v5

```console
$ docker pull perl@sha256:f568d56f8889e3f8c167f461130b6365b25f94ee92a03746d5e15d39f0bc7a65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.7 MB (359698642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:780584f64a3228cd9d9641a676b1400a655944f0975b93509d14f942882d26a6`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:00:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:39:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:20:45 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:26:00 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:26:00 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:26:00 GMT
CMD ["perl5.44.0" "-de0"]
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
	-	`sha256:9376dbd19058112eec72bc4f626a530c8847c52dc90d1c8cbcdb943ba0e188b4`  
		Last Modified: Tue, 24 Nov 2026 07:26:22 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ade14e8a7bd8a4cc7e8c6faabf11063b835f285aeac9f6bbf134feb2c887157`  
		Last Modified: Tue, 24 Nov 2026 07:26:23 GMT  
		Size: 15.4 MB (15436767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860fcc3847228a0f11b012bd625ab4b4ff527efb649014a5265fc8096ba116e3`  
		Last Modified: Tue, 24 Nov 2026 07:26:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:6b71671a4e0a73a300e74bf7967bd96248b0fe920cd8e003c88a234606edeefb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec22cc773b272d019493c113c59eb5059ffcb40bf76f7d22d89634b82adbde63`

```dockerfile
```

-	Layers:
	-	`sha256:63443fba7ac1161517074471f099b88bd4502beeab21f489410586b098bbd9ac`  
		Last Modified: Tue, 24 Nov 2026 07:26:23 GMT  
		Size: 17.0 MB (16970522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a01ea21ad2fbfd557d2d3298faed26d0ebf1e8f502b34e7ac2b9b7db43b32120`  
		Last Modified: Tue, 24 Nov 2026 07:26:22 GMT  
		Size: 19.7 KB (19684 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-trixie` - linux; arm variant v7

```console
$ docker pull perl@sha256:bab044a44cb66164069ca80945a27458d47cd9969b9768c74a2b2f0618e02220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.0 MB (341964994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f48067a0ce8b4a7787ee496f015bafdac0fd85cbf00ae19ea500c6fa28dabfa3`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:16:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:42:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:13:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 08:20:28 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 08:25:40 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 08:25:40 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 08:25:40 GMT
CMD ["perl5.44.0" "-de0"]
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
	-	`sha256:84cb155d360fd99b9331b86996f2c8df387cd96653e181a465078b6595e1687f`  
		Last Modified: Tue, 24 Nov 2026 08:25:59 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca6cc9974c4ded140f41568baeb30cc6a139bddda570a1b1fb57ff0bc1a0e87`  
		Last Modified: Tue, 24 Nov 2026 08:26:00 GMT  
		Size: 15.2 MB (15244344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f8e161ae19866867e6961586767ed7b11b72c61520815f214d28504e0563c3`  
		Last Modified: Tue, 24 Nov 2026 08:25:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:d045bdb8247f3a54dc149212272d15a07038134cbbc2a0078be29ac78417e853
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16995998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e226541081d75a1f193a5dedf9f3e57ba24c2e2fa4e87387125863420a01e48f`

```dockerfile
```

-	Layers:
	-	`sha256:931a3e28b846a3b4a7f06379c3964435cf0c1dfb2ef1065e687fb9f7c8d0626e`  
		Last Modified: Tue, 24 Nov 2026 08:26:00 GMT  
		Size: 17.0 MB (16976314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c35072482b7b1cdedebfbc3f27cd063eeb57d51154d0dfae8655531ead15017c`  
		Last Modified: Tue, 24 Nov 2026 08:25:59 GMT  
		Size: 19.7 KB (19684 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-trixie` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:3f958e26232f5d2e4bce8cdd5518beaab84f7afa8785042ce963b4f476cff50d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.9 MB (385892188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43ef149cad6ef5e0557e2b1545c04d87011257cbfdc573191045faf984eb33f0`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:33:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:14:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:20:34 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:25:07 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:25:07 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:25:07 GMT
CMD ["perl5.44.0" "-de0"]
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
	-	`sha256:2fed6549a177180f229941f17fafbea2a37f3f13de6048b9c54a3194c9e5b735`  
		Last Modified: Tue, 24 Nov 2026 07:25:29 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbf350ac9518d97369d4daa8deb978b2d3b85cdc8e12dfc023526d40283477e`  
		Last Modified: Tue, 24 Nov 2026 07:25:30 GMT  
		Size: 16.1 MB (16062518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54bc4e587e1b2334416101cd3a4b94f0600a8439fb7151a04fa41e5d4fe98917`  
		Last Modified: Tue, 24 Nov 2026 07:25:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:b12f87b650af935d8cab9ec924f29c8a67a2ec0225ca60523d80c0728ad9b30d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17311740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6a7adeb7481c75c7ccee839211580e2db2fe5b16c6b651c98744e76eed0741`

```dockerfile
```

-	Layers:
	-	`sha256:9c4009131b71f7b179ec990e5eceee9112cefe2c6c9c8c89e9d29930513a0fa9`  
		Last Modified: Tue, 24 Nov 2026 07:25:30 GMT  
		Size: 17.3 MB (17292009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c705f8908e321083762568984549850d220ca30b33f52adfab9649557a75d23b`  
		Last Modified: Tue, 24 Nov 2026 07:25:29 GMT  
		Size: 19.7 KB (19731 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-trixie` - linux; ppc64le

```console
$ docker pull perl@sha256:245c7308a6124806c29efd20aad011e3ff844c75cc108d7de87dad938dac490a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.8 MB (401762516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0769603b3854a73a3c51cffb2843676b4c38a9932bcdcf23145fc4ed8b8ec89d`
-	Default Command: `["perl5.44.0","-de0"]`

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
# Thu, 19 Nov 2026 22:03:47 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 19 Nov 2026 22:03:48 GMT
WORKDIR /usr/src/app
# Thu, 19 Nov 2026 22:03:48 GMT
CMD ["perl5.44.0" "-de0"]
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
	-	`sha256:1b591cb2aecaad95bc180bd9566951d2774e476c83a5b43087c3ab76efb785fe`  
		Last Modified: Thu, 19 Nov 2026 22:04:59 GMT  
		Size: 16.1 MB (16095214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38ea999b393bd03b19ae876b5cb3d2f69a0e09a92193099bf34867f00e7ebf3`  
		Last Modified: Thu, 19 Nov 2026 22:04:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:4f99e2d30dd59351b128932ce470a13841551ec922322d9e3a848bb4be65ad33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17211751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f5a5d23272a02e16e3c5ae538a8df828d23848ef5857a784eb7efabfad3cfdb`

```dockerfile
```

-	Layers:
	-	`sha256:deeea83a7165af52074f69482e1fee4b6ff6eefd81c2ce52181b740a1cca0ab0`  
		Last Modified: Thu, 19 Nov 2026 22:04:59 GMT  
		Size: 17.2 MB (17192115 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:231c2be00b45704ec89ffe63bb282428fd945a852ca2ed2ffc7a5a215add8380`  
		Last Modified: Thu, 19 Nov 2026 22:04:58 GMT  
		Size: 19.6 KB (19636 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-trixie` - linux; riscv64

```console
$ docker pull perl@sha256:98c77cb46d5b222d5707eab83d1c093863d78110aee6049d01a7be3131a3ee5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **479.4 MB (479430704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc91ca384e0a7c4fa8fed9c7a17c1ae6d3471e56c98290811ed086ba0481b8f`
-	Default Command: `["perl5.44.0","-de0"]`

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
# Mon, 16 Nov 2026 09:04:39 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Mon, 16 Nov 2026 09:04:39 GMT
WORKDIR /usr/src/app
# Mon, 16 Nov 2026 09:04:39 GMT
CMD ["perl5.44.0" "-de0"]
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
	-	`sha256:1f9ddf9f3143802bc303278341d0a1031cffa005335da683547a087813888655`  
		Last Modified: Mon, 16 Nov 2026 09:13:10 GMT  
		Size: 15.6 MB (15586371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23145e9f6992faa4cd971b8c3940df61287499f09da3465ce2816b990ef6209d`  
		Last Modified: Mon, 16 Nov 2026 09:13:06 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:042067ab5ff144ae599acb0a6a5427c928a3844cec2db6e648dd820b1e359f55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17283984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e842c8c1b2a427d9db22c05984de47ef4c2345658076382ba2b842d02983fa`

```dockerfile
```

-	Layers:
	-	`sha256:0c56c664dcdff52109672099864a4221158d0052439c534212bd6041e6285991`  
		Last Modified: Mon, 16 Nov 2026 09:13:11 GMT  
		Size: 17.3 MB (17264348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21216d68ae04637ebe5b2c2c2df6c4c7448f773e58cf8dbd67939eeb2597f1a4`  
		Last Modified: Mon, 16 Nov 2026 09:13:05 GMT  
		Size: 19.6 KB (19636 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-trixie` - linux; s390x

```console
$ docker pull perl@sha256:47dd537852ff775a82128f7bb2253343bc777ca0d6e5e7996ffc99ce8a821b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.5 MB (369458810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b7520901ce64ca121a7f9bd6824cc035b7523d674db7b8d8ab23c57bbb3e8d3`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:53:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:41:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:14:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:22:47 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:28:06 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:28:06 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:28:06 GMT
CMD ["perl5.44.0" "-de0"]
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
	-	`sha256:81a4877c96a3895b5b98b6274bdd5f44a82b410dfdec10ec1a6c350b231b222a`  
		Last Modified: Tue, 24 Nov 2026 07:28:36 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ea601708666d2b17527f2b3fa605c62769e95f4aa3aafbebef3cefc22f8577f`  
		Last Modified: Tue, 24 Nov 2026 07:28:36 GMT  
		Size: 16.7 MB (16703624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30420d2ee6c590ae3dd046d50b16498c151181b669458d7412234d2abc3dcf09`  
		Last Modified: Tue, 24 Nov 2026 07:28:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:b77067df75f65d23794f6b019c659925b1791b5a43cf7aa72d4c905e8d0cf6c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17005055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81f47e34399cc6539536f5ae0f59ab9506797f87a0c1416833dda0999c5df721`

```dockerfile
```

-	Layers:
	-	`sha256:2fadcb49fe23c78259deb218ddfdf8ea037ba92f0024ff611d7680d33b3c0190`  
		Last Modified: Tue, 24 Nov 2026 07:28:36 GMT  
		Size: 17.0 MB (16985499 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:011a874ef1592ad3d14e1402d67ab03e28d441e186d81a814405945e76cfab12`  
		Last Modified: Tue, 24 Nov 2026 07:28:36 GMT  
		Size: 19.6 KB (19556 bytes)  
		MIME: application/vnd.in-toto+json
