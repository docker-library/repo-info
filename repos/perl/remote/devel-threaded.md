## `perl:devel-threaded`

```console
$ docker pull perl@sha256:6023ae661d03147e2f59144f8cd33c2ba20bd4843bb46610d5930410f6f28444
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

### `perl:devel-threaded` - linux; amd64

```console
$ docker pull perl@sha256:57dfb17fdbb3c310e8e0b19552c835fe873e50c671fb4146db6b5103afae9af1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.2 MB (395240810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ce4048b9d6394a8f48eb1d70d5eb4570c7a794f32eec42f6f6dd69b0df29b1`
-	Default Command: `["perl5.43.9","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:33:31 GMT
WORKDIR /usr/src/perl
# Tue, 14 Jul 2026 04:37:57 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.43.9.tar.gz -o perl-5.43.9.tar.gz     && echo 'aec72b03806f2003f97e86baf28a22a20cce912d618afadf3df1f005cda5b235 *perl-5.43.9.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.43.9.tar.gz -C /usr/src/perl     && rm perl-5.43.9.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.098.tar.gz'     && echo 'b38473be20256b1a06447dd6769ad162bfad6a258234ed2c7e2e1819c16c4df7 *IO-Socket-SSL-2.098.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.098.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/0.998003/cpm -o /usr/local/bin/cpm     && echo '6a27e528cf37635773e738db36c4b4ab4345d5a9d00b8cbd2f2dc01abc73177d */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.098* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 14 Jul 2026 04:37:57 GMT
WORKDIR /usr/src/app
# Tue, 14 Jul 2026 04:37:57 GMT
CMD ["perl5.43.9" "-de0"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b453535073b6238aba838c5d063a1468b4d6a9aa54f81de64a4de304dc456685`  
		Last Modified: Tue, 14 Jul 2026 01:44:01 GMT  
		Size: 25.6 MB (25638468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e002cae30c445bfdf70841ba6a8d772e913914a00fa0e0f7bd0e4c089aaa838`  
		Last Modified: Tue, 14 Jul 2026 02:30:15 GMT  
		Size: 67.8 MB (67792989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65956eab0c1ca261c14a3e13055ec8ca4f6ec75198f6ef0704d5194884466582`  
		Last Modified: Tue, 14 Jul 2026 03:18:55 GMT  
		Size: 236.3 MB (236258363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38434ec0143d6a607b1e17d06ee50d31bab1981b70437bf6081b4ae2d6364015`  
		Last Modified: Tue, 14 Jul 2026 04:38:18 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecff24323585324b76f3a6a6e22636f67b4819e65ccb99ffd77f92299551abe3`  
		Last Modified: Tue, 14 Jul 2026 04:38:19 GMT  
		Size: 16.2 MB (16238152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee44cc99595ac26ee474535f9a53407553410bb8c5416ce10ff84ee8903730e`  
		Last Modified: Tue, 14 Jul 2026 04:38:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:8ecf036b029d902172b78d3fd6b9e60b4cab7d05d061f2488446151451291ee9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17223091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95f8d6fc4692efae279fa63b734ceba711c5394f38201a2b84d9f5597c2057c2`

```dockerfile
```

-	Layers:
	-	`sha256:32905907f163ad09227541860e3dcda0b52146fce5d66070e6067e53eaf831da`  
		Last Modified: Tue, 14 Jul 2026 04:38:19 GMT  
		Size: 17.2 MB (17204472 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a4544f15791defc2ce8c565716b99070f79be5bb5c5eef959f42a8116a86a79`  
		Last Modified: Tue, 14 Jul 2026 04:38:18 GMT  
		Size: 18.6 KB (18619 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded` - linux; arm variant v5

```console
$ docker pull perl@sha256:bf45d65663877854f8da9c3d9eb2b5c68ec5499a8b85f6de89070836ede18304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.7 MB (358677474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76dcfb7f1581ab8eb5c722cea882879c407e88cf6cc692805762428c2efe7c82`
-	Default Command: `["perl5.43.9","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:25:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:58:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:33:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 05:17:47 GMT
WORKDIR /usr/src/perl
# Tue, 14 Jul 2026 05:53:05 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.43.9.tar.gz -o perl-5.43.9.tar.gz     && echo 'aec72b03806f2003f97e86baf28a22a20cce912d618afadf3df1f005cda5b235 *perl-5.43.9.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.43.9.tar.gz -C /usr/src/perl     && rm perl-5.43.9.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.098.tar.gz'     && echo 'b38473be20256b1a06447dd6769ad162bfad6a258234ed2c7e2e1819c16c4df7 *IO-Socket-SSL-2.098.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.098.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/0.998003/cpm -o /usr/local/bin/cpm     && echo '6a27e528cf37635773e738db36c4b4ab4345d5a9d00b8cbd2f2dc01abc73177d */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.098* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 14 Jul 2026 05:53:05 GMT
WORKDIR /usr/src/app
# Tue, 14 Jul 2026 05:53:05 GMT
CMD ["perl5.43.9" "-de0"]
```

-	Layers:
	-	`sha256:1ad99c59586600a5647dd3e6e12fc8c9b5e12a7e7f8e1bd39b7df82072afb746`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 47.5 MB (47489966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ed54f4ae9af1a04d5ba500e0193d535cc84aa6eff10adc82ec178c9d00a315`  
		Last Modified: Tue, 14 Jul 2026 02:25:22 GMT  
		Size: 24.4 MB (24364855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3267125ae4d03ff47c8d8fa5f16d6767ca2662245d8a1f49de97e62376e59244`  
		Last Modified: Tue, 14 Jul 2026 03:58:19 GMT  
		Size: 65.3 MB (65329503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8964ec499704b0b900781d729101e10672cc63a9082472262ea061430a4bbb1a`  
		Last Modified: Tue, 14 Jul 2026 04:34:02 GMT  
		Size: 206.0 MB (205972170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d489bbac7ff29df019147d1ced07d6f40f45a6cbe6bff719245fcc3a4e31c6b6`  
		Last Modified: Tue, 14 Jul 2026 05:23:23 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c48d640ffacc78f629d8060aac25cd3bbf414fd4bd3b3e5b44a9448a9988f942`  
		Last Modified: Tue, 14 Jul 2026 05:53:24 GMT  
		Size: 15.5 MB (15520714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9452f23f05f2cfa4f35e4a78c4ffcf9be54ffeb3a423a0b4164d1c7c83b94055`  
		Last Modified: Tue, 14 Jul 2026 05:53:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:facc90ffb03fc25a276878aa98362d3bca8ba2766d6c70ea91b70d151d3b783e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16985408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b949f16d2defc34fad9ca16e94fdf7eedbb160ee8b85995a2b066f983b9d39ae`

```dockerfile
```

-	Layers:
	-	`sha256:5317bcfdb52050d7d5d07bef8ad39117414c174f0346685cc239bc7c41e6e684`  
		Last Modified: Tue, 14 Jul 2026 05:53:25 GMT  
		Size: 17.0 MB (16966694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f18339c5d10577af1abe9e401a727892946f4795e4a035b4e122decd179025b`  
		Last Modified: Tue, 14 Jul 2026 05:53:24 GMT  
		Size: 18.7 KB (18714 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:e350f3aeef5081fb3493988e3bd5fe584e5e8737080b88d3942388f2c24c9755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.0 MB (341012440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9748d52c421d3d51373c58eec64ab02067e0efc9e707dac4ad50fb6a4619623e`
-	Default Command: `["perl5.43.9","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:31:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:15:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 05:14:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 06:55:57 GMT
WORKDIR /usr/src/perl
# Tue, 14 Jul 2026 07:01:32 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.43.9.tar.gz -o perl-5.43.9.tar.gz     && echo 'aec72b03806f2003f97e86baf28a22a20cce912d618afadf3df1f005cda5b235 *perl-5.43.9.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.43.9.tar.gz -C /usr/src/perl     && rm perl-5.43.9.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.098.tar.gz'     && echo 'b38473be20256b1a06447dd6769ad162bfad6a258234ed2c7e2e1819c16c4df7 *IO-Socket-SSL-2.098.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.098.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/0.998003/cpm -o /usr/local/bin/cpm     && echo '6a27e528cf37635773e738db36c4b4ab4345d5a9d00b8cbd2f2dc01abc73177d */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.098* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 14 Jul 2026 07:01:32 GMT
WORKDIR /usr/src/app
# Tue, 14 Jul 2026 07:01:32 GMT
CMD ["perl5.43.9" "-de0"]
```

-	Layers:
	-	`sha256:1d8dcf695fa507a9d4cb0ef3ecaeb24a772f22a09a5795746304d8601933b1dc`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 45.7 MB (45743729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c8bac7fdc99a9f96cdc34c1e6bd063d1181c8b53c33b04b3148bc8b98c7d8e`  
		Last Modified: Tue, 14 Jul 2026 02:31:35 GMT  
		Size: 23.6 MB (23636524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:847b21004c354c8a82f1e64b061add3c7998d83dfedf44e7b5f3cf76541e114e`  
		Last Modified: Tue, 14 Jul 2026 04:15:41 GMT  
		Size: 62.7 MB (62746773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da653cb9ba27452270ba752a039fb9624a7a25f63a4a3915c2174e10fc9da56`  
		Last Modified: Tue, 14 Jul 2026 05:15:15 GMT  
		Size: 193.6 MB (193557678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4834b51d74f2382c484f7b7bac50c97fba1a0a94f32619b67951ea1a2f1722dc`  
		Last Modified: Tue, 14 Jul 2026 07:01:51 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91dc90cf287e133c27bd5350b062afb1e9b9eca1520c896f142452e82159c982`  
		Last Modified: Tue, 14 Jul 2026 07:01:52 GMT  
		Size: 15.3 MB (15327469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65238bffd6541c5e206f39db9c0fd23b73849610dbfde0e8a206661dca3c7de`  
		Last Modified: Tue, 14 Jul 2026 07:01:51 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:471e2e74062c6b9ad24fdb3b444d4086d52d7f976169d9444f2484e63c170d56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16991199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c380c7c0fc5132940148dfd8448d0008e7a10c118c0fba7179dd77a1d4a3f6a3`

```dockerfile
```

-	Layers:
	-	`sha256:91ef4d2a9d1a756033d8bd080aaf2e6ea1060d13f3a5dee6091ca3354410ce99`  
		Last Modified: Tue, 14 Jul 2026 07:01:52 GMT  
		Size: 17.0 MB (16972484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7db11c403cd2e5a9bda81ff3f3fa2c6af95b172655c9e54e363b429dfc842865`  
		Last Modified: Tue, 14 Jul 2026 07:01:51 GMT  
		Size: 18.7 KB (18715 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:b01267985de9bee844537428d6db2940004440d5b57baba8d256113386bb7575
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.9 MB (384852915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:375d06505c37efffca5a765ef115ed4d0819f8db756a91fe88b0b492ccf04c1c`
-	Default Command: `["perl5.43.9","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:36:56 GMT
WORKDIR /usr/src/perl
# Tue, 14 Jul 2026 04:46:38 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.43.9.tar.gz -o perl-5.43.9.tar.gz     && echo 'aec72b03806f2003f97e86baf28a22a20cce912d618afadf3df1f005cda5b235 *perl-5.43.9.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.43.9.tar.gz -C /usr/src/perl     && rm perl-5.43.9.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.098.tar.gz'     && echo 'b38473be20256b1a06447dd6769ad162bfad6a258234ed2c7e2e1819c16c4df7 *IO-Socket-SSL-2.098.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.098.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/0.998003/cpm -o /usr/local/bin/cpm     && echo '6a27e528cf37635773e738db36c4b4ab4345d5a9d00b8cbd2f2dc01abc73177d */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.098* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 14 Jul 2026 04:46:38 GMT
WORKDIR /usr/src/app
# Tue, 14 Jul 2026 04:46:38 GMT
CMD ["perl5.43.9" "-de0"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3198b4d4653b3225aa62931a3b1ff61435a6c99e83b6f2581bd52915332f78b7`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 25.0 MB (25026881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4f1d683f65087c4403277cc2e5a3d787025eb59d342271a327b23718904ab1`  
		Last Modified: Tue, 14 Jul 2026 02:37:11 GMT  
		Size: 67.6 MB (67595593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79256f40905d77df81d1738841b42df00f81a53e4e600de7b74b82abccf93c3c`  
		Last Modified: Tue, 14 Jul 2026 03:18:54 GMT  
		Size: 226.4 MB (226376937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e98c0a8cc5db4969cf2598f5bd8d7620aa340619ee3e206c60cda3ea1c4d281`  
		Last Modified: Tue, 14 Jul 2026 04:41:43 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af7d993e3701efb055db0c6dd3d687bd26fd5c488cd85f64dc5472e04a979843`  
		Last Modified: Tue, 14 Jul 2026 04:46:59 GMT  
		Size: 16.2 MB (16179054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fdd7ff9ace9c864cc1f7bde421af8668519daf36dd8e8277955d6b34a52a1e9`  
		Last Modified: Tue, 14 Jul 2026 04:46:58 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:c022de3eade90e0b38b69c85c5c92b88fc7f16325600403119e9315c17c57569
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17306912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:651c643571386d92f9a3d3b180e4a89adc4f7d57214d2a435d39ceae44700644`

```dockerfile
```

-	Layers:
	-	`sha256:6805e9f39ff793df768ab2e92bbfee4ff20d2d2e7fda9aced63970669bdd9ce1`  
		Last Modified: Tue, 14 Jul 2026 04:46:58 GMT  
		Size: 17.3 MB (17288165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04f190767dd85519ad346ec923e03097b8d9ee1f2fba7a45a3be7005495dc8bc`  
		Last Modified: Tue, 14 Jul 2026 04:46:58 GMT  
		Size: 18.7 KB (18747 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:6663694cd480227b0f8aed2447fba9576e3a3d96129e165ea53ff36f3155c7da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.9 MB (400867436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcd7efe0fb58431153a6bedfc3af02f3c829b0837c0029629d295203a98020dc`
-	Default Command: `["perl5.43.9","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:51:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 12:15:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 14:51:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 18:46:33 GMT
WORKDIR /usr/src/perl
# Tue, 14 Jul 2026 20:56:30 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.43.9.tar.gz -o perl-5.43.9.tar.gz     && echo 'aec72b03806f2003f97e86baf28a22a20cce912d618afadf3df1f005cda5b235 *perl-5.43.9.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.43.9.tar.gz -C /usr/src/perl     && rm perl-5.43.9.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.098.tar.gz'     && echo 'b38473be20256b1a06447dd6769ad162bfad6a258234ed2c7e2e1819c16c4df7 *IO-Socket-SSL-2.098.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.098.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/0.998003/cpm -o /usr/local/bin/cpm     && echo '6a27e528cf37635773e738db36c4b4ab4345d5a9d00b8cbd2f2dc01abc73177d */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.098* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 14 Jul 2026 20:56:30 GMT
WORKDIR /usr/src/app
# Tue, 14 Jul 2026 20:56:30 GMT
CMD ["perl5.43.9" "-de0"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83863de742cad030811407b90530c7828802e9f11207386bf85f9d35cecf7503`  
		Last Modified: Tue, 14 Jul 2026 03:51:33 GMT  
		Size: 27.0 MB (27021065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b551dcb76f19ba607c6efcd591fb5d3e48d58c66dc467f180227abb4f55f0844`  
		Last Modified: Tue, 14 Jul 2026 12:16:23 GMT  
		Size: 73.0 MB (73044102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ebbe2a94b46bbcc163c29337c82d5315672b4791a392a4b1d21a151016023b`  
		Last Modified: Tue, 14 Jul 2026 14:52:36 GMT  
		Size: 231.4 MB (231406694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dd859e5479dafe0523673eb00662aa89f301ff18e71c72c86e50700d2e9ab4`  
		Last Modified: Tue, 14 Jul 2026 18:55:20 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:516e5ec8cd51bf5f9a292db4eb5d50f10e73dcf89e38368bf55ecc67f6b342a8`  
		Last Modified: Tue, 14 Jul 2026 20:57:07 GMT  
		Size: 16.3 MB (16261298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c0a8e8c25d1e61deaf0c0c7231412ef1af47ded5a248de19d6f1cea515f4d9`  
		Last Modified: Tue, 14 Jul 2026 20:57:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:c3bf1df3b69999c36a497b86efdb007b3678b92a1165f5057925e8a6780dd8df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17208697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e980a17499aa9a9040a93438be8a743ead72b7c57438ec828497e9383f3bf59`

```dockerfile
```

-	Layers:
	-	`sha256:9b3aa32ab18fb95b0d6652e7345b40e5b14d2511ed7f3f56dd96fe5992ac2ea0`  
		Last Modified: Tue, 14 Jul 2026 20:57:07 GMT  
		Size: 17.2 MB (17190023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:820377306837274f9482ffe5e9105a8a0b71d38fcabd058f4dd9054a3e836666`  
		Last Modified: Tue, 14 Jul 2026 20:57:06 GMT  
		Size: 18.7 KB (18674 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded` - linux; riscv64

```console
$ docker pull perl@sha256:64ad053022728bea83a163a280bc25b9c7d20e0a0892a5a03e5f2700a6a3e0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **478.3 MB (478318191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b882310b7d98c40d4580d7409fca2a285249c2f08a6f93b5a1a66790d84635d`
-	Default Command: `["perl5.43.9","-de0"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sat, 27 Jun 2026 16:20:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 10:51:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 16:21:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 18:18:05 GMT
WORKDIR /usr/src/perl
# Tue, 30 Jun 2026 04:26:57 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.43.9.tar.gz -o perl-5.43.9.tar.gz     && echo 'aec72b03806f2003f97e86baf28a22a20cce912d618afadf3df1f005cda5b235 *perl-5.43.9.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.43.9.tar.gz -C /usr/src/perl     && rm perl-5.43.9.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.098.tar.gz'     && echo 'b38473be20256b1a06447dd6769ad162bfad6a258234ed2c7e2e1819c16c4df7 *IO-Socket-SSL-2.098.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.098.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/0.998003/cpm -o /usr/local/bin/cpm     && echo '6a27e528cf37635773e738db36c4b4ab4345d5a9d00b8cbd2f2dc01abc73177d */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.098* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 30 Jun 2026 04:26:57 GMT
WORKDIR /usr/src/app
# Tue, 30 Jun 2026 04:26:57 GMT
CMD ["perl5.43.9" "-de0"]
```

-	Layers:
	-	`sha256:68b05b25f9ac1e0d14e55abeddcd8bd010c0b74e64761b736e55e1ae65501399`  
		Last Modified: Wed, 24 Jun 2026 03:40:06 GMT  
		Size: 47.8 MB (47802658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38215cc1fb71b3f12158a195db4a3a178efcb8a54e7878031484fca1958c3ed9`  
		Last Modified: Sat, 27 Jun 2026 16:21:47 GMT  
		Size: 25.0 MB (24969049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc26c4707aa7e37dac76a9ca3be6f5412a1003e8e441b094b8a7df4fdd77940`  
		Last Modified: Mon, 29 Jun 2026 10:54:42 GMT  
		Size: 66.7 MB (66673152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8297be2994f3c17113807c9b0aaadf1cd94ee74872bd4fcbcef79f2a21f4fd9`  
		Last Modified: Mon, 29 Jun 2026 16:36:45 GMT  
		Size: 323.2 MB (323188888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2df2625cf72e0cefe9ee1d7f81d70abb708dce2e649954c544b7317fd89f65`  
		Last Modified: Mon, 29 Jun 2026 19:31:45 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd6148dd3fa3db031d3d6c12bf5fa425de082ac74c354e8f6312da2805faced`  
		Last Modified: Tue, 30 Jun 2026 04:34:40 GMT  
		Size: 15.7 MB (15684174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d2e6a026c98560a6b61c3be33dae8013955e21896995017c0f8660c06a63cd5`  
		Last Modified: Tue, 30 Jun 2026 04:34:36 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:e872c1727e811d6f7ea34a2e6c36ae696d6a3cae93247b6bca3260d19ba2abc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17280781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d71b83cd1e08c4235b7ab0b7b731f8f4a0b5510b216bbd35af0191ded8e57a7c`

```dockerfile
```

-	Layers:
	-	`sha256:4a57607f404898f7c1e2c797a9a4840497aa676d3c0b45977bd200c63ad3d6fd`  
		Last Modified: Tue, 30 Jun 2026 04:34:40 GMT  
		Size: 17.3 MB (17262106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b57ff5e37b4f282dd7f121cba5eb88ef768b1d3161e73270c0fc733e24884f21`  
		Last Modified: Tue, 30 Jun 2026 04:34:36 GMT  
		Size: 18.7 KB (18675 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded` - linux; s390x

```console
$ docker pull perl@sha256:ae16aff160ef6478b8904c2ece1c933fef0e6212778f98fe6c8a41f23acd0f25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.4 MB (368426424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5885d97cefb22e07cd25417fcac8a088df0f3cefca8c1b4d7b0eaf6321ca924`
-	Default Command: `["perl5.43.9","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:08:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:47:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 05:26:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 08:38:28 GMT
WORKDIR /usr/src/perl
# Tue, 14 Jul 2026 09:19:18 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.43.9.tar.gz -o perl-5.43.9.tar.gz     && echo 'aec72b03806f2003f97e86baf28a22a20cce912d618afadf3df1f005cda5b235 *perl-5.43.9.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.43.9.tar.gz -C /usr/src/perl     && rm perl-5.43.9.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.098.tar.gz'     && echo 'b38473be20256b1a06447dd6769ad162bfad6a258234ed2c7e2e1819c16c4df7 *IO-Socket-SSL-2.098.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.098.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/0.998003/cpm -o /usr/local/bin/cpm     && echo '6a27e528cf37635773e738db36c4b4ab4345d5a9d00b8cbd2f2dc01abc73177d */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.098* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 14 Jul 2026 09:19:18 GMT
WORKDIR /usr/src/app
# Tue, 14 Jul 2026 09:19:18 GMT
CMD ["perl5.43.9" "-de0"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63c11684f0eef7c3f7f0fbefbbe513218c6eb99f11d347384595ee632687aaa`  
		Last Modified: Tue, 14 Jul 2026 03:08:18 GMT  
		Size: 26.8 MB (26804611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c8feb8bfdc0a1416f379cc1a217d8affe7b45e12197ca17393856ccbc9910b`  
		Last Modified: Tue, 14 Jul 2026 04:47:29 GMT  
		Size: 68.6 MB (68633831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694e17082c7d17487196495da64ad22a8c01760e8dc6a33e6b980f2247744090`  
		Last Modified: Tue, 14 Jul 2026 05:27:45 GMT  
		Size: 206.8 MB (206788412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8faa2b88eaf521e347128e3e97170b2799b3fce53eb5505573f543e5f04abd8`  
		Last Modified: Tue, 14 Jul 2026 08:45:41 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a9f2f7ec4b58efc9d183eb2791aa613318d1c7942c56f9a93ac09e64c44545`  
		Last Modified: Tue, 14 Jul 2026 09:19:58 GMT  
		Size: 16.8 MB (16817595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f22516c5ea26aa95b47fa1ea1b931ae643643a7de0f406e7364eea935055f88`  
		Last Modified: Tue, 14 Jul 2026 09:19:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:40fc9ebfcfd1d12a3c1cfddfb0f04ec66ba24d33b88ec05e7ad225cca46ea399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17000324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a73dab0d9fdd9a3ef720fe305e0bb0a01ab679edc14610f2c356d13b3f9a8d`

```dockerfile
```

-	Layers:
	-	`sha256:0af31606d56f67339427342e0b51a6b4cf68020e284f32b7782000a025daaf46`  
		Last Modified: Tue, 14 Jul 2026 09:19:58 GMT  
		Size: 17.0 MB (16981705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce51464471564b782c72635eb8757399d395a16677e0fb4adfd97fa0e02f3fbf`  
		Last Modified: Tue, 14 Jul 2026 09:19:57 GMT  
		Size: 18.6 KB (18619 bytes)  
		MIME: application/vnd.in-toto+json
