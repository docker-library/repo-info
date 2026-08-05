## `perl:5-slim-bookworm`

```console
$ docker pull perl@sha256:f0793503f21d1d91da1008155280adf7c9eaf16041b9633c98558332dd19f526
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

### `perl:5-slim-bookworm` - linux; amd64

```console
$ docker pull perl@sha256:f0c26229a811d99c0a15ffd46739a2c6cd0ce1d55727ee37cc745aaf4a8567ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.7 MB (58650623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b5c21c9d6392b14eefff099621e6b1fa6120f358def511af8952eda596c8ea5`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:49:57 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 00:54:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 00:54:35 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:54:35 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:710e8929fd0057db5555c2bfe233472cecc148ed2795d2694235f392856a17ed`  
		Last Modified: Wed, 05 Aug 2026 00:54:47 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d6eb929f3553718463d68d9f125a7ea11507b05e130a3241875bf81c062258`  
		Last Modified: Wed, 05 Aug 2026 00:54:48 GMT  
		Size: 30.4 MB (30417766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654757bb9d60912baec7b326b6e8934a1e883799ace964206eacbb284fe23f9e`  
		Last Modified: Wed, 05 Aug 2026 00:54:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:40e4f6813c31aad2c698d6a4edc3c595b8d93970e1b9e76a063cdc8acd11a670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3958823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cb0838753d240815bc8037ed7442523bb446557266d2a052e66fc9129cdd7af`

```dockerfile
```

-	Layers:
	-	`sha256:5abdd6b16f2827879b9f4dccb93f4fe6bc40246660b19e6dcc0547b23bd41f9f`  
		Last Modified: Wed, 05 Aug 2026 00:54:47 GMT  
		Size: 3.9 MB (3940034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec9cc0adc7a46afe4f2689e4b24ff1e1ff45af74dd39f1578078a65e5c5c7b26`  
		Last Modified: Wed, 05 Aug 2026 00:54:47 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-slim-bookworm` - linux; arm variant v7

```console
$ docker pull perl@sha256:4bc19b05039952da22722e6ab19ca0598bf705185338562918bc9139101cecc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50501953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1176dc2cec945b0b8b0edddfedc8ecbb65e77c64c8e7b0411ddcced45ea84311`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:23:03 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 01:29:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 01:29:15 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 01:29:15 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84b47b66172c2eb0155668d7717431b67c5e28b588edfc5166054bce5a434bb6`  
		Last Modified: Wed, 05 Aug 2026 01:29:24 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dedf98a76cbe0b414b31b6b54fc60d0e76d2bd7eb95814823ac041b2b8d957a`  
		Last Modified: Wed, 05 Aug 2026 01:29:25 GMT  
		Size: 26.6 MB (26561938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b67bc7733bedb55a9e1491834a13039217f54c209c31aa30e345f4e2ee581b`  
		Last Modified: Wed, 05 Aug 2026 01:29:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:421ba23b5595373fef061b1d8b0f19b21bf55253017486395d6817dafb712b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3929003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c002973d9d4e2838d378ad5e5aea90b495434d390ac94c84f7cedaca0b39b99`

```dockerfile
```

-	Layers:
	-	`sha256:6a6bdb1dc734d298b188a0c06cc3870aefe297e48eac540c8e05c7c53a462470`  
		Last Modified: Wed, 05 Aug 2026 01:29:24 GMT  
		Size: 3.9 MB (3910126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df67d678107748490de9748d8bbe218c1c1fa68ddab26e207527607dc6abf578`  
		Last Modified: Wed, 05 Aug 2026 01:29:24 GMT  
		Size: 18.9 KB (18877 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:b6182559a90d13c61fa368194ee54d366fa0d9d9e6e453bbda385a187c2ff265
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57383697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6ce3b1e7ded4db143b6c2e6b067e5e00e1c92c19666477f37cc9d3e77ce3f34`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:52:35 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 00:57:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 00:57:28 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:57:28 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05de5edea8e7d75453c832582be1abf0efcc00b83987b169aadca3f7832fbc5`  
		Last Modified: Wed, 05 Aug 2026 00:57:39 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a19f82abe9890a87dc20921380376042c2c3d991e40e939deb7517bda8d9bc71`  
		Last Modified: Wed, 05 Aug 2026 00:57:40 GMT  
		Size: 29.3 MB (29266229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fdb8d429722fa1e4a4858aba15788ecc2e5deb1495d82f1c01636f0cd3ab5f5`  
		Last Modified: Wed, 05 Aug 2026 00:57:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:c4263ea8d617c037d24fbc6b104dca4a1a4b4079cd32b8a8f14277334415f710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3930200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bf6f28037d9ab2248fae589664818128192efe069bfdcf2abef7e82bc6319e0`

```dockerfile
```

-	Layers:
	-	`sha256:a4abd02406f2c3cb1eff554ff8fe1d0181618f8c1f9fa8ef5f4a1d0f76ada214`  
		Last Modified: Wed, 05 Aug 2026 00:57:39 GMT  
		Size: 3.9 MB (3911295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:778087363bef86695266d404c9cc1a0cdcfdc2bed20d095099d20a544a4da257`  
		Last Modified: Wed, 05 Aug 2026 00:57:39 GMT  
		Size: 18.9 KB (18905 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-slim-bookworm` - linux; 386

```console
$ docker pull perl@sha256:2fa3ab2254fe965fcf82f1a553604ec927bef955255f9970d39ab923b7c18dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.8 MB (58756161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e765650e4e9b157f3cb1ea4712b29b9073168b290d3a0e2291643be4fff8e8fb`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:49:33 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 00:54:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 00:54:28 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:54:28 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c2abfb31f8489d4163d49684a92551e92b8371bb5f3702e5bd90f0178abe6df`  
		Last Modified: Wed, 05 Aug 2026 00:54:37 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4412936ec108aec551c0e5a5752d4e145f317eac3cc1caaf925768669680528`  
		Last Modified: Wed, 05 Aug 2026 00:54:38 GMT  
		Size: 29.5 MB (29534918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5113565b0372f8c4dd822f579b4c1f6938fecbbf54802d4c0ca8ded2ed7d50a0`  
		Last Modified: Wed, 05 Aug 2026 00:54:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:38802ade8fa44bd8a9316ebec659c7e84c0543eeed09c727f322854ac75e0c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3952718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c372ac71cdef9cfd6b727903a8adf3902368c1f0509f9fb8e0497b749838ab6`

```dockerfile
```

-	Layers:
	-	`sha256:78e49a5495caaa525d98b6754e9f3d1285a10c3b8cc2b2f1ad4273bdbf3112ab`  
		Last Modified: Wed, 05 Aug 2026 00:54:38 GMT  
		Size: 3.9 MB (3933966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d9933e9c43435ec552fd5085c7b73fd31d4b2756e89bb286e4eb3ba553b2276`  
		Last Modified: Wed, 05 Aug 2026 00:54:38 GMT  
		Size: 18.8 KB (18752 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-slim-bookworm` - linux; ppc64le

```console
$ docker pull perl@sha256:c81a90d7308b9027273f05f41eb1be34e68b6acf82265645f721d42cc1cd9937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63287719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:043dad7b3e39bdcbf1e5b303c8f956b564274ff87711a15d52803729f5f5a6db`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:04:59 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 01:13:44 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 01:13:44 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 01:13:44 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9fb4a238f1cc3258b3ff5e31deea1d645bc5fa2978f5e5abb6026f9024aea8`  
		Last Modified: Wed, 05 Aug 2026 01:14:05 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5d3f4d6c31084a87f80214b1205ce6019d2ae7a0fbe90b2a854420d778a83e`  
		Last Modified: Wed, 05 Aug 2026 01:14:06 GMT  
		Size: 31.2 MB (31211130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:367dcb3df327df569c2cc7816ba6e5ef1d65ec144b9b9e9aa4d10013294b355b`  
		Last Modified: Wed, 05 Aug 2026 01:14:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:3ffe8fcb8ad84c826f05bda2d7f222450a5794374b2305adcf48542baa4511f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3944813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:796465ba9e383b575d5a99618c8cadfdb0cd1de64d0e71370b35dedb5e1f39f5`

```dockerfile
```

-	Layers:
	-	`sha256:619bc1edbc14e18ede68851bcb18ab35d25bc81f8b2882ed9787239011b4d86c`  
		Last Modified: Wed, 05 Aug 2026 01:14:06 GMT  
		Size: 3.9 MB (3925974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:465733c929400f27aaea1e795e63356550187b71eba141c76c8fbec712801bbe`  
		Last Modified: Wed, 05 Aug 2026 01:14:06 GMT  
		Size: 18.8 KB (18839 bytes)  
		MIME: application/vnd.in-toto+json
