## `perl:bullseye`

```console
$ docker pull perl@sha256:012a5b59476ad5b4c3f910162422108ad63d6e6ab2d7f879671763a3ce5f9225
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

### `perl:bullseye` - linux; amd64

```console
$ docker pull perl@sha256:510b9cffe1ec4358d0c7fe1017c3930549a84770d8de6d04fe030c62b0f9ce5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.8 MB (337799314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:858fc181be6eae391d0a0d0501d3881bacb15a5972cb74e7c829818f1150dc39`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 17:53:21 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 17:57:18 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 17:57:18 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 17:57:18 GMT
CMD ["perl5.44.0" "-de0"]
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
	-	`sha256:8403c3770f265b9458d6041e5ab7a7f522a39c14bf063306246225878d16fa28`  
		Last Modified: Fri, 21 Aug 2026 17:57:37 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca3ed8be9ec0904e59ff3356c37bec0c9abd2fe910dea8ab7fb5bfc94c94d23`  
		Last Modified: Fri, 21 Aug 2026 17:57:37 GMT  
		Size: 16.1 MB (16092413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35378efc80354b7e198349fedb299ad142c5f9f40c9be65768bfa5ac1fdf9a7`  
		Last Modified: Fri, 21 Aug 2026 17:57:37 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:c4d525f9599d3d2fb6741f465129a6ba407c2940f38fdf610c6f5773fe1d784a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15491797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd16c8a4fc1a12ef3554b2d9982471131590f2a4e55e6e485de9b4f1e1580fd`

```dockerfile
```

-	Layers:
	-	`sha256:887375d6f838fc8435f09721bfff26b744aefb776ebe1b3ca5e0e3796b3a61ab`  
		Last Modified: Fri, 21 Aug 2026 17:57:37 GMT  
		Size: 15.5 MB (15473667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96041f77952db17b7e2a7c216af36ac4bf7b24c67c8a69749c38bee706493c20`  
		Last Modified: Fri, 21 Aug 2026 17:57:37 GMT  
		Size: 18.1 KB (18130 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:bullseye` - linux; arm variant v7

```console
$ docker pull perl@sha256:b3861eca18e810164cdab76025398b952f716288cb1f636ee8424d6594a40ff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.6 MB (297646520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765b1baa2338f6b8d79136b610e5df3e3bba46218858347520d3435717c55fd6`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:20:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:54:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:14:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 17:59:34 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:04:47 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:04:47 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:04:47 GMT
CMD ["perl5.44.0" "-de0"]
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
	-	`sha256:78ca664aa05769856e5ae6d75cb19513904efe246b7c55d7d6ef0435084bdc9d`  
		Last Modified: Fri, 21 Aug 2026 18:05:07 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:845f51f7e8d8f76f80429a453cc852a53b67159a53980a7494c9617a494faf7d`  
		Last Modified: Fri, 21 Aug 2026 18:05:07 GMT  
		Size: 15.2 MB (15171423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d30092439401da06370fd399d2a58ea6e32bdafd8b858c75c3953d07d6f8ad0a`  
		Last Modified: Fri, 21 Aug 2026 18:05:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:91119cae775a55eaae60ff28a9d5983c1705b4ccf9ceac8d9b29ff040a94effa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15291226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:922eb281cb41409bc7bf704f3f454d941508ecaef8d98788c64aefff8db287c6`

```dockerfile
```

-	Layers:
	-	`sha256:44f2b66a927a641f22fcb5e40f167ab05e3a6a8c32db850d5e5b6a0f0e28b33b`  
		Last Modified: Fri, 21 Aug 2026 18:05:07 GMT  
		Size: 15.3 MB (15273009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16162db7ea9611b0164916427897fbf144b096b2719d5a9495853e18c341c426`  
		Last Modified: Fri, 21 Aug 2026 18:05:06 GMT  
		Size: 18.2 KB (18217 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:bullseye` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:19aaa63bf0968443d02c00a723b22f556b09c7753521573741c71c828517398d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329235250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d101d3ed568211d805fcc41e9c4eeda218b5943b8a7e8bd27c991e0d05f7fe9`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 17:53:36 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 17:57:58 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 17:57:58 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 17:57:58 GMT
CMD ["perl5.44.0" "-de0"]
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
	-	`sha256:9d154ad3ba896bb29853a80992ed49340b98461a9457dee9bd2a1cbc1e508008`  
		Last Modified: Fri, 21 Aug 2026 17:58:19 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9050b275cfff36fc5690184f6d4b92463a152c57d0b38a495cfd5d2befb8069d`  
		Last Modified: Fri, 21 Aug 2026 17:58:19 GMT  
		Size: 16.0 MB (16015354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cdd7c039296259d91b3b37918204ed5642f9df99e4e3f13cc8efda08a9e161`  
		Last Modified: Fri, 21 Aug 2026 17:58:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:d6d2a34f5d945cc7022f15c682ecdf949a75cb50a014b250a48aeb74135ba8f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15493894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5b218fa12b9e97e862cb4fbb11adbf4823c3f7486e1103c625d16622e19d89c`

```dockerfile
```

-	Layers:
	-	`sha256:45cfdb7443fa48ea88b62a2fdaac3686437a93771e4cc4f513d96d47e5103e6a`  
		Last Modified: Fri, 21 Aug 2026 17:58:19 GMT  
		Size: 15.5 MB (15475648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9b6d8c08267e66b804fe2abd957e7d29b2647e32f2e47e71090cab585ecb9d3`  
		Last Modified: Fri, 21 Aug 2026 17:58:18 GMT  
		Size: 18.2 KB (18246 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:bullseye` - linux; 386

```console
$ docker pull perl@sha256:e280a401e034be4566eead8fb029895a503dc6f49874de156c688599d70b9150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.9 MB (342918437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cfe3cf3ab540dd74828a516afe917291b27827a72edd7e36ba0c2ab75ea173e`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:46:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:17:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 17:54:43 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 17:59:25 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 17:59:25 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 17:59:25 GMT
CMD ["perl5.44.0" "-de0"]
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
	-	`sha256:7e62c3953e27bba6ec0cd63206afe246a09fb5577ddf0ba0cb5f83f1a5c0c1fc`  
		Last Modified: Fri, 21 Aug 2026 17:59:45 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a33dec75d3ca703920d80e7c409cfac774c2ebfabe23b790e6e2a508df048cc`  
		Last Modified: Fri, 21 Aug 2026 17:59:46 GMT  
		Size: 15.6 MB (15582379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26b61204899ebfd919a2c6cbd875c197db2ed4335e4138f5b59fc2678741b5a`  
		Last Modified: Fri, 21 Aug 2026 17:59:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:be3f586423ffd9169a1933be47275e060378d8bd26cc23a1707b0dab21b60f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15479760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5be8fee64906bda2c5c21c77318863e41f02727f63be49647f564ed8aa98c8f2`

```dockerfile
```

-	Layers:
	-	`sha256:30f64d1146088615d8828fba5f591402e8f9f1e29642127535a954fed5067925`  
		Last Modified: Fri, 21 Aug 2026 17:59:46 GMT  
		Size: 15.5 MB (15461667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3242a473e5d6571e995ee3eeccad73aea815d55dd12e6859f784783f2786382`  
		Last Modified: Fri, 21 Aug 2026 17:59:45 GMT  
		Size: 18.1 KB (18093 bytes)  
		MIME: application/vnd.in-toto+json
