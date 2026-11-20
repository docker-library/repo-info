## `perl:devel-threaded-forky`

```console
$ docker pull perl@sha256:4647b3d03d1a678f0fa079e62e1e69ef14d237e6e9fe4fbee9b6f7410fc7b52f
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
$ docker pull perl@sha256:5b77cd4a18237869d58479096a3beee74dca173a0c6f86d7cee8de3be74b6ff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.6 MB (385623242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f788623339bd50e1c33254d77af3e6a92144dc13fafd7eca7ffe0237d929efb`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:38:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:53:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 22:00:49 GMT
WORKDIR /usr/src/perl
# Thu, 19 Nov 2026 22:05:26 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 19 Nov 2026 22:05:26 GMT
WORKDIR /usr/src/app
# Thu, 19 Nov 2026 22:05:26 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:bf9af81856ea5706eacb27a112348407de5599f59bcd9cd0be856e662cd8a491`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.8 MB (49837510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34adeb06c2a31397c5d2536ff0284a8c250aafe6291026b02f01a24762a15dc6`  
		Last Modified: Thu, 05 Nov 2026 07:38:17 GMT  
		Size: 28.4 MB (28403902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0999058e7bd78f12022d99b9ff1ecc345f9424fdd054db9214a08eac5e3eeb`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 80.5 MB (80450900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816a6b4c4749cb5f0d6910e834d01531feb68ad4ab630a32064676d7f435c953`  
		Last Modified: Thu, 05 Nov 2026 08:54:18 GMT  
		Size: 210.1 MB (210146054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5e78fe68fd8bf749b20c5b14a45f9a93144eea0fbd6a7c75f62a25dfab805d`  
		Last Modified: Thu, 19 Nov 2026 22:05:47 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb2bf54c9ff776d6eeae3245718159119dd414b493fb3b04183313d8b0ad7d3`  
		Last Modified: Thu, 19 Nov 2026 22:05:48 GMT  
		Size: 16.8 MB (16784610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c4869a896d982c13ef93410aa46008a59911334d98cc24526f5744ee488f62`  
		Last Modified: Thu, 19 Nov 2026 22:05:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:40edb11c946ba39e8ecedc969e90e587ccaa644b92d809e607cf21e107d5e89f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16901351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f014974c6dde9b940549d5b4fba9490bd4a0d570649af9e2de3f128c882e1643`

```dockerfile
```

-	Layers:
	-	`sha256:32a1b1308b47e7bddf2aea7a9df35c27f82df94806b123bbf3fce0754eb371fd`  
		Last Modified: Thu, 19 Nov 2026 22:05:48 GMT  
		Size: 16.9 MB (16883677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d79511610bedd400a330ed93b8be32ee42d3ef9c4625b870df4bb21b2e320876`  
		Last Modified: Thu, 19 Nov 2026 22:05:47 GMT  
		Size: 17.7 KB (17674 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-forky` - linux; arm variant v7

```console
$ docker pull perl@sha256:7d8fc1588d95a34523e1481531accb115d09b14a8d73dff072d7501a59111705
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.7 MB (322662643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665b3c3a0cbd89c09a6bc4ff02e43196ab8f9237ab1ed748ce1d10c41fa259eb`
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
# Thu, 19 Nov 2026 22:08:42 GMT
WORKDIR /usr/src/perl
# Thu, 19 Nov 2026 22:14:47 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 19 Nov 2026 22:14:47 GMT
WORKDIR /usr/src/app
# Thu, 19 Nov 2026 22:14:47 GMT
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
	-	`sha256:c1cc8fd8524776b776a51917063e03b0d9671bf508a65bc59b0a7ea16322857a`  
		Last Modified: Thu, 19 Nov 2026 22:15:08 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f82af23c241238161503505b46edc29a7094f7d3d7a4f482ecd1325f13abaa`  
		Last Modified: Thu, 19 Nov 2026 22:15:09 GMT  
		Size: 15.8 MB (15828026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e1c2dead71a852e273e1949e4a1be26533ea41bf338485c7a06d828b37e694`  
		Last Modified: Thu, 19 Nov 2026 22:15:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:ac50ccb1240611fab7b2aa78f51adb1cd455d096e4a11dd0881956d368878cff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16686548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32c3341e145e35e0cd398e7345f676cb9436fc8642a673f2005894607b2d8972`

```dockerfile
```

-	Layers:
	-	`sha256:8dbb9f9157c2a42d90278cdba949333cc42b2cfad691c4288851408cb3c2061e`  
		Last Modified: Thu, 19 Nov 2026 22:15:09 GMT  
		Size: 16.7 MB (16668802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f159e34d8e555ac997c57ba920db6be48933b2af696cd4507e7da3d354196b1`  
		Last Modified: Thu, 19 Nov 2026 22:15:08 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-forky` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:3816b655708db15cab818172bc65b12f9ec6314641428e04ea33513a91a9fcbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.3 MB (370295399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c0bac2913be5678e435e3842fcff498bb14759394fd5a4b35d4e6d2c2b71b5`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:42:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:28:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:54:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 22:03:48 GMT
WORKDIR /usr/src/perl
# Thu, 19 Nov 2026 22:08:50 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 19 Nov 2026 22:08:50 GMT
WORKDIR /usr/src/app
# Thu, 19 Nov 2026 22:08:50 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:779a084ae933b1cf040630a0e7bb02d2f926122fb718be525ae05bbcdc26b6df`  
		Last Modified: Thu, 05 Nov 2026 06:15:48 GMT  
		Size: 49.2 MB (49180235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8135f0fcea163d1131a17fb32e94824499ebd8b67b4fb8cf37f4bc98c95fc2f`  
		Last Modified: Thu, 05 Nov 2026 07:42:10 GMT  
		Size: 27.4 MB (27354458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c66e76dee062588fb59411d96090f681332ebaa78686690c5544a17f096b7fe`  
		Last Modified: Thu, 05 Nov 2026 08:29:15 GMT  
		Size: 78.8 MB (78789345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0797fa1d073916fa03c4a80a6b59e40dc2de43a9a139b53c5ed8e471df4ee02`  
		Last Modified: Thu, 05 Nov 2026 08:55:01 GMT  
		Size: 198.3 MB (198311106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f22e948f4d55d9fc12ee35969588b9b4ff49d10e0af8ed80d30a5165ccbe7d`  
		Last Modified: Thu, 19 Nov 2026 22:09:12 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59f5bafb9eeb11c3f2d7fa05d0d0ba127fcd2d01a61c5037e5fc53024c3f3bd`  
		Last Modified: Thu, 19 Nov 2026 22:09:13 GMT  
		Size: 16.7 MB (16659990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d584b7a6c5a04460e8adbc1ffbe84551654c721e296bef6f8a2f78fc144800`  
		Last Modified: Thu, 19 Nov 2026 22:09:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:66065aa625c8350a4d1c5b99340885af5833c589f0ccb98ae33e047ae45def09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17007774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7141141eeefd977c73523af13337d775ba15f887612fcaa029632ae971169d17`

```dockerfile
```

-	Layers:
	-	`sha256:3c04d0aef2aba5301398f0c11047eec4018c5b5d2c748c8909d684fdcaffacce`  
		Last Modified: Thu, 19 Nov 2026 22:09:13 GMT  
		Size: 17.0 MB (16990008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:697368b568ff64e73c50e8fa47a848156d04ffe18013e6fa81ed08ea1e0a1caf`  
		Last Modified: Thu, 19 Nov 2026 22:09:12 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-forky` - linux; ppc64le

```console
$ docker pull perl@sha256:6d36e3c586f1c30347f517159f6ef12636a093f22a5a143df047c3fc65b805c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.2 MB (390161149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab74b56d2d027aaa69139708c3f26c9a3cd4ef5883111e1455775f559d7c139`
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
# Fri, 20 Nov 2026 01:07:09 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 20 Nov 2026 01:07:10 GMT
WORKDIR /usr/src/app
# Fri, 20 Nov 2026 01:07:10 GMT
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
	-	`sha256:c1324dfb4b23bd5da402a2117368b0aa634a1ce6d49a6ff549c84e251710ea47`  
		Last Modified: Fri, 20 Nov 2026 01:07:54 GMT  
		Size: 16.8 MB (16784336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96781818164e2fe71e91abbda23c6704b85d1f5a1d46ec851b44c192dc593342`  
		Last Modified: Fri, 20 Nov 2026 01:07:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:eb3696cc14900e3b926e3a04cdb73188f40517de809be137b1720e5accd4153d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16903712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:338d5367e16350c4b226265a34fd45cd78bffe4e0fca294fe2f603719fbb796a`

```dockerfile
```

-	Layers:
	-	`sha256:a65c8d5d2899402647fbc5d30fa85175f8e07d5ca47a4380c59dbfa4bb72dd01`  
		Last Modified: Fri, 20 Nov 2026 01:07:54 GMT  
		Size: 16.9 MB (16886000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c06977a7115e9ff2579ebfd046a3f59f45de361fd4a222624bd646c062023812`  
		Last Modified: Fri, 20 Nov 2026 01:07:54 GMT  
		Size: 17.7 KB (17712 bytes)  
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
$ docker pull perl@sha256:d58de44f66046d61fe445522a9101fa44669a2e54f64e78b8f1ca9a3dc8f4da1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.1 MB (355078229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d543dbaa8fe0b0d6490fe403151a14dd9f2eeb5716fe3b1136f102116a2ed3`
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
# Thu, 19 Nov 2026 22:05:22 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 19 Nov 2026 22:05:22 GMT
WORKDIR /usr/src/app
# Thu, 19 Nov 2026 22:05:22 GMT
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
	-	`sha256:4af0468088f54ee71f432b86fdc269c4a6c52ad32589a53dd0325bc4690c3b3e`  
		Last Modified: Thu, 19 Nov 2026 22:05:50 GMT  
		Size: 17.3 MB (17307677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c59e437392d16fa9aaf6eab9cf420765d54c9022922177cf44e80a8abda85870`  
		Last Modified: Thu, 19 Nov 2026 22:05:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:51c23d278b0a4fd5fb68fe1733d95d0787065e47a90c0b807b5d9053f5a634b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16706602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45d28e5f00f92d575fd45f18b2d65c0762cdc42e4af60ef5c2089c0c651746cb`

```dockerfile
```

-	Layers:
	-	`sha256:5051141e259ec3b32ce4b307984021ee88d500d27030cad27d6b0c7254430696`  
		Last Modified: Thu, 19 Nov 2026 22:05:50 GMT  
		Size: 16.7 MB (16688928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d434b09f40fddaf84796c1758dcadef4ae5e373c91d5f0feb6f72c8c484f2b88`  
		Last Modified: Thu, 19 Nov 2026 22:05:50 GMT  
		Size: 17.7 KB (17674 bytes)  
		MIME: application/vnd.in-toto+json
