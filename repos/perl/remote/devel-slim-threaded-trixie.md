## `perl:devel-slim-threaded-trixie`

```console
$ docker pull perl@sha256:0e151e4eaa9e7254bed89a45e8a2b88caa0e849c8ac4ccbdbedeed7698b5c2c5
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

### `perl:devel-slim-threaded-trixie` - linux; amd64

```console
$ docker pull perl@sha256:5bb960142ef65bc05c6e45dd4f874a6f50631b0d522be7b9eb77eaa1a65f3c97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62636164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca15148dac23338812fe931fbf2eb58247a40e54edcc47ea3d5f07634670d22f`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:17 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 04:53:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 04:53:22 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:53:22 GMT
CMD ["perl5.45.5" "-de0"]
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
	-	`sha256:9377c005ecfda9cc5136ec6d62f867e44e7ed9e74bfb770729e76fc20177fb52`  
		Last Modified: Tue, 24 Nov 2026 04:53:33 GMT  
		Size: 32.8 MB (32793716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:919cbd88f1215d68f25099e440e871cf16130c08b991969f1c3adbb51b825251`  
		Last Modified: Tue, 24 Nov 2026 04:53:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:2961a672a51d8491f3be83b8cb1cafcb6dbbc20033dfa515eb97a828b184e877
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4034596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39696900dd2710fc2b60a7b6d1f6a45dcac79180b69141ca52b51f1e6dfdd30b`

```dockerfile
```

-	Layers:
	-	`sha256:0d102243e680539be6e9c83e9cba71aedb9bae09c8fa00475eab7603bba5c83a`  
		Last Modified: Tue, 24 Nov 2026 04:53:33 GMT  
		Size: 4.0 MB (4015314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eee3db0d34f07c2f13ef3eb6a681c6c5c459777a215b851eea6159907f570e9c`  
		Last Modified: Tue, 24 Nov 2026 04:53:33 GMT  
		Size: 19.3 KB (19282 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-trixie` - linux; arm variant v5

```console
$ docker pull perl@sha256:33d11f4f94207d0ee0b90b54ebdf5748e621321a82d82c18e36bb1e0fffb4465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.0 MB (58019272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b8be9edca1d2faef74cca276f45d324df8c665ac6f9e7245f502270af65c03`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:05 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 04:56:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 04:56:01 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:56:01 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d578083c761f98aeb8fb5cdcb646fab482b35cd7cc94cc921fabe10f378dd1c`  
		Last Modified: Tue, 24 Nov 2026 04:47:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1623e28d02858413a7bfed606cfc37f1cdd27dceb58a3f852d23fa0476e753c9`  
		Last Modified: Tue, 24 Nov 2026 04:56:12 GMT  
		Size: 30.0 MB (30010222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c855f0d155d9e2835a8965b3225caab6b2875a59e40d10a3e2fe02a88af123f3`  
		Last Modified: Tue, 24 Nov 2026 04:56:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:156767b777c737d324d315de3c122d02f70b0920b02db17fb36f86ca26093927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4027737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e11b3f16e603e8361bdcbe4159eaf56b87eeb9a2161eb12838da206870ed41fe`

```dockerfile
```

-	Layers:
	-	`sha256:00af8afd9c8789819886e4457ed49027b4a502b726588a8aa8b2f03137fc54b2`  
		Last Modified: Tue, 24 Nov 2026 04:56:11 GMT  
		Size: 4.0 MB (4008360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bc79016f2d73290431e93a0e1a200e3580b386b8aae126915d555daba73dcfc`  
		Last Modified: Tue, 24 Nov 2026 04:56:11 GMT  
		Size: 19.4 KB (19377 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-trixie` - linux; arm variant v7

```console
$ docker pull perl@sha256:63432f0bad8f6d80127175ed9f4ac572f2a70376c308ed4c9b4a391cd8dbf5e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55341645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b99532380646c1183b4f7be4992a2c38344ab842ab987b10539fab42bc5486`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:27:23 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 05:33:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 05:33:40 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 05:33:40 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940513122694ca5951e9e6cb47e50b742dcd07535b47a8a075a163d71a9d6215`  
		Last Modified: Tue, 24 Nov 2026 05:33:50 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b656f4fdd796300f1e5d0934118d964c1d1b0529e9ffe52913499c578ad980f`  
		Last Modified: Tue, 24 Nov 2026 05:33:51 GMT  
		Size: 29.1 MB (29078920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfa4b2708c750efa6d81174a37d93842f5e604fa1670fd67b6a75ef0ca6497bd`  
		Last Modified: Tue, 24 Nov 2026 05:33:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:b9fcb1fef22b70c398efbc01436218203f643ef0df35c653bf7f3fa09b2a190b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4026931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef9489bc0c803c4e2d59f147a90141dd7f10638997898e5041327ec82788c96d`

```dockerfile
```

-	Layers:
	-	`sha256:d216c8ac465b2d2b415d0a2610a17d7810bdcf6dcec7090fecf67d780a24a5dd`  
		Last Modified: Tue, 24 Nov 2026 05:33:50 GMT  
		Size: 4.0 MB (4007553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1eda4821da43b85d9e40418a2a60b2f756fa4c6e3c2272e90653a8324fe5f462`  
		Last Modified: Tue, 24 Nov 2026 05:33:50 GMT  
		Size: 19.4 KB (19378 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-trixie` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:996521a6f322c17235d64695e4ba9a025638fcfac4d6afab4408eabe02beb363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62640803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24dd2c15f242ccc9da19561061bc6a30cca85563a306864075af4c5976af2370`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:47:34 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 04:58:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 04:58:33 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:58:33 GMT
CMD ["perl5.45.5" "-de0"]
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
	-	`sha256:e2f1429eae0427c6678709bdde294d7bffcc449e327b0e244d95d3e57fff454a`  
		Last Modified: Tue, 24 Nov 2026 04:58:44 GMT  
		Size: 32.4 MB (32442504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45f5a2728cb6d211b9092e0a00711291a107b3f34b8ea2181b44bac032879806`  
		Last Modified: Tue, 24 Nov 2026 04:58:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:f8d6cae4d707622b5b888d5437e013302aa180991747fe1146a4c99be07662b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4029812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0382bb8135f6dac6ab279b79116acc494d94cbb2a9cc015d4e96d976a92c009c`

```dockerfile
```

-	Layers:
	-	`sha256:aa43b914fc86919371f39c6829537611706be81af467d049ac9be0fc940f22b0`  
		Last Modified: Tue, 24 Nov 2026 04:58:44 GMT  
		Size: 4.0 MB (4010402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44f023c332589663ab2512453fa44e56739248f2b9881f163bf7a5239bf9f9f7`  
		Last Modified: Tue, 24 Nov 2026 04:58:43 GMT  
		Size: 19.4 KB (19410 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-trixie` - linux; ppc64le

```console
$ docker pull perl@sha256:a0162120066c11182df95c2cd70f9a7820e56348915d3b6b371387275eff275e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67207089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec02163a711bb0a55561b20cde27c42988bca967d3c4537faac8d08718b682fd`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 07:04:00 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 08:29:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 08:29:27 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 08:29:27 GMT
CMD ["perl5.45.5" "-de0"]
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
	-	`sha256:bb08a846c095caf3af2ea07f1e0e921bdb1db118aa10a97d007ed92afdf7b3f9`  
		Last Modified: Tue, 24 Nov 2026 08:29:53 GMT  
		Size: 33.6 MB (33554186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb38489a2284b2fdcb9548cd2a426dbf6174ef8a269057a7765776dda26e9951`  
		Last Modified: Tue, 24 Nov 2026 08:29:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:f142b0f28b5542bf6e35bb1638da0ffb6b18adbd478ed2c4f304a8f7e6dd8c69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4030669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956fa32626b63e2b136c7c7272f6b459557e86aa3a5955e7578ac4dc9d06934b`

```dockerfile
```

-	Layers:
	-	`sha256:5d1fc84de4264fa88b5b71c250e6664593d1b41736cf313098bd1c65dcddbee7`  
		Last Modified: Tue, 24 Nov 2026 08:29:52 GMT  
		Size: 4.0 MB (4011331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebb597018fd9c1b25f584b44482bc8e2d572d1528157d5daf4deca5849a40fe5`  
		Last Modified: Tue, 24 Nov 2026 08:29:52 GMT  
		Size: 19.3 KB (19338 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-trixie` - linux; riscv64

```console
$ docker pull perl@sha256:be75519c8995d4c88d6248040341505477152fcabfc4c65b57cfb882b583d449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68963015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75bb10315b37c096b86345d01a2705d3f4496a3f5b1b143a4c1b2101bb99ed7`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:35:12 GMT
WORKDIR /usr/src/perl
# Sat, 07 Nov 2026 16:25:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Sat, 07 Nov 2026 16:25:48 GMT
WORKDIR /usr/src/app
# Sat, 07 Nov 2026 16:25:48 GMT
CMD ["perl5.45.4" "-de0"]
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
	-	`sha256:83e9a0956c29ac4bfa640f1358674e38ad03751cca899c48f644e63392c1a113`  
		Last Modified: Sat, 07 Nov 2026 16:28:32 GMT  
		Size: 40.6 MB (40616563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40780963ddbd0a2f3c7f5ddd934b8ede02b447171fc4bcfd27622391ba8e57ec`  
		Last Modified: Sat, 07 Nov 2026 16:28:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:d546ce1fd703d516b972a58f301db8653b557ba45ec04dae7a11c59f260777cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4021931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e47fc1b126ac749a312ab0ec9744370a3cf673fe9a8238b3b0a6363b0a316fbc`

```dockerfile
```

-	Layers:
	-	`sha256:232516e88b06b68d537271004f6d6c14df64fb2975effbb5d172d9cc12265f98`  
		Last Modified: Sat, 07 Nov 2026 16:28:26 GMT  
		Size: 4.0 MB (4002593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:884414139599802b5aefd6e6b2214d33fad040c9ff885b09557e06b3ed884fd6`  
		Last Modified: Sat, 07 Nov 2026 16:28:26 GMT  
		Size: 19.3 KB (19338 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-trixie` - linux; s390x

```console
$ docker pull perl@sha256:d47b0cdcbbeb1374f2e5f21a80b365e46bb5ca8b271b476be4e86f5be7f9953f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62060537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:227138e614b04711c79602bd3febacfcd0a5d0ff650098106289a3b28f8d8cb1`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:56:20 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 05:13:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 05:13:47 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 05:13:47 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b1238a3f01f5b78f171c1fdf51027877cdc3bcf340524ba9fa1c4f8f1be4125`  
		Last Modified: Tue, 24 Nov 2026 05:01:40 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce312ba294810490dadb128b7a0ce7c298cdf75ea8793b50a09357f2e412bb8d`  
		Last Modified: Tue, 24 Nov 2026 05:14:02 GMT  
		Size: 32.2 MB (32150246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f77379df7914b8a557935cbb851c2a0bc540c0ed2b0904e25a52d95f28ed7b7`  
		Last Modified: Tue, 24 Nov 2026 05:14:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:f1b1c040814af9316fa177cd13cc912c70d4a77e2828ee2530f919cbd9bfd862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4026923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfcfaff6b99972cd120bccc496fc2c52303aa013adcdee9a3bfeb25b31490a18`

```dockerfile
```

-	Layers:
	-	`sha256:09d84ec58bcb0f69932d09e928263e82c49b341328563ad19b813ef87033a35a`  
		Last Modified: Tue, 24 Nov 2026 05:14:01 GMT  
		Size: 4.0 MB (4007641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:122b1cb6bdb46e0c5a9df215382721f6f2da05cbb2b8ed3d27eabcb7b3916fcf`  
		Last Modified: Tue, 24 Nov 2026 05:14:01 GMT  
		Size: 19.3 KB (19282 bytes)  
		MIME: application/vnd.in-toto+json
