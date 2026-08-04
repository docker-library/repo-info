## `perl:devel-slim-bookworm`

```console
$ docker pull perl@sha256:3c41c6312f3993ac2ed253aa6b27d699abbf0800fce71c40428db5697dde9e46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `perl:devel-slim-bookworm` - linux; amd64

```console
$ docker pull perl@sha256:f1210fc2acaed8da227408c91dcbad55ccfd5e54625ac4136026250e938bf95f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.7 MB (58676147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b3a065572d3582ad7af37cffc3ed43a3b7487b97a085ef501f8e693c5e972c`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 22 Jul 2026 18:31:27 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 18:55:45 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 18:55:45 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 18:55:45 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ba790de37c06be138925e7bd846cf3f8dc898af1aa289f516d1466b2e2499b`  
		Last Modified: Wed, 22 Jul 2026 18:36:06 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12eeb30e6f1b10a0659f866a181b0207efcd7587a11f39b4a4f064c67c1b2c8e`  
		Last Modified: Wed, 22 Jul 2026 18:55:56 GMT  
		Size: 30.4 MB (30443237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bfff171afc1032e2a96f5374fde83d48b0b2c42e2fd221849aeffb9ecf3e7fb`  
		Last Modified: Wed, 22 Jul 2026 18:55:55 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:53c04fe09f974fd5aca174bbb19cd607147a7481f61cd7380bd6cdebe8ec7f7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3957650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e75e922f4c126cb872173b04562909f80cb73c78ec5668354a9a43dd7481f79`

```dockerfile
```

-	Layers:
	-	`sha256:993edbaac8a921a3bc74e43ef8ff6422b1800ce3aa0477749155531e1c86b2c8`  
		Last Modified: Wed, 22 Jul 2026 18:55:55 GMT  
		Size: 3.9 MB (3939412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d61609b686f07e8bc5474fa44f651d1791d1c66fdefbf7d75f0f27f2243b1a74`  
		Last Modified: Wed, 22 Jul 2026 18:55:55 GMT  
		Size: 18.2 KB (18238 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-bookworm` - linux; arm variant v7

```console
$ docker pull perl@sha256:6b4044d7cbbeb514381d483b32481258cc5901079a0278304fdaff1929c241f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50534012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6c46b9c6c77eba63f0cb4fc9c2b70b9a2706734817a7cb8dc603ac42f952b9a`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Wed, 22 Jul 2026 19:06:20 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 19:12:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 19:12:06 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 19:12:06 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fcdbf07d3055e317fca5f40328d7a5033fcc4d34730b44d07a276ebf7eff0e5`  
		Last Modified: Wed, 22 Jul 2026 19:12:17 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5971aae8641d65aadeea69a830ce68b8167100ed8ec0dd625eb52f1ded9e12fb`  
		Last Modified: Wed, 22 Jul 2026 19:12:18 GMT  
		Size: 26.6 MB (26593966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f7801fec977d64b331e3a0f936f5e9d85ca804c19e7f527783406cfec8b12fc`  
		Last Modified: Wed, 22 Jul 2026 19:12:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:61cfd36bcd755cdb917e001be85ed74e1ad5b39e137da62de2df2f4ffb44e014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3927798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec8c0e4cbf7048032e505e17d6451f479ab9eebeb645e9c6e8387171e7a9b7b`

```dockerfile
```

-	Layers:
	-	`sha256:1b18ef39762ff65125997d9c40447b6ab139c8c9fddc03a24985d1200da15163`  
		Last Modified: Wed, 22 Jul 2026 19:12:17 GMT  
		Size: 3.9 MB (3909488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cb6306afadb927dbaaa1330928b31299db05c04510e6d62a218c533478ba17f`  
		Last Modified: Wed, 22 Jul 2026 19:12:17 GMT  
		Size: 18.3 KB (18310 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:e09d302d92a5721534b0d7b436723ca5d61d4f36cc84acd6b9e9d45eb8aa065b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57415521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce4aa0f865a0262097598fa000285764d41284cd57254f671249c47be3208c77`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Wed, 22 Jul 2026 18:45:35 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 18:50:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 18:50:28 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 18:50:28 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa2129edc2591882248ef5ee6dbec1638c7bd1421d57ba1deb86845096060cc6`  
		Last Modified: Wed, 22 Jul 2026 18:50:39 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:157153e7b823f838053d2eeadfa66927cc7cf8e7c6cd1622147d32afbb49dcaa`  
		Last Modified: Wed, 22 Jul 2026 18:50:40 GMT  
		Size: 29.3 MB (29297997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b882449d73f9689ed7af9783f91953ab5b8a94f3c21b6a1ac4ae3c24b8844f3d`  
		Last Modified: Wed, 22 Jul 2026 18:50:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:69960c8ac41bef6e917171666d7dc8afd3d7bf64e21bc37fde477fd1fd32598a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3928978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a820e2e7ef34524f0cf2701e2bdb832ffb476a30cf75b20d7b6a8f64239df66e`

```dockerfile
```

-	Layers:
	-	`sha256:f284eda8d15277082cf5268c9df60a1ef74ef55f48d870a9272b853f9964f92d`  
		Last Modified: Wed, 22 Jul 2026 18:50:39 GMT  
		Size: 3.9 MB (3910649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e3a539d09d97e1ce5b22855dd8dbe534d2c929f072893ff3d536c0ce7cfbfed`  
		Last Modified: Wed, 22 Jul 2026 18:50:39 GMT  
		Size: 18.3 KB (18329 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-bookworm` - linux; 386

```console
$ docker pull perl@sha256:839d6aa8f299f1173ae13d5cf734a896099a6ea2c6a8e179dccffdf0a5f71ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.8 MB (58783560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd044e2d460398393c59f44dd7cd389d787d0a11915687ece3d0f179ef79af57`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Wed, 22 Jul 2026 18:34:51 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 18:40:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 18:40:14 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 18:40:14 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6ca383e00122ac5054b72fc227e7eead66428bd409f601803fb699a66e4de1`  
		Last Modified: Wed, 22 Jul 2026 18:40:24 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee1e53b388786ce0cd132b6ba13adf599c0b1c1be0ad68408a57844fe8810339`  
		Last Modified: Wed, 22 Jul 2026 18:40:25 GMT  
		Size: 29.6 MB (29562240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b938e698b850018f7e28bb55df655aecfbf771b3dbe65a6860c8c083dd1c608`  
		Last Modified: Wed, 22 Jul 2026 18:40:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:b1a04423164ac6b3ff68d9a3e8ea23aa27843bf4dccf5c644e82cb58b4b60691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3951565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64f4e8b1a81e461d44504f5fb78bcafe9c73866d910eb835392b887700b79178`

```dockerfile
```

-	Layers:
	-	`sha256:86d5f4edae471ce240e59bf03ab287783d23b1af62387512be680ec5fec731ac`  
		Last Modified: Wed, 22 Jul 2026 18:40:25 GMT  
		Size: 3.9 MB (3933354 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d25dc714cb2859b1f71a2064e985e01df0a0def512cacbef7cfdf391a3b78ad`  
		Last Modified: Wed, 22 Jul 2026 18:40:24 GMT  
		Size: 18.2 KB (18211 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-bookworm` - linux; ppc64le

```console
$ docker pull perl@sha256:610e2a33845a9b397a9f82930d68838451cd4cef218e259817f05d7a3b727e66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63316970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f94137bb14321fb005de6228ed886e46f0b28b8789caf846584ac86f84dbdaf`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 22 Jul 2026 19:09:18 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 21:06:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 21:06:13 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 21:06:13 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6bd09a8ca408172e3e9ef87f372c61cd5150dc2ddc4f6461b5d857e4a3808e`  
		Last Modified: Wed, 22 Jul 2026 19:18:17 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0bddec45131746e1e7bf1e398a64fe8fe74dd980bf750d2a907f8b9bf9d831`  
		Last Modified: Wed, 22 Jul 2026 21:06:35 GMT  
		Size: 31.2 MB (31240288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785a04047d463535d0f869724b72c5be71b03607cb351fb5dec31b1f2f90896b`  
		Last Modified: Wed, 22 Jul 2026 21:06:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:ba9a0faa073fc106ab0e3ba8420a8ff02d55d97e074dfa7d21c678a0c7a13af4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3943616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f680202d8c197274f039fcceab018936f3204ce537fe0ac61b02af48413556e`

```dockerfile
```

-	Layers:
	-	`sha256:6fec17014bb7509a9f524ac80511c9365a6122dc14d236ea4b4ec29ff06ead84`  
		Last Modified: Wed, 22 Jul 2026 21:06:34 GMT  
		Size: 3.9 MB (3925340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e11a5f48b5ae15651084be872525d8e6c697ac538a5286efef56d8ab8cf85e5`  
		Last Modified: Wed, 22 Jul 2026 21:06:34 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
