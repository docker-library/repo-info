## `perl:devel-slim-forky`

```console
$ docker pull perl@sha256:faef02d1dced3a8fc3596892121a03b18e77a147a26ed50636b6b2c00ebac783
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

### `perl:devel-slim-forky` - linux; amd64

```console
$ docker pull perl@sha256:fb56920a6628136d15d3ecc5d1594d88caf700bea2d405856701bdb2d42c120d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63460919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f2fc4f67013229e847a7b8f5913fafd0474b9a570f597f8fbc5e938e782aaa`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:48:19 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 04:52:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 04:52:41 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:52:41 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:a971188a655efddc53adb544bb28f1245d3d88e962b9cfe6aacccd3cc320b90c`  
		Last Modified: Tue, 24 Nov 2026 03:40:10 GMT  
		Size: 31.5 MB (31545383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e2f6b2e1ed1327e0f26d8e085af29a1afeda0c0fcd51b86f193618e204d0f3e`  
		Last Modified: Tue, 24 Nov 2026 04:52:53 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b7dd43239e2a64d9c3c35d407cef54c7cc0a81ad9276ab4bc74eb31099423b7`  
		Last Modified: Tue, 24 Nov 2026 04:52:54 GMT  
		Size: 31.9 MB (31915269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83fa219488902c1dfaf1470f841ec172bbe687f975061a974dd7cffc7da418e9`  
		Last Modified: Tue, 24 Nov 2026 04:52:53 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-forky` - unknown; unknown

```console
$ docker pull perl@sha256:3181372a35567239e2d3bb48789f9b7c38e1ca3ef665a437b7fa4cb736a28234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4068501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60c9634b30487910a1ad7b0283a118f82dde81aa0b85494b728c3e42de0f862`

```dockerfile
```

-	Layers:
	-	`sha256:345afa5e2fb2261093bea8ef41ec6ce9c44a360692e51e92d0e519bf41e94d49`  
		Last Modified: Tue, 24 Nov 2026 04:52:53 GMT  
		Size: 4.1 MB (4050293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dae3f06fe5bee0d089990583fe99d8279732885b4f1312386a96b0639239cd58`  
		Last Modified: Tue, 24 Nov 2026 04:52:53 GMT  
		Size: 18.2 KB (18208 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-forky` - linux; arm variant v7

```console
$ docker pull perl@sha256:ffa2b195ab1f46a753f4bbab8a6a305c1063b6f6e0644d98112746806f7f4e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55528472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b813818ca393409a86213006ec461d9565dcb647d97a1a16f7b87b669ac2b47c`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 05:26:53 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 05:32:56 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 05:32:56 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 05:32:56 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:b1365a97501b08af3adb92126ff1f67fc1a1695c825f73951bb13e78e5808bdb`  
		Last Modified: Tue, 24 Nov 2026 03:40:26 GMT  
		Size: 27.5 MB (27482273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e85cbd81ba7ca52e1fbcd15b2622d5ef468010b455e040da2fac39334533c5`  
		Last Modified: Tue, 24 Nov 2026 05:33:07 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904ea684b0bf8ad6d5383419a7bbf1d561aee0e3216c0fc1fe2d7840c437f811`  
		Last Modified: Tue, 24 Nov 2026 05:33:08 GMT  
		Size: 28.0 MB (28045937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9975242c57fe963e6dd764ba0546089757b687d009136d6c3f19dc0338e1503`  
		Last Modified: Tue, 24 Nov 2026 05:33:07 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-forky` - unknown; unknown

```console
$ docker pull perl@sha256:2eb349a04be9fe8f279c2d16666612a9a56a3b08c8853eaa79dc3805a5dc4598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4060989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d24b78745ab51b9ffe9965ea83242ad0705a1ff44cde4d99f996531439b94a1`

```dockerfile
```

-	Layers:
	-	`sha256:98c6015edac31413d16d3a12cbf9d7d6229cf27a2427d49639f68adfdc3fb7a4`  
		Last Modified: Tue, 24 Nov 2026 05:33:07 GMT  
		Size: 4.0 MB (4042709 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc5d8a775df39e201b14db453f66adc9ff3ea211c8e7bd235e0d20fc30b13f82`  
		Last Modified: Tue, 24 Nov 2026 05:33:07 GMT  
		Size: 18.3 KB (18280 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-forky` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:7ee42c3f00a11857e68e137461588a506b47bfc58b2d702c07b57a7c05066558
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61881266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7164e7ae2bf1b784f59eeb2329e6caad152dc41b8f90c04cd40713c5f43acb8`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:53:12 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 04:58:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 04:58:13 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:58:13 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:ee010aed21a1cf224a1abe45a7acf2c4d02af0de891b9b07f0a444a37951236f`  
		Last Modified: Tue, 24 Nov 2026 03:40:14 GMT  
		Size: 30.7 MB (30676031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a447b6d497e3aadf40811e8d2cffb65cffa5fe5d65921fb33b36de58d844113c`  
		Last Modified: Tue, 24 Nov 2026 04:58:25 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0f9510c1aaf0e0036ecf739b0abcc7d9e5a9140b1720c06f949c78be3cd7aec`  
		Last Modified: Tue, 24 Nov 2026 04:58:26 GMT  
		Size: 31.2 MB (31204971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66faa73860b127336526019d43a9d8f6333bdcae9625310b5954a91abb81a224`  
		Last Modified: Tue, 24 Nov 2026 04:58:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-forky` - unknown; unknown

```console
$ docker pull perl@sha256:f19f98c467887962e45d7bea0e9b568778159b5f501039d944e7a52774d2ed39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4063744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd1dae453f8505a95c7f13501273e097860559192790524d3d6d6f18a0ebf2f0`

```dockerfile
```

-	Layers:
	-	`sha256:9af3b13fdc73f92f836c8f99b4ea69e2a2ed134b8510fb169013398fb2c87c18`  
		Last Modified: Tue, 24 Nov 2026 04:58:25 GMT  
		Size: 4.0 MB (4045444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d12bc7b02a17c0113dc8bf49e8edfe6c58a42d5188b82e7f1c71ab5d6b62078f`  
		Last Modified: Tue, 24 Nov 2026 04:58:25 GMT  
		Size: 18.3 KB (18300 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-forky` - linux; ppc64le

```console
$ docker pull perl@sha256:6b76b3484c996f6ee2e7f9c4c3bbbdcc63a69ee241c98768100a91883eb501bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.6 MB (68595357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e84c8a1401cdb1a3044f92b33c6f3e6af4865d73d8e351f6e09507b41b5e9034`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 08:15:42 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 08:26:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 08:26:24 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 08:26:24 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:559f6a2ca85773e83c3ad6e27eec1193f9b61e80901de395b0fd504da009e071`  
		Last Modified: Tue, 24 Nov 2026 03:39:56 GMT  
		Size: 36.2 MB (36151554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b9e80fa0ad954973d13417089d9adeb4bcdd0c7673e8520b53826bba9cf49d`  
		Last Modified: Tue, 24 Nov 2026 08:26:48 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:560a64e8aeaae1bcf51a4531ac19cf30b028ffbf42bd325ec0bbb32b39ce49ae`  
		Last Modified: Tue, 24 Nov 2026 08:26:49 GMT  
		Size: 32.4 MB (32443540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38c701c4faa0ff929b257f570edbad85effbc641c8006b97bf822f84beaaf566`  
		Last Modified: Tue, 24 Nov 2026 08:26:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-forky` - unknown; unknown

```console
$ docker pull perl@sha256:2a38562a908afe556b0e30c57ac170e1fbe9e5a3f8ec89456d9cad5855b5e44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4064853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17f4565e47f39be9feea2aaa0347deb60c7a9788ef5af17958958ca4e081a2e`

```dockerfile
```

-	Layers:
	-	`sha256:2426a75c60b058a283d43571a40cf839b2f0420e27465ae44fd31732e28f4bc7`  
		Last Modified: Tue, 24 Nov 2026 08:26:49 GMT  
		Size: 4.0 MB (4046607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ef7986a940acffbb226a70251b36af32ea70a1d2eebece73b5cc4f356b51295`  
		Last Modified: Tue, 24 Nov 2026 08:26:48 GMT  
		Size: 18.2 KB (18246 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-forky` - linux; riscv64

```console
$ docker pull perl@sha256:53445e056d99e1681dbaa73f06d09beeabdd5bc668d7bac04513b4a58534479d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (74981261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161ea7099e38aaa3dd78125bb02a466697d9bcae37219889ffc0b102258a8a11`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1795392000'
# Fri, 27 Nov 2026 12:15:55 GMT
WORKDIR /usr/src/perl
# Fri, 27 Nov 2026 13:35:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 27 Nov 2026 13:35:38 GMT
WORKDIR /usr/src/app
# Fri, 27 Nov 2026 13:35:38 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:bfa7984160ff0cbb427e9b6a9338d3736ffa9003e6d47ea82d6cf126dd9271f3`  
		Last Modified: Tue, 24 Nov 2026 03:42:41 GMT  
		Size: 28.8 MB (28827258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e473235e79fb7376e6fe451513fa9ed91ce41c03ef3226d3a92d280b6fcfede`  
		Last Modified: Fri, 27 Nov 2026 13:38:17 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15fad68e4ea158dcc7104c1c0f63089ed1ce0d02d345632775f64dbc54bcd42`  
		Last Modified: Fri, 27 Nov 2026 13:38:24 GMT  
		Size: 46.2 MB (46153738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129abc25dc7472d43c2826620cabad8bb2acb47755a9bb005f79be0337d9eecc`  
		Last Modified: Fri, 27 Nov 2026 13:38:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-forky` - unknown; unknown

```console
$ docker pull perl@sha256:eb3a05fc439dadc201d7768eb8d57617a823dd79a598687f0b4fc7650870cbe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4055813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514336b4bf896e0fc488b5cfb15c779614bd411d554b47d6bccfe124e7d679ae`

```dockerfile
```

-	Layers:
	-	`sha256:dbd1d673d2d73f2a37a86e2425bd7f53a9cf857bbef398f7a5051193ad214593`  
		Last Modified: Fri, 27 Nov 2026 13:38:18 GMT  
		Size: 4.0 MB (4037567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9279ba7c67fcdc70ee598878331e5d3cf8acc69cdf56eafea171d2544a8f3ee6`  
		Last Modified: Fri, 27 Nov 2026 13:38:17 GMT  
		Size: 18.2 KB (18246 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-forky` - linux; s390x

```console
$ docker pull perl@sha256:7eb73fd92de8a66e106dcf3b61b1f44296e3f2cfd553ecc83b5f89732e0433a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61441202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c53293e011184372b0e0ce414318289aaab9471094b416be8ae99ad9258c2898`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 05:05:20 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 05:10:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 05:10:42 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 05:10:42 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:7fe644287736406c1b91766ba0960eefbcdff489a7cdd491b4b266ecb2ea0ff3`  
		Last Modified: Tue, 24 Nov 2026 03:39:11 GMT  
		Size: 30.6 MB (30577692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c448db3e314646e3f4fc6d1cbc8709e9502bbd33592c48b87dad9cb03af1f83`  
		Last Modified: Tue, 24 Nov 2026 05:10:58 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434ee5d9ed532c1208455ccae912961829a0298016e3ac4d96b8e170132b1d76`  
		Last Modified: Tue, 24 Nov 2026 05:10:58 GMT  
		Size: 30.9 MB (30863245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa1ab31e878d11ef24ac97dd8e75ea91cb827daccbbbccf5c5d0bc82935114ce`  
		Last Modified: Tue, 24 Nov 2026 05:10:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-forky` - unknown; unknown

```console
$ docker pull perl@sha256:ae2a832ab607d2994e9f7d15a345e73f4b2186b2d8aa18654726c86e31c28048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4060761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9521c17ceeed4b60cb75e8b8438193b57ad7b8f61229d4e72e964d0d4b875901`

```dockerfile
```

-	Layers:
	-	`sha256:f427efb0301e29d2f3e12d39e6af3e078c79ff2fd14f0bde9a3d05ce30b865eb`  
		Last Modified: Tue, 24 Nov 2026 05:10:58 GMT  
		Size: 4.0 MB (4042553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62a9166ef05b7eb82850e8c0ae7a1e69f9b02522a847dfda65458c4619271cc3`  
		Last Modified: Tue, 24 Nov 2026 05:10:58 GMT  
		Size: 18.2 KB (18208 bytes)  
		MIME: application/vnd.in-toto+json
