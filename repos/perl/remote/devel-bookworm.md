## `perl:devel-bookworm`

```console
$ docker pull perl@sha256:7238130540ef191b5e29846f88f026506f19603404b8d7b33869c5531d04d40e
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

### `perl:devel-bookworm` - linux; amd64

```console
$ docker pull perl@sha256:6b94c9f10e075f38378ac32199233bc3f78179656d12411b9a51255c381233c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.4 MB (365375750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c7f6492bc969c1de3ec8c7a0e8cf91052c83ed5536e179ce55e35ab3713ba2`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:20:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:15:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:29:51 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:34:36 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:34:36 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:34:36 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1d5603818e4025d8c8e4b5578914535e7e3466d860768e69f957f49fc5fac8`  
		Last Modified: Tue, 24 Nov 2026 05:21:02 GMT  
		Size: 64.4 MB (64432507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0db1ede1885b185de542c8de726f000ae4285b7f766859ee4e398a0c5ae4f430`  
		Last Modified: Tue, 24 Nov 2026 06:15:50 GMT  
		Size: 211.9 MB (211884679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd4b93800d02e382eaf53cbef76cf654b8e8ddf3026d9710b736455f5509b071`  
		Last Modified: Tue, 24 Nov 2026 07:34:53 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca03a59874a0f2de6276184f09a7e5faf3d43f8dd062e077ab5f39ac008ee0a1`  
		Last Modified: Tue, 24 Nov 2026 07:34:54 GMT  
		Size: 16.7 MB (16658667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eada04bb093a1194ea5fd451e6f6dc96b9bbd70f6850ab339178ea9ffef965a`  
		Last Modified: Tue, 24 Nov 2026 07:34:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:57d550254b7691899c0c1819191c90885979b075b5a459a003054f4fc7f87ca8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15888188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bee809fc934918c380f45c84efadab8b5aa5ecfd3a048cf694e5e76a6c05cc8f`

```dockerfile
```

-	Layers:
	-	`sha256:38e77f841c225bec942582ab2a00b3d098e5fd7fae9ad7666c05937714895e6a`  
		Last Modified: Tue, 24 Nov 2026 07:34:54 GMT  
		Size: 15.9 MB (15870588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da7b41e9f03e35e85fd341d9d0a1d19c2dc005f3a5b1b880fe6664b1c1ec7bcc`  
		Last Modified: Tue, 24 Nov 2026 07:34:53 GMT  
		Size: 17.6 KB (17600 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-bookworm` - linux; arm variant v7

```console
$ docker pull perl@sha256:2e6775ea9d0d4000ac695416e520764e03189145ef94b41509326af3549aa907
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.2 MB (317209026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c9b38b958f16b5a7fc72643522b191fc2ab30d13157c2a07c661373940887b6`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:41:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:13:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 08:36:13 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 08:42:09 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 08:42:09 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 08:42:09 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:bf46e8a44ab51f3c808ab48aaf11399ad2da7d0966cd41620337234ab118fa7f`  
		Last Modified: Tue, 24 Nov 2026 03:39:44 GMT  
		Size: 44.2 MB (44223203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd6ac0d814892f590af7533060e7d411f4b069b41846d6b77643c1ec671212d`  
		Last Modified: Tue, 24 Nov 2026 05:16:06 GMT  
		Size: 21.8 MB (21769445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22aecb817db0f9e40c6e19edcff5610744501481756bfd0fbc3b3cfe54d407ef`  
		Last Modified: Tue, 24 Nov 2026 06:42:14 GMT  
		Size: 59.7 MB (59697363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d67a1a803bc1f2eaf672448119ba9b9c0c128620c7f37502beb5e54f1041bd2`  
		Last Modified: Tue, 24 Nov 2026 07:13:49 GMT  
		Size: 175.8 MB (175796989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73779872004feb28a9b0c31245d123255a984befb8d1a081882a22a53ef1d095`  
		Last Modified: Tue, 24 Nov 2026 08:42:29 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df74d8ff0116e7eb12f0fa51cb8952c60af01884f2d5eeed32dfbcc2ab1ec56c`  
		Last Modified: Tue, 24 Nov 2026 08:42:29 GMT  
		Size: 15.7 MB (15721761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509d2b1a1b057a4df342a37da3a4457251dae8f70c077a5d5a7b7351a3e3614f`  
		Last Modified: Tue, 24 Nov 2026 08:42:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:3666b1023e184771925f56cde397bb7184c96b457a9228b4c03a6f32fdfcf844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15690728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c560659efc671208e499c88af1497f0f5d911dff00f309aeaf31472b96f2d06a`

```dockerfile
```

-	Layers:
	-	`sha256:9b705f69a19c4345a281667c359c72077ae2eddbfdff4351727edc48e41916ce`  
		Last Modified: Tue, 24 Nov 2026 08:42:29 GMT  
		Size: 15.7 MB (15673056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4858558c87ef35894e04e927c80c61e809d4a8001dcd039033dc50c276268b60`  
		Last Modified: Tue, 24 Nov 2026 08:42:29 GMT  
		Size: 17.7 KB (17672 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-bookworm` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:d0fea733fe5cf3128bd48b214c8de2f8dd0d5990354012f74684f3824dd87b00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.4 MB (356408305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a362572b151324bd10c78db37f1e9cf17411fb0f6bd7ba012cfe943db847ce`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:32:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:13:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:21:02 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:36:15 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:36:15 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:36:15 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e80db409d5b905f3c0d8228a2f82637b923bf2af30b11e87cb3b42e5e070d7`  
		Last Modified: Tue, 24 Nov 2026 04:43:36 GMT  
		Size: 23.4 MB (23440379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4d528de4b5383d96c1d03b858675d089f6dffcb1103cda3766265f17482fda`  
		Last Modified: Tue, 24 Nov 2026 05:32:20 GMT  
		Size: 64.5 MB (64528539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e076418e2fef05c49d1ad9e7afd24c85e08d63b43153895554ddb17ffa54e0d`  
		Last Modified: Tue, 24 Nov 2026 06:14:27 GMT  
		Size: 203.4 MB (203425851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aab89f49cf9bb1cfdc11e9b0243db39bcfcdb16c673a68dead4c6a42b7f50b11`  
		Last Modified: Tue, 24 Nov 2026 07:26:20 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88ba0ff8fcca0c75115ae1b88ced2864b711c70d36fc0ca2bd731be255899d9`  
		Last Modified: Tue, 24 Nov 2026 07:36:35 GMT  
		Size: 16.6 MB (16601012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b97c624dc31fc9cc0b4f9c1a12ceae6a1886754a47fc091acca37a6fae70603`  
		Last Modified: Tue, 24 Nov 2026 07:36:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:e0177cd418e5971d29a90ed8b4f7d7b1356f0f7e0605eb59374b60bc997b7779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15916794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25ecad590c4b7c75b6cda8e90bd0157ddf199087843c26d590361d68ced3e1fa`

```dockerfile
```

-	Layers:
	-	`sha256:912226a1c8dbbce02049a00867ee40d7c7debddda5d942108b0c2a648e5b0133`  
		Last Modified: Tue, 24 Nov 2026 07:36:35 GMT  
		Size: 15.9 MB (15899102 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:526f5aa52164e4a85bef539e07655646d5a2528a2b00dc054b34ae561bf8d772`  
		Last Modified: Tue, 24 Nov 2026 07:36:34 GMT  
		Size: 17.7 KB (17692 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-bookworm` - linux; 386

```console
$ docker pull perl@sha256:9f216cbe8f1daa01c4628082530fcbb4ceb46f2ba6fac43ee70139491d691c39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.5 MB (367456622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2fc7335b9ae3d68473d9915febe8f6af4d413af7d4f833839acf5a30857719`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:41:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:24:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:15:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:16:40 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:21:36 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:21:37 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:21:37 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:09060430fb43c1c139cc1889a4b8e7bb0d465c2c692e898e363029cce671f6ce`  
		Last Modified: Tue, 24 Nov 2026 03:39:50 GMT  
		Size: 49.5 MB (49515532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88783f32aad09b5608dad8e3ae3a279d819927fdfd70306f643bde0f0d4fee0c`  
		Last Modified: Tue, 24 Nov 2026 04:41:12 GMT  
		Size: 24.7 MB (24703788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76dab45eed6abc8d2bffa7ecbd77476aa63bebb9085d90a9465823b63c72419c`  
		Last Modified: Tue, 24 Nov 2026 05:24:37 GMT  
		Size: 66.3 MB (66278926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:164dd950c3174cfd7ac3085a1ec55b674320092c296804b1c37f9bd20e938fa9`  
		Last Modified: Tue, 24 Nov 2026 06:15:57 GMT  
		Size: 210.8 MB (210809373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5ae0f40df3388b3f184c44ed8867a8fc0b1cc05568e65b43cd80e72879099c`  
		Last Modified: Tue, 24 Nov 2026 07:21:57 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02a17b9f7549eb052cdb9a7865bf12e29d7893d89d98a617d117f310aaaed7ac`  
		Last Modified: Tue, 24 Nov 2026 07:21:57 GMT  
		Size: 16.1 MB (16148738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5b88d30e861bfacb122fab12d8d4ee9d30f0dbe093b034e621b7b759f24039`  
		Last Modified: Tue, 24 Nov 2026 07:21:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:339dfefb2d4802f4f6a84bde14861714f56a940a35d3cc96631da70c14eea246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15866387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91fe0f687308f317baaa4df4b137506095cb8cc53e8470a1dc1a93be45eb404a`

```dockerfile
```

-	Layers:
	-	`sha256:e5c499f709a570ff387f33a8fcc5a43c120ca21ac70dee5f847e14e671d446c1`  
		Last Modified: Tue, 24 Nov 2026 07:21:57 GMT  
		Size: 15.8 MB (15848814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbc26fd8c8ae57198f17f4d7f5ecc1dc47ff2f78768c59f9c30cee0b5934586b`  
		Last Modified: Tue, 24 Nov 2026 07:21:56 GMT  
		Size: 17.6 KB (17573 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-bookworm` - linux; ppc64le

```console
$ docker pull perl@sha256:7029059c4b05a401d16e13e6a561e21938736818108d917a05ed6fb5869efc2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.3 MB (379328916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ecd958f3f3524c09ef6f911b996ff037fcd64ff5b42b5d79b3802c7f4e5e17e`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 10:07:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 17:24:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 20:46:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 21:54:23 GMT
WORKDIR /usr/src/perl
# Fri, 20 Nov 2026 00:25:48 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 20 Nov 2026 00:25:48 GMT
WORKDIR /usr/src/app
# Fri, 20 Nov 2026 00:25:48 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ffec0873fe14b6e584873c80e384c7a988558ed670b69a2083f4a9eff8ef04`  
		Last Modified: Thu, 05 Nov 2026 10:08:16 GMT  
		Size: 25.5 MB (25515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912f86862ce2795897774b132f3a86834590ad3758900c8ec8c600b44058ae52`  
		Last Modified: Thu, 05 Nov 2026 17:25:45 GMT  
		Size: 69.9 MB (69899279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14d5fee07632732bb5754d3454367b1ee28cf1d75bc620bc2ef6967edde5432`  
		Last Modified: Thu, 05 Nov 2026 20:48:27 GMT  
		Size: 214.9 MB (214901016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9abd5354dba267bbd21d7bab28107dd20762df2d33becc36b4874bda346582dc`  
		Last Modified: Thu, 19 Nov 2026 22:05:27 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:085771f0bd263cb6aeb83a4447869c4c15d995b8385d19cd301ccec8b6e06892`  
		Last Modified: Fri, 20 Nov 2026 00:26:40 GMT  
		Size: 16.6 MB (16644563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:712ff6d049a5241c280ae77ce8420f904b5c5585666eb6bd81c1ca681b873737`  
		Last Modified: Fri, 20 Nov 2026 00:26:39 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:407786b9ad0b7ef0140648f90bf3bd61ef9b2c5d6a0f1066beeb088925677c4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15863928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a582d76beb29f9ee72afbe832c3f524c865e643d8a0525f623b97630afbbde48`

```dockerfile
```

-	Layers:
	-	`sha256:95862c78eff4f452b7f425e2771df614a12f4ded8d5d39ddfa5770d55be95b41`  
		Last Modified: Fri, 20 Nov 2026 00:26:40 GMT  
		Size: 15.8 MB (15846290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e064716c92e5629b7026a4137d8b3abb3b48169fb4ac5580b6ed0de218106015`  
		Last Modified: Fri, 20 Nov 2026 00:26:39 GMT  
		Size: 17.6 KB (17638 bytes)  
		MIME: application/vnd.in-toto+json
