## `perl:devel-slim-threaded`

```console
$ docker pull perl@sha256:36be9f0082d3fba811e66d93fb8960a310b5db3de329137c95703ef71bbe62bb
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

### `perl:devel-slim-threaded` - linux; amd64

```console
$ docker pull perl@sha256:715f0a73f3dc84fb869826a3c0f44ec1876384f548dd47fdee6763e74e65733a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62036908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2485354c3c44a4d1ff84dc02775b68560e06d5fded7ef015b3f3670a4eeea4ce`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 22 Jul 2026 18:52:10 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 18:57:17 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 18:57:17 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 18:57:17 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad263a9846f38d55bdcffab1555416917c28bd0ae96a382d8c8ec2481114bd29`  
		Last Modified: Wed, 22 Jul 2026 18:57:28 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8bfbd59c64a973d7149a13b3354c519e65cf23f7e9aed14ddd8b89a0416b73`  
		Last Modified: Wed, 22 Jul 2026 18:57:29 GMT  
		Size: 32.3 MB (32255736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a7e918b1ea212b03a4b299c975239580a650ba714535e1b410d656a6156148`  
		Last Modified: Wed, 22 Jul 2026 18:57:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:65a69ebf9b9396a5c6b88487feb293f889a4955748d185a18e6dbc85d5342701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4029097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4747ea66629e2bbc221ff3f42727c002c00ebee7806c43b95f075ba1eebd3f6a`

```dockerfile
```

-	Layers:
	-	`sha256:011e948ad7a954b8d47970262191efe949e76cbf85fc582a26d4cb5ff426d8e6`  
		Last Modified: Wed, 22 Jul 2026 18:57:28 GMT  
		Size: 4.0 MB (4009816 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d349a8a7ba3add71ddcda873937a26a785f1c3b8c0c6a0d6ad059e785cee584`  
		Last Modified: Wed, 22 Jul 2026 18:57:28 GMT  
		Size: 19.3 KB (19281 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded` - linux; arm variant v5

```console
$ docker pull perl@sha256:d62ea9ab0f003544d2118fa662ce7797b324f5f12017bb3ca8615f93a69dbf64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57425888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:955a60a83d4a87ce57cd87f4e73197867a5ece36b0acce8f602d5501e2b939a7`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Wed, 22 Jul 2026 18:23:09 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 19:05:54 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 19:05:54 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 19:05:54 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab8233ed53904c6b901a267c8ecb7386a306c4c7760a4d3bcb112050e417bc0`  
		Last Modified: Wed, 22 Jul 2026 18:28:20 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85cc0a6da1dcf13c61d719590b6b0d6976d225be488b115a1844bb5fc4830ca`  
		Last Modified: Wed, 22 Jul 2026 19:06:05 GMT  
		Size: 29.5 MB (29470804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b052ee7427486bda849fd700bf4c6ee3a73dfb41f48f8de1c5e788c6dbacc8`  
		Last Modified: Wed, 22 Jul 2026 19:06:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:2f16c7c1d08d1eb6f620722c96ee0e7cff5964af4a9288213fc677910d918875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4022238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2cebaed59d9dc1966b6f7261aa1f0c6d2e9cf4fb6e7c1205314517d64c41e9e`

```dockerfile
```

-	Layers:
	-	`sha256:e230fc95bc2652b1e04f8a76e5271862c2bef62d3555b8c10397d2483ac50ec0`  
		Last Modified: Wed, 22 Jul 2026 19:06:04 GMT  
		Size: 4.0 MB (4002861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ead21b9ce0b34731040a6ac8c4f27226a7c2e40b1cd95a8ed27d7dd68d63d0cb`  
		Last Modified: Wed, 22 Jul 2026 19:06:04 GMT  
		Size: 19.4 KB (19377 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:d34feb40660c7dd4b46b8309a72e708787a1371c9a576b2881f8d5e5e27b56b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54739233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1ecc927333ce536cd5a859b66e8b851ff311c597f3426a9ec92e1490c55af1a`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 22 Jul 2026 19:06:47 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 19:12:52 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 19:12:52 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 19:12:52 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c0fd6de98353585c9612108ac2838d43d20ffaaca019c2cd128a94d97d2994`  
		Last Modified: Wed, 22 Jul 2026 19:13:03 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b888a0b42a589cce6bc3c6119d3ed4d2337d8290e868ec14b61eb5d4d2f12f6`  
		Last Modified: Wed, 22 Jul 2026 19:13:04 GMT  
		Size: 28.5 MB (28532497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72999df57a30356449fd02f79bf6d3c009510a4ec5a3249afb22316fa03a3675`  
		Last Modified: Wed, 22 Jul 2026 19:13:03 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:f5e021a0354e563d619343907751a9c2d2fc6c3c12687e20d96297ca92a5cdc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4021429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb3b4592d697119ece6d6080d98ec58c975b47952bbde518abb23a35087aa35d`

```dockerfile
```

-	Layers:
	-	`sha256:dc3c0a971364c9da302c36efd2e785f616bf02db85522eaf6ae5a33aa6fe5f1b`  
		Last Modified: Wed, 22 Jul 2026 19:13:03 GMT  
		Size: 4.0 MB (4002052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a25fad78ac8c97d8761c68d40da2259e543ad069f961d97bc1d64ec5ac0c8376`  
		Last Modified: Wed, 22 Jul 2026 19:13:03 GMT  
		Size: 19.4 KB (19377 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:6b7ac173a44bc58d9eae31c428262b1d614a644cb3d8d0fa41f66429cb63447e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62059531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98f8985d44b1ae6e581e94e37c7780cd9a6f16b923f65d1ef4b94cf0c87de1d`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 22 Jul 2026 18:45:58 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 18:51:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 18:51:05 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 18:51:05 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43be0cb61b422ddfc521b4dd421b35c3344c3be144b2f6175e9636009ecce87c`  
		Last Modified: Wed, 22 Jul 2026 18:51:17 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372e053f5f0326df48883a3c9dfae50e26d5874ae144acb5041930bb50275962`  
		Last Modified: Wed, 22 Jul 2026 18:51:18 GMT  
		Size: 31.9 MB (31915557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ad5395b2ca65dfbb63262d6ed75131ce7e42a3f6b05eeb4f55cc60d03fee25`  
		Last Modified: Wed, 22 Jul 2026 18:51:17 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:09a3f80ce83f4ae29eafc915dede01336805c1d24fd9c1e15d3ab987cda81a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4024312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebc23c6e4b48693eb3f6caa04b30b2e9889c4cd00da4747636fc0a9741c53e6`

```dockerfile
```

-	Layers:
	-	`sha256:b15a57880add1e93cbdf633b8c81521687f351ea430c4e25d4bb31e663d02d6a`  
		Last Modified: Wed, 22 Jul 2026 18:51:17 GMT  
		Size: 4.0 MB (4004903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ceb0fbe352aa4f5df0e8bc8a2df30c9f004ebdbca8e2435077b91be80a2e12d0`  
		Last Modified: Wed, 22 Jul 2026 18:51:17 GMT  
		Size: 19.4 KB (19409 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:4e86fed17270f889f7506a7c9affb65deec1492d7aa3164055422eef8713a42a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66627066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06696bc53d02e32bef9a6de9e1fd440639a7a4d7ccadf6a61f95b0726f204c1f`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Wed, 22 Jul 2026 19:08:53 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 21:20:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 21:20:47 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 21:20:47 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f80b6a74d37dc650e429eb6bac70436ad45802f26776a0c46f2a159efdbbe053`  
		Last Modified: Wed, 22 Jul 2026 19:17:35 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bbcaa1bec6aadd1065430405fea7595afe18f0244a679c1ed13d0aa6070b185`  
		Last Modified: Wed, 22 Jul 2026 21:21:09 GMT  
		Size: 33.0 MB (33025321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d378993ac9fc667186a1d1563b70aac1e797244eb8e5a29753cba16d273bbaa`  
		Last Modified: Wed, 22 Jul 2026 21:21:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:c2c83ab63e142f2546de8b17b1cad2743fe133e93995de31295fd346ad8f4c2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4025165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d212c9f34fe87add9bc618c79e4ed06088ba8d3557d3e3764acbb9aebe620191`

```dockerfile
```

-	Layers:
	-	`sha256:656b55a3880d14c7b0136e376bfc9fdf429c78c2fc2940ab5433e9038cced7f9`  
		Last Modified: Wed, 22 Jul 2026 21:21:09 GMT  
		Size: 4.0 MB (4005828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afdc7022b49dc6ef7dabeea44d54342e5ca43b3e13c2438c76bb6f01e8cb4fe5`  
		Last Modified: Wed, 22 Jul 2026 21:21:08 GMT  
		Size: 19.3 KB (19337 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded` - linux; riscv64

```console
$ docker pull perl@sha256:12c3066b264ca8a4610be1bd299f0d7123e387f1670a7db9760d2e2c4783db0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.4 MB (68381218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b0d3351ef12d343f998000f45b3e56973fca0ca4c3e7a110349d54aedaa5a0`
-	Default Command: `["perl5.43.9","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:42:14 GMT
WORKDIR /usr/src/perl
# Thu, 16 Jul 2026 03:26:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.43.9.tar.gz -o perl-5.43.9.tar.gz     && echo 'aec72b03806f2003f97e86baf28a22a20cce912d618afadf3df1f005cda5b235 *perl-5.43.9.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.43.9.tar.gz -C /usr/src/perl     && rm perl-5.43.9.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.098.tar.gz'     && echo 'b38473be20256b1a06447dd6769ad162bfad6a258234ed2c7e2e1819c16c4df7 *IO-Socket-SSL-2.098.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.098.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/0.998003/cpm -o /usr/local/bin/cpm     && echo '6a27e528cf37635773e738db36c4b4ab4345d5a9d00b8cbd2f2dc01abc73177d */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.098* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 16 Jul 2026 03:26:49 GMT
WORKDIR /usr/src/app
# Thu, 16 Jul 2026 03:26:49 GMT
CMD ["perl5.43.9" "-de0"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db8bb9dbc69ea862aac5c5b992639afaa0a5774539c4b3cd85676c1bb596991`  
		Last Modified: Wed, 15 Jul 2026 18:51:14 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c440d66ce471afc5775fc4c7af27e9999d0103d21c91bcdcde04881f390ce4c6`  
		Last Modified: Thu, 16 Jul 2026 03:29:16 GMT  
		Size: 40.1 MB (40102749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c306e88281c6aba83799ab2fcf09b22fa017f409c7e7dfcb4e88be757563b17a`  
		Last Modified: Thu, 16 Jul 2026 03:29:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:c9464f61489e2af03c5b1de887b73c8ec97090b29b967252bbe0872a9a4b0e13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4016438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8223d07a40617512a685e9a5c65ed4357f12364a1e7682dd028855e73e04b915`

```dockerfile
```

-	Layers:
	-	`sha256:63183a8adfd769c8a63557e7db56c20799b27f5b0dcfe73868f5741f5186512d`  
		Last Modified: Thu, 16 Jul 2026 03:29:11 GMT  
		Size: 4.0 MB (3997094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edb5de7ab636305498ae674b6514b98cdf762bd7553f5795d85824ba49f63258`  
		Last Modified: Thu, 16 Jul 2026 03:29:09 GMT  
		Size: 19.3 KB (19344 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded` - linux; s390x

```console
$ docker pull perl@sha256:c60a2263615a51be8f795be0ee2e3866bf8445234a3fadf730271be2a5c28cbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61459227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc0fdb36dce6ac0176c406e9b11e8e8c1f0df33303e7f4a676421f1230f5782`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Wed, 22 Jul 2026 18:39:42 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 19:53:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 19:53:21 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 19:53:21 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455dfe6ee93b85e5d52d318132aa274e4764ad34ef8352fee55010636c99a237`  
		Last Modified: Wed, 22 Jul 2026 18:54:41 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64142eb684268ba126616c79d165d590e012fb368d478fc3f8a0e7e0fd194a49`  
		Last Modified: Wed, 22 Jul 2026 19:53:37 GMT  
		Size: 31.6 MB (31612327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f180bf4bf8f559c2b95ee752f990e4724e224c2b4e7066d60916f5f9f8ce00`  
		Last Modified: Wed, 22 Jul 2026 19:53:37 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:2343bfb29f24b4e5a39388edb8fdb7360b47177fabf6e4a9885439d7f58667d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4021425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df38e1fc634a43a5594dfbb93f323cc1a32e8d3542578cc02b131fce53664bd2`

```dockerfile
```

-	Layers:
	-	`sha256:e47edd20a9499d028a39d94b19466c50c57fd38e0e43654dd9fa4d29ad4fc98c`  
		Last Modified: Wed, 22 Jul 2026 19:53:37 GMT  
		Size: 4.0 MB (4002144 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10eb66e692e81d61adc1de0bde0b4d225b711c6e54d52959c69b3fd9956f698e`  
		Last Modified: Wed, 22 Jul 2026 19:53:37 GMT  
		Size: 19.3 KB (19281 bytes)  
		MIME: application/vnd.in-toto+json
