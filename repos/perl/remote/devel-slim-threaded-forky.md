## `perl:devel-slim-threaded-forky`

```console
$ docker pull perl@sha256:23bd578ccb83de465a936910fa178cc545b5bac21f2777af3d0560f8ead84998
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
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

### `perl:devel-slim-threaded-forky` - linux; amd64

```console
$ docker pull perl@sha256:3636a5762861975daebd7542fd7ecb385368ab56c35ac26168b932a43bce79f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62747324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac0847530019ba6bec00bb15535aebf1eec4fd86f6ba348d3edfc0c468b5d0c`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:47:30 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 07:52:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 07:52:13 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 07:52:13 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:11077c1fccb63fa5dfb8a9b32cff13f9da256c63c1659634c3b47cbf981edd4d`  
		Last Modified: Thu, 05 Nov 2026 06:15:59 GMT  
		Size: 30.9 MB (30873922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f1f7ad85f54f34f8941f1b72d87489379e169a57025ca7d086563806f02439b`  
		Last Modified: Thu, 05 Nov 2026 07:52:23 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd6e6825f62dc43a813e2eb032ead52a7f5dfcdca8f237817ea52d6da7d724ee`  
		Last Modified: Thu, 05 Nov 2026 07:52:24 GMT  
		Size: 31.9 MB (31873134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b95f6dfb487ccad6ba6582507c660df3eb130bce0726b7e79cafd807912bdf7`  
		Last Modified: Thu, 05 Nov 2026 07:52:23 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:901eab3ea4b4b984fb78ef0ccf456e9d72afb6443f52191ca37e2e9edcf2660a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4053837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1208355ee40b324b560f712682e6f49cd08d9060bd5d515d381420b67639a2f1`

```dockerfile
```

-	Layers:
	-	`sha256:ebe110350cbbe9e96abb4142a39ef6a9122e8b52a6c603cb17981337c28536b7`  
		Last Modified: Thu, 05 Nov 2026 07:52:23 GMT  
		Size: 4.0 MB (4035524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08dcf0baaf443458abeb3ffe7a6d4e4bb9dcf07021c3f2dcb3b1f9e9c0514694`  
		Last Modified: Thu, 05 Nov 2026 07:52:23 GMT  
		Size: 18.3 KB (18313 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-forky` - linux; arm variant v7

```console
$ docker pull perl@sha256:bb1db46e649be89a3a0eff5b04f008e665e04ccd6a096974d31ba03bce5be35f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55058331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9f3f94037459bfa47f5ae1ca81b607114108733271b65359e381db48c7eb568`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 08:30:36 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 08:36:53 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 08:36:53 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 08:36:53 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:0c73633eec97d86ba9174b30c3ed0803fe94aeda4f1131796cad83187fc50020`  
		Last Modified: Thu, 05 Nov 2026 06:16:01 GMT  
		Size: 27.1 MB (27057239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a24864476c47c10893b24289e27da1013be7c8b3bf2b8d02f3f3a9892a98e020`  
		Last Modified: Thu, 05 Nov 2026 08:37:04 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b7d1adeb508d2279325c5ae4f14556819f38948200fdd2a67a8f76d44a6532`  
		Last Modified: Thu, 05 Nov 2026 08:37:05 GMT  
		Size: 28.0 MB (28000825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49f8f90c44c3ab41cb6bcd7321833949154dabd940175cac9785a87e3c88b8f`  
		Last Modified: Thu, 05 Nov 2026 08:37:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:4fa69fade0a514953e2f101f727310748f45035acac329f3215f338990f3bb28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4046280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:002da26926483179a4c77e3a19ae1cac530f7c0415c4fe4db59ee9d8dda4fbba`

```dockerfile
```

-	Layers:
	-	`sha256:c2158f166460d49f7eae17eb92e127e86adaadcec4f55e509bf0b36b3547256c`  
		Last Modified: Thu, 05 Nov 2026 08:37:04 GMT  
		Size: 4.0 MB (4027895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3f3e2c95555e5ebbc4a7c09460ce1bc7fe3a30f928a8a8661b9286c5adb0769`  
		Last Modified: Thu, 05 Nov 2026 08:37:04 GMT  
		Size: 18.4 KB (18385 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-forky` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:fc2201eeeb2994185408e82fe8e8658da06e94f85eccff7bccb677ea598d129c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61408513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa3018926683f63ad2582872dc37e21ce2209a4f1ece7368d1da3f35b3a7e69b`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:52:01 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 07:57:09 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 07:57:09 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 07:57:09 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:6488ff28c400f26dda1139fa258bba39b5762ee29b0f3c51f4116ae3b02aa157`  
		Last Modified: Thu, 05 Nov 2026 06:15:41 GMT  
		Size: 30.2 MB (30211062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a0ba2ea6e920ef766867a8226339586734393ebc588e1d128b0ef56e1ec7f1`  
		Last Modified: Thu, 05 Nov 2026 07:57:20 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bacb7d50d65644721b166a12538e1700b2d4724c6352aa2c3ac221aba5d78265`  
		Last Modified: Thu, 05 Nov 2026 07:57:21 GMT  
		Size: 31.2 MB (31197183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f897eec91059a56115962d6eff44f4823493f41db5358ec61ca3b9b8b689ec75`  
		Last Modified: Thu, 05 Nov 2026 07:57:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:9021d1f0f0ec49d84f8ba763cae05f6fc06ba432b0a3be96897fb768782c4a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4049065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7ee2b6ce53a3ab86d7b34de6682de370dfeb8f55bf7775c63f2582a40d24fb`

```dockerfile
```

-	Layers:
	-	`sha256:d552fa25adb389dd5d39ca586c47c84570b8331a996461b5afc99fca61b49e55`  
		Last Modified: Thu, 05 Nov 2026 07:57:20 GMT  
		Size: 4.0 MB (4030660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51687d652f98626a82eb8bca4b044b5172244af7de2dea298a8eeb61b7b74b08`  
		Last Modified: Thu, 05 Nov 2026 07:57:20 GMT  
		Size: 18.4 KB (18405 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-forky` - linux; ppc64le

```console
$ docker pull perl@sha256:c8cefa55cb9eab079aa4bf2254f59f143d531f21367bfdf6fef72771d86330a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.0 MB (68024447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d3539e9967be7888cd660856782705945f95f22cf7bb5e710c041cd76a4bc7`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 11:37:34 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 12:00:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 12:00:29 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 12:00:29 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:655f291cc6dd098122c2d5f3c20fd9877fd2763f0d0ae588b1a9ff2bf41afc8a`  
		Last Modified: Thu, 05 Nov 2026 06:15:09 GMT  
		Size: 35.6 MB (35550468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750a96b00bb4159498e0f2c6fd051d3fe499a163b91ab358cf4af411f29223a5`  
		Last Modified: Thu, 05 Nov 2026 11:47:12 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d738d21e3f9b5dee72df5a880d70151152a07c5650998fb62b01891f7e6a997`  
		Last Modified: Thu, 05 Nov 2026 12:01:01 GMT  
		Size: 32.5 MB (32473714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f90d443200477d6430ba2b3dd23e946b7a6275248ef71f723d1c212a6c9c6c`  
		Last Modified: Thu, 05 Nov 2026 12:00:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:8f8fd64ff6404637d17b0d598a4dcfa96f49dfd74c26b38bac348342460d8ad2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4050110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc63acaca2fe3a5046304a0b6638df4e8310a993b641d3044288cfa41e551f21`

```dockerfile
```

-	Layers:
	-	`sha256:e2bf440945393c51a630c6f47c49cdc9b8b2272a607ebe769d15d19039dcbecd`  
		Last Modified: Thu, 05 Nov 2026 12:01:02 GMT  
		Size: 4.0 MB (4031759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:165472c2fd5f331099de12f3d5dff8704f28206b7f87a9adcc4fb3936cbe1972`  
		Last Modified: Thu, 05 Nov 2026 12:01:01 GMT  
		Size: 18.4 KB (18351 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-forky` - linux; riscv64

```console
$ docker pull perl@sha256:ad8458b832239facd0bef7b37bc450236a52eaf813eda087c44b447d1adcae6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.8 MB (72783575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f90d6e8be08a00ca038364228f22acb19daa4ab24cc5bc86ab8207e0b119de0`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1793827419'
# Sat, 07 Nov 2026 13:44:46 GMT
WORKDIR /usr/src/perl
# Sat, 07 Nov 2026 17:52:17 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Sat, 07 Nov 2026 17:52:18 GMT
WORKDIR /usr/src/app
# Sat, 07 Nov 2026 17:52:18 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:d0fe891bb8d85aa1a435221de3cef0f512c622850175d501061ab7ee018110b7`  
		Last Modified: Thu, 05 Nov 2026 07:22:34 GMT  
		Size: 28.3 MB (28307048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9253ffaad4845364248a004d1f516aa4f59dc8d0b1c50788710626ce230a5f`  
		Last Modified: Sat, 07 Nov 2026 15:03:38 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6cbc055dcf1b9b03cc33bc6001729754a848cf2e428d5d255dde2daaecb5db`  
		Last Modified: Sat, 07 Nov 2026 17:55:10 GMT  
		Size: 44.5 MB (44476262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:730f983b4c9851bba14ae9c4752aa239a5f1c7f4fc5cdd1857203c407ad0bbf0`  
		Last Modified: Sat, 07 Nov 2026 17:55:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:d4bfd40e6dc2fa0d28685d8ed2411497d5d2f1df4c268c338be12cf3ed037209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4041137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f9a08d0fbcf67a284a6c022eca5b90eb3f42ad91139776797b6d2abf1a2587`

```dockerfile
```

-	Layers:
	-	`sha256:9fc0f1d3cfafca03f28f7b254e2e89ef0536808443858dc554ff896914af3f04`  
		Last Modified: Sat, 07 Nov 2026 17:55:03 GMT  
		Size: 4.0 MB (4022787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:795ecb29032b617d22854aed007ebe80589dbc26f92e9aef9778f8a8540d0daf`  
		Last Modified: Sat, 07 Nov 2026 17:55:02 GMT  
		Size: 18.4 KB (18350 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-forky` - linux; s390x

```console
$ docker pull perl@sha256:29a264d4ae914cbd78e03715381849d96b0ed28bc3acc32a27968f2b164531fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60809617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c3456404358cad60ae4967162319c18ecedd6f526791aedbfbe830f1d8a60c`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 08:10:23 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 08:23:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 08:23:13 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 08:23:13 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:6491c093bdb8110f8fd4f7e4f1b3b801e74f36e4f9a8e89d5d67ad177b6d256b`  
		Last Modified: Thu, 05 Nov 2026 06:15:01 GMT  
		Size: 30.0 MB (29968350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1092e5bd82f29afb4f0d9b25d5813012f132737030bfb9d83dc7efc04dd45f82`  
		Last Modified: Thu, 05 Nov 2026 08:16:30 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c14e0c951356922f094b70f18bc7859f9db9dfcc35a043963ef771a31bb251`  
		Last Modified: Thu, 05 Nov 2026 08:23:40 GMT  
		Size: 30.8 MB (30841002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdd32b35419fdd2fced58c7872e0b8db2a079da8f943b335fd56a6b1378226e`  
		Last Modified: Thu, 05 Nov 2026 08:23:40 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:4c3a1255f3b0d7cc50a0e2fe644f93e71a54d8d0c4a4ab09e480e016958b0275
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4046112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6d5f8876cc8190cb7fd3fba2846ea7cbfce6fdd3e8f119dca5da84c9255d1ad`

```dockerfile
```

-	Layers:
	-	`sha256:ed68a450f1c2c6ededcb8cfbf5635ec2ed5e0624c5fc6a0fb7d58579864fa7c8`  
		Last Modified: Thu, 05 Nov 2026 08:23:40 GMT  
		Size: 4.0 MB (4027799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6d4ad69d94411fef150b4b86666286656b3c1b083f5715c500745434c6db359`  
		Last Modified: Thu, 05 Nov 2026 08:23:40 GMT  
		Size: 18.3 KB (18313 bytes)  
		MIME: application/vnd.in-toto+json
