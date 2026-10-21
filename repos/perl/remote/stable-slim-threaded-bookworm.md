## `perl:stable-slim-threaded-bookworm`

```console
$ docker pull perl@sha256:c798b9af3dd2e687f98bacb20d8a4c9ddbaf5718a42455de8a521240911e1df4
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

### `perl:stable-slim-threaded-bookworm` - linux; amd64

```console
$ docker pull perl@sha256:fb555f00c38744dd27e96c7e16925ce87d266aab57c7787d3244f6e410a7e5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58535412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ba160bc7130dd2afd9301b57d0996336f195ef410d01be576a3de49edfb65f`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:50:58 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 00:56:07 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 00:56:07 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:56:07 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:648a13e9f4ace2bf0064a6dd8c4befb0d055bff1db41be1389b7d3471f2c4752`  
		Last Modified: Wed, 21 Oct 2026 00:56:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:381e420e5e82e10270a7ccbb6bbb8263425860131911239dcf8351414c96144a`  
		Last Modified: Wed, 21 Oct 2026 00:56:20 GMT  
		Size: 30.3 MB (30287215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:432de7a5fb51552ac4ffe9cfa2dd78b7e89a9ab0c8bba44e22f79ab739f77ee9`  
		Last Modified: Wed, 21 Oct 2026 00:56:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:1b87cf97e02528cd7d0e3c7c14ac639a06e14b0a26021e1bc1b033d5a56e7b2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3963022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367f004a68900e4746b98686c902277660aaf43ad5ac930aa44a0b8158227d16`

```dockerfile
```

-	Layers:
	-	`sha256:9d9ea92f26928b8dccdee12b5bb60064b278068c643b6139f5531f01ccf79b78`  
		Last Modified: Wed, 21 Oct 2026 00:56:19 GMT  
		Size: 3.9 MB (3944096 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6d5dfa89b048342f07ef700b42f32df5d499b4f4f03ce1211c055cecd1b1655`  
		Last Modified: Wed, 21 Oct 2026 00:56:19 GMT  
		Size: 18.9 KB (18926 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-bookworm` - linux; arm variant v7

```console
$ docker pull perl@sha256:656e951249905fff04a0465d86487aa928c1c324f10bb280454be6566cd63310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50383589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d47281313c4b27b666283dde651ab36a52dbbc6a8d1b760b37d68502e58c34ec`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:33:04 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 01:39:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 01:39:08 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 01:39:08 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:845310e55e508f80dc7084cd9844e0cd060644b9eee3abf41d1d38274058382d`  
		Last Modified: Wed, 21 Oct 2026 01:39:18 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32edf9ac9334fce704773cf99c4606b9e474446e2c28754b06784d47e297c53e`  
		Last Modified: Wed, 21 Oct 2026 01:39:19 GMT  
		Size: 26.4 MB (26421835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee4f5a6bebbce4ef8234523054bd38d6d46e2d033762da7d968a53a7bd36302`  
		Last Modified: Wed, 21 Oct 2026 01:39:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:b21cfa7d0c4eeb75b6ca2431e4ef09f2ea539351482d17fa0080129980ab05c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3933202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eb140bd622ad539d350630c8ef468fc22df46299006acdc8ecfcc7058228ca7`

```dockerfile
```

-	Layers:
	-	`sha256:01f06d77ab32c2b44956e48f451a3e7f22129920faa2068565786222601994c9`  
		Last Modified: Wed, 21 Oct 2026 01:39:18 GMT  
		Size: 3.9 MB (3914188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b742658e090e992dcdc14a7c232789707bbaa317a598c84fa5e0125a1138a7d7`  
		Last Modified: Wed, 21 Oct 2026 01:39:18 GMT  
		Size: 19.0 KB (19014 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-bookworm` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:3dfe9285758584939c079b7dc5971f688b53994b54645545b0c04cf17ba232d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57282456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1460c7c28e46fc117e9452b9353e7a51904c81471277a22defdff777edc83f9`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:53:57 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 00:59:07 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 00:59:07 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:59:07 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d23a649d10535a93549c0722fb8c0d42091d1cdf122d4a8b69c5bf93825ac4`  
		Last Modified: Wed, 21 Oct 2026 00:59:18 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d5b325e610f9b2edf07636a2db9ec030a51d0fc4aa34f1cb6ff1df9be2ad83`  
		Last Modified: Wed, 21 Oct 2026 00:59:19 GMT  
		Size: 29.1 MB (29143765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e85c6404e7f61001cd1feb3043bd088f73aac4d823e5bf4d43a41ccc5f9ec938`  
		Last Modified: Wed, 21 Oct 2026 00:59:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:359142b934c6a3b3c6cdc8267fd31b4202f0dabdd77cabe09d6eb321ba3d302c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3934399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc273b63aef50a3cc745b3856ce491803da6079171f312d0feb07450355cc754`

```dockerfile
```

-	Layers:
	-	`sha256:f8035fbc4b871894d2a31d854098ad94a628bcfb8b29e831cb21541f79103811`  
		Last Modified: Wed, 21 Oct 2026 00:59:18 GMT  
		Size: 3.9 MB (3915357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1ae7bca66e4e56db68299abea0a3e561edc109003da495de25f31c72bab5cbb`  
		Last Modified: Wed, 21 Oct 2026 00:59:18 GMT  
		Size: 19.0 KB (19042 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-bookworm` - linux; 386

```console
$ docker pull perl@sha256:51d63742499c3068def079e7a4265c056b1da9bab6a64ca282c32234bb5138a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.7 MB (58717398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26015c1213a2fc9ec41e1430f2e5daeb779b7d266a996a19b4cc7c038115c122`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:50:44 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 00:56:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 00:56:31 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:56:31 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:f18bb404f18e1a55e73386e40eac6da347163fe58e54559004ef9b0d1c24e4f2`  
		Last Modified: Tue, 20 Oct 2026 23:30:30 GMT  
		Size: 29.2 MB (29239245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dceffe6573a4671a8eb862d1e1a0aa755a8132cbc7f799195d31a3ff5e5fe79b`  
		Last Modified: Wed, 21 Oct 2026 00:56:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccc95c6edc6d044df7690a968b798a838ebdac051317e6a3d0442567e056df6a`  
		Last Modified: Wed, 21 Oct 2026 00:56:42 GMT  
		Size: 29.5 MB (29477889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6350696bda01216a2a704d853cf9b8521b30335156a25fe39958b14a8a2c6678`  
		Last Modified: Wed, 21 Oct 2026 00:56:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:de767f2b3370c1eb83d4d1cbdd77a4f44070d58e8efaebe7b9eb745520890722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3956917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d3a4fa78e7e269c8210f5ea41dbb1cf00a5b45010be24332321120ee8ae8e3`

```dockerfile
```

-	Layers:
	-	`sha256:ae37c356cf2569f94f0f43bc241d5bcd84973aec89a2523d90bd736edbab2ca8`  
		Last Modified: Wed, 21 Oct 2026 00:56:41 GMT  
		Size: 3.9 MB (3938028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a40b9d45942f78c9e557789e0880768da4f9fee5e0a68706c6fbd78e57a2169`  
		Last Modified: Wed, 21 Oct 2026 00:56:41 GMT  
		Size: 18.9 KB (18889 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-bookworm` - linux; ppc64le

```console
$ docker pull perl@sha256:ba597b4a0bfe83814e7a27f5bb0c85738c466f58d3e10b8c073a58e9c5053568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63229875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7b0e644b511e2ee916af76bd17adcfb34bc26b5d72f26842767c663d273a22`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 04:36:57 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 04:59:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 04:59:46 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 04:59:46 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31105be9a382947cd9a1a8ddb0edb2eae488903297b0790a7f8f5f27adb0c2ef`  
		Last Modified: Wed, 21 Oct 2026 04:48:50 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143721589c1683440466a174c613245c2cf0cbb4bc5c99aa7a8e8a5380928768`  
		Last Modified: Wed, 21 Oct 2026 05:00:20 GMT  
		Size: 31.1 MB (31136400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a51894eb714364a9825809f9afb1fde2b7579b1b6b41adcee946020a3fb8ac0`  
		Last Modified: Wed, 21 Oct 2026 05:00:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:967bf84ae87f1dfdd9b0d703e543245c54d6a851252426dc8e17912065b5a707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3949012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a40bab10f0a462ebf9e96b8e7f25e0c1f0e24bcbe1b8e050f2776bccf66c44`

```dockerfile
```

-	Layers:
	-	`sha256:efb950c331e2b99e2e53c77b38fa5bbf0d827346e364d8f139d90e43c1f14f49`  
		Last Modified: Wed, 21 Oct 2026 05:00:19 GMT  
		Size: 3.9 MB (3930036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53113b47856bee01f41b008be95df8468eddff524252e8f1bd18dd9589d07fdc`  
		Last Modified: Wed, 21 Oct 2026 05:00:19 GMT  
		Size: 19.0 KB (18976 bytes)  
		MIME: application/vnd.in-toto+json
