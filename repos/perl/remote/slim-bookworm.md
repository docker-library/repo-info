## `perl:slim-bookworm`

```console
$ docker pull perl@sha256:fe50143fa3168f694cc53abd78233db18f683ad800ba69f95e2af4277d667bc7
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

### `perl:slim-bookworm` - linux; amd64

```console
$ docker pull perl@sha256:9102af0f9caa71dfcc039c8ae698535e2d965dc37879b16aaa1ae26560bfe54b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58486549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:babc7ad045252bb42f01b350a329b2cf94e8287143122616750e65ece4485b8f`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:42:10 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 07:46:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 07:46:26 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 07:46:26 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9af7270f77dfa556e8b6d3e7e6a5e1d9df79cf2da61fcf6b95197f88377b353e`  
		Last Modified: Thu, 05 Nov 2026 07:46:36 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef97eac21a1f6f8546de464e40dabe8e96714e651e8e3d0e0624d8c24201512f`  
		Last Modified: Thu, 05 Nov 2026 07:46:37 GMT  
		Size: 30.2 MB (30238301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff6c696a788b0518cb9ccbbaf2d69f4bf00284615694fd981031395ddb03e68`  
		Last Modified: Thu, 05 Nov 2026 07:46:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:c1240a8aaec7238bc1329fe58a146501648984ac21d1c79afdc06cbe60b48341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3962876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15e520a1d802a5f05bbbec04a5654eb05e222e3c9de756d1b93531e37dd6836d`

```dockerfile
```

-	Layers:
	-	`sha256:bf5cd603ebbfbed49315181da8f18d7509c48907230a6ad68b62892b2382abba`  
		Last Modified: Thu, 05 Nov 2026 07:46:36 GMT  
		Size: 3.9 MB (3944088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efd85412399af9fd174ec2f2cd3ba637a269123ab4b51c66e401d72a0ede1dea`  
		Last Modified: Thu, 05 Nov 2026 07:46:36 GMT  
		Size: 18.8 KB (18788 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-bookworm` - linux; arm variant v7

```console
$ docker pull perl@sha256:77d8cd552b24695d4e9340e53dc12a8d59f61ba5e764f458e682b896ed8dc389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50358941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e621f7a568274b7ead63164d33ba256a7d473b963dcc00bc9f6c76c2bda1e3c9`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:22:08 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 08:27:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 08:27:46 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 08:27:46 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31ccae1042245ef20c8855707bd13c8fbe3b598025fbbed5a455d3f737f8ade`  
		Last Modified: Thu, 05 Nov 2026 08:27:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06f9489a6414d5542de3c90f35ba94b45f5f43fda3926419190b9484b44e099f`  
		Last Modified: Thu, 05 Nov 2026 08:27:57 GMT  
		Size: 26.4 MB (26397320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fe2e010353fc47b6f2b63f4533a3a8328f5be93b0058d17533390f4d0b9c509`  
		Last Modified: Thu, 05 Nov 2026 08:27:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:08263ae555f92f2cd81ac28c31998436a22ce7b231d310e4fcd98a96002b9fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3933057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66593729049fe03489bfe1f563011ba26d070efdf23bdd121265db0fbcfd9d5d`

```dockerfile
```

-	Layers:
	-	`sha256:5b722e69a4af356b95d6dbbb9b0abf5b95b333fa03d14b305ea758329e3dae1a`  
		Last Modified: Thu, 05 Nov 2026 08:27:56 GMT  
		Size: 3.9 MB (3914180 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f8b3d2af24327f750927b163b210841000f9e0b9e17e62d530471be42e6a82a`  
		Last Modified: Thu, 05 Nov 2026 08:27:56 GMT  
		Size: 18.9 KB (18877 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:687879707c49136fa9d5c6d9ee8311474dd75fc1ac9e18de8bf5a023eb70fbaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.2 MB (57233645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f34ffa1c4a85c08de9362985b34e6a3e90df7e8f3228ebe23879e6ba318bae9`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:46:09 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 07:51:12 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 07:51:12 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 07:51:12 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43bdf91184bd2c9eb8eb95fb09fad9cf2a0d5812d5be04bdf51ede008c22d49`  
		Last Modified: Thu, 05 Nov 2026 07:51:15 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e6b0bfd6b7dfda1c3fbb2c3d9f058db42269c75de11705a564e30edc9e4b5c`  
		Last Modified: Thu, 05 Nov 2026 07:51:23 GMT  
		Size: 29.1 MB (29089020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a421c671506e8a25fb660a6fd5e313965897a1eded095150fa8664e592d1fe`  
		Last Modified: Thu, 05 Nov 2026 07:51:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:a2ac7522af40a95f0110bd675261a46a05048ac69e22b03c00b1a0adb24515b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3934254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6be53e948f4ecdae93f7407403807e4b5f382174f459657e8a35f86e355f991`

```dockerfile
```

-	Layers:
	-	`sha256:2cba7dad63b48a38420f41c5df031d9a06f8c60b786ff5988df0979778e28e82`  
		Last Modified: Thu, 05 Nov 2026 07:51:22 GMT  
		Size: 3.9 MB (3915349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e034fdb041a5ad9324be69e1113fbfe4933f7bfcda750b908e08cfef738c0d76`  
		Last Modified: Thu, 05 Nov 2026 07:51:22 GMT  
		Size: 18.9 KB (18905 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-bookworm` - linux; 386

```console
$ docker pull perl@sha256:43d0b074c4e78567f7dfab9ed4d6110ed818c4dd410e67b0603eb45331949869
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.6 MB (58606613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ef4c4913be1d98faca99ca4d8bc717a2e7c0a4bb64599840636695357c7562`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:43:16 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 07:48:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 07:48:05 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 07:48:05 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:effdb0fc18495a3e482cab18b8e155fbba377611f52bea598c293081ae8aa423`  
		Last Modified: Thu, 05 Nov 2026 07:48:14 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c92807b26ea058f8478f0e9751c501e998f598412acc4cb2408c2f410dea4b4b`  
		Last Modified: Thu, 05 Nov 2026 07:48:15 GMT  
		Size: 29.4 MB (29367133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17a594c05464ae26db760c8db133975754f9ad10b93bead4fa06d08d41babf1`  
		Last Modified: Thu, 05 Nov 2026 07:48:14 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:6b6e2374340f3fecf68586fe1ce4608aa975e420142eeefb6e384618f6d5fe17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3956772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48736edee389c0fe552b25ae143ac3ad474581355ccd2d1df5318789e46c0554`

```dockerfile
```

-	Layers:
	-	`sha256:f82016b958dfbbb32b5dff4f5f6b3f4750e92be327a3df7181946a295f2b45e8`  
		Last Modified: Thu, 05 Nov 2026 07:48:15 GMT  
		Size: 3.9 MB (3938020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a958dba23c4947269e530f03486f570939b897baabfc9c5e317927d0bea0f3d`  
		Last Modified: Thu, 05 Nov 2026 07:48:14 GMT  
		Size: 18.8 KB (18752 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-bookworm` - linux; ppc64le

```console
$ docker pull perl@sha256:84bf2e6657e9996c3adb4b6f28682a03cbc0241f84188eeb5714df32d22c46a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63130303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59383db05afb730b371541c14170860e76a01b3e62aadb70a7447c8cd9e6374f`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 04:32:21 GMT
WORKDIR /usr/src/perl
# Wed, 28 Oct 2026 04:42:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 28 Oct 2026 04:42:31 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 04:42:31 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff32e80e9b3d90f5b38c3a458541c89506a6b7d837f12f02e2336068d3c0078`  
		Last Modified: Wed, 28 Oct 2026 04:42:56 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4c1057d21988c17c249ce0d7d4c93c0880610eec9824356a1758b61594a1109`  
		Last Modified: Wed, 28 Oct 2026 04:42:57 GMT  
		Size: 31.0 MB (31037195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf343ff5bd1e5febdde452e5a1c71049c80da5978e7777f72a9cf8185601b997`  
		Last Modified: Wed, 28 Oct 2026 04:42:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:aaaa57e9a71e7ed1657357d174749280dfceef4568e606b7c8d9a907f20c93cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3948812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6132be484060cbe75d2ace0f3178bd9516480b61309d7369fcb93ac73061b9b6`

```dockerfile
```

-	Layers:
	-	`sha256:353736f23dcee12d30957d07666bbd05ee101e712630febc7dc2c0c39b120ab9`  
		Last Modified: Wed, 28 Oct 2026 04:42:56 GMT  
		Size: 3.9 MB (3929974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a21e9aba6808387f64a159a385bf09fb3086812533eb39c70ceaf5afcdd84134`  
		Last Modified: Wed, 28 Oct 2026 04:42:56 GMT  
		Size: 18.8 KB (18838 bytes)  
		MIME: application/vnd.in-toto+json
