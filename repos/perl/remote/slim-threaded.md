## `perl:slim-threaded`

```console
$ docker pull perl@sha256:7c2912c397d486b405f9d1c19297bfbcd2819aa26c9534a6fbdffa2f9d8ebd17
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

### `perl:slim-threaded` - linux; amd64

```console
$ docker pull perl@sha256:c4ee195e44a1a7a6d995666873295f5d2e16709484d8f04830937ff45f90b2d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62079974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ef4fa97f559f075f65658a44d02c914e6517c493938d62aa2aaaa7260b0d695`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:17 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 04:47:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 04:47:58 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:47:58 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11268c05bb2852e91d102846c1d7084366ea4dd1201b3c15f4096c6ccb681d3b`  
		Last Modified: Tue, 24 Nov 2026 04:48:09 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c66bddab31c12d216800d4e7a934c51a8f8d469db8e5fef61f8ddcced65e65`  
		Last Modified: Tue, 24 Nov 2026 04:48:10 GMT  
		Size: 32.2 MB (32237525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb6bc27221f054562b26d88e038572b4413aea8947f1d4d48509a739b815c7e3`  
		Last Modified: Tue, 24 Nov 2026 04:48:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:c3b2fc8ec39e4a6b5e2151b469a3ba07ef826afe6413e3e97900398f77beda43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4037064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dae741ea3beee6fcb7ea2e03074098439c0a2c6ebe53f122541e6409e23de6ac`

```dockerfile
```

-	Layers:
	-	`sha256:8bd2376fb0814684c6c0d93ecf117d969730d72abdf8931f0c8234e4ffcebffc`  
		Last Modified: Tue, 24 Nov 2026 04:48:09 GMT  
		Size: 4.0 MB (4016586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12c029525ade6141bf75219427c045e6cdb88ebe1f916d1c092094f03af71a69`  
		Last Modified: Tue, 24 Nov 2026 04:48:09 GMT  
		Size: 20.5 KB (20478 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded` - linux; arm variant v5

```console
$ docker pull perl@sha256:6a548a2a7c2d2b861570450442ba2277e764c239b8087c758ca889efa92656a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57449326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca175f312f3a620cf4a1bbd6900550bbc68836fbbcd627cc74a4289b5de3a30`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:25 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 04:49:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 04:49:30 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:49:30 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0b438ae7833773af3c241b53488b43dbade121ef6c6bc98c48cb422f5d3afa`  
		Last Modified: Tue, 24 Nov 2026 04:49:41 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4699b64cf469a339140ecbf53fb86f1a44c4fc357830c1c8e0712f327c798028`  
		Last Modified: Tue, 24 Nov 2026 04:49:42 GMT  
		Size: 29.4 MB (29440277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5abc7375825ddc518097886da98aa663d318b6a0b58ea29a2c3fdd48939f8f8`  
		Last Modified: Tue, 24 Nov 2026 04:49:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:0711878077e4d301ce8d14f366fcbd319dea959f3eca5805214bcd62cd031b0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4030270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb72cb97e7171390db6e2a57227b7a9b4e6b395d2b58415f57e2c1f0bb892976`

```dockerfile
```

-	Layers:
	-	`sha256:b5d40112bcac5807e6dae40982e3152664494cdf03b02964949c30bac0c6afd3`  
		Last Modified: Tue, 24 Nov 2026 04:49:41 GMT  
		Size: 4.0 MB (4009664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fb24e7b49d4cad478368521e42ef251a481836dbd42101232d7129364ae1a97`  
		Last Modified: Tue, 24 Nov 2026 04:49:41 GMT  
		Size: 20.6 KB (20606 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:737465debf18caac5c9b76bfff9952d9a5eacec8d0e60e893324b6d11c55e6de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54774890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7baf5878c2f2b50888d51edaf6051ca4190e5993199197cf6d60acc5e9395db8`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:19:05 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 05:25:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 05:25:00 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 05:25:00 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2453f9368486446d47d3957ddb75bb1bad0b8b8257293cfd6edffd56d670149`  
		Last Modified: Tue, 24 Nov 2026 05:25:10 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0289d22bb0198b0b23c20201942b2d0bd3e4cce2a510d7a5569daebc20438b64`  
		Last Modified: Tue, 24 Nov 2026 05:25:11 GMT  
		Size: 28.5 MB (28512165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78865134d5ef576fa2aaac7bf5dd6a17bee694ad9e9436c76de7c7f0475aa59a`  
		Last Modified: Tue, 24 Nov 2026 05:25:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:785e5dabad438a1146d53326c272867b52130e03007408cea41dfbb469897c08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4029463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2eda2cd6c75f75f65c04afbd13886ee270d390526b4b09f783d52936005d529`

```dockerfile
```

-	Layers:
	-	`sha256:89614f5827cd1c2058d9df5a587acad5d8716e0e772da872225f4661fad592fd`  
		Last Modified: Tue, 24 Nov 2026 05:25:11 GMT  
		Size: 4.0 MB (4008857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc377ab44413e314033d13c29ed29730107b19096d89a250031a06760dfb4e9d`  
		Last Modified: Tue, 24 Nov 2026 05:25:10 GMT  
		Size: 20.6 KB (20606 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:786445cddf8db02973b16e6aac141d229505fc46c10065d86a5bb3929f982de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62092511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6447d22bde9b0e34ff8fee295eef6fe1089abf49e0ba1181a205e8f87dc9348f`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:47:34 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 04:52:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 04:52:46 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:52:46 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66eb18ace340a11f693b4b1d076bc5b13be1a557583eb8d21eb1b493f209b04d`  
		Last Modified: Tue, 24 Nov 2026 04:52:56 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b19eed990c8beacd5d2d462b9013d92d26e621f81bca3d3e42f43d4a0f4fcc`  
		Last Modified: Tue, 24 Nov 2026 04:52:58 GMT  
		Size: 31.9 MB (31894213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33b6ef2435b2ce662cce78a0ad018115b7e578b1725c3e159a5fb7249403e04`  
		Last Modified: Tue, 24 Nov 2026 04:52:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:48a89aa44774395474522eb39378882bff7aea59b82f4c1cd4e846b86e9e1f84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4032376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8376f1f4aae782590d0886bd469d2d448c1e92566f4fb7133a721002134392e3`

```dockerfile
```

-	Layers:
	-	`sha256:073d06c5b018ab3d1a337d252a22ac251004bb4016c59682856b342a4eefd58a`  
		Last Modified: Tue, 24 Nov 2026 04:52:57 GMT  
		Size: 4.0 MB (4011722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa3b4d776754ea5d45fedebb710db873803e9144577bfbfe1fb74ae6dd2d376f`  
		Last Modified: Tue, 24 Nov 2026 04:52:56 GMT  
		Size: 20.7 KB (20654 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:daf37c9f252e6e9ba890aeb041cb227cba3326ba0ac3d6e87ff06dba158432ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66659367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ee301854a540868c812d4b6026a5b3f179bf67e5f8f2f3c5da69475f082e9f`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 07:04:00 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:24:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:24:23 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:24:23 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2609f5a2d5fcf589555d0d38cf22de302ed113201e0b8d76f306eddc5adf6fc9`  
		Last Modified: Tue, 24 Nov 2026 07:14:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f49d273ef0b7ab1788b5987c2389f6b4c9a7fc706ca4fe98f74f57cb0887936`  
		Last Modified: Tue, 24 Nov 2026 07:24:47 GMT  
		Size: 33.0 MB (33006463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7081288da12364daa84daff593bd9931309c6d332659bc946629df8642833b`  
		Last Modified: Tue, 24 Nov 2026 07:24:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:38bf45b286886e1280c9c5b690f78df2472bb3620ffe5c936cfbb0ebe76bdc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4033185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:245311f9fa555fa9ab6663cf460d238950251df8de12bbdbe2e81146dd889c82`

```dockerfile
```

-	Layers:
	-	`sha256:e416e5f0748644a2a3d4886b9c9222ba876b1718ee4442bafff947b8ec693d0b`  
		Last Modified: Tue, 24 Nov 2026 07:24:46 GMT  
		Size: 4.0 MB (4012627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c04f712feeee3f8cd99323610c52b44c59438c94597bef83b0c73b9cd41182e9`  
		Last Modified: Tue, 24 Nov 2026 07:24:46 GMT  
		Size: 20.6 KB (20558 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded` - linux; riscv64

```console
$ docker pull perl@sha256:ebb72f62e065d67bc0d7b5886035f73e7539824fcbfbef5f8294750c88e2fafd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.4 MB (68394996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49d1d5ecd329df30f2fe99ef6b2af381d579f5fa5b6cc1a9d65f485340f9517`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:35:12 GMT
WORKDIR /usr/src/perl
# Sat, 07 Nov 2026 07:09:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Sat, 07 Nov 2026 07:09:33 GMT
WORKDIR /usr/src/app
# Sat, 07 Nov 2026 07:09:33 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb505811ab5b1ced85a7bafe0da4b8f7fa45963430e6da70b42d2208d80e4aa`  
		Last Modified: Sat, 07 Nov 2026 05:50:41 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:863c1aaceb6f11ca370ec7f6104a17c6309080adb379031c385816449c587876`  
		Last Modified: Sat, 07 Nov 2026 07:12:16 GMT  
		Size: 40.0 MB (40048542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0511dbf495e69db7e1639f9cbd5aa8ff14fb9ceec8f5840fcf463f11b178f0`  
		Last Modified: Sat, 07 Nov 2026 07:12:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:e9b97cdd19da444647b9d43bc1b33692668aaaa0ff7b8d11408db7a14b642d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4024409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e089e47b66bad91ff3dc7a317a9a2c6c923f7fe35b6dac66f8901ff63b036f`

```dockerfile
```

-	Layers:
	-	`sha256:69ff19465c7e3f388218a6bf84d246b29c08f1c9ee7400f65acf9ba03b9b83fb`  
		Last Modified: Sat, 07 Nov 2026 07:12:10 GMT  
		Size: 4.0 MB (4003851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4e7f8491bf5cc486256053a03aa4462047bf33f9da5265339525e67635034f6`  
		Last Modified: Sat, 07 Nov 2026 07:12:08 GMT  
		Size: 20.6 KB (20558 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded` - linux; s390x

```console
$ docker pull perl@sha256:c8feedd2f97d0ce4cf25a755634c36d2d5e6dd63ea9072f3025b99e31c81ab32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61507336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eec64f155f1462814de94af38d3c3437182a7d29e1ab78dceebb7b541c1a6067`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:56:57 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 05:02:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 05:02:19 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 05:02:19 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15cdcf34e93110865da56773e097c0cc0cb6fe69b4c217cca2bb95d3694a9b9`  
		Last Modified: Tue, 24 Nov 2026 05:02:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7d80f11b59b3c1f1eec5f2d3f2cc0e2000596f85475204cd4741b11dc1a4e3`  
		Last Modified: Tue, 24 Nov 2026 05:02:36 GMT  
		Size: 31.6 MB (31597044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdcf98ce1429bffe07e6aa1d29abb4f34d827ec74df46d8d68e3d47d972bea58`  
		Last Modified: Tue, 24 Nov 2026 05:02:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:fb08101e091ee85fca33b341acdd0da1ac47fa51df11d770354f23987c74dfb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4029391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab2d8562b0950ff8343e1f7f3f8387f06dd85fbac30bd99e1c6d69a3b3e993fb`

```dockerfile
```

-	Layers:
	-	`sha256:769033d9385c3c84396e56c34392b409778ffb0a223affbb99a130204dd67e3f`  
		Last Modified: Tue, 24 Nov 2026 05:02:35 GMT  
		Size: 4.0 MB (4008913 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c19bf877e1aecc84944fc748bab64a795f011198b0163d89f39a244d6c26d619`  
		Last Modified: Tue, 24 Nov 2026 05:02:35 GMT  
		Size: 20.5 KB (20478 bytes)  
		MIME: application/vnd.in-toto+json
