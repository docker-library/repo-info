## `perl:5-threaded-trixie`

```console
$ docker pull perl@sha256:36a46f3bb60c47c1f18ae27991f057279e75debed29f0f9784932741a8a88305
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

### `perl:5-threaded-trixie` - linux; amd64

```console
$ docker pull perl@sha256:911f818f85d0600c99d63042ed4f36fd5a3d8d64d0902383e54862d19101d188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.3 MB (396266513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ec363916a0cb867a13ce86f722e1214beb24ac7e0181184b47e70d872870ac`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:53:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:18:48 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 09:23:09 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 09:23:09 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 09:23:09 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a88afca2bd37d4058d4b33d9d4d29b0557f8b811bb8c106942b5b51e1e4aad`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 25.6 MB (25634385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d2dc8717dbb4bb0d3cfa27e6e0275fca455c5220029d7a14dc7a75fbe8665`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 67.8 MB (67818699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696c1fe91c64662be9b13aa92628d62d6685ab94c0b55d185258a8f762133deb`  
		Last Modified: Thu, 05 Nov 2026 08:54:30 GMT  
		Size: 237.2 MB (237233076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f535302c82b83113d45067f862337f8b64e31a91fa8d3bbad6b1d5ed8a298a4`  
		Last Modified: Thu, 05 Nov 2026 09:23:27 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f6741914ca79b33b091f1a18f852aeef72d2c518065b7b4e11a304ff3eb61d`  
		Last Modified: Thu, 05 Nov 2026 09:23:28 GMT  
		Size: 16.2 MB (16167579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b69c1b053654bc0e0df7d369014b9987d336c0f55f0076357b9e0da6e3492089`  
		Last Modified: Thu, 05 Nov 2026 09:23:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:7d9be678c3cbcc424160ee4a77356bc8180f9332625239d0cda6eab6a7224b9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17226492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750dd231aefe4e7a14911617aaae28a0f9b6e56528f6e45c4caf14eadee31446`

```dockerfile
```

-	Layers:
	-	`sha256:df9cdce7aedb84c7dd1d5f0cf9a7d7776e4a1d8a2866d0f935fe7ee9c9f41dd1`  
		Last Modified: Thu, 05 Nov 2026 09:23:28 GMT  
		Size: 17.2 MB (17206723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d851b5038111f62939be01e8da3b0ecbf0d15db352cb5a5c63750e9754b5ad7a`  
		Last Modified: Thu, 05 Nov 2026 09:23:27 GMT  
		Size: 19.8 KB (19769 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-threaded-trixie` - linux; arm variant v5

```console
$ docker pull perl@sha256:a430ce58194959be84f32561711206eb14764f65df17393ddf52224fecfbd8cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.6 MB (359559958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6796a58910f7d360e26ea36a982238e8b45daae8fd8d09d96d515ccae2e41bd9`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:02:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:46:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:13:02 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 10:18:56 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 10:18:56 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 10:18:56 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:6014ad01ba3bbdd7a5930a9421ba5183b08db4d400276b1280526dcab0eeca2d`  
		Last Modified: Thu, 05 Nov 2026 06:15:48 GMT  
		Size: 47.6 MB (47579859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb20858af143effa2a6ff08699aefb8066d30be903ba6746924bc47d13b3548`  
		Last Modified: Thu, 05 Nov 2026 07:41:01 GMT  
		Size: 24.4 MB (24363933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1c42244bc37ee94bccbe6dff272d7c80ce633f7da5d1920286da439550a9ea0`  
		Last Modified: Thu, 05 Nov 2026 09:02:41 GMT  
		Size: 65.4 MB (65357661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa0f475f1c35492584805e9dff9b8d11eb32e3333bb4b674eb464269d1d4d50`  
		Last Modified: Thu, 05 Nov 2026 09:47:33 GMT  
		Size: 206.8 MB (206792037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a19076905a653b82ec40c755b229ea553383ca8813e0689b32dacd095cf57312`  
		Last Modified: Thu, 05 Nov 2026 10:19:18 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab2583b1f79ce40743014f27c7790d7e453bac49639de4a1847027348562335`  
		Last Modified: Thu, 05 Nov 2026 10:19:19 GMT  
		Size: 15.5 MB (15466203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c24b4edd2acd6ff44e9635f4017206b36a5b6ca5d13ee7d605a0ef9563a1344`  
		Last Modified: Thu, 05 Nov 2026 10:19:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:2d1f1a9116f43ed0c9fc98d571ebef253682f166b1adc622dd24808791798555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16988875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee6e74856791ddc09d89c0d3ab92a5f6ae5924ec19fff8127cd84b57877a0b7c`

```dockerfile
```

-	Layers:
	-	`sha256:aaa319301a0d8c9042ca5b1ed94fa9619e7db873d429783efa770e241c0552bd`  
		Last Modified: Thu, 05 Nov 2026 10:19:19 GMT  
		Size: 17.0 MB (16968978 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0d61162d4d120bdf3477b40707cf1405b4ffd026d48c29f77ae2bbe58eb1979`  
		Last Modified: Thu, 05 Nov 2026 10:19:18 GMT  
		Size: 19.9 KB (19897 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-threaded-trixie` - linux; arm variant v7

```console
$ docker pull perl@sha256:3bb1062d5c64247d9400a8f3a9011c48f5fb9a00d08d0ff9970ae4c3332a3542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.8 MB (341823114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d260713906478113ae9c8d956400a34e5eaaf6fb065946df8877f6e08e401a6c`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:24:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:12:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 11:15:52 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 11:21:34 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 11:21:34 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 11:21:34 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:865302b150ef6501d10367f445f0f9d34479768facdaad7ff5f2570ef01e64e0`  
		Last Modified: Thu, 05 Nov 2026 06:16:17 GMT  
		Size: 45.8 MB (45831124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec22bd8270a456c344320ca1bfb723ebee36d6367951065776d9dd7282537e25`  
		Last Modified: Thu, 05 Nov 2026 08:18:57 GMT  
		Size: 23.6 MB (23636480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f984886b94a931860c42ddaa1f808f518535286e993896a737731d0219bcbf9`  
		Last Modified: Thu, 05 Nov 2026 09:24:27 GMT  
		Size: 62.8 MB (62760090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7eecc700173d8d52639bf67fae48bf06558352b7e8b0a9ca17bb3f4a6e1ef4`  
		Last Modified: Thu, 05 Nov 2026 10:13:30 GMT  
		Size: 194.3 MB (194322402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e06f3c62e752c3d6eec1c152867d35873559bfd3d6995e6c5b93e4c40ab3bf`  
		Last Modified: Thu, 05 Nov 2026 11:21:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a246e7454951415e3f09c105aef2acba7841f663f145f73c719283f5711775d0`  
		Last Modified: Thu, 05 Nov 2026 11:21:54 GMT  
		Size: 15.3 MB (15272753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:840c50a8d9f2f30db1a8314c2ad3a6614c0b6c2101263020d250cbcdf8382626`  
		Last Modified: Thu, 05 Nov 2026 11:21:53 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:c48fc0ca4c98c82c350d05859c9f7371fdd28d4a4bd97f0dc2ed42efc738081e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16994667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:434feff3483f2deebe214078f59a57fba0a0275d8033f515678f5c72d644a8b1`

```dockerfile
```

-	Layers:
	-	`sha256:2836ad5b4456dc81025cdd27c7f02d9e164738270bbc7d73d7e72cb0abdca5a3`  
		Last Modified: Thu, 05 Nov 2026 11:21:54 GMT  
		Size: 17.0 MB (16974770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61fe94f23b7ee1be54dc0ffc8383a0a1eadd375c51b86dc4beaf6f5cbf7ea697`  
		Last Modified: Thu, 05 Nov 2026 11:21:53 GMT  
		Size: 19.9 KB (19897 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-threaded-trixie` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:696292e24e85bdfe3f907ba6066b4d59357619fc13a9f5aa6be4bb0421b66935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.8 MB (385776300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a01ed768d4ee2bf9b622d59b9ac901a8278a22a0b4a58e01c4f9df68adbb6d`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:54:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:29:49 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 09:34:42 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 09:34:42 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 09:34:42 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7287c5b5ce209cf618681832ded105b3182c871815ac857aeb105737563f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:17 GMT  
		Size: 25.0 MB (25037294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6439840073969a08a9c305e28768838fcea379036919203ccf9f9fc966cc9658`  
		Last Modified: Thu, 05 Nov 2026 08:29:35 GMT  
		Size: 67.6 MB (67633992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e65e2c5234276be7d945d8054632dc3750c6c3de75b431be0629199b0507d80`  
		Last Modified: Thu, 05 Nov 2026 08:55:11 GMT  
		Size: 227.2 MB (227219437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d7dae54f438b35f670b452d03907619295c590216adbbda92746252c556789`  
		Last Modified: Thu, 05 Nov 2026 09:35:05 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24abd272239eae7eaacfe10dcc77814c46ad7195c80e1a917e855ff9defd66a7`  
		Last Modified: Thu, 05 Nov 2026 09:35:06 GMT  
		Size: 16.1 MB (16106705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c77c101d94c6c02f854862324c4f168c67077840c8d2cf18d077342cac0ee02`  
		Last Modified: Thu, 05 Nov 2026 09:35:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:72e087933eca3f33df10e1a0e555e36cb3cab28d5413ea1b280083b3f5c1d6e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17310410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb2171179cb3e3a482e36f8e492d4a26924a9ac7d5de40055d758b442c40e392`

```dockerfile
```

-	Layers:
	-	`sha256:18a696087dec4ed0f8c862b4d73de814497cbfd2340b4398a82e6c18ffe01c2b`  
		Last Modified: Thu, 05 Nov 2026 09:35:06 GMT  
		Size: 17.3 MB (17290465 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c82be2b6bedb7ce722f5aa461ba006a7da09e98d8b07fbe292e81efb872332f`  
		Last Modified: Thu, 05 Nov 2026 09:35:05 GMT  
		Size: 19.9 KB (19945 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-threaded-trixie` - linux; ppc64le

```console
$ docker pull perl@sha256:953721c910f7d050a3048118daacb556380f1cd54bdd0585514b40a05935f2ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.9 MB (401862661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d298c0279c7e78045f8a1f021639ffa2d5db489a1deb4df11fe5fd2f4a597ab6`
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
# Fri, 06 Nov 2026 00:35:29 GMT
WORKDIR /usr/src/perl
# Fri, 06 Nov 2026 00:57:16 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 06 Nov 2026 00:57:16 GMT
WORKDIR /usr/src/app
# Fri, 06 Nov 2026 00:57:16 GMT
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
	-	`sha256:38f9fef664c1d90743bb9e7896db7e89046f2ebc1e844c5e0bb00ea8a2ab7b98`  
		Last Modified: Fri, 06 Nov 2026 00:46:19 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fb15990fd82df4987f6a681cf017cfe092e6f78f612385b91bc7ef88f39a55`  
		Last Modified: Fri, 06 Nov 2026 00:58:07 GMT  
		Size: 16.2 MB (16195358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f90cd7585849432f46f728df27138e3867197fcb26463d7477b230e47a1de11`  
		Last Modified: Fri, 06 Nov 2026 00:58:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:2b811d96da2709ab92b2b1d58a43164b5e8b75bab8abbeb6f89c3392dceab2bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17212130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d36519c0e645bb02b87c075af3e34090cfe48b66e93d5caf1fc5e41ecd637500`

```dockerfile
```

-	Layers:
	-	`sha256:edc02eeac88f6dbb06465de6d2cb7b878675c7d93b7d2d27029a4203eb927c9a`  
		Last Modified: Fri, 06 Nov 2026 00:58:07 GMT  
		Size: 17.2 MB (17192281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:569c4f7c51fd1c337fd2571f836476bf320d7237d87ecb105d6079fd069c06e5`  
		Last Modified: Fri, 06 Nov 2026 00:58:06 GMT  
		Size: 19.8 KB (19849 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-threaded-trixie` - linux; riscv64

```console
$ docker pull perl@sha256:228a5d6eb530a9b359875713e93b6cb4f79a0441f68fef128ad80a4d77e2adce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **479.3 MB (479296274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7921b6b9dec7f76e7c3d271a85ac698fac428a47c04675edca6126c47c5c9a11`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:14:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 13:45:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 10 Oct 2026 06:50:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 10 Oct 2026 21:37:26 GMT
WORKDIR /usr/src/perl
# Sun, 11 Oct 2026 00:13:30 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Sun, 11 Oct 2026 00:13:30 GMT
WORKDIR /usr/src/app
# Sun, 11 Oct 2026 00:13:30 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:45e9f88af4f41939baf397baad507403b0b2ad7362c860679e184bbd563c9aca`  
		Last Modified: Tue, 06 Oct 2026 00:30:31 GMT  
		Size: 47.9 MB (47876327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e0101e88ea96d4f49e7fe9273c6eef716c54c0e06234a5a7880913f417bfc5`  
		Last Modified: Wed, 07 Oct 2026 20:16:35 GMT  
		Size: 25.0 MB (24972632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122ad31d36d17ee6939e04e1683afb298fda9a5815f638ddd642254a8cd102f`  
		Last Modified: Thu, 08 Oct 2026 13:49:03 GMT  
		Size: 66.7 MB (66705470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f7b3723d66e9bf982d90fb7607b939da5f6f73b5ffb86e95027a0feed4cc7b`  
		Last Modified: Sat, 10 Oct 2026 07:06:05 GMT  
		Size: 324.1 MB (324123927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465a3f4d3c3c6bb7864859b918fd4cf3da8fcb5abb5350ab394892df713a2c7f`  
		Last Modified: Sat, 10 Oct 2026 22:57:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392a7bac8f7b00c3d2c5a5864c385897aede8bda4ece8b6e8eb5c117bdce9370`  
		Last Modified: Sun, 11 Oct 2026 00:21:29 GMT  
		Size: 15.6 MB (15617652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbf046cafdc5751f2bcaf3448feaf8c3be63a3ce95127b651cf602fbf9a1876`  
		Last Modified: Sun, 11 Oct 2026 00:21:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:eb3896331823297b518c4aa26d48ff4b175d79f8ea661de1477111bd7174bd9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17285479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cac93f9ea07b588ce439db56a23437f18a3d9c53feacfefd4ab91febd1220c0`

```dockerfile
```

-	Layers:
	-	`sha256:7ecec0701d7ca8255977b99288dd0ed0f060a4c62b2af11fa991f1e745679e1d`  
		Last Modified: Sun, 11 Oct 2026 00:21:29 GMT  
		Size: 17.3 MB (17265630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:066ba5fe10f556bfcd31881464be8503b26de6ee10d45a52daca460a3831dfde`  
		Last Modified: Sun, 11 Oct 2026 00:21:24 GMT  
		Size: 19.8 KB (19849 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-threaded-trixie` - linux; s390x

```console
$ docker pull perl@sha256:8c1e0fb18de3ba40b8ca1fb8e0430cfd681ee1b555951e0c3d333a300cb0dcf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.4 MB (369375121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21534c76250f65a12709b3967d1354db05dd7f051cd2a6bbc1852470225f3e2`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:21:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:16:26 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 10:24:09 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 10:24:09 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 10:24:09 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:41b07ac9fb6207a8cfec57ba13f9c1036c8164055359dd5610b3cec2a1af4d37`  
		Last Modified: Thu, 05 Nov 2026 06:15:43 GMT  
		Size: 49.5 MB (49479190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039a271aeb76e594bdb78f1d76c07538a5ea455b8cd1f6400425ca0d855f8054`  
		Last Modified: Thu, 05 Nov 2026 07:58:08 GMT  
		Size: 26.8 MB (26812003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236f934549db09dc0f91ef87581d65c0131867d26faf8e80120237f649a6f355`  
		Last Modified: Thu, 05 Nov 2026 08:49:09 GMT  
		Size: 68.7 MB (68671350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7037e61e2f2a3cdeeb35dbe7d9c3b9055786ef002e1958d14c5bdd10287c77c3`  
		Last Modified: Thu, 05 Nov 2026 09:21:55 GMT  
		Size: 207.7 MB (207650334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c0c4a9c3202ba5b96e30358244951c7c9940724a2048d0f477d6b93ea97cf9`  
		Last Modified: Thu, 05 Nov 2026 10:23:36 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b678929104f6d8757885606fd1b8074506083b9a7a2744d23977a4fcb93093`  
		Last Modified: Thu, 05 Nov 2026 10:24:37 GMT  
		Size: 16.8 MB (16761979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7adda839fd74b9fd1b7fcd0b34dad35acb5c3619f8b2b91e8c926771311a0c6e`  
		Last Modified: Thu, 05 Nov 2026 10:24:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:cddcc6bb7486cc1de62fe18891652f406fda6e349449b9ec747e213d527e512d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17003724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ca64dcd98083765f272f06139c18bdc7efa7fff7ccb771fca4ca3b708705f6`

```dockerfile
```

-	Layers:
	-	`sha256:1b56fa9aef394d1bb8e8bfd1af87bbbe7ce8cc28aa7b3741a5523c49893b31ea`  
		Last Modified: Thu, 05 Nov 2026 10:24:37 GMT  
		Size: 17.0 MB (16983955 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a49606bb050443fcdb204f573317c61f4ba82b2ca2460802bd5b95d0d79102df`  
		Last Modified: Thu, 05 Nov 2026 10:24:36 GMT  
		Size: 19.8 KB (19769 bytes)  
		MIME: application/vnd.in-toto+json
