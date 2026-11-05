## `perl:devel-threaded-forky`

```console
$ docker pull perl@sha256:7d731e9fc7ca0d193b382571559e1b6d82548212bd7b6afdb577fc457fb3a326
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `perl:devel-threaded-forky` - linux; amd64

```console
$ docker pull perl@sha256:18deb08771ac605fed85d486248afb8f7e654e38875c1f0efbbe7e25be8a823d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.6 MB (385574710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa0c4a9bb47adaef7108cdba53375a4a4b8cc8d20cdbb024c54d7371ead251a`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:38:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:53:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:28:05 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 09:32:51 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 09:32:51 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 09:32:51 GMT
CMD ["perl5.45.4" "-de0"]
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
	-	`sha256:f50c152a6016756dbd6d723be5b1e7c5367424105a8f5c61585f70a4ea44f4b5`  
		Last Modified: Thu, 05 Nov 2026 09:33:14 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f79a9150182ff44dd9fae08a0b41ae417cd7e73d22e0ba5aff5bbda70537e0db`  
		Last Modified: Thu, 05 Nov 2026 09:33:14 GMT  
		Size: 16.7 MB (16736078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62349b0d59cba1d2532217f1f77e8261c20d6f3d8fb8681421d1b984200fda0b`  
		Last Modified: Thu, 05 Nov 2026 09:33:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:1391cd1a2a4ee839795bd2c2ee2ef0ec3e3a4d244d9e21608fa779286c75d6fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16901351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80461000f2f40165c8bef1ac8c41b98a1dd0fc01e03f3f763c76c95628d30b91`

```dockerfile
```

-	Layers:
	-	`sha256:f8d5d6cbad0e5487968b1c785c1df307191f3ec0e396d77437f8e01edf55ab7b`  
		Last Modified: Thu, 05 Nov 2026 09:33:14 GMT  
		Size: 16.9 MB (16883677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72dd100384ac1f9c06e4b3c599a1043b239d332213739e9f58addd0aa11962c6`  
		Last Modified: Thu, 05 Nov 2026 09:33:13 GMT  
		Size: 17.7 KB (17674 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-forky` - linux; arm variant v7

```console
$ docker pull perl@sha256:90f21a4385f604624934cb940cb50aad98301a4f2991025a375e48179aea6273
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.6 MB (322618077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4f5b6d06a7bce572b3df16f2368894ed7cce2238f96fe8b62af8c108f0dda0d`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 08:18:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:23:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:12:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 11:24:17 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 11:30:11 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 11:30:11 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 11:30:11 GMT
CMD ["perl5.45.4" "-de0"]
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
	-	`sha256:1af59034db72c2093d80861c283837914454f978cd11f3da763498ed6b32ae2a`  
		Last Modified: Thu, 05 Nov 2026 11:30:32 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:713d13965dbea5fff76bd5f8c6d705810720f5f32aecfa14083b5d615ca9a8d0`  
		Last Modified: Thu, 05 Nov 2026 11:30:33 GMT  
		Size: 15.8 MB (15783461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef2c35c64c9f36477d5c0ebd4f9ad4837bdba884fc604f3020be920d9cabf46`  
		Last Modified: Thu, 05 Nov 2026 11:30:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:5ad489f9c727906def156bb645a7bd07c6d082bb93d6df9920222db4f32f73c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16686548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1f73d88d57a2898c552fa7a5e0c36049cdda1ad9a23edafbade2ec6525ac3d`

```dockerfile
```

-	Layers:
	-	`sha256:07016f2a60deca0513c2b7cc2ca34ee7e3bb04ee210456f0b4bd5d7906bb2244`  
		Last Modified: Thu, 05 Nov 2026 11:30:33 GMT  
		Size: 16.7 MB (16668802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f59016637ea5469774650d8f3b1c7312759b11f37fed9cd36a7cb20029ce45b4`  
		Last Modified: Thu, 05 Nov 2026 11:30:32 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-forky` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:fe36c3a0ff60ecbdae187bece3251aa054d082aaef88f3f5bca81a8733a278d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.3 MB (370251554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a899e0af79983a5be68b67295a9eb896e698220547a701f6263aabeb65e8503b`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:42:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:28:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:54:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:38:05 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 09:42:55 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 09:42:55 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 09:42:55 GMT
CMD ["perl5.45.4" "-de0"]
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
	-	`sha256:f3838965d8dd45e70631b551960e445f4f1bdf8e9793a17aa317c79e13a009ec`  
		Last Modified: Thu, 05 Nov 2026 09:43:18 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09cdbf60d0b417182cd4f886d5d0809388ad7c0d583d9a3673e8398970babfc3`  
		Last Modified: Thu, 05 Nov 2026 09:43:18 GMT  
		Size: 16.6 MB (16616144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6984cdc0c9a5a8595426b94a022f0e6ce4a47ad21174dd224a1749a8a618452`  
		Last Modified: Thu, 05 Nov 2026 09:43:18 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:5a31859ce1a7447b011f55cb9d4a4f40714c4666a182ae8e512a5126498c1e49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17007774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ede365bd54bbbeb538f2ddae946d90753fd71c3de413d5e5efc9a045ea342cee`

```dockerfile
```

-	Layers:
	-	`sha256:76f317718ef2d766ea0db1ece1abc2a292103dbca0c68b86f3ce12e7b0640970`  
		Last Modified: Thu, 05 Nov 2026 09:43:18 GMT  
		Size: 17.0 MB (16990008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1ff843ff3d64965cc0ae09b8aba6332a1b8cd69c6be4227c95e9bb636365bf9`  
		Last Modified: Thu, 05 Nov 2026 09:43:18 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-forky` - linux; ppc64le

```console
$ docker pull perl@sha256:b47459652e52dcb25d73b8fe6836fa3aa3491f499a1d0c526c98d33429e02647
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.7 MB (389691006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27703f9db77f3184a63d320a5ebe999e24258e035b84f7ced5602731c9ea42d6`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 04:19:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 11:55:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 15:00:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 15:48:14 GMT
WORKDIR /usr/src/perl
# Wed, 28 Oct 2026 16:06:36 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 28 Oct 2026 16:06:38 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 16:06:38 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:fdff336143ff910156b179d6bd4838477e3c227ef408959418ba38d6f8413346`  
		Last Modified: Wed, 28 Oct 2026 00:21:10 GMT  
		Size: 54.5 MB (54501692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd2f234dfafb380c4eb2278c6bd6d139786df244ad4114ab44335c1b7b7e444`  
		Last Modified: Wed, 28 Oct 2026 04:19:42 GMT  
		Size: 30.5 MB (30515417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aec392254d224322b3d5e33530dcb4bd0e1a4373cf7762c4b302eb8c156c7019`  
		Last Modified: Wed, 28 Oct 2026 11:56:10 GMT  
		Size: 86.2 MB (86239129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db3ff4f9a23e9fd81c20867503bdf00e1e95822bd19587ce86305a09d217a75b`  
		Last Modified: Wed, 28 Oct 2026 15:02:16 GMT  
		Size: 201.7 MB (201703847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538ce493824d1e70dc6ba102525d59c4644359169a846bca501f01ca250c42de`  
		Last Modified: Wed, 28 Oct 2026 15:57:39 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7db7886ca3c17464c5e673019e9bc2fcb7640293dfbc3857f08ef2f53dbcaf0`  
		Last Modified: Wed, 28 Oct 2026 16:07:21 GMT  
		Size: 16.7 MB (16730653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0111cbddf99d84e4bd55fb554c541abb25c714c21b3203c9fe41f40fa8e843c0`  
		Last Modified: Wed, 28 Oct 2026 16:07:20 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:42aac2edbcec0e59cc10e937898db0fab93b03b639919b9a71bad5fe6dc4b321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16906928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52637b3290f287d0768057bd43eccf62c5fdafbb210d2a63664be8c249b1b6e9`

```dockerfile
```

-	Layers:
	-	`sha256:4d53d0b8bc9e0fe217590c31d971f17b60a40b6600ed02809d83a572be583967`  
		Last Modified: Wed, 28 Oct 2026 16:07:21 GMT  
		Size: 16.9 MB (16889216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e78a41a8515193a389ac0f54150b4e1799b4c80ef37b822cb4c65a0bcf8ed39b`  
		Last Modified: Wed, 28 Oct 2026 16:07:20 GMT  
		Size: 17.7 KB (17712 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-forky` - linux; s390x

```console
$ docker pull perl@sha256:b76dbbc5c4489948cd6712aad15020ec92642f56a3f3799998ed24706d48a0d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.0 MB (355033411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83203c56640513fa39d8623c08e256627cebe6caf4319bcec116e4147b10d62b`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:56:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:21:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:25:39 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 10:38:43 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 10:38:43 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 10:38:43 GMT
CMD ["perl5.45.4" "-de0"]
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
	-	`sha256:c866a99a9b62a4877e1ab08f98d8b281048139eaebfbd35323e118904e31bb91`  
		Last Modified: Thu, 05 Nov 2026 10:33:01 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7705e56bf798de5e00c487d294da3653b2176472502c484497c1fc8dd131541e`  
		Last Modified: Thu, 05 Nov 2026 10:39:11 GMT  
		Size: 17.3 MB (17262861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f63f3817bdc0b21f35100a302af18d361673df438b1ab159547b768e569539e7`  
		Last Modified: Thu, 05 Nov 2026 10:39:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:081f2531c1960839cd7419edc5f95b7ec52d052776f1c7b3d84eb74c3150ea93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16706602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59fd2e6693c90d0c9cfdd3868ed08820557b8ea887876d0e795d1cdbcf2a2a2e`

```dockerfile
```

-	Layers:
	-	`sha256:9584cf7de010b0f6fceae0bdb07c331d8ea6d642462bebf3bb91689b77021772`  
		Last Modified: Thu, 05 Nov 2026 10:39:11 GMT  
		Size: 16.7 MB (16688928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b1b29346a27ae15c1054de63c5895a812e712c13adc29e7657e15a2d7e8f367`  
		Last Modified: Thu, 05 Nov 2026 10:39:10 GMT  
		Size: 17.7 KB (17674 bytes)  
		MIME: application/vnd.in-toto+json
