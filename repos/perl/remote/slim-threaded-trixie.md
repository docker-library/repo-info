## `perl:slim-threaded-trixie`

```console
$ docker pull perl@sha256:2c93453ee7a5732539114773b616301c2deaec620f422d03c71fe269e5e6d990
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

### `perl:slim-threaded-trixie` - linux; amd64

```console
$ docker pull perl@sha256:dbc2bd22ec8b21b1f3d31526ef1b41f38277e35078c6b1cfcb36a7d901eee229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62013280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003f87ca9ab2ae7a5d3e1d28449071555e3f7e3f7b52b36d3e52f3c000cc5bf5`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:55:37 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 02:00:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 02:00:26 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 02:00:26 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1ec1cce0ab746762d6016e4fb74b43a8a253c94770efc8a27856fbf3f25318a`  
		Last Modified: Tue, 25 Aug 2026 02:00:38 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a1f48b311b228dbc45aac95c273ac7e2fcf88d2c9ee53512a61954d4503ea3`  
		Last Modified: Tue, 25 Aug 2026 02:00:39 GMT  
		Size: 32.2 MB (32220353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1139afdabfc467917370043b4df8e55b08a87f22e061c7418fceb6c4bee826e`  
		Last Modified: Tue, 25 Aug 2026 02:00:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:2034e15774dc34fc5e00818570f05a4cf81bf9c100d8dcf24fef169d3155bd77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4031768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68237417f2b654b1805b61275ccf90a1280ac65aee5956138b07136027c829d`

```dockerfile
```

-	Layers:
	-	`sha256:d6d62ab3ea83d607c3f0de8040dd8fb93e9a9e80fee5a580a5f4922923b1fa21`  
		Last Modified: Tue, 25 Aug 2026 02:00:38 GMT  
		Size: 4.0 MB (4011290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5af9babbcfc42434aee0da8840c6cd869f550c7a5f7d1726f9c6be1196208c3f`  
		Last Modified: Tue, 25 Aug 2026 02:00:38 GMT  
		Size: 20.5 KB (20478 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded-trixie` - linux; arm variant v5

```console
$ docker pull perl@sha256:fc35bf32bf4d021b469eb4b4c27a6f6c2efaaab59454b241c824622d13c551db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57411873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792f73ae40f91daabd6df78ee959f876e389943ca1909e60272b17c16928a0e7`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:14 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 00:56:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 00:56:28 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 00:56:28 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c4aa2bf3055e2c62e6f2e2c04691798b64ffa3b1c94ea8c0f21b92939abbc4`  
		Last Modified: Tue, 25 Aug 2026 00:56:38 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8943012c8223466820959170435f909a6345c2b330ddb0c01148e0978edaedc2`  
		Last Modified: Tue, 25 Aug 2026 00:56:39 GMT  
		Size: 29.4 MB (29442662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89d2113a58c896fc35b8e63c16c1bcb851058e4bcbaf28a49d72aa1bdb69ff5`  
		Last Modified: Tue, 25 Aug 2026 00:56:38 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:62c2086136e37512af8fd8415e6f0636aca1d1510304d39be90f67967bccade4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4024973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:625929321d6a18581f503769bebf77d5835d2d369ea905ce946c7ce09a1e835b`

```dockerfile
```

-	Layers:
	-	`sha256:849ee77d7c1cfcfbf8f59efab130ad41b301234a27be421321c96c572861b803`  
		Last Modified: Tue, 25 Aug 2026 00:56:38 GMT  
		Size: 4.0 MB (4004367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5192d92198218d8c8f22b30167be45a354251da0d8e572753f8842959781c45c`  
		Last Modified: Tue, 25 Aug 2026 00:56:38 GMT  
		Size: 20.6 KB (20606 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded-trixie` - linux; arm variant v7

```console
$ docker pull perl@sha256:07a8325789b1582afebac096c3d10daafb9e9809180528c642a45b52935f32c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54725612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4bbb4bf3588efdc84440e5c44fbe2f4ce26d72fcd177a3f817f4de43854dd46`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:36:17 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 01:42:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 01:42:08 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 01:42:08 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a36289d7cba3d6fdb530e12d3c44601e9ec4464586cb5da7a1eb3f8d89d40d`  
		Last Modified: Tue, 25 Aug 2026 01:42:18 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadf2d19098796d136356acc7f7332ae90474e1cdf4a365645f5eaddd2720464`  
		Last Modified: Tue, 25 Aug 2026 01:42:19 GMT  
		Size: 28.5 MB (28506204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a149dea5b9bd19002c522ed46dfd0b5eb8f4266f48ded2f2ba6539ce45aa1ccb`  
		Last Modified: Tue, 25 Aug 2026 01:42:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:93b9e426ecdf97d5e3b034af17ea1724e5e893b866b6a6620cbe06921bd3f0ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4024163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e632aa3dcee57bb8b7190494187bf7dc61b63e8baa3cc1b7726891e832cedd09`

```dockerfile
```

-	Layers:
	-	`sha256:12cd5edd6facb45d253ed3a66822d3f9b2030e8bb27378c1fcb1aa4854105030`  
		Last Modified: Tue, 25 Aug 2026 01:42:19 GMT  
		Size: 4.0 MB (4003558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07843110e66c1ca837a743b78cd587508d7513815c32acb58032b23d01819688`  
		Last Modified: Tue, 25 Aug 2026 01:42:18 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded-trixie` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:0a838c200d712c4f1e59874c919315f8361a8e6d9ce352c7687023afdba26585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62036451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:310f3dc1779a14439abc6421f040e3fe53aba20e24dae1ad67257828f13fdeea`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:58:19 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 01:03:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 01:03:28 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 01:03:28 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea750dbc35d00e8497702773207c461d6ecbd0442f4b057d619dcf06e3204dec`  
		Last Modified: Tue, 25 Aug 2026 01:03:39 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4320ef0147a1e7c44b2dea4fbd645f10eb07e346256b972e99340590f86e5a`  
		Last Modified: Tue, 25 Aug 2026 01:03:40 GMT  
		Size: 31.9 MB (31876601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500c1a4e37dc878524345252e7a46b5a8fb666a9ab321c1359bb061dec55ca60`  
		Last Modified: Tue, 25 Aug 2026 01:03:39 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:08db149edae70ff3974279fb95f398e318981933743d32e0877b236609b3598a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4027079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:894a18fba0be277becb126cbe30694a0f1988f7b7423c73fb7c6309ad1ecceeb`

```dockerfile
```

-	Layers:
	-	`sha256:347e4bfd1d28483f6f37829fcf3c09e7e907191d36e19b05c5221a1287825a77`  
		Last Modified: Tue, 25 Aug 2026 01:03:40 GMT  
		Size: 4.0 MB (4006425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:382fadf5f0ed00f4b79c586ac8fc91e3f7f09efb45a0ee0933645113c483a643`  
		Last Modified: Tue, 25 Aug 2026 01:03:39 GMT  
		Size: 20.7 KB (20654 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded-trixie` - linux; ppc64le

```console
$ docker pull perl@sha256:b5230f405bd4d9c3f3f5745cc803e7916408b1f3d365654a4df504ae32155de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66605348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44f2dc5bedc77654ed5044e485becea1a1886c81c39caea7e482803c2ccbf5e5`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:47:30 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 04:05:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 04:05:25 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 04:05:25 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:135174616ba75816231ca305cb22b7402189d495d2035564cb9f1de8a73f9cc6`  
		Last Modified: Tue, 25 Aug 2026 03:56:36 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e56a4527bd86e1b4fac2ebf3d40c62af81c5c43e3018518dd17e585dd62eb0`  
		Last Modified: Tue, 25 Aug 2026 04:05:48 GMT  
		Size: 33.0 MB (32989619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12cbb908f77705419d187b458f523914c7d7e41727281e921f890c8d731ba88a`  
		Last Modified: Tue, 25 Aug 2026 04:05:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:f89e2d71d8f91c1e7d0f38ea5b50711aaf7dda6bf494b9431cbcd55e7505c5da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4027884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6be82cbdbca0128e720a071d0bd58a1265eecbfd5d61d8ac5200ca8d545735`

```dockerfile
```

-	Layers:
	-	`sha256:f6f91d256cdbbe623da1375c96af2fe7b318ce5036e26a013003cd95dc380c2e`  
		Last Modified: Tue, 25 Aug 2026 04:05:47 GMT  
		Size: 4.0 MB (4007326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35a7a653b3ccdca83f3464d77fe11344219becbb6dc0ed053fa5dead50a50a7d`  
		Last Modified: Tue, 25 Aug 2026 04:05:47 GMT  
		Size: 20.6 KB (20558 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded-trixie` - linux; riscv64

```console
$ docker pull perl@sha256:36c0dced47dd98ccd20a49bdc2c3b72ef9366d1b7d0e35cedd5d68bcd430d0bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (70957237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e19c8c79bca39960fed9c9489220ad3a249bf8ef513470b0d81d500bea1ccf85`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:36:31 GMT
WORKDIR /usr/src/perl
# Thu, 27 Aug 2026 03:03:37 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 27 Aug 2026 03:03:37 GMT
WORKDIR /usr/src/app
# Thu, 27 Aug 2026 03:03:37 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a89ffbded8ca9370502fcaa47872e982e6b725d36147bde0d5dc8af7dd812b`  
		Last Modified: Thu, 27 Aug 2026 01:49:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe9f6b246b4f27bf34c204bacc8904656c51abb35ae236067aafac27909c1d8`  
		Last Modified: Thu, 27 Aug 2026 03:06:08 GMT  
		Size: 42.7 MB (42660507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae716af6adeccdc670fb5f8bee1d014f8e3c9ebcc32ecb9e7d2b8305142a5080`  
		Last Modified: Thu, 27 Aug 2026 03:06:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:7febc0d3b13fc90f83e71a9ccf26c2669e105997401d99cedf420c3d1216d69b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4019150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1e78287bd29e64e42bda0eeff3c4a21798b1a21b2e374ddb7e4e6662b31f718`

```dockerfile
```

-	Layers:
	-	`sha256:a189e8273c0d10d7c08c9d4aa974263d229acf43f707805fc955fedacc9dc9e6`  
		Last Modified: Thu, 27 Aug 2026 03:06:02 GMT  
		Size: 4.0 MB (3998592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5491a49559e22b7b18073eaa9390396d8c651849ba6757daaccbe5e98b1e23ea`  
		Last Modified: Thu, 27 Aug 2026 03:06:01 GMT  
		Size: 20.6 KB (20558 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded-trixie` - linux; s390x

```console
$ docker pull perl@sha256:33b007077e99af12c8a72a2e00a13666f264382aadd18205839415c17b40309f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61445880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c692e69a804914847504fe39b0c1ec5d3a723163cce525efd4557a5d4789ef8`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:30:07 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 01:36:52 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 01:36:52 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 01:36:52 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413aed622e63dbd5bd74283d117fc5a53101ea6264cef0853ec2d82dee39687c`  
		Last Modified: Tue, 25 Aug 2026 01:36:39 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5295b6b185429d9dbe105cfd61bf507d23f93cced0ff92a2bb2d1bf4cfabccd`  
		Last Modified: Tue, 25 Aug 2026 01:37:09 GMT  
		Size: 31.6 MB (31577894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7992dcd3f035bb1e34cc7cb6e2ddb41e3ee19762abd1b2ed2d8fa4b80661c08a`  
		Last Modified: Tue, 25 Aug 2026 01:37:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:3c579c0459d031ee113279626ce48a6c25d0e9934db795e765030eda3e28de38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4024096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c928ef81119721750cbc8f8d21342371f26176222832979ffa8454b7770c6447`

```dockerfile
```

-	Layers:
	-	`sha256:8f78c46d88c679ec2cac4c724b2b81829800d8c3805b1335e21a203888e11575`  
		Last Modified: Tue, 25 Aug 2026 01:37:08 GMT  
		Size: 4.0 MB (4003618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5d94139437196260b93fa50d19b16038de588bb5a051c0edbc205be4490403a`  
		Last Modified: Tue, 25 Aug 2026 01:37:08 GMT  
		Size: 20.5 KB (20478 bytes)  
		MIME: application/vnd.in-toto+json
