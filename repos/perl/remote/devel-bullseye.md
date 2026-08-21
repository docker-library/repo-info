## `perl:devel-bullseye`

```console
$ docker pull perl@sha256:90ae2b6b66a54085976e4e42ad913caa94af8883caf79422eedaccc439612381
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

### `perl:devel-bullseye` - linux; amd64

```console
$ docker pull perl@sha256:baace8bb0a451c8279d6925644cabd9a2650e1ea98ce5c47f06c0e462d2bbc4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337875645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8863c264ac2075b556b431ad1b7a952a65e40d86bcc84e0ff4a1165e1185dbd9`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:11:06 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:15:17 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:15:17 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:15:17 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b15d7359387d3fa9038e8bf44abbc955fd847f0ed595392167fcb6d374b1e30a`  
		Last Modified: Wed, 05 Aug 2026 00:44:46 GMT  
		Size: 15.8 MB (15790899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b0a3e14e2bc3edab26279efc9f99cea6cf0836afea309df0f22368b3636c12a`  
		Last Modified: Wed, 05 Aug 2026 01:33:09 GMT  
		Size: 54.7 MB (54743062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88923925ca8ddd26ef18f1d112e6c67c4f60b5600d788bcece91c26d2b26b472`  
		Last Modified: Wed, 05 Aug 2026 02:17:27 GMT  
		Size: 197.4 MB (197395653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20840db4a0e5199eb1244be1763fa769fe0aac709b96c83a1b3239b3279f14a3`  
		Last Modified: Fri, 21 Aug 2026 18:15:38 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae2a01101bc131b13b45542cd4da890318275f357e6ee4b7d9fb20352b83c7f`  
		Last Modified: Fri, 21 Aug 2026 18:15:38 GMT  
		Size: 16.2 MB (16168745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8310bfc8b22f94c615d718da2327f7fac0f160177bd762eb702a144aca40a8c2`  
		Last Modified: Fri, 21 Aug 2026 18:15:37 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:536c39c9879e04854214c77ef13feeb0ed7ac5dc6904448dae73eb8ff1542ea4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15490662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb48ab48c1af72462585fcad468a978075d550d883e0fc7cce1a558d09e89e8d`

```dockerfile
```

-	Layers:
	-	`sha256:a8b768f6f3d006ac6540fe6098925273409920d11550e2eafa9f9722efde82c7`  
		Last Modified: Fri, 21 Aug 2026 18:15:38 GMT  
		Size: 15.5 MB (15473065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2729e53f7cf769b413f02b8cf97bb0ed64ad725d9c7a84b87b319e435b666ef`  
		Last Modified: Fri, 21 Aug 2026 18:15:37 GMT  
		Size: 17.6 KB (17597 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-bullseye` - linux; arm variant v7

```console
$ docker pull perl@sha256:c75d71ab68c8a5b2ac89ee8b9b9131ab8b8698c14288d312734271ffe220fac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.7 MB (297721232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1a89872e176afa9c9fe0ccc68ba129f64163da1045271e6e7e231e7ab18f4ae`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:20:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:54:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:14:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:29:43 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:35:01 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:35:01 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:35:01 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:78f02c4a9e536f4eb1489b80caa0f24ffc5d691c897b9d8eabf0bfa5de3cfaee`  
		Last Modified: Tue, 04 Aug 2026 23:51:43 GMT  
		Size: 49.1 MB (49067288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e547fab74d5231727514aa7187f974069a1ee9a7f68290afbd470e94e9851e`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 14.9 MB (14905382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d2221f0bd730fce460a5b83957f059201f1f72aa95400dcd77a3417b834fa9`  
		Last Modified: Wed, 05 Aug 2026 02:54:22 GMT  
		Size: 50.7 MB (50659358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e308c8567f48b1fecf9f939400acb620ead70e7c9ba2d25a27958f29ebba19aa`  
		Last Modified: Wed, 05 Aug 2026 03:15:18 GMT  
		Size: 167.8 MB (167842802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6232e391656cea186e8cab1042672b891654ed7981d51bd6109423138b15f4b`  
		Last Modified: Fri, 21 Aug 2026 18:35:21 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b4fa76d5970e8d9172d6f13202f85f91c80cec1643fc5a901db74c7411df78`  
		Last Modified: Fri, 21 Aug 2026 18:35:22 GMT  
		Size: 15.2 MB (15246134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b19e716bef71d57f9b487167ac9eea7e01a85a21de16f0d6a575141afc78639`  
		Last Modified: Fri, 21 Aug 2026 18:35:21 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:054b52665381d64f6e4658a9b74d3a1be17257ce5a9cb6504ff8a4af516a5a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15290061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ed104238e00a10cf44aef2c327221e3f881323510d37fe17e55e1b0d10f4de9`

```dockerfile
```

-	Layers:
	-	`sha256:fb8a060d3daaf6164f28c0771a50cc779b024a731c1edaec533a344bb1f4200c`  
		Last Modified: Fri, 21 Aug 2026 18:35:21 GMT  
		Size: 15.3 MB (15272391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c1ed0d322161cb1ea9c094eb84f58de910c8d359dd6a16473c7cf459dac2ce9`  
		Last Modified: Fri, 21 Aug 2026 18:35:21 GMT  
		Size: 17.7 KB (17670 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-bullseye` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:7297adda3a3fb9a232b55a578b6cdd4088edf1391d92d8ade22542b2e1f3308d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.3 MB (329312565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa9b733e72913b8b1241567ea75485c479e486600070eedda1f995ed1d7220b`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:14:57 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:19:29 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:19:29 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:19:29 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5207d92eea9a933027b87222e2222a508f86aa6a0611f397c4c08f266c630bba`  
		Last Modified: Wed, 05 Aug 2026 00:47:16 GMT  
		Size: 15.8 MB (15774850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b5fcd073141b3adf766799633642f41c4f77cfb62c0c10742e8ae4e709d40c`  
		Last Modified: Wed, 05 Aug 2026 01:39:50 GMT  
		Size: 54.9 MB (54879738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:793adb69cffdafc143f553af2ccf72096d98d2e73f3f71d7d889ab7469441c56`  
		Last Modified: Wed, 05 Aug 2026 02:17:13 GMT  
		Size: 190.3 MB (190304139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5897dfcb5486eee2e5be59d8f6e72ed5511e7d115232688ff0522a8986c975f0`  
		Last Modified: Fri, 21 Aug 2026 18:19:49 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c468e3834dd518dd0d9c9be342ed84c297d26ecfb969cfb129d8268f47352e8`  
		Last Modified: Fri, 21 Aug 2026 18:19:50 GMT  
		Size: 16.1 MB (16092669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce031365db1c3e0d2524c2e0a7582f8778326ea41cde2590844120c693eaf75`  
		Last Modified: Fri, 21 Aug 2026 18:19:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:61a10835eaf16683661177f0d6f0e7d72ab7ee15202a9fec39e25aaad9c23272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15492712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b4aad804d45f0b8b3b1857a66430406c4dd0fd00afde62602c21d29106cbd8d`

```dockerfile
```

-	Layers:
	-	`sha256:477cbc921cba3da01709e769330e799329a8f0255358471b1bdff32c95705ae6`  
		Last Modified: Fri, 21 Aug 2026 18:19:50 GMT  
		Size: 15.5 MB (15475022 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1591b51532532d21fbf77ed36372cd2815b89b90c73d8e5a9155b20aede89f7`  
		Last Modified: Fri, 21 Aug 2026 18:19:49 GMT  
		Size: 17.7 KB (17690 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-bullseye` - linux; 386

```console
$ docker pull perl@sha256:9d7318988e05ed49017da8d47af79d945e63c85ca4f0319df46b4308a8a0b78d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.0 MB (343000744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c9a7e9762071a455cb43d4ded6386f0234f74734b7fb28fbe1dcef31791537d`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:46:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:17:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:06:29 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:11:04 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:11:04 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:11:04 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:510e82e1d8f7e507a25b2b91429b3607a4e44770b2af5695503b845da3629ad3`  
		Last Modified: Tue, 04 Aug 2026 23:52:02 GMT  
		Size: 54.7 MB (54715733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b30f3a91acd2928e076b886b4ca6835a60bf3b897f1b2e11bf58f61c25c7b45`  
		Last Modified: Wed, 05 Aug 2026 00:46:49 GMT  
		Size: 16.3 MB (16295745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99339981fcc7a18d45719c6cb593c685d9566badca90c3137c734193642ebe59`  
		Last Modified: Wed, 05 Aug 2026 01:41:10 GMT  
		Size: 56.0 MB (56047172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a670ecf04625d4d7dd03c16efb9635dca6ee09e338dd8c1cae2338d29a2dca`  
		Last Modified: Wed, 05 Aug 2026 02:17:54 GMT  
		Size: 200.3 MB (200277141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327a1ac1bb536ad44bec6371cba93faef0883e13bfa1ab03d4b22d901423b50c`  
		Last Modified: Fri, 21 Aug 2026 18:11:24 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a749397ad0ddd7d835a3d4d9758bb10670718c814fce11c2c5f8fa61f64e5250`  
		Last Modified: Fri, 21 Aug 2026 18:11:24 GMT  
		Size: 15.7 MB (15664685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1434e51746b7ac7b878a5896a330ab88decc60e0f1a21caf37d7c86c4123f05`  
		Last Modified: Fri, 21 Aug 2026 18:11:23 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:6cce698cc45facb6172c3fbd0e338d82903112ae055a08bb59cc22f0f6b6d9ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15478646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0bf76195c82574afe2829f3c1cbe71f6587d97489446910e337197f9ee1b93b`

```dockerfile
```

-	Layers:
	-	`sha256:3542c7daa35d49bf2cd4741793ba8af984e711396602e09533fe69d414d80838`  
		Last Modified: Fri, 21 Aug 2026 18:11:24 GMT  
		Size: 15.5 MB (15461075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3326ace38d5c368a860ee9a250cd6d57ab48a4352fe8cfeea95eda39ccea252c`  
		Last Modified: Fri, 21 Aug 2026 18:11:23 GMT  
		Size: 17.6 KB (17571 bytes)  
		MIME: application/vnd.in-toto+json
