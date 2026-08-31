## `perl:devel`

```console
$ docker pull perl@sha256:cdf895f2674edad0bf3377e0f37c8a5d81f9e8a69d88a0faa93708fc88b0527e
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

### `perl:devel` - linux; amd64

```console
$ docker pull perl@sha256:4495181332586a7b26c43be727f46dab403ac035fc6b0826d13cdd1e4d8feb12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.3 MB (395310566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f218725c7aadbf534fcf5f1b3b2fba7a0a01e40e653b5112a9b9c9bad376ba0`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:19:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:19:02 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 03:32:18 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 03:32:18 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 03:32:18 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fed46b68cf907ddf6afb6bc4211842f016a0876b02fc27912582de4c2fed3b`  
		Last Modified: Tue, 25 Aug 2026 02:19:48 GMT  
		Size: 236.3 MB (236338551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49371fc8e65650046837fa1aafceb070e51f96ce15c1c56ec58f78c49c49d7f`  
		Last Modified: Tue, 25 Aug 2026 03:23:25 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d43df6eee21a646ba78b86c691a0a103108171220a476763a5d915db793dfbdc`  
		Last Modified: Tue, 25 Aug 2026 03:32:36 GMT  
		Size: 16.2 MB (16194256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59303555246fe8dd59881ddf52b674438891da6c786a2cc48cd4ab2e81b98d41`  
		Last Modified: Tue, 25 Aug 2026 03:32:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel` - unknown; unknown

```console
$ docker pull perl@sha256:ef83b7239dc66af60ad161d24a167e3215ca3ac13ce85fdbdf72a1932006df42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17225666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cbe8b5046b8c4715d620f3eb92c89fc656596ac8b0928ceb6e489353edd6ea9`

```dockerfile
```

-	Layers:
	-	`sha256:9a56b0bd1b22ce8cb72e546556bbfdf9a46445fbd03b5e630c7199dfe20f62d6`  
		Last Modified: Tue, 25 Aug 2026 03:32:36 GMT  
		Size: 17.2 MB (17207214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cafc15fedc5e5593a4f2eac94fd501037404ac43543366c5248e3fb0121aa64a`  
		Last Modified: Tue, 25 Aug 2026 03:32:35 GMT  
		Size: 18.5 KB (18452 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel` - linux; arm variant v5

```console
$ docker pull perl@sha256:f0fd62cce2c4bcad5c5a4fcd40fa1a109de682cd86297a0dc7a4093e349529c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.8 MB (358809752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:200434fc663481967e948e17e0e8af97153f79e89ea248ad21f7cfd088b0a395`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:46:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:17:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:15:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 04:12:56 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 04:24:40 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 04:24:40 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 04:24:40 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:eb6dd3c63a4e348778a39eaaad39d8544405ca793fafad8492987c16b93bf6c4`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 47.5 MB (47513959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:508c2e701cac19df9a11b9cf45817e44d4de1bb4cdcee87e5c2924142bedbe7a`  
		Last Modified: Tue, 25 Aug 2026 00:46:57 GMT  
		Size: 24.4 MB (24365366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac0abcf758e9af8b215879f173fb8085cba11467f0c1faadc6199455b7c6880`  
		Last Modified: Tue, 25 Aug 2026 02:17:44 GMT  
		Size: 65.3 MB (65349128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9605cf28c2e148e6923e75bc5e1cb3e70e67e58c79e6bacbc85c522bf068c690`  
		Last Modified: Tue, 25 Aug 2026 03:16:11 GMT  
		Size: 206.1 MB (206066540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1a40c40eff9df7e5d4fa12b330b390e11f70b8ca7abc84bf5ad6188612cb8d`  
		Last Modified: Tue, 25 Aug 2026 04:19:04 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af027b1e62d9d8c6296027ce52b16f1121fd201a83c4ab91afe0080cde2ce541`  
		Last Modified: Tue, 25 Aug 2026 04:24:59 GMT  
		Size: 15.5 MB (15514491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19d155e942f28d2d10ed1240a5d1e52dd4789a2f50e38e1d2d3aee6c2b66f26`  
		Last Modified: Tue, 25 Aug 2026 04:24:58 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel` - unknown; unknown

```console
$ docker pull perl@sha256:3371ba7ca2ac91040adbbf19c75827b6566b685ffbb1271bfdf722515307a193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16987984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef0147ca77c6b021f74e2478bd4609567e8d1c77eb55b279e70b957c3b20d7f8`

```dockerfile
```

-	Layers:
	-	`sha256:bd660bb7b1d5bfc0f685df1b2d0232a2cad15b56867b97519f594cef40c2cb80`  
		Last Modified: Tue, 25 Aug 2026 04:24:59 GMT  
		Size: 17.0 MB (16969436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee53c7d34cdb3ff39fd7ec39d36e054d23a56053a306eac00a4c5d7a889d7837`  
		Last Modified: Tue, 25 Aug 2026 04:24:58 GMT  
		Size: 18.5 KB (18548 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel` - linux; arm variant v7

```console
$ docker pull perl@sha256:6c3f60a2f90e87c9f18a78e6acf4fadea321812e2aab49e1d7d2a2c330e25631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341093387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:090f22da7357edf6a2de5820e7f5963e11015b397e51e0755d18c74bd83d48c5`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:36:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:15:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 04:37:07 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 04:54:51 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 04:54:51 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 04:54:51 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae11486f16a4a24e28283020d5361fb5a7863e1f116ef0dd9df4c0c234a82e9`  
		Last Modified: Tue, 25 Aug 2026 01:33:16 GMT  
		Size: 23.6 MB (23637061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990008fd0376eedb7a7400308f614aa553c4160bfe5804a99217456a931b9b98`  
		Last Modified: Tue, 25 Aug 2026 02:37:11 GMT  
		Size: 62.7 MB (62745385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1728466a7e6bf4d4d069bf3a43c9542cda7f5ade8e960e3e732c42c1198844ab`  
		Last Modified: Tue, 25 Aug 2026 03:16:19 GMT  
		Size: 193.6 MB (193625957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb756844ff39d814aa56a475dc8ef3f408740befcd4a8692943232a318bee3e8`  
		Last Modified: Tue, 25 Aug 2026 04:43:04 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8996a8561930509bf1c8cf57c57b0dc40749587e0790a14c932439e0b606388`  
		Last Modified: Tue, 25 Aug 2026 04:55:11 GMT  
		Size: 15.3 MB (15320666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06ca80044fc9c5e17df59fb0c5f1f7edd9d34cd6a4f3c2f10f71c312d95a569`  
		Last Modified: Tue, 25 Aug 2026 04:55:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel` - unknown; unknown

```console
$ docker pull perl@sha256:1682755fb115583889dddaa1797a44b58ed75c117704bc54eec38a467bab3238
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16993774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8e7e9badadaee8d1200d7433b1e803c26e0a90a7380f0173e9881e6e9784c96`

```dockerfile
```

-	Layers:
	-	`sha256:ccb0b39e6f9bcb7a3d69e91438f0915274bb3f6d577e17661fece4e6c3d9ca0e`  
		Last Modified: Tue, 25 Aug 2026 04:55:11 GMT  
		Size: 17.0 MB (16975226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3957904821af8207808ec5f4f60339f6f6f49e49d4fdd49d25103e2bedb7aea`  
		Last Modified: Tue, 25 Aug 2026 04:55:10 GMT  
		Size: 18.5 KB (18548 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:ec283e95d19a709da617866e769d0def6e0817ad11ac3fe09f8712d4fa5685cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.0 MB (384950236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39d37745c2652cb67991e0abec0484ce38d20f9c28dcd7401f1000cd9d77e5a`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:21:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:20:37 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 03:30:37 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 03:30:37 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 03:30:37 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa764f06969872033af6eed9ac02aa9c93e7ab8553fce36b92dc116408dd79ec`  
		Last Modified: Tue, 25 Aug 2026 02:21:56 GMT  
		Size: 226.5 MB (226472467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9908fe85c789669ad6888ae1a2ac5fc748c9fcc58eae398004ed5bf8d52be2`  
		Last Modified: Tue, 25 Aug 2026 03:25:54 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf3023b244c713dfa28314a1657a590f107fff205038f57128496fc945587b9`  
		Last Modified: Tue, 25 Aug 2026 03:30:58 GMT  
		Size: 16.1 MB (16140202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abbde4e1b80dab6f5c2ba2c97ddf7d304ea54641bd8909b98961e542d40dd88`  
		Last Modified: Tue, 25 Aug 2026 03:30:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel` - unknown; unknown

```console
$ docker pull perl@sha256:bd173ea63e260ba40be77a87cb6a4d4299f67d1bbd9e2beee4f5131b6d9bcc16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17309486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5e7c89d176de115a920e9fb5e769f6996e06559ccdc171b742ca62ace4c7e75`

```dockerfile
```

-	Layers:
	-	`sha256:33f1155211ccb1f41a1c9920f2c3ea6702aad4c8331087c832d9a52e3c8ff6cd`  
		Last Modified: Tue, 25 Aug 2026 03:30:58 GMT  
		Size: 17.3 MB (17290907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca2e78f8a1544908f0275c7b779b7f3074525630c41260ac49933397001a5861`  
		Last Modified: Tue, 25 Aug 2026 03:30:57 GMT  
		Size: 18.6 KB (18579 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel` - linux; ppc64le

```console
$ docker pull perl@sha256:ef3ecf662a7581ba87d390f30553b1cbc9cbdebec0c11e015f5fc1c4d78c0b80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.9 MB (400911384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414124aa00fbecfbbde607ee3b1ec6b8abe2ee02fc3b0d654a033bf6fcd53b26`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:37:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:49:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 12:41:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 14:51:01 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 16:02:03 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 16:02:03 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 16:02:03 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1442b53cb90baed6c48b291e1a0a38334a0f6d974b82a480e299611a8fb76e6e`  
		Last Modified: Tue, 25 Aug 2026 03:38:18 GMT  
		Size: 27.0 MB (27022202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689900c76da5590e58792b7505c0dbe058be0e1d5c657629bbb7e6fc3cdf33e3`  
		Last Modified: Tue, 25 Aug 2026 09:50:52 GMT  
		Size: 73.1 MB (73076336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfffa691c5e437f0411bd968f8f505d3dcff76645c555ae217270824c1bc408`  
		Last Modified: Tue, 25 Aug 2026 12:42:46 GMT  
		Size: 231.5 MB (231480777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a80ff2233cc4a9dc106df321b3f5d5a8d682cb2a07c83154c9878be81506a3`  
		Last Modified: Tue, 25 Aug 2026 14:59:19 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b135b35392b86c9dee61ef0da784064008bf6cce179a21233a927ecfdb5d3ecc`  
		Last Modified: Tue, 25 Aug 2026 16:02:42 GMT  
		Size: 16.2 MB (16167517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b459dfe9150512d6e32305559a9f97fe294e2609b71379934387cef0bbc10be0`  
		Last Modified: Tue, 25 Aug 2026 16:02:41 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel` - unknown; unknown

```console
$ docker pull perl@sha256:49ead69a8be2853e8cb73974b215b2eb92d858a8fc6e8866390584de67142794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17211269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1475b662d75bea925ff6a51c46730e93a5f17c459d13091957e87c57eb1a54f`

```dockerfile
```

-	Layers:
	-	`sha256:448c3eef5a607712dd0b02da003c7dc9700024ed7b8637a0fb4bd95265b3ae4b`  
		Last Modified: Tue, 25 Aug 2026 16:02:42 GMT  
		Size: 17.2 MB (17192761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a978bfb91293bfe54d575a05eaec150fdb9d05e45dc6633f0ff18f27c8b1ef7`  
		Last Modified: Tue, 25 Aug 2026 16:02:41 GMT  
		Size: 18.5 KB (18508 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel` - linux; riscv64

```console
$ docker pull perl@sha256:6739862dc29a45a98bac13c55212a7cca6fec5961af113ff760df0c73137ee3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **481.7 MB (481716239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56cb6b4d3da31f8b3e62d0635f8a8dbdd91a98c6425b11888cc8c686705c893e`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sun, 30 Aug 2026 13:32:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 06:34:45 GMT
WORKDIR /usr/src/perl
# Mon, 31 Aug 2026 11:42:33 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Mon, 31 Aug 2026 11:42:33 GMT
WORKDIR /usr/src/app
# Mon, 31 Aug 2026 11:42:33 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:acb3599234922b1535fad7591ba58ef476824d3d5c601ad25d9d566dd92a573a`  
		Last Modified: Mon, 24 Aug 2026 23:36:32 GMT  
		Size: 47.8 MB (47830880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b00426f7e0166f533550f928ed9a27165dd3e03cde499c3bb141c9a58e343c8`  
		Last Modified: Thu, 27 Aug 2026 00:25:30 GMT  
		Size: 28.1 MB (28149730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5c877eebe30544548ad1f38b12e3615f826fa71f90844cbdce21d0843f1b1b`  
		Last Modified: Sat, 29 Aug 2026 04:54:43 GMT  
		Size: 66.7 MB (66698099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f0e4f4847aca696948816bf39be8a482706afef9adf8f12ea510ffeef66a1a`  
		Last Modified: Sun, 30 Aug 2026 13:48:32 GMT  
		Size: 323.4 MB (323376726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11109f41863faebf8d1b90e0c86968b0cc08306651f65a3caebbd42b20f7029`  
		Last Modified: Mon, 31 Aug 2026 08:51:26 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e13b90d9b066b1b56dce95abb2d032cc6073371a3348911ae4db628c83438253`  
		Last Modified: Mon, 31 Aug 2026 11:50:39 GMT  
		Size: 15.7 MB (15660536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00829695ffe34aa4ed1311b929ae305e06bb2e3c29dc56f7be9b5622f47b75c`  
		Last Modified: Mon, 31 Aug 2026 11:50:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel` - unknown; unknown

```console
$ docker pull perl@sha256:1999bdd3ce2255b8b3c047a5dc03aea115128f1743ec69617338f591a6b101aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17281858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d74f23316baae4efcc834633dfd80a711886d2437787fd4f2e40992f0aca98c`

```dockerfile
```

-	Layers:
	-	`sha256:eb7c94041a8a51a9b60fa49e4947bd62e661f1425d665ff50853eda4b4b962a4`  
		Last Modified: Mon, 31 Aug 2026 11:50:39 GMT  
		Size: 17.3 MB (17263350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:deee1b05be74a4f67b1645155be6f3b123b28f6c36a4fa10cbf2a77269a483a5`  
		Last Modified: Mon, 31 Aug 2026 11:50:34 GMT  
		Size: 18.5 KB (18508 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel` - linux; s390x

```console
$ docker pull perl@sha256:3e2c9808a608f7dccde6a0b308c83d8e2e2c5386901dbfcfcbf3df62aa51c026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.5 MB (368502770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d55ac636f8e0d5b80a4635b11db3ea48eb2bf7e7040fe91f4352e34e7a3c50`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:24:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:52:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:13:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 04:37:04 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 04:43:01 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 04:43:01 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 04:43:01 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcc139358c0f126bea1e88fe19d9b62a4fedcd110ee450f995e2961ed24b16d`  
		Last Modified: Tue, 25 Aug 2026 01:25:12 GMT  
		Size: 26.8 MB (26805114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e1398c9084f07ed882b54eeab4eff13a12a949c611fe5ec44e503d987b450f`  
		Last Modified: Tue, 25 Aug 2026 02:52:35 GMT  
		Size: 68.7 MB (68651115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566f02eb650e6d3a1b20cda6143a62d3d2b8950fa5ee12c27f84b77ce7982741`  
		Last Modified: Tue, 25 Aug 2026 03:14:00 GMT  
		Size: 206.9 MB (206856474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf791c2b0199009679564631e400f1b124b4deb342ae498691a806b4c38a98b4`  
		Last Modified: Tue, 25 Aug 2026 04:43:30 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ca9cc83c9bb327041c3cfc523cbbfc16f8d25319d4ed570119283f374c15c5`  
		Last Modified: Tue, 25 Aug 2026 04:43:30 GMT  
		Size: 16.8 MB (16783102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b408a5eab470ddd3635ae4e27d4df22b3c633e4ec29c3d0e55f8d89cd0b7ee5`  
		Last Modified: Tue, 25 Aug 2026 04:43:30 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel` - unknown; unknown

```console
$ docker pull perl@sha256:a9a12aec89ce71c418cfd6203962b7821030a1ca12f0034c5da81e88f4199a03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17002899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7c793b4f00e829b7ac640ca9f86e4e128984a978f972037e2e371a4b3c3dce3`

```dockerfile
```

-	Layers:
	-	`sha256:58344a35a89a5fdae3d57254789edde87ff3cfa6c0441cff03209e7d3b4e51f0`  
		Last Modified: Tue, 25 Aug 2026 04:43:30 GMT  
		Size: 17.0 MB (16984447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f72c36bc31fe2c59e2b8f5b1158c98148c2e7b4a8602e71b751ba6d901590004`  
		Last Modified: Tue, 25 Aug 2026 04:43:30 GMT  
		Size: 18.5 KB (18452 bytes)  
		MIME: application/vnd.in-toto+json
