## `perl:stable-slim-threaded-bookworm`

```console
$ docker pull perl@sha256:aae37a21a6b56406699613e2da51609b299d77f94dfea0ab302a0e92e71d1331
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
$ docker pull perl@sha256:b6908b7cc76d4207a845ccb9a5221a4176cd6c6cd8fb514ce5b3806ed834bd7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52468151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae8e19d739d90c552c09b16c223eaf5bdf95573d68049285299526ed15687457`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:28:45 GMT
WORKDIR /usr/src/perl
# Tue, 06 Oct 2026 02:34:45 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 06 Oct 2026 02:34:45 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 02:34:45 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6575e6427fcebec23c95ace44213fc61974e210de89dac01ede7595024605551`  
		Last Modified: Tue, 06 Oct 2026 02:34:54 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f6fd9763929ae5b18a246705db0eb06f45584237ac0979b41b43baaff21690`  
		Last Modified: Tue, 06 Oct 2026 02:34:55 GMT  
		Size: 28.5 MB (28511315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2884a26c393fa3ae6f95228349e04a4eee680ce15473e566086310ac9b65953`  
		Last Modified: Tue, 06 Oct 2026 02:34:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:9ceeb4e1b55449762018a330eb0875ef85f6265d45ac2b16701b33a4de1368b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3934497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb6a28138f0e7f1cf03d66fdb3773c2ac5594e39339e859e90367502151dfe2`

```dockerfile
```

-	Layers:
	-	`sha256:120e5a343f7576aa2f54a4ef2ab5bed671ecb5267471b51b9338a6c07a15e751`  
		Last Modified: Tue, 06 Oct 2026 02:34:55 GMT  
		Size: 3.9 MB (3915483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:556d301ba7a4ec3949b9540adae1f0b629578dc22a0637da9a66c7f7f0976a63`  
		Last Modified: Tue, 06 Oct 2026 02:34:54 GMT  
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
$ docker pull perl@sha256:46ea18fc40fd560173c96cfa0dae813e935a7a096cf2c21178a0b12585da4646
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61145899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63fdd81e658b8d1e65fcd5ddf70a3e98839bb653d5cc072774139c517e8e8357`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:48:35 GMT
WORKDIR /usr/src/perl
# Tue, 06 Oct 2026 01:53:56 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 06 Oct 2026 01:53:56 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:53:56 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dada97d67e8089b356b0a96b278ec9b3448a329f5ad0dce729740a51d60b311`  
		Last Modified: Tue, 06 Oct 2026 01:54:05 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d54ab3595358d8192622099dfe826a9dc2cec1420f49b8ddf6d9b4ae307617a`  
		Last Modified: Tue, 06 Oct 2026 01:54:06 GMT  
		Size: 31.9 MB (31906258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bf4c76ad4b54528c779cc21fdb936c3981e4787a9e0d2218f2d2c38f2deff8`  
		Last Modified: Tue, 06 Oct 2026 01:54:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:823806975d3e59cdef3dc55b9d633cff44de6b6190fd08986d2b9dd0f8de3e00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3958212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ead29da0df4c2859d2c60069aa4f6a896ea084118d579af6d053a16757b184`

```dockerfile
```

-	Layers:
	-	`sha256:a5af8943c57d84d36fd3a5f5263af39e70141831fc06cb03218405c019537c8c`  
		Last Modified: Tue, 06 Oct 2026 01:54:05 GMT  
		Size: 3.9 MB (3939323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a518e6091e86a21fb69162fd2ad67b12ddede085d6c0ce38b08174fbf2fe2d01`  
		Last Modified: Tue, 06 Oct 2026 01:54:05 GMT  
		Size: 18.9 KB (18889 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-bookworm` - linux; ppc64le

```console
$ docker pull perl@sha256:0d8f35026536ad4c08cd72b4295f2d69ae7d12e701bc49df82c4482ffef7845d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65687290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456c5447ace50701841a423b93821f04755bcb4fba376eea0cab658aea140acc`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 04:54:56 GMT
WORKDIR /usr/src/perl
# Tue, 06 Oct 2026 05:16:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 06 Oct 2026 05:16:05 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 05:16:05 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff9059df46a61fed557eca9d6bd71a573ffd9dd6b4d606039da470f3d94c732`  
		Last Modified: Tue, 06 Oct 2026 05:05:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:872027c55ad0ae654d95885590a63926cadb2c3eeddaac0888c73e704ba4a041`  
		Last Modified: Tue, 06 Oct 2026 05:16:28 GMT  
		Size: 33.6 MB (33594590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67406ce290b1e2b90bf340605cf47921f1673449e89f092a19b214e7bc189d9e`  
		Last Modified: Tue, 06 Oct 2026 05:16:27 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:cac4f9a72ccfb304dac1bfaafb4074bb58129e2882726adb89fd9e1ba5dc0a84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3950307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091b83846e25ead9807bbc98dd3995dc46fd3a35832153848efa7ad3694f6bcc`

```dockerfile
```

-	Layers:
	-	`sha256:223a6a413a0c7101894aaddde212ef191e624c8023b2123f412009d04c4e686f`  
		Last Modified: Tue, 06 Oct 2026 05:16:27 GMT  
		Size: 3.9 MB (3931331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:268828324f633ba49b66726ec965faeb9c4a59c3a9134a5ce6a29996f9807c54`  
		Last Modified: Tue, 06 Oct 2026 05:16:27 GMT  
		Size: 19.0 KB (18976 bytes)  
		MIME: application/vnd.in-toto+json
