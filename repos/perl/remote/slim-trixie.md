## `perl:slim-trixie`

```console
$ docker pull perl@sha256:a8c811ad703da5a3e465f005cf86e3bd1234c5ba1c9b4374a9f30c34dcd8c069
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

### `perl:slim-trixie` - linux; amd64

```console
$ docker pull perl@sha256:acfde311119fea731c002558beda7e9706d430f29281e525ecda4248433ed656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61948150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10c13b8b26f462cd4f4c0f6a5b0f3813f753967a014d4123f33da2ce4ec527f2`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 17:53:41 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 17:58:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 17:58:13 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 17:58:13 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b404116d26139edce41c6a07185ffb370daf1b1d8ec36d5cdd3dba22efe5ac2a`  
		Last Modified: Fri, 21 Aug 2026 17:58:24 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ca5204358847a8271272688eb4dc043d653ec729de6bae2c36d91f4587b514`  
		Last Modified: Fri, 21 Aug 2026 17:58:25 GMT  
		Size: 32.2 MB (32167118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb98e9c4368b240dd95f8cb1ce303c0d12041337787d306ec6f683324057bc7e`  
		Last Modified: Fri, 21 Aug 2026 17:58:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:e819db587c372df88feb18b280a590e25a2b96a89d12432826bb864034822839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4031163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f9bae32e11bfdce6d4c6fec8b2ef2786babdaf7a46e9aabf3ec447d26b23279`

```dockerfile
```

-	Layers:
	-	`sha256:23a19acc1e8276b9ba527f9296923e18bd214e9d8239fd5965a5260d4bff59ac`  
		Last Modified: Fri, 21 Aug 2026 17:58:24 GMT  
		Size: 4.0 MB (4010912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6039dc6bbf49304ac8e0cbae075b84d516777f9e56c6281bf2b5a37772e03314`  
		Last Modified: Fri, 21 Aug 2026 17:58:24 GMT  
		Size: 20.3 KB (20251 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-trixie` - linux; arm variant v5

```console
$ docker pull perl@sha256:13260ced74ff9c41d95e357f1bb52a31b598af73cac6f07c0502c687b1805a1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57369969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471a73747f977a98032c4f2cf1fea8f5819378840e45442759607926c6125dc7`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 17:59:23 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:05:10 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:05:10 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:05:10 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19e61ca23eae61d34dfacb4afc77481335c4bb8d6e87c448945a2412d517c2e`  
		Last Modified: Fri, 21 Aug 2026 18:05:21 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb144e7238064e8cbed7c4963beb95e416c663068d9dedc3fea9261c616922a`  
		Last Modified: Fri, 21 Aug 2026 18:05:22 GMT  
		Size: 29.4 MB (29414988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10ca4e7ddefc6854a3956d9e1d0cff36b5ae139a4c408bd85a7f8013b2524fdf`  
		Last Modified: Fri, 21 Aug 2026 18:05:21 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:3129e21e4a1c17875247e9b6bb53f057b06a99ed882d0ed1d824d6b967deb19f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4024368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18b70f735a6516d2b342a2dbb13a7ece1e4ace5f092a1057ce3018d4219179b`

```dockerfile
```

-	Layers:
	-	`sha256:39a47e1aa38cc1a3c6102bd1e3250f764d6ccc5ad745616dadc7a581c6bf4b56`  
		Last Modified: Fri, 21 Aug 2026 18:05:21 GMT  
		Size: 4.0 MB (4003989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:767ae31c5540faf43ff8d947c8ba9de7d0ddd6da967bec662088b52f0bc40f93`  
		Last Modified: Fri, 21 Aug 2026 18:05:21 GMT  
		Size: 20.4 KB (20379 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-trixie` - linux; arm variant v7

```console
$ docker pull perl@sha256:121515642d600d3b78cb8a872576cdedb90bd3cc16b6ef24743c929777ef3cd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54686676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5a6336bada3c62947ea02ec3706c373c84d9f0d8bd0021a1c296ed6a15b370a`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 17:59:53 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:05:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:05:34 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:05:34 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0028a15b640baa510a4f011a514ec70af4801c797c005181cb1ecf054e3b8dc3`  
		Last Modified: Fri, 21 Aug 2026 18:05:45 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533a8fce3fb68a12e808e77eb7f5a7decd2c3b9d3983938ae9e875e839b617e8`  
		Last Modified: Fri, 21 Aug 2026 18:05:45 GMT  
		Size: 28.5 MB (28480036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e20f0649bcbba77c9bf5cb6d64abe3831e5e3ea666a0c164a3359ff4f25fec5`  
		Last Modified: Fri, 21 Aug 2026 18:05:45 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:0486eea42219806c64e6af0c0d6f98ed2f665c50f5a5835e2b970776a8278497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4023559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5166523520e8f64b6de6aafed7c29ab0ef0e9533206d8e12a889cdeffa40c726`

```dockerfile
```

-	Layers:
	-	`sha256:cbd01ee5db117245ffe51e75d38aca2e59dfd47196a683626ab14375fbf6300a`  
		Last Modified: Fri, 21 Aug 2026 18:05:45 GMT  
		Size: 4.0 MB (4003180 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9eca440419559320924ba8f8e77f9f251db8981c663ad9472033ea0376913348`  
		Last Modified: Fri, 21 Aug 2026 18:05:45 GMT  
		Size: 20.4 KB (20379 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-trixie` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:d506d4d2f00adfd6b894b495ff78860804d719cfdfdef5b87c6751c3c559f646
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61978759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d55c1bee6a6addfee152bbbfa884de7bffc7a803bdaa6360fb67a328102858a7`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 17:53:30 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 17:58:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 17:58:19 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 17:58:19 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:becbcc348dbe2abd0511fc131645f6cee0b3a93c0c300684fbab4e0bf1c0a283`  
		Last Modified: Fri, 21 Aug 2026 17:58:30 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9171500472cba05ee5025bafb48f84b7c2bbefd4ca866efabe4fc52f08f5d737`  
		Last Modified: Fri, 21 Aug 2026 17:58:31 GMT  
		Size: 31.8 MB (31834882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ffe105e0ed89403adcb6109035398fbd87ffe5f855a49d204d63f23e7f44b6`  
		Last Modified: Fri, 21 Aug 2026 17:58:30 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:1e4db8390295bcf0bef662bf1271f28647aa7c5c6737bd01253a8ef582c6d835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4026474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27a612ad51118f08703e8e12fc1eaafa8a20faaca4ea04271a228ebe481cab8`

```dockerfile
```

-	Layers:
	-	`sha256:4b1277c437bb1e1e2783a5baa3f1aa9f498299351cc18208325104308212022b`  
		Last Modified: Fri, 21 Aug 2026 17:58:30 GMT  
		Size: 4.0 MB (4006047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ab23caf411cbaaca85d337dafba26002d41e506bda9e4125574bd1b90776ea1`  
		Last Modified: Fri, 21 Aug 2026 17:58:30 GMT  
		Size: 20.4 KB (20427 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-trixie` - linux; ppc64le

```console
$ docker pull perl@sha256:76b5f8e14ffdeef8b98bfba289ca8a2501ad5dcfb3937ba11027cb093570ec4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66491884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2972b75db05ccb94091c9fe5181b23724262b7b1181c73eedd87322950ab2263`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 18:12:32 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:21:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:21:05 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:21:05 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b58e2289c37e003ae21b6e6eaab429e91209c876caff66af36f99b6d1df97c0d`  
		Last Modified: Fri, 21 Aug 2026 18:21:28 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f66240132617bb333c10804ae7c65b1587949b667b11e0a375deffce034136e`  
		Last Modified: Fri, 21 Aug 2026 18:21:29 GMT  
		Size: 32.9 MB (32890274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372588985103fac74aa2241b526413256ef0744f4046e6626009dacd7edebee5`  
		Last Modified: Fri, 21 Aug 2026 18:21:28 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:d8151cc55c381d18bae31e7a70f80455eb0a84dcaa8f86a11e8445c24c719c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4027279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a3d37389f116b094a3ae7f62821b705c0610bb4ee6374cca8d1b87f2f86512e`

```dockerfile
```

-	Layers:
	-	`sha256:d8d59ab14457e69a59987cf109187ab674b079cff37c041404e2407bff968321`  
		Last Modified: Fri, 21 Aug 2026 18:21:29 GMT  
		Size: 4.0 MB (4006948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3900be9ac54d42ba96456843b608567c0f704d137e17616909e709e701841ced`  
		Last Modified: Fri, 21 Aug 2026 18:21:28 GMT  
		Size: 20.3 KB (20331 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-trixie` - linux; riscv64

```console
$ docker pull perl@sha256:820892c4224b5f2cbd54e0897d38034a4cb975b0c566e2dfc4f8e83f5b18e4fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68280408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f098081720a37b69895be28d82155014a66b0b2f7313800a6b207341ef781b`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 20:00:14 GMT
WORKDIR /usr/src/perl
# Thu, 06 Aug 2026 21:10:07 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 06 Aug 2026 21:10:08 GMT
WORKDIR /usr/src/app
# Thu, 06 Aug 2026 21:10:08 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17aacdff69518620a55fec5f3fb065987048df91d45e0d104b3af0a087845490`  
		Last Modified: Thu, 06 Aug 2026 21:12:28 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6f6c71250cd9dd76d532d20e23e32a7a11746ab7fa9441ab7a1a0c25a3dca7`  
		Last Modified: Thu, 06 Aug 2026 21:12:35 GMT  
		Size: 40.0 MB (40002024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e065f72b4ee2cf15e89b4880a33ff5840e8d7c3daf1278b61c5324980525e9e0`  
		Last Modified: Thu, 06 Aug 2026 21:12:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:f183c4c61f0288ac5f6b667925c4bab0dae1d1a9646fd144d820aabc2e2e6c3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4018545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21291a6d7a2323d028c2d2548af2b4986a59735ba384720d2ad316fa5a5356f1`

```dockerfile
```

-	Layers:
	-	`sha256:1fe2c51312e8aff7b64d270237bbccd47eedb79d6f972495f19586091bab069e`  
		Last Modified: Thu, 06 Aug 2026 21:12:29 GMT  
		Size: 4.0 MB (3998214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93ce2dca20595351800883b9d15a2c43669da10fb739cb8f8766c99dd3feb3ba`  
		Last Modified: Thu, 06 Aug 2026 21:12:28 GMT  
		Size: 20.3 KB (20331 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-trixie` - linux; s390x

```console
$ docker pull perl@sha256:abe7eeafb4ad084bd9566108d381e569079d103ca53d924eb4cc8b8f50e4ed49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61372333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be87879f0a41c75e66ea516c6eab938b10a46d4d93d4cca6356b6e6c5fe4337`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 17:54:02 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:00:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:00:33 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:00:33 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd7b88616a00d7b40b2c21dc7c64bcd5eb1dcbe91ffc16fff1d99e6f1e397cd`  
		Last Modified: Fri, 21 Aug 2026 18:00:50 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c033552a5ab86d945696c6f69af39ad71cb28849225d61e305fe4aa7725991d6`  
		Last Modified: Fri, 21 Aug 2026 18:00:50 GMT  
		Size: 31.5 MB (31525494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42496049dee537ff4076c42b5f34307c9ab147351f530d88c0481cb1e971b9ba`  
		Last Modified: Fri, 21 Aug 2026 18:00:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:97b2086a06fbb1d92b66384370abd31d631c473608439144e15924aa0f0646fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4023491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d66ea51d0b862770e15dc94c3aefc203bc5a030b9d989145dc74dab088c55be7`

```dockerfile
```

-	Layers:
	-	`sha256:f611250c696832bf2aef9b791e8632f83a3124a2a8d2571f9ddb00b72234d06a`  
		Last Modified: Fri, 21 Aug 2026 18:00:53 GMT  
		Size: 4.0 MB (4003240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b722fc7973cab6c9d4faf2ef4d6b4c3bf96f4f743f6fde37b5d9a2498888ce1d`  
		Last Modified: Fri, 21 Aug 2026 18:00:50 GMT  
		Size: 20.3 KB (20251 bytes)  
		MIME: application/vnd.in-toto+json
