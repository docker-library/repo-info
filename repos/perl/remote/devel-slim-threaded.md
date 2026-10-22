## `perl:devel-slim-threaded`

```console
$ docker pull perl@sha256:0ec9caa8b5e9143872fdec770a36894c8022f0d4935cf9d411af5d1334856a0f
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
$ docker pull perl@sha256:3801cfb98674856894fa50160065c2875cd5ec7ccb2f78d56e7c935fa627fc33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62568484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea59d9c8710727336a6d7169bb709099a697322e93b0538aa70f150189fa0acb`
-	Default Command: `["perl5.45.3","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:56:05 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 01:00:56 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/B/BO/BOOK/perl-5.45.3.tar.gz -o perl-5.45.3.tar.gz     && echo 'f8aac25c3dc34abbaf0d84da132913f726c7faa27906b460cc442da417c2fdac *perl-5.45.3.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.3.tar.gz -C /usr/src/perl     && rm perl-5.45.3.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 01:00:56 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 01:00:56 GMT
CMD ["perl5.45.3" "-de0"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df0cf047c2cd96c25291adbaab2bba127f11a196c1b8bb7dc6fc7fe415c256b`  
		Last Modified: Wed, 21 Oct 2026 01:01:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52a312f42e599f8cd2e046e72575afc63250a7a411ac303aa473c6646d7ea47`  
		Last Modified: Wed, 21 Oct 2026 01:01:09 GMT  
		Size: 32.7 MB (32724640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e3ce52456d66b14ba17e3c39550e6d4881fa29d0d7367a7e13f170e5a46ad0`  
		Last Modified: Wed, 21 Oct 2026 01:01:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:f4eba72a6d7f2769b8c9daf476b0fa89becf56c39a4c00c6337132e3a9ba2dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4034522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d90131e3cad093567c53472d1322de3e389e96d88ae90f7aeae84e034036fe`

```dockerfile
```

-	Layers:
	-	`sha256:859bb532c8c9ff0e8f856b92370db8d64a47a9c9b4746a4877ef463b61ec188a`  
		Last Modified: Wed, 21 Oct 2026 01:01:08 GMT  
		Size: 4.0 MB (4015248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:438c8b29f03981afe671b8a18b116c0d1d33dae47540cface963ec7211a17e0e`  
		Last Modified: Wed, 21 Oct 2026 01:01:08 GMT  
		Size: 19.3 KB (19274 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded` - linux; arm variant v5

```console
$ docker pull perl@sha256:9885a9addac37a3d8d9fbadc1ca7db5893d661d971f8dd66fc1666b6b4320a60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.0 MB (57951580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b8dde7e6ffc44ab160e298d78223d2d0f94f4c43faf477eb291077b82b0e321`
-	Default Command: `["perl5.45.3","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:51:49 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 01:04:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/B/BO/BOOK/perl-5.45.3.tar.gz -o perl-5.45.3.tar.gz     && echo 'f8aac25c3dc34abbaf0d84da132913f726c7faa27906b460cc442da417c2fdac *perl-5.45.3.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.3.tar.gz -C /usr/src/perl     && rm perl-5.45.3.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 01:04:26 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 01:04:26 GMT
CMD ["perl5.45.3" "-de0"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1458cf96b916f22f6455de22047619b1b0d44cf859b493b8d81272f0e9056c0`  
		Last Modified: Wed, 21 Oct 2026 00:57:49 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:797c018fb491a1690170a467be42b6c19e75786cb8e877f28ebbb49e3cd8edd0`  
		Last Modified: Wed, 21 Oct 2026 01:04:38 GMT  
		Size: 29.9 MB (29943521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0112579017506c35d358f0e5d6aa43e6e402428dc3c9254699ba01d5566c5afe`  
		Last Modified: Wed, 21 Oct 2026 01:04:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:fe3d8a73f866f54e7199d512314b171bb04089514817ed6a0b48a07cdfc46240
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4027665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0028b1a5e9f0d2d89ffffdf9c3e039f7797d406add53c05502447940124aa147`

```dockerfile
```

-	Layers:
	-	`sha256:4d8874a87687e5ae5749b7c5201321874cc8f35a0af14f479255a19797e8beda`  
		Last Modified: Wed, 21 Oct 2026 01:04:38 GMT  
		Size: 4.0 MB (4008294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e035e230a5cc6735fb16db6b69dac7bfe873bde9aaeff9716e75c48b45e3a3cb`  
		Last Modified: Wed, 21 Oct 2026 01:04:37 GMT  
		Size: 19.4 KB (19371 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:aabf43e2390ad94582a11a48834c179188a0973f10393eea57eb51bae0351512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55271977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec38343a3c2fb12e07a4dbadc341b48c64264968e373f679f20aa3d0c4074cc`
-	Default Command: `["perl5.45.3","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:39:25 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 01:46:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/B/BO/BOOK/perl-5.45.3.tar.gz -o perl-5.45.3.tar.gz     && echo 'f8aac25c3dc34abbaf0d84da132913f726c7faa27906b460cc442da417c2fdac *perl-5.45.3.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.3.tar.gz -C /usr/src/perl     && rm perl-5.45.3.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 01:46:05 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 01:46:05 GMT
CMD ["perl5.45.3" "-de0"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:892b3542f3ee8cc17b7384e47879a8c3dcfa082f9699f75646c14113d154a97a`  
		Last Modified: Wed, 21 Oct 2026 01:46:16 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48d6ddbcbc8493eaa00d9459006d184eaeb0ad34a0f45e6332f94c6618a19ab0`  
		Last Modified: Wed, 21 Oct 2026 01:46:17 GMT  
		Size: 29.0 MB (29013317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0c34e3e529a50624349b149c3f728ad52ffe4ea1c169d7e1466d62f99ba5e6`  
		Last Modified: Wed, 21 Oct 2026 01:46:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:41e76d73628e3acc994fc5b942d5d8e1dd6523851c2e73f7d0cf964695c09858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4026858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d11a4fec3ca4511721a62d43e0e6e1525b162ba5a551bcf27bbc3aa6fad4ee6c`

```dockerfile
```

-	Layers:
	-	`sha256:bf3861659b25e3fbf5a7030edb4f6f2f6e72f43a158223a940f08c8b5ccf70c8`  
		Last Modified: Wed, 21 Oct 2026 01:46:16 GMT  
		Size: 4.0 MB (4007487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d68e88e6062259d624bb7a6116adf0ecc0a62c3856efd2018dc55bf8cacfbc3`  
		Last Modified: Wed, 21 Oct 2026 01:46:16 GMT  
		Size: 19.4 KB (19371 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:51ba58274753639b2857d2a5c0a9c41aa953f0f7daa85e191bcb10e0377b969e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62585730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c9cf3e6aa72c4adc650b35e412169b7413d82441bbb59b044ccd595f2a85899`
-	Default Command: `["perl5.45.3","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:59:25 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 01:04:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/B/BO/BOOK/perl-5.45.3.tar.gz -o perl-5.45.3.tar.gz     && echo 'f8aac25c3dc34abbaf0d84da132913f726c7faa27906b460cc442da417c2fdac *perl-5.45.3.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.3.tar.gz -C /usr/src/perl     && rm perl-5.45.3.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 01:04:36 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 01:04:36 GMT
CMD ["perl5.45.3" "-de0"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3175c6daea124040bf24ab02698f387b03a69f2ffe8a2103198daad2c28dfad3`  
		Last Modified: Wed, 21 Oct 2026 01:04:48 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99de9e21bbfcb188d1336281c0bf52717b6f7bb5c19c736350b08b33a609f55d`  
		Last Modified: Wed, 21 Oct 2026 01:04:49 GMT  
		Size: 32.4 MB (32384987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a2da9b01b1eea5730d75908a0234ec9b1e6a2fe532700390800dc3b691b179`  
		Last Modified: Wed, 21 Oct 2026 01:04:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:d2365aa07b2c1c62d9b12474078178066893e6b29444a049b7a4160363498da4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4029739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:effb209e45630dd8b3267129684cff0411fe0fcd203f0c83a347d19cf15f0c81`

```dockerfile
```

-	Layers:
	-	`sha256:93c673979b1b4154c484eadd693b8ee0197a6f652f421c5ffac6fc4bfff83677`  
		Last Modified: Wed, 21 Oct 2026 01:04:48 GMT  
		Size: 4.0 MB (4010336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c7ce169d79745c23e03a94e2bf0c05d826a9df9539dcf8ce12971f77b39954e`  
		Last Modified: Wed, 21 Oct 2026 01:04:48 GMT  
		Size: 19.4 KB (19403 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:dff834931911177dfc7521054e6a90210879c82e0d5f2002f1ea05b53284d786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67143031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db969b09b73bbfda7bc0016b0809464824c93b003ff9a484cb47a4a7b4494a64`
-	Default Command: `["perl5.45.3","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 04:35:04 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 06:05:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/B/BO/BOOK/perl-5.45.3.tar.gz -o perl-5.45.3.tar.gz     && echo 'f8aac25c3dc34abbaf0d84da132913f726c7faa27906b460cc442da417c2fdac *perl-5.45.3.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.3.tar.gz -C /usr/src/perl     && rm perl-5.45.3.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 06:05:00 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 06:05:00 GMT
CMD ["perl5.45.3" "-de0"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d287b73dd487111657899a5c8efeee49a0d95505bcdb9ad496be4232d64aa805`  
		Last Modified: Wed, 21 Oct 2026 04:46:15 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a89989857710f68d7ab4a7650adfb1dc04d4c63f396ffb312b927a45453d30`  
		Last Modified: Wed, 21 Oct 2026 06:05:30 GMT  
		Size: 33.5 MB (33490830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e550cffd6f1625e4593f57a3c658b1590a0bbc294af4a3569d665d384cc4504`  
		Last Modified: Wed, 21 Oct 2026 06:05:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:a714fa0c780891e435a7ba0d7189010e77ef6c315c1c8092cbd7d34cf08d2765
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4030596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b130240cbfbf90c782babbec1a955b0c3e1efd8d57525059879e2554867238`

```dockerfile
```

-	Layers:
	-	`sha256:f39523456e310d0025a269ab0f99520d265261a253a38a66969cf93c228b3063`  
		Last Modified: Wed, 21 Oct 2026 06:05:29 GMT  
		Size: 4.0 MB (4011265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1283ae4b3a735728b638f59f8bf0c7441e85ceb59ce9e787f202081f4b162ab0`  
		Last Modified: Wed, 21 Oct 2026 06:05:29 GMT  
		Size: 19.3 KB (19331 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded` - linux; riscv64

```console
$ docker pull perl@sha256:a75494f413a5664bf59baf21ca535cf2cb1e4425fd1460244326d697b3e50418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68889143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:094bd8c337b5b8282b088229636acaab90ddf92cb81c67c8ef476ff53e25fea7`
-	Default Command: `["perl5.45.3","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Thu, 22 Oct 2026 05:37:44 GMT
WORKDIR /usr/src/perl
# Thu, 22 Oct 2026 16:07:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/B/BO/BOOK/perl-5.45.3.tar.gz -o perl-5.45.3.tar.gz     && echo 'f8aac25c3dc34abbaf0d84da132913f726c7faa27906b460cc442da417c2fdac *perl-5.45.3.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.3.tar.gz -C /usr/src/perl     && rm perl-5.45.3.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 22 Oct 2026 16:07:30 GMT
WORKDIR /usr/src/app
# Thu, 22 Oct 2026 16:07:30 GMT
CMD ["perl5.45.3" "-de0"]
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d04ef051777f27cd8aa312e942d5b51b809fb3546d157a7f91f72b8ee9629e2`  
		Last Modified: Thu, 22 Oct 2026 06:53:56 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e572aa89fa8d72fed16cbb1fcf0cd0524a740df2578522ca2d031d8cf2947233`  
		Last Modified: Thu, 22 Oct 2026 16:10:13 GMT  
		Size: 40.6 MB (40555005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0ef94b35387522525e7a27f5f853431eaa2d9e08cf539f156f5fa23d022d90`  
		Last Modified: Thu, 22 Oct 2026 16:10:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:b2753f35617bffd72e6b8fcd6d84b0d931ae931e51909d597b9ccf9eec12e585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4021858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7ae3419d037873605518714ba3bcba1544251f2cf747382777b7790a163db14`

```dockerfile
```

-	Layers:
	-	`sha256:34919f18072053841b447f2d3c1a879be94dee4bf1d6124debad8945bfca6afc`  
		Last Modified: Thu, 22 Oct 2026 16:10:07 GMT  
		Size: 4.0 MB (4002527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff8eeb287757f1662fb3c461f1189be4d55aea878470deaff692dbf51ea6e719`  
		Last Modified: Thu, 22 Oct 2026 16:10:07 GMT  
		Size: 19.3 KB (19331 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded` - linux; s390x

```console
$ docker pull perl@sha256:a143479d9015a96a547e7d7332887abb352d77ec1e0f000d0c04ac7fdce5e1fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61999507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64ff0e33e84fcd17213021fe014acf423cddf337aed6525bc6ed1cd496d01f1c`
-	Default Command: `["perl5.45.3","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:14:10 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 01:28:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/B/BO/BOOK/perl-5.45.3.tar.gz -o perl-5.45.3.tar.gz     && echo 'f8aac25c3dc34abbaf0d84da132913f726c7faa27906b460cc442da417c2fdac *perl-5.45.3.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.3.tar.gz -C /usr/src/perl     && rm perl-5.45.3.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 01:28:15 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 01:28:15 GMT
CMD ["perl5.45.3" "-de0"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d73bf70aff0dd59570da20df784dd0e0239e80e75e1ec738e6913d6ed14b222`  
		Last Modified: Wed, 21 Oct 2026 01:19:58 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2659faef105d2a04db534a0a9dd5669c4cab5ffb9fdb55d3b6fc7b7a3a329236`  
		Last Modified: Wed, 21 Oct 2026 01:28:32 GMT  
		Size: 32.1 MB (32087804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f639b39cc2a7ca25961f96836bb13416f96fd589849f71a3cea12c17b2257f`  
		Last Modified: Wed, 21 Oct 2026 01:28:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:9cf6954123b609da0d753547df8a641d19cadcf29989ce8d0946754d7735efcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4026850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a74d3da0342af63ff52608a41db17ed46d1c57fdf3a89ae7b5c3055c3a59350e`

```dockerfile
```

-	Layers:
	-	`sha256:90d31f3a5faf652d794173ed1d4d11bbb73ac42a61483813b9368221a519047d`  
		Last Modified: Wed, 21 Oct 2026 01:28:31 GMT  
		Size: 4.0 MB (4007575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4584a78bedf76e8b038878cd715f0d48b8f66db599212c42b1cb31e7851b21df`  
		Last Modified: Wed, 21 Oct 2026 01:28:31 GMT  
		Size: 19.3 KB (19275 bytes)  
		MIME: application/vnd.in-toto+json
