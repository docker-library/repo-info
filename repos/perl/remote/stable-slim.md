## `perl:stable-slim`

```console
$ docker pull perl@sha256:1fe66e5a3c250ec09c6a63e52dc040115eacedc12a36b435f9cd4f3658200b9c
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

### `perl:stable-slim` - linux; amd64

```console
$ docker pull perl@sha256:a4b7e96459aa2a41dea91baef5f9c76a4020805ece2460395fd3e5e4ab79b4b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62025342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07c238631d3ccc8efca7604ddffada74da143cbd2af368286afd4f08ae1f4d39`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:05 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 04:47:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 04:47:33 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:47:33 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d578083c761f98aeb8fb5cdcb646fab482b35cd7cc94cc921fabe10f378dd1c`  
		Last Modified: Tue, 24 Nov 2026 04:47:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be021859b7e814b68b88cc59604d10367b7c6a61300d33eab2dc58ef7765a53b`  
		Last Modified: Tue, 24 Nov 2026 04:47:44 GMT  
		Size: 32.2 MB (32182897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bef15f8defbc5ac897ca6c6547c940e06f59142d704e54273ab6777d375fc32`  
		Last Modified: Tue, 24 Nov 2026 04:47:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim` - unknown; unknown

```console
$ docker pull perl@sha256:1d18db06268e9678e2d2d5a50384364cc1c7e2dae5c03c72018cc27bfb07dd8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4036656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631bfc9e1a45544bca3dd611cf229f4ac78ff10eacab29df6d72029e6cc979fe`

```dockerfile
```

-	Layers:
	-	`sha256:aed5c3331175fb2023942ef9a94d54cfd679bc77e93f21af225eb5185161ccfd`  
		Last Modified: Tue, 24 Nov 2026 04:47:43 GMT  
		Size: 4.0 MB (4016406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59801f1623f98a40bd086c340aa4ce71b5f508e80959dec496954d5d700133c3`  
		Last Modified: Tue, 24 Nov 2026 04:47:43 GMT  
		Size: 20.2 KB (20250 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim` - linux; arm variant v5

```console
$ docker pull perl@sha256:48f8766c85235c083bfb09662c59d7ca3090dc247be383ec1535e9d1945eb2a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57422989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32580025c14a7707896c5117849c494835a8bb56d0285b289411856d647e3858`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:05 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 04:48:54 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 04:48:54 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:48:54 GMT
CMD ["perl5.44.0" "-de0"]
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
	-	`sha256:79eda461f3c727cf67c45695dd7b36d2ee30959ba944f2c01738bd2bc09ee6ec`  
		Last Modified: Tue, 24 Nov 2026 04:49:06 GMT  
		Size: 29.4 MB (29413940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:951565e540207682b056855dab77d4f5e52cf9ef67e95637dd5ff6856c78b069`  
		Last Modified: Tue, 24 Nov 2026 04:49:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim` - unknown; unknown

```console
$ docker pull perl@sha256:134eeba99245daeaf1b9703c3b587c64430a2423595e7c00dcfe94c3d3daffcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4029863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2363df1267b217691d5f221d3674fda560a16af11598af7ac8667ae790eee50`

```dockerfile
```

-	Layers:
	-	`sha256:b160e31c0f1bd5e6b9d4d5cb4a9bf7747f02d807a90c2cef246d367e404ad521`  
		Last Modified: Tue, 24 Nov 2026 04:49:05 GMT  
		Size: 4.0 MB (4009484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8f5b16b7a4ed83f565b3792f0c10c30ff2b05e86811b5742498f463fac591af`  
		Last Modified: Tue, 24 Nov 2026 04:49:05 GMT  
		Size: 20.4 KB (20379 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim` - linux; arm variant v7

```console
$ docker pull perl@sha256:36dc98aa26ca270a38a2c1ae38371e58e5398987d0ef6796cbe336369824b131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54750748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:431e4999714e83ad47cd3288abc026c4d3fe5964c008e1c49e0d0da35a20af54`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:18:59 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 05:24:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 05:24:26 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 05:24:26 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a105da34e491ec4443a35f6ce4d724d7e5eeaf70168f232ace9b62b4475c81e`  
		Last Modified: Tue, 24 Nov 2026 05:24:36 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e7a8967f2605612897c0c8c86759bf5bd9007ce536c0f0982f60e1a3b5ff01`  
		Last Modified: Tue, 24 Nov 2026 05:24:37 GMT  
		Size: 28.5 MB (28488023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5752c872dcbbd1d8cfb44b19da94f9511456cfcf224d983b732a3a29f25f64f6`  
		Last Modified: Tue, 24 Nov 2026 05:24:36 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim` - unknown; unknown

```console
$ docker pull perl@sha256:759c0c75878656619e6134eb106d5aa1b3c420bfb088ce7485cc8dfc6172443d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4029055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bfffdcccfeeecea1a32af63349988797be036589652b7f19656bafafec7a86`

```dockerfile
```

-	Layers:
	-	`sha256:3a8437ab8d3e6f3a9dc3739aa2b69f3ba56995061b8960f7cd25d9c724fb0af4`  
		Last Modified: Tue, 24 Nov 2026 05:24:36 GMT  
		Size: 4.0 MB (4008677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3edbf18b015c306fbe7f70da7285b824024b6e7037c1edd7bce92fe9ed6b270a`  
		Last Modified: Tue, 24 Nov 2026 05:24:36 GMT  
		Size: 20.4 KB (20378 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:72c797f8f0c0a90963b3469a0db7d1f9587ce31d7779c7a9e2b11e834b54d568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62047092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d5ca0de425ffbd23681925cd42ee96f323b0cecd2ae2b78a1e663c445f3f79`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:47:27 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 04:52:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 04:52:16 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:52:16 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a9dbe42b38a41ba573e5f7ff03ead9ab300ca96b4e408f7661b2d4ee6406d4`  
		Last Modified: Tue, 24 Nov 2026 04:52:27 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3200ab8af3057faf223423fe2dc86495f0368af5c38c3a3f826c5d2f2238d9a5`  
		Last Modified: Tue, 24 Nov 2026 04:52:28 GMT  
		Size: 31.8 MB (31848795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513d02530101be1d259031cb79823c740942d04365323b8c89c20dcdd3bb928a`  
		Last Modified: Tue, 24 Nov 2026 04:52:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim` - unknown; unknown

```console
$ docker pull perl@sha256:399cedac1268b3cc41177b7f4f1cbb21a64bed2454c3091eae1b8052c4405689
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4031969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f120b637774615d4562c1cf210b73bdce90e70790c2c7f17111bce5ee7d20865`

```dockerfile
```

-	Layers:
	-	`sha256:6e7ed8695cd8b4eca39d6ad315af1ca9ee36d9a38982704c23f4cca67be79766`  
		Last Modified: Tue, 24 Nov 2026 04:52:27 GMT  
		Size: 4.0 MB (4011542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8cf399b13f8f5c15bb6a3c7267c2e66a83bac7c413e0e6f50be52e7ae61f465`  
		Last Modified: Tue, 24 Nov 2026 04:52:27 GMT  
		Size: 20.4 KB (20427 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim` - linux; ppc64le

```console
$ docker pull perl@sha256:c76c46cfcc89f464f17dfe42785265ffc50a31427e92bac507f723e0ddb6b055
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66559019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eacb605d2962078419053fd45a9bd39bede6f378abe3171e4b2d229a860725f`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 07:04:00 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:13:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:13:59 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:13:59 GMT
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
	-	`sha256:f87b40a29e289bfa3965446272165c90b92e9f96dca4a785925367f16307c871`  
		Last Modified: Tue, 24 Nov 2026 07:14:23 GMT  
		Size: 32.9 MB (32906115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43814f32ee3204870f47edb207209948a7fe0edb2983efc770e82e38bf45ced3`  
		Last Modified: Tue, 24 Nov 2026 07:14:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim` - unknown; unknown

```console
$ docker pull perl@sha256:5fed9f090d5c605c7d52dc7e111307c3ba338f607a0accc8f160e2b2fe25281f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4032778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec6ba176bdc98a8f3fe47fbc1dab6f09db0feae0c82473543e14e33e255b8316`

```dockerfile
```

-	Layers:
	-	`sha256:4d6b41ea042b5d48697895d0cc3806b2a6eceb2478f16f8cebd9c4ad07b0dd42`  
		Last Modified: Tue, 24 Nov 2026 07:14:22 GMT  
		Size: 4.0 MB (4012447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e43ceb43a1471d113b431376b25060f96ac498f4e5ecb45bc94bba341add5f8`  
		Last Modified: Tue, 24 Nov 2026 07:14:22 GMT  
		Size: 20.3 KB (20331 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim` - linux; riscv64

```console
$ docker pull perl@sha256:65f43217292b2d253da0dfd4050a139821dd458818a75d7b5369f2b6c1b2a4d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.4 MB (68366260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90f5b51b30caff81639c8fdb02e419b12cb6c56992f3f53c3ba33bffbc5eb4e`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:35:12 GMT
WORKDIR /usr/src/perl
# Sat, 07 Nov 2026 05:48:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Sat, 07 Nov 2026 05:48:05 GMT
WORKDIR /usr/src/app
# Sat, 07 Nov 2026 05:48:05 GMT
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
	-	`sha256:7ca246a46e5d14ca49f12d9cec64632c7d72996cbdbe2ed163deee946839acb0`  
		Last Modified: Sat, 07 Nov 2026 05:50:47 GMT  
		Size: 40.0 MB (40019808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38337b7438b2b5abe1808eebb23246304dd17da89be980fbc1b5bd549266bbd7`  
		Last Modified: Sat, 07 Nov 2026 05:50:41 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim` - unknown; unknown

```console
$ docker pull perl@sha256:831246d56ba6c927cabc9040d90e392c7a24d99078782cf298b5d47d37e9b2ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4024002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:999b4e9f2fed7690da52689e82e77ab50076832e6aa745014550103093fe1d7b`

```dockerfile
```

-	Layers:
	-	`sha256:80fa2b6be5e3be7725014fd156d01d90d07bf20b50d5567514d7bf40495db41f`  
		Last Modified: Sat, 07 Nov 2026 05:50:42 GMT  
		Size: 4.0 MB (4003671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82561a47c07cdc43550bc6ca7b21b9b045d6b1bbde66e4c6dd088e3a233ba1b5`  
		Last Modified: Sat, 07 Nov 2026 05:50:41 GMT  
		Size: 20.3 KB (20331 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim` - linux; s390x

```console
$ docker pull perl@sha256:5d7cb215ba6c999470cf6bebfa16d5729ce7e8806724cce62fa992f5dce61fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61451272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42fb444d97d9df63c5c3baa2559d46f26a33837de854e8fa1bf370a6062f2361`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:56:20 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 05:01:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 05:01:25 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 05:01:25 GMT
CMD ["perl5.44.0" "-de0"]
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
	-	`sha256:cfc46d6460e5f933981f469da65a990b48c15a57a58c5883b9c1f6f3b82cfa77`  
		Last Modified: Tue, 24 Nov 2026 05:01:41 GMT  
		Size: 31.5 MB (31540982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6b6abe7a902d94f658f8cd0c052a8a66a556a3ef466e3506c23daadf3c0e40`  
		Last Modified: Tue, 24 Nov 2026 05:01:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim` - unknown; unknown

```console
$ docker pull perl@sha256:f6c335ec865ca73f37a8297eb886b715a03c1662898660b289d47dd6e4e6aa50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4028984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca48b8e60794897c25d044bde2f2b98da113fd81adebc163682187b60d84a96`

```dockerfile
```

-	Layers:
	-	`sha256:1507ef37e139a68ea7f5d787daa251da180ba8e07931891251d35e7adb69ed2f`  
		Last Modified: Tue, 24 Nov 2026 05:01:40 GMT  
		Size: 4.0 MB (4008733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b70e7e86a843977d668c069c6b7d7a15a73443222fb31450e5b356bf490b142`  
		Last Modified: Tue, 24 Nov 2026 05:01:40 GMT  
		Size: 20.3 KB (20251 bytes)  
		MIME: application/vnd.in-toto+json
