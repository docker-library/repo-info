## `perl:stable-slim-threaded-trixie`

```console
$ docker pull perl@sha256:f9ed9c2ad041ce1371442bab05615868d0e31623426de6f0b2a6ad0d12adf952
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

### `perl:stable-slim-threaded-trixie` - linux; amd64

```console
$ docker pull perl@sha256:c00ac1bd6945f106fce79596147ac4d03cb9525fea595702813c22645ccb4624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61999845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:369fc50b89916c745aa301f8a154f2d341f6abceca6b95c7c83a4104fc2620d8`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:50:02 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 00:55:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 00:55:04 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:55:04 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a04d3c51e589b961e12f8e99d6f96936d1517978f57b4ed70f8e4eebae977cf1`  
		Last Modified: Wed, 05 Aug 2026 00:55:15 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ded277ec676f558b02571992d7950651d5ac43f689dabf1c46cd7cad290221`  
		Last Modified: Wed, 05 Aug 2026 00:55:16 GMT  
		Size: 32.2 MB (32218814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe56fbd85c93171a3f5c4eedc8c6457d6483005f021aae2c2641a4d41a211f64`  
		Last Modified: Wed, 05 Aug 2026 00:55:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:a91ed5743969015a2a634a81386016e2ca12ccd08577c6357fe25ebad99d5d8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4031569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca08c013d7710480a1657596717d0176d65646839a64801ce089f82c6262b54`

```dockerfile
```

-	Layers:
	-	`sha256:b3155ec510196ba5579a469bf6319fc31ef9629f3667b4fc681a551a47a8d18e`  
		Last Modified: Wed, 05 Aug 2026 00:55:15 GMT  
		Size: 4.0 MB (4011092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcf1e0a61b9b85258bfac3e947e09d7bc94fb905f06c69dee0dde2f1ecc7ef41`  
		Last Modified: Wed, 05 Aug 2026 00:55:15 GMT  
		Size: 20.5 KB (20477 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-trixie` - linux; arm variant v5

```console
$ docker pull perl@sha256:db7e04b63734c10b2a1a45e08ee1692ff8cd558a6609173ac0f1b21492ec1334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57396452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f23258e77bd3671f1da75a7f021a3fc479d2115b1d0d46c494ada0069a301d`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:42:59 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 00:49:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 00:49:19 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:49:19 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dea69c1365a100e20128d3fff0783cf69d4cba6024556d899d6a8cf8d0b9fc3`  
		Last Modified: Wed, 05 Aug 2026 00:49:30 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044f84e889c1f00bad796386784d4f7b644ccd1027786180b1f01a8aca6258d6`  
		Last Modified: Wed, 05 Aug 2026 00:49:30 GMT  
		Size: 29.4 MB (29441471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b675f227c4e6ec9bf5417fd016e9f3346e3eff5232d995fb594bcf2ac47fab7`  
		Last Modified: Wed, 05 Aug 2026 00:49:30 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:5ed9decb1cc6bf44c3ebaff9c874b12ab1af876aba464d14418a775e9f321796
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4024773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c3fbeb0c9bcad9d72ffe0b9a61df2ee37aadd16c0393ac1ed67a57c29e85aa`

```dockerfile
```

-	Layers:
	-	`sha256:57b21fda84e105d9032900d6f40f4c5e94d9743a0280097c7a41439343e5c5e3`  
		Last Modified: Wed, 05 Aug 2026 00:49:30 GMT  
		Size: 4.0 MB (4004169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ddafdb8c4f8afb50c8c7c4bf496cf81b339c4b06a1439a659bf88534cdfed2a`  
		Last Modified: Wed, 05 Aug 2026 00:49:30 GMT  
		Size: 20.6 KB (20604 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-trixie` - linux; arm variant v7

```console
$ docker pull perl@sha256:d79769f27c521a6bf73ec2b6c45b38584ec2b740b1ab45a8047f9d645da26bb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54709544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166122514c459987704a0ad5423095661236a8cc85049c4a38094906d21deb9f`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:23:22 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 01:29:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 01:29:26 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 01:29:26 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf779c65071fdc02eca8df4192b2e9de3e851d4269588edf1193149628ba439`  
		Last Modified: Wed, 05 Aug 2026 01:29:36 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5936d9a850a2aeea2577741d9943236df6c6b06c5c560cdd97b161f1fe85327f`  
		Last Modified: Wed, 05 Aug 2026 01:29:37 GMT  
		Size: 28.5 MB (28502907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6950a401408caf1978103f1acab8bfa85e1d521599c114b345427ce79f9e7c26`  
		Last Modified: Wed, 05 Aug 2026 01:29:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:bd9badc1ca66d60d40e7758182596c4668ce63a20a0f6e506f229de4fff6a83c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4023966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e187cba4b55ac5feff22e5bd586114f7e1e057b44dec3bc5b4036e3361b382`

```dockerfile
```

-	Layers:
	-	`sha256:754462b6c52e5164bcf1d416e701bc74b63b546b67878a9711e4829387f3da9f`  
		Last Modified: Wed, 05 Aug 2026 01:29:36 GMT  
		Size: 4.0 MB (4003360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:432fd413f75c9fcefa57d5f51c064eaece65955bdfb98cf59c9d4a1098bdbfe6`  
		Last Modified: Wed, 05 Aug 2026 01:29:36 GMT  
		Size: 20.6 KB (20606 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-trixie` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:c1c0e1a3279763e423f7656acbe820f685482b72c69286a04d8f2da6192eb469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62021378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcd1199efda73061c446c2f33e0e8cb43dd272dc08b96ecf85a5edd9db02eec6`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:52:34 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 00:57:40 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 00:57:40 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:57:40 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bab45a49370b5bedeb703da4f3c63314808ca8554858150fc993a821493bc24`  
		Last Modified: Wed, 05 Aug 2026 00:57:52 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8494d27141966b57353550fd288cb161808f2ef3d9ed60013f98ea44a92f64e`  
		Last Modified: Wed, 05 Aug 2026 00:57:53 GMT  
		Size: 31.9 MB (31877503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b9318065fc13339a3fd95aedb063e117f18bd8ee3bb558101051dce62d30801`  
		Last Modified: Wed, 05 Aug 2026 00:57:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:851729d4fe406dc6c114fb82fe7336032784dd43b55960b91125ec40a8899367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4026881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e00476ebc920a4db5206b5a9ea8a8c62b79d4070f6b55920f81758e7fdcc380`

```dockerfile
```

-	Layers:
	-	`sha256:4b77b38e25ef4e4517931828483ee54b085dc1f970178cbf146e7342b785794f`  
		Last Modified: Wed, 05 Aug 2026 00:57:52 GMT  
		Size: 4.0 MB (4006227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35f16a3d1058bc1dfaf26621d94b251030c0588a1850b029dc45a47f03535386`  
		Last Modified: Wed, 05 Aug 2026 00:57:52 GMT  
		Size: 20.7 KB (20654 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-trixie` - linux; ppc64le

```console
$ docker pull perl@sha256:c19b22de6d2a511226b2a603bbaf311c79b1d1623bd33f36b9a520580a3d0023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66590972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ddf85d231627926f842050f5238323b2e9918d3964c9a8d125724bea48a2a72`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:41:33 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 05:51:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 05:51:01 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 05:51:01 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ac613ddfe16a8d208bc2ad45a331522b2fa9ee37e528dd46737b85f9b904e4`  
		Last Modified: Wed, 05 Aug 2026 05:50:34 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b6ce430638aa9007f85c3aa17e771b3bd2b3ade2e78e30b5ab0e565f2d4bf2`  
		Last Modified: Wed, 05 Aug 2026 05:51:22 GMT  
		Size: 33.0 MB (32989366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50e5defebcde43240c3a1253f2eed3a857f98f99be198127c9bfcfa7d3ef7201`  
		Last Modified: Wed, 05 Aug 2026 05:51:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:769cf4bc75a030e317fc23b54eee3e13819d9d2cd0b86e788f0d68d6a8906c0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4027686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c863c26ef6c70d4163c7ee8d407635ebf1b7c0cfaaf9410b030ef2ef9ad95f`

```dockerfile
```

-	Layers:
	-	`sha256:8be0917be8cf57e392dc84140b5df7e5558754c81b75f6245984f12fef0064a5`  
		Last Modified: Wed, 05 Aug 2026 05:51:21 GMT  
		Size: 4.0 MB (4007128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cccb1aa0bc05580478c468e481eb33a2df513d4c87581d9fdab5f07dd05d6a63`  
		Last Modified: Wed, 05 Aug 2026 05:51:21 GMT  
		Size: 20.6 KB (20558 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-trixie` - linux; riscv64

```console
$ docker pull perl@sha256:723990f432fd81939a77078ac7036bfc5c4e49476c06f15c6fba2ef39a215030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68312737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853590d6e91079cf962644b00ec410f6f314cd06669f98ec9a7829b5122e4390`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Mon, 20 Jul 2026 02:11:05 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 22:23:51 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 22:23:51 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 22:23:51 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f0803cb4ff73aea93c0402c00b490b87d4b43d3430cb4ec51e92490d4b247f`  
		Last Modified: Mon, 20 Jul 2026 03:24:52 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49a5ef6edc885d1e0196f4b954ed9ecdcc0075234f237b180c22018a0e7ec1e`  
		Last Modified: Wed, 22 Jul 2026 22:26:22 GMT  
		Size: 40.0 MB (40034266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73de440508c74140678219a98d94c5f1226cddbb2d55369e0040c711b0b88349`  
		Last Modified: Wed, 22 Jul 2026 22:26:15 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:e22da3fcdc6d9a28c576b80e5c6e45606d85d43cc0df55d791fce8d91b9a0fbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4018947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7964e6584b5b3200d845ba136130beab2c20d7246c3a6539d15864e079c393da`

```dockerfile
```

-	Layers:
	-	`sha256:09f30c075f212ff2a87d9801e63f40809b922aadf1a402b1df20d60294d66f08`  
		Last Modified: Wed, 22 Jul 2026 22:26:17 GMT  
		Size: 4.0 MB (3998390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f17bd3cc27349fa695512d112353eb119769f3b00be4ef0ca59fd229488c80a7`  
		Last Modified: Wed, 22 Jul 2026 22:26:16 GMT  
		Size: 20.6 KB (20557 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-trixie` - linux; s390x

```console
$ docker pull perl@sha256:ac5a85b8278ea33211d69938295af797e69226908339a36b9ffeb752ead73695
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61425044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7fb738347c9d8898b6bf6c961eaaf57baa5141340a30f88717024c5ac76879e`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:11:15 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 01:18:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 01:18:08 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 01:18:08 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8ee0157d356079590064b9fe983fdb7a6d2a7ef0e1bd1f45c5115addafc2dd`  
		Last Modified: Wed, 05 Aug 2026 01:18:24 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcde773abed4c2659d187f18d96d880a51122508859124aaa1cca4fa5bdd289`  
		Last Modified: Wed, 05 Aug 2026 01:18:24 GMT  
		Size: 31.6 MB (31578204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc1d27c30704aa5d8611c058f9850ef5a7d3c8e7ff7f9df1c3541e3f7279f14`  
		Last Modified: Wed, 05 Aug 2026 01:18:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:f3a3f61c8db7f3d1871b24007059201f858b72b6418fcb87c32aef2dc454ae75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4023898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07ae6d557cccffcd996c051167dbd670bb73d078e7d741b79cb79147149a9a0b`

```dockerfile
```

-	Layers:
	-	`sha256:4ee6ab5c73678e866eb2cf38f8e529edd4d07442947a953307c04731c7410809`  
		Last Modified: Wed, 05 Aug 2026 01:18:24 GMT  
		Size: 4.0 MB (4003420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6814635d37a807fb7979438c43212d99cba11d051425d0bf1ea2093370c16c92`  
		Last Modified: Wed, 05 Aug 2026 01:18:24 GMT  
		Size: 20.5 KB (20478 bytes)  
		MIME: application/vnd.in-toto+json
