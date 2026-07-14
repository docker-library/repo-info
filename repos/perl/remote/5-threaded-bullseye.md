## `perl:5-threaded-bullseye`

```console
$ docker pull perl@sha256:bb7f99cc17919dd328dfe163acb4f62aa79a4988ce844e553dc3181eedf10579
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `perl:5-threaded-bullseye` - linux; amd64

```console
$ docker pull perl@sha256:83cd00908e8081a4674729a65eb732b40281b1b878b6312d9309661e265560c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.6 MB (337633800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a18d16d2a03b7959a154bd9c90275666fb042289e54a0b6ad67f0824ab15010`
-	Default Command: `["perl5.42.2","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:43:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:18:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:20:40 GMT
WORKDIR /usr/src/perl
# Tue, 14 Jul 2026 04:25:03 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.42.2.tar.gz -o perl-5.42.2.tar.gz     && echo '9384e8deb75b7b1695e5637971b752281aaecd025a3d5d4734d33c1d0adfee47 *perl-5.42.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.42.2.tar.gz -C /usr/src/perl     && rm perl-5.42.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.098.tar.gz'     && echo 'b38473be20256b1a06447dd6769ad162bfad6a258234ed2c7e2e1819c16c4df7 *IO-Socket-SSL-2.098.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.098.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/0.998003/cpm -o /usr/local/bin/cpm     && echo '6a27e528cf37635773e738db36c4b4ab4345d5a9d00b8cbd2f2dc01abc73177d */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.098* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 14 Jul 2026 04:25:03 GMT
WORKDIR /usr/src/app
# Tue, 14 Jul 2026 04:25:03 GMT
CMD ["perl5.42.2" "-de0"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe5681d8e1155e1bb706091f1a7eebabc55855cdbdb20c01f3851abaef0f290`  
		Last Modified: Tue, 14 Jul 2026 01:43:32 GMT  
		Size: 15.8 MB (15790828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3214a37800dcb85308a3ee26895ae746a8913db3cf74dba437915f1e979ed64`  
		Last Modified: Tue, 14 Jul 2026 02:30:03 GMT  
		Size: 54.7 MB (54742908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d3647a94d0365f6fb544030799327410bc1cd3dd529ea61620d05dfad781c8`  
		Last Modified: Tue, 14 Jul 2026 03:18:39 GMT  
		Size: 197.4 MB (197376550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f89a2f6b714a4e324d9c08fcd29e3188a0c4d3c676586501af38965722a3c1`  
		Last Modified: Tue, 14 Jul 2026 04:25:22 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b33d229912ec9a467f911b6170bd309162ce15d76ec9c8d3d00b1ce1b6e92a`  
		Last Modified: Tue, 14 Jul 2026 04:25:23 GMT  
		Size: 15.9 MB (15946671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41758df89d3c322d807afe8804c51954edc5de18bd8f8d206501593d74e735a4`  
		Last Modified: Tue, 14 Jul 2026 04:25:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-threaded-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:a64ddc1aa42926d49ebdb244fe1b7fc3fbeb6932140f06f0aef4ea945a301656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15492024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2ee0d623d3d0f08f454a40bb2394b965a7d2bd2cb3df9e7ddb8207030a6cab5`

```dockerfile
```

-	Layers:
	-	`sha256:a05ca1c99eae153971fc33a36236f7e9c7a1146900442d0134183d181c16d9e3`  
		Last Modified: Tue, 14 Jul 2026 04:25:23 GMT  
		Size: 15.5 MB (15473757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a76d7b9109114da04222070c4d490c48f7e3e62571bcb0bdc52a4d87d2fc10d`  
		Last Modified: Tue, 14 Jul 2026 04:25:22 GMT  
		Size: 18.3 KB (18267 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-threaded-bullseye` - linux; arm variant v7

```console
$ docker pull perl@sha256:4c739052697f2db7e8bf8acb4ae13185626f5ebaffe1624fa1a8920a25ca522d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.4 MB (297449541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ede43c1065a620520ab6480b3027533e1acb6cce2da9641ac992c2bef33f592`
-	Default Command: `["perl5.42.2","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:29:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:15:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 05:14:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 06:38:21 GMT
WORKDIR /usr/src/perl
# Tue, 14 Jul 2026 06:43:55 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.42.2.tar.gz -o perl-5.42.2.tar.gz     && echo '9384e8deb75b7b1695e5637971b752281aaecd025a3d5d4734d33c1d0adfee47 *perl-5.42.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.42.2.tar.gz -C /usr/src/perl     && rm perl-5.42.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.098.tar.gz'     && echo 'b38473be20256b1a06447dd6769ad162bfad6a258234ed2c7e2e1819c16c4df7 *IO-Socket-SSL-2.098.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.098.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/0.998003/cpm -o /usr/local/bin/cpm     && echo '6a27e528cf37635773e738db36c4b4ab4345d5a9d00b8cbd2f2dc01abc73177d */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.098* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 14 Jul 2026 06:43:55 GMT
WORKDIR /usr/src/app
# Tue, 14 Jul 2026 06:43:55 GMT
CMD ["perl5.42.2" "-de0"]
```

-	Layers:
	-	`sha256:79f8122bf1fad87c58a2f6b6abc369f6df714bcc40cd08395085726d7a1357a4`  
		Last Modified: Tue, 14 Jul 2026 00:14:18 GMT  
		Size: 49.1 MB (49066855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729edf26ef2001255f6a93744a2467482c1d8c2d0cc94c098a71afb3dd3af65a`  
		Last Modified: Tue, 14 Jul 2026 02:29:50 GMT  
		Size: 14.9 MB (14905289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3d3e8b4b8edda5ad2406be24f1948a6aaea76f38cd8c698f40887fd5749332`  
		Last Modified: Tue, 14 Jul 2026 04:15:25 GMT  
		Size: 50.7 MB (50659507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:346e1121705da8875fbd537611fb1c612b421c4dc61cda7d3d572d12616c044e`  
		Last Modified: Tue, 14 Jul 2026 05:14:40 GMT  
		Size: 167.8 MB (167822339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a03795c75ce38a5684a8e07829a6ad2ab0cf9c4824d9b9dd6704a7fdaebc27`  
		Last Modified: Tue, 14 Jul 2026 06:44:14 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c055b627bcd1145cac5e2e0d6dfb0b11f3d7e8ce17c7c37ed56542a1fa733917`  
		Last Modified: Tue, 14 Jul 2026 06:44:15 GMT  
		Size: 15.0 MB (14995286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18114245bd3e146a86b21fcdad55f3d69cb26878d3e4ededc2eca65be8f5c41`  
		Last Modified: Tue, 14 Jul 2026 06:44:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-threaded-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:125972676a7b6862ca24990ec9562a8909664b29ee683e10904a5c991d52188a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15291454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19356618b995176e5802e2b401853a3329b34eb9fba28bd3c8fa7ae492ed9034`

```dockerfile
```

-	Layers:
	-	`sha256:843bb9e49938a2e5faf293eea8993ea6264dbf3873c38d90cec8d2a657bf8618`  
		Last Modified: Tue, 14 Jul 2026 06:44:15 GMT  
		Size: 15.3 MB (15273099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4c5974bf6796de11d8b36242daf63f31dcf087d3f36ab28f96819c01b2b478b`  
		Last Modified: Tue, 14 Jul 2026 06:44:14 GMT  
		Size: 18.4 KB (18355 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-threaded-bullseye` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:d8d106135853f403dde8e13e2c63eac17817813ebca22b6556fd52a51359b2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.0 MB (329049303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c10874265049501ff6017203405545179857945b7c7e5eb9f96ba3b51b5d050`
-	Default Command: `["perl5.42.2","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:26:39 GMT
WORKDIR /usr/src/perl
# Tue, 14 Jul 2026 04:31:26 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.42.2.tar.gz -o perl-5.42.2.tar.gz     && echo '9384e8deb75b7b1695e5637971b752281aaecd025a3d5d4734d33c1d0adfee47 *perl-5.42.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.42.2.tar.gz -C /usr/src/perl     && rm perl-5.42.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.098.tar.gz'     && echo 'b38473be20256b1a06447dd6769ad162bfad6a258234ed2c7e2e1819c16c4df7 *IO-Socket-SSL-2.098.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.098.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/0.998003/cpm -o /usr/local/bin/cpm     && echo '6a27e528cf37635773e738db36c4b4ab4345d5a9d00b8cbd2f2dc01abc73177d */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.098* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 14 Jul 2026 04:31:26 GMT
WORKDIR /usr/src/app
# Tue, 14 Jul 2026 04:31:26 GMT
CMD ["perl5.42.2" "-de0"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8ec33dc561d736c45e9bd0a2160810db1f866ce8bb8fdd35dbb5297f5d4cd2`  
		Last Modified: Tue, 14 Jul 2026 01:46:41 GMT  
		Size: 15.8 MB (15774933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62f54371529143bb3cc8355513868c57b4480ed394f322c2f387e2b83d41c6f`  
		Last Modified: Tue, 14 Jul 2026 02:37:04 GMT  
		Size: 54.9 MB (54879548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcfa4bb137297d2b9a50853c3208953c22e89b7cb16b6cfd91ac399e4141b26`  
		Last Modified: Tue, 14 Jul 2026 03:18:32 GMT  
		Size: 190.3 MB (190286276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f202ef7256509b9909b2c30882c3e6c507deb182528f9f2906b4999c5a4d60`  
		Last Modified: Tue, 14 Jul 2026 04:31:44 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f161789bbf20068ccd39db6715d8498fec55c1768f9eec46d88a664235d96e`  
		Last Modified: Tue, 14 Jul 2026 04:31:45 GMT  
		Size: 15.8 MB (15847390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a4ba143becd27c38aa5c06a34f181bbe2227324320171a261515033e37bd63`  
		Last Modified: Tue, 14 Jul 2026 04:31:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-threaded-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:a2914a37c0f24a9c9a7c356a1040d682f318b7e650bfb82bc97a339934e88072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15494122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40883a3a816a78919ff63bc7e636a9369d54eb61cb16a4913739b5e35ff78c15`

```dockerfile
```

-	Layers:
	-	`sha256:f6a13e47526457fcd72495e429ab043f1bbad218ee17cd8cee821125337f9179`  
		Last Modified: Tue, 14 Jul 2026 04:31:45 GMT  
		Size: 15.5 MB (15475738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d389e6cdecaae81b675324ff5e4d9e425b348998befdb4e4ca494137a39ad0f3`  
		Last Modified: Tue, 14 Jul 2026 04:31:44 GMT  
		Size: 18.4 KB (18384 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-threaded-bullseye` - linux; 386

```console
$ docker pull perl@sha256:2f09109822fb2e830197487d511070245f9925864f3c3520d5fb559f1ef54769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.8 MB (342801148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389316c33711642acbda4c4834db2949ef57227b716b22deb0a97f18ea16fbb0`
-	Default Command: `["perl5.42.2","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:47:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:18:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:17:53 GMT
WORKDIR /usr/src/perl
# Tue, 14 Jul 2026 04:23:04 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.42.2.tar.gz -o perl-5.42.2.tar.gz     && echo '9384e8deb75b7b1695e5637971b752281aaecd025a3d5d4734d33c1d0adfee47 *perl-5.42.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.42.2.tar.gz -C /usr/src/perl     && rm perl-5.42.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.098.tar.gz'     && echo 'b38473be20256b1a06447dd6769ad162bfad6a258234ed2c7e2e1819c16c4df7 *IO-Socket-SSL-2.098.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.098.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/0.998003/cpm -o /usr/local/bin/cpm     && echo '6a27e528cf37635773e738db36c4b4ab4345d5a9d00b8cbd2f2dc01abc73177d */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.098* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 14 Jul 2026 04:23:04 GMT
WORKDIR /usr/src/app
# Tue, 14 Jul 2026 04:23:04 GMT
CMD ["perl5.42.2" "-de0"]
```

-	Layers:
	-	`sha256:7e12e9bb789922b409fd797c5262d751ab726dc751b019b9c132c37f39f8f60f`  
		Last Modified: Tue, 14 Jul 2026 00:14:35 GMT  
		Size: 54.7 MB (54715607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63cbf6f5806fb8aa6c69a5959b7d567988ef18fca9270d4385dd0048cf1ef04`  
		Last Modified: Tue, 14 Jul 2026 01:47:41 GMT  
		Size: 16.3 MB (16295690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ed14eb3b977d9bba05e944f824145a76a67b16e46cc4e8ab58539219eeca0e1`  
		Last Modified: Tue, 14 Jul 2026 02:36:17 GMT  
		Size: 56.0 MB (56047143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b15cdd835df6124ca339c2896b2886a9067b38b807ad6c615fb9a3730e6c8a6`  
		Last Modified: Tue, 14 Jul 2026 03:18:50 GMT  
		Size: 200.3 MB (200258989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71faca97091a64d205cde861a6943d4eefdaf8aa5289002a29975e955b0cabeb`  
		Last Modified: Tue, 14 Jul 2026 04:23:25 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e771bbfd31070664f29f53289bcaca280582ce537b3867376e83cb9eafcfea46`  
		Last Modified: Tue, 14 Jul 2026 04:23:25 GMT  
		Size: 15.5 MB (15483453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d79b4245b5fb193a474ea094df990e8fe9487fd179e3583ef3c433932bfe1c8f`  
		Last Modified: Tue, 14 Jul 2026 04:23:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-threaded-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:0ae9336be5ae02311d66b4271e3d497b4665ca7759a66a87b7b5ba5821a0a5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15479988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a80de5f0fc4806930217f4c568e191b0ff64ce87d2456177e39d0816306cbaaf`

```dockerfile
```

-	Layers:
	-	`sha256:af922fec05d551aa944a2b30e5e2149fabb1b850db4d25434d0ce296662fe172`  
		Last Modified: Tue, 14 Jul 2026 04:23:25 GMT  
		Size: 15.5 MB (15461757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46353029b6b7782dd5225cfa104e342ab8157d9eac08dc9a9eefc87b370fe451`  
		Last Modified: Tue, 14 Jul 2026 04:23:25 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.in-toto+json
