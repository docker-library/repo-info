## `perl:5-slim-bullseye`

```console
$ docker pull perl@sha256:f669a00aa576606b506e5ea66faba8136a8a02111fb71c3f5a3ca089d2e2fcd9
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

### `perl:5-slim-bullseye` - linux; amd64

```console
$ docker pull perl@sha256:509af8784797aedb0fee410faa734ebe89c72eb043ddc501aa313836799f7232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56670279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947937aaba527ffdb9f509fcb048ab88b9941c4a6f7029f83a5f8e99acef2000`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:56:23 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 01:00:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 01:00:50 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 01:00:50 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89b6652c1dabea0191c4b8f357553c6052d1bf9d43d311e9e11c9d401112500d`  
		Last Modified: Tue, 25 Aug 2026 01:01:00 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad731f580ed99696bc039638d98e58bad84308f01f0a9835e94c287b3b81dca`  
		Last Modified: Tue, 25 Aug 2026 01:01:01 GMT  
		Size: 26.4 MB (26410284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40974db7229184955053a482dc17e5a758a0817ad930ae04af59d1b7d0136826`  
		Last Modified: Tue, 25 Aug 2026 01:01:00 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:f1938fa896e3c143aba61e2f7c04e542442d4129dda83414a5cc0c925700904b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4153681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe395cdaf5818b2a5bd34a58d3990d5522f3aae5b1c8c686b564ce7567c6d095`

```dockerfile
```

-	Layers:
	-	`sha256:b174250016ee76ee1f4b65a8435224be1d6a6ea398c4b0a03d26b91cecb34155`  
		Last Modified: Tue, 25 Aug 2026 01:01:10 GMT  
		Size: 4.1 MB (4134892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef222b098c8bf4e3ced7c9ba2b87dd5683112b78c347e7caf20c2aea4f9c9afe`  
		Last Modified: Tue, 25 Aug 2026 01:01:01 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-slim-bullseye` - linux; arm variant v7

```console
$ docker pull perl@sha256:36f5648570b8fe5091eabe2050180cf1afd9796eb7076195e02902c0ab048516
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49216413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4beb80db4c044dc78a91a39c221aaa0994d31bdc1520e5bf9d25f39ec482a49`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:35:47 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 01:41:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 01:41:19 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 01:41:19 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:5ea592ba871a5245db3c645624a50a3dbc8e59a8ce6f42c9c0425e533dbfdf8f`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 25.6 MB (25552939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7b7923f72a3918e25353f5dc15af2374dd4d2f95b84d21d0dc2430becf0cbae`  
		Last Modified: Tue, 25 Aug 2026 01:41:29 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030d85157b2bcf284636c8f455cbe80a8234ca2596bb6f71e24a067a5de360f0`  
		Last Modified: Tue, 25 Aug 2026 01:41:30 GMT  
		Size: 23.7 MB (23663206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc47346f7fe277aceb32234f7b3974709770698dbce1b3e2acd478e3384b1b2`  
		Last Modified: Tue, 25 Aug 2026 01:41:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:ea8a9ecf82793dbab042b3b31102518b2d2eb8788f30e7acefe55f40657cd732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4127774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e0c7b41d1edfe5cbe31faab419ff45169b1026b9cab861e4d1fead6980fe69`

```dockerfile
```

-	Layers:
	-	`sha256:65da5c433e3fcb8681f27b820de8c5a18249b6d5c1f4c11adc6c8b5f5cae3426`  
		Last Modified: Tue, 25 Aug 2026 01:41:30 GMT  
		Size: 4.1 MB (4108897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4c8520b643593363a6819d2559ce4e7eed6a5d7672f15aaad3ccf28b3cbbad1`  
		Last Modified: Tue, 25 Aug 2026 01:41:30 GMT  
		Size: 18.9 KB (18877 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-slim-bullseye` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:6488110798e350c2e36b4292c124a1e46de6bb3f0c249197b5225256ed92bcec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54287927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff8467606621b02c98f684aed2e51affcc805e0d45d645a3db34d5f322e690a6`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:58:18 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 01:02:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 01:02:58 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 01:02:58 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1669c7b6abe388f41aee3259f33736fce766f3479bb53a926c5a05c1c56c3e0`  
		Last Modified: Tue, 25 Aug 2026 01:03:09 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb65d46bb1059e14509606ccfecda605b785e7253fc572b1b79ac0b05d47427`  
		Last Modified: Tue, 25 Aug 2026 01:03:10 GMT  
		Size: 25.5 MB (25538629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd8747a75036c42bd551d4ae1182fef84222d5747575b765dc4957d05c719f7`  
		Last Modified: Tue, 25 Aug 2026 01:03:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:0e1fef399a1df5c58afd923dc895f7f91db79749cf0d36035f474bc4cad7a9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4128215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c958a2d2e929a9554b8292a8efa6611e6c57bdf37dc2e9a5793fda7616a584`

```dockerfile
```

-	Layers:
	-	`sha256:d35b591712cdab9265996870f5cadc06da9485b365b9b3ec211437c83708771f`  
		Last Modified: Tue, 25 Aug 2026 01:03:10 GMT  
		Size: 4.1 MB (4109311 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4af595f0b2d8063c67386f980ca4389c8df98bc5b692b3e4803a7d544df02c3`  
		Last Modified: Tue, 25 Aug 2026 01:03:09 GMT  
		Size: 18.9 KB (18904 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-slim-bullseye` - linux; 386

```console
$ docker pull perl@sha256:eebc0fdb6424590bcc4677a2e30cba2c601d857734591751c4e6976ca1e1d101
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59118198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e6b3a58c8c6c8e70be10281f58ce4485c66ddec362133ec3f10731568701d45`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:53:29 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 00:58:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 00:58:19 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:58:19 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:dce0e3a501a3f40f1cdb36f6731465f11821e4cfc4c91cc182aa08ed91493cc2`  
		Last Modified: Mon, 24 Aug 2026 23:20:45 GMT  
		Size: 31.2 MB (31196383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d9b1cfb3bff75e1bef018cfb8ec5e5b3eed5c0cfbf13c5fe5f7526ffcbd1517`  
		Last Modified: Tue, 25 Aug 2026 00:58:29 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3229d22cd9f6b5719d6633a846b2b1f3fb67ae00cedf4b34d1540eaa4d1f895c`  
		Last Modified: Tue, 25 Aug 2026 00:58:30 GMT  
		Size: 27.9 MB (27921547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54df6fdcc9ff26856e4f2951d01d0bee8ac3e9a4cde268d2a8116a828d0bac2`  
		Last Modified: Tue, 25 Aug 2026 00:58:29 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:b3c229412e947602fa770bf0cb51c1078ace18caa7ce74eaded926e851fc4548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4157916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2780b20e94ed1a89d7f7052d26ff22c46f042c87c2473d6ef8f8097420a9226d`

```dockerfile
```

-	Layers:
	-	`sha256:217b9d69f6824c71beea57b07b63a63184afe72118de35a161e6ee199315d673`  
		Last Modified: Tue, 25 Aug 2026 00:58:29 GMT  
		Size: 4.1 MB (4139164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78f699d0267dbced8ca4b76a4c1357af823271d91b9024135c82fc2705d50fe6`  
		Last Modified: Tue, 25 Aug 2026 00:58:29 GMT  
		Size: 18.8 KB (18752 bytes)  
		MIME: application/vnd.in-toto+json
