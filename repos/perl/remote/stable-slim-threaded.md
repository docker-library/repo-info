## `perl:stable-slim-threaded`

```console
$ docker pull perl@sha256:a81513094cc3fd4fb98fe59c09a89c3b04b5964c6d9c7f6e02398fb95e7a9555
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

### `perl:stable-slim-threaded` - linux; amd64

```console
$ docker pull perl@sha256:3ebe2fb0b9737778b6dbbb4faf270694cbb34b1515d4e8aafa77b6926deadd55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62079886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c67891d12c6e6a71ae04bc52f05e1caa8ba19c1dd43efcd185dcaa32fe757b`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:44:08 GMT
WORKDIR /usr/src/perl
# Wed, 28 Oct 2026 01:49:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 28 Oct 2026 01:49:23 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:49:23 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aabccfc539b1bb35e98573a0136e6bd6f6dd0a5be729de61d42a290276d4931`  
		Last Modified: Wed, 28 Oct 2026 01:49:33 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c85d722fb4c42df69aa4c52a2f29960bf14f0ef50215ca649edd75de14cd59b`  
		Last Modified: Wed, 28 Oct 2026 01:49:34 GMT  
		Size: 32.2 MB (32224382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937ffe77ee164e50c381de4a871e3d5f754b24f931cf95314d04c35189f0fd42`  
		Last Modified: Wed, 28 Oct 2026 01:49:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:9b2f8a578639e88a558428f26b2b44410c42b2f0b989e8cac36d9fd493fe540c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4037026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa4ab2e65ff5d5488c60dd22798350eebee2b7c5ccc6d27e5cc9ac820d1d115`

```dockerfile
```

-	Layers:
	-	`sha256:50802f94c6bdc7cbda7287971a2f7b9153f24e941e1e9b747bb5d8e800cc5ac0`  
		Last Modified: Wed, 28 Oct 2026 01:49:33 GMT  
		Size: 4.0 MB (4016548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c549514898399e725f713976c76bf86983d277d09bfba4997e6de15cb5496484`  
		Last Modified: Wed, 28 Oct 2026 01:49:33 GMT  
		Size: 20.5 KB (20478 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded` - linux; arm variant v5

```console
$ docker pull perl@sha256:05e9bd1e9c0cafa5f6f613f530f2a5226aad522174b8396f1a1ec3525a0ebfcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57456934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40fe2cb4387e10023ca0aea9168b769d075c133445547c2298ac0c0bff53877e`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:17 GMT
WORKDIR /usr/src/perl
# Wed, 28 Oct 2026 01:49:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 28 Oct 2026 01:49:27 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:49:27 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d087d279661ffdcbc31531d9599c8c51fbaebb85c188819f68771172e2e4bd5b`  
		Last Modified: Wed, 28 Oct 2026 01:49:37 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce84beec9aceb294985280a511035b599c7055befbb3836623b4b0a69f54f0ea`  
		Last Modified: Wed, 28 Oct 2026 01:49:38 GMT  
		Size: 29.4 MB (29437998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1f57846595a65f993e64bf431f2b082c662fe942b53420ea2a305dbb39b4795`  
		Last Modified: Wed, 28 Oct 2026 01:49:37 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:e0e5cee3ebdc9cd4665a44b37c0aeee3b92d4372e8020e2478591c5983ddb977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4030232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0033366d837d82ce1c0b4823ef5e2c85bf0a0a25b8f48501d744368c40dcaace`

```dockerfile
```

-	Layers:
	-	`sha256:f4399f660a6b71744cdb159b643544baf0c07df5624285e180289d68f780eaef`  
		Last Modified: Wed, 28 Oct 2026 01:49:37 GMT  
		Size: 4.0 MB (4009626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c611d963b1cbc785a74aa0758b4a9de9c6354bbc3c6ae35720d84de606129aa`  
		Last Modified: Wed, 28 Oct 2026 01:49:37 GMT  
		Size: 20.6 KB (20606 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:4fadae35b9341a93921036cf67e0e70ffb284c76bd3744f1feede77f2ad92f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54784167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c6393f2b2da69fd1e59f521f72f494028a7dc44589812cd7fa150d2225c4b50`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:24:43 GMT
WORKDIR /usr/src/perl
# Wed, 28 Oct 2026 02:30:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 28 Oct 2026 02:30:41 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 02:30:41 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572e122976e0df6e61d66490d9ce3259fd779135a78e764b82d56a6af0dc1e45`  
		Last Modified: Wed, 28 Oct 2026 02:30:52 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aec15cddeb9350a4f204464a459560533cacf7d9241f3200380637bb3bc019d0`  
		Last Modified: Wed, 28 Oct 2026 02:30:52 GMT  
		Size: 28.5 MB (28511730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d856a3ce8220f20df13ebac3d7e978da5fc99fdad3989919315b3c986e70c89`  
		Last Modified: Wed, 28 Oct 2026 02:30:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:3e04f116b8bc0d6574029b95aae58e900704d726ce3dc3dca698116135c744d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4029425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25056cdfe72f964d6ef02ab46bd3e62afa4dc120294aee1faab186284223ee53`

```dockerfile
```

-	Layers:
	-	`sha256:f893cb7dfd3cb2eea9a89c1e29669c55577970f92891fcf0ea27c63f8ec8deef`  
		Last Modified: Wed, 28 Oct 2026 02:30:52 GMT  
		Size: 4.0 MB (4008819 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1074441e0c7db20e4a90aef2a431a4a4f97f8e1012e1b2848bbc3e46212051c0`  
		Last Modified: Wed, 28 Oct 2026 02:30:52 GMT  
		Size: 20.6 KB (20606 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:f17b36b127544e1e89946ddae5e03c24806459095f76c2bbc01b564f5e50e394
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62102783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4beb3e9f3fe6a369cbf161a31f7ca2cbf8737666abec542548cdb3c1b229eaa8`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:47:19 GMT
WORKDIR /usr/src/perl
# Wed, 28 Oct 2026 01:52:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 28 Oct 2026 01:52:34 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 01:52:34 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e16a06facb864abee1a919551b4abe78526e84f5a70fcaf2b8ac4b59ae02849`  
		Last Modified: Wed, 28 Oct 2026 01:52:45 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c055cab3da1923bab6be48e08f5c61eb4b08e8d5fe2b5a356d9563513590d3d`  
		Last Modified: Wed, 28 Oct 2026 01:52:46 GMT  
		Size: 31.9 MB (31889020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b97dfcb9a362b983f1aad87bf38463af22ee868f78dd9d7a9a8522c241ed21`  
		Last Modified: Wed, 28 Oct 2026 01:52:45 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:66f7ef9896a4b3a15edbfc83d24847acb1ffb70af3671bd65f4ac12ad7ff05bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4032338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d8e98dc978bfcf175dcae5932f2d1075c5dc2061091f37158e6eafce44f7006`

```dockerfile
```

-	Layers:
	-	`sha256:e04aae7717bfcf50c4f60dfe335ea296a74480b779d81a83ba6bfe259090b164`  
		Last Modified: Wed, 28 Oct 2026 01:52:46 GMT  
		Size: 4.0 MB (4011684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1032c77e7e30a266e0d3e19336f411c6f855c318572a7a413209fdcd685de35`  
		Last Modified: Wed, 28 Oct 2026 01:52:46 GMT  
		Size: 20.7 KB (20654 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:4b971cb2c6dfbbb8627d93c56443726a37bf5e7c12c2328bd9e1403a71a9af20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66668865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49a8d1e6bfaa410275168a9ba88487bf9cfc5ca95c0a47cf50fafeac2c174613`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 04:31:21 GMT
WORKDIR /usr/src/perl
# Wed, 28 Oct 2026 04:51:55 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 28 Oct 2026 04:51:55 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 04:51:55 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8cf50791a4ac1eb7161685d8740d1d7d799c5085e7a7f86ee43b199d74d1bb`  
		Last Modified: Wed, 28 Oct 2026 04:41:30 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a57800f03cb7fcb15b91663cfc0f97d44ea785f6a62b0e15e6384cf4befdd2b`  
		Last Modified: Wed, 28 Oct 2026 04:52:24 GMT  
		Size: 33.0 MB (33002334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07dffcbcfb40a51834eac3426c7541cc3a0a9830bd79961ea22a17f09505db0e`  
		Last Modified: Wed, 28 Oct 2026 04:52:23 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:634e64bcc73bc7bdb6a62a193a683edc4cc3259f376ec042939ddc185dbcc297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4033146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef362fb0d450d59490fd92fc13242c7de43b8c3af27360faca3054d1e696750`

```dockerfile
```

-	Layers:
	-	`sha256:6e8493e17e7ae96462f9b7cf7e8f4d737265fa69e3f282d8dee42037843a43b8`  
		Last Modified: Wed, 28 Oct 2026 04:52:23 GMT  
		Size: 4.0 MB (4012589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:781a454b627bba7e5d001e77967e118f5291b5b1cd5909c54683927224a7c022`  
		Last Modified: Wed, 28 Oct 2026 04:52:23 GMT  
		Size: 20.6 KB (20557 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded` - linux; riscv64

```console
$ docker pull perl@sha256:3df6d3bb0b6875a6a8669175273103c59306a7cd41541644e1edbe0dff09bf8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.4 MB (68394224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd21302a4bfbc1670381fea1ded7925c779020ed213e1937c4c126e2e14241e3`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Sun, 01 Nov 2026 12:26:51 GMT
WORKDIR /usr/src/perl
# Sun, 01 Nov 2026 14:58:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Sun, 01 Nov 2026 14:58:17 GMT
WORKDIR /usr/src/app
# Sun, 01 Nov 2026 14:58:17 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f5d6012714b21846ba2d58f20b16a0180bad88bc36d6233b723ade9483a01c`  
		Last Modified: Sun, 01 Nov 2026 13:41:55 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f534eb273f1e60967085a1627827c8d2edefcf6bc4b374f65c8c60a3e8b2e919`  
		Last Modified: Sun, 01 Nov 2026 15:00:47 GMT  
		Size: 40.0 MB (40048287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6babc3b6c8e8d7a19fc4035e26dbfb4a18abd836b80707da0ad76706da897801`  
		Last Modified: Sun, 01 Nov 2026 15:00:41 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:350ae84cfbb3fa350c503468d0438fb280ed6ebd16ae5def54a9f0e5366f81c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4024408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9602026e18cc2c3b02de05cfa28af0955f768cf7f2eb982453b42c56d1fcf540`

```dockerfile
```

-	Layers:
	-	`sha256:c0a22cbba460d37d96b6ce97395ce97bf43926e160f4364a32d57588f2980c12`  
		Last Modified: Sun, 01 Nov 2026 15:00:42 GMT  
		Size: 4.0 MB (4003851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65558cc95f2e82b0c338d35f68e4e0390aee0726bb45e737f4e07845a651031a`  
		Last Modified: Sun, 01 Nov 2026 15:00:41 GMT  
		Size: 20.6 KB (20557 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded` - linux; s390x

```console
$ docker pull perl@sha256:a7ba2d8a37f045e0ed9a09474391329eab4321200f5a4ecc9db1fe4d4f2b714b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61506407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec9c41efdc6c3655fbaa3a4366067d4cc0be59ca2a32e32d083e1d9375c51b3`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:47:23 GMT
WORKDIR /usr/src/perl
# Wed, 28 Oct 2026 02:53:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 28 Oct 2026 02:53:42 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 02:53:42 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4873b020d87d063a0a5d5bb13877c6541156c695c0e11993b7ec64fe6b68940`  
		Last Modified: Wed, 28 Oct 2026 02:52:50 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4c2422602a9a8fbb1cb1f8fde1993e32f900e8f733d82410eb0fad9fd70b2e7`  
		Last Modified: Wed, 28 Oct 2026 02:53:58 GMT  
		Size: 31.6 MB (31583217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682795b783d45ac5c85ab967c4d84bff1f8d9a76d9f19be72c3f8de70cb1addd`  
		Last Modified: Wed, 28 Oct 2026 02:53:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded` - unknown; unknown

```console
$ docker pull perl@sha256:2f487130e8407e58fd15ee4beda603e4cb6a486fd005a149768f425c4aded7d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4029353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87de62833a40315f58736923c7bbcd206b0514ed94e024acfe83e1dfc69be70a`

```dockerfile
```

-	Layers:
	-	`sha256:86120eabd184ebe81359d97f345aabf773829f42a064f8ba7d084eedd49c0e3f`  
		Last Modified: Wed, 28 Oct 2026 02:53:58 GMT  
		Size: 4.0 MB (4008875 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa5583b692181c26c0ce3c101eb4e3105c5d8a33ca5704042d29b80846eab0a5`  
		Last Modified: Wed, 28 Oct 2026 02:53:58 GMT  
		Size: 20.5 KB (20478 bytes)  
		MIME: application/vnd.in-toto+json
