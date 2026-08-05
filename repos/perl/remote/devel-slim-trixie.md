## `perl:devel-slim-trixie`

```console
$ docker pull perl@sha256:d0d64d546f86f125cb2a23f53d5e8c59779ca49f61f1e16754d731d2fe517a9e
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

### `perl:devel-slim-trixie` - linux; amd64

```console
$ docker pull perl@sha256:dd137f5b51320c5c49ca5d8a3b15977976863959935fab08048ac94180bafac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61974631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a29c3b3dab4e637881af9e555a90b0f5fccc76ac2df62b103c7b8fd3957a02e`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:50:02 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 00:59:55 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 00:59:55 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:59:55 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a04d3c51e589b961e12f8e99d6f96936d1517978f57b4ed70f8e4eebae977cf1`  
		Last Modified: Wed, 05 Aug 2026 00:55:15 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7bb0f33f882b3fc0dd2fea508582202299da593eda2e483b9f13a2efd6c7bf`  
		Last Modified: Wed, 05 Aug 2026 01:00:09 GMT  
		Size: 32.2 MB (32193600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60287da3568db66a2bed8b9edc4dde2d5e6fe79395ec062b987dc8d2d195a68e`  
		Last Modified: Wed, 05 Aug 2026 01:00:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:43211ce0e329003d4a87e4ce9465d3f82d620a4c3febc45863246b418c26ccd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4028834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a90df74336169d587eddd475d87df38168c85402c25f5ddf18f205a54e9891`

```dockerfile
```

-	Layers:
	-	`sha256:073496d2a58dcb3a7144f900b0637e5cbcf3e1f222fc94636f80ffd4a2499797`  
		Last Modified: Wed, 05 Aug 2026 01:00:08 GMT  
		Size: 4.0 MB (4009712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc570564d8c223eea9d5989fd2d0463f29ce0b64bb33113b8c7f8e61a358e986`  
		Last Modified: Wed, 05 Aug 2026 01:00:08 GMT  
		Size: 19.1 KB (19122 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-trixie` - linux; arm variant v5

```console
$ docker pull perl@sha256:98e0b7266871bcf76d551a713fe520999bcb945238f0bda529d03bce34f8ed97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57394537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ebfdef92f4332a26ac35501a544a71a1296a2977b4e92b1a3dba590ff0ff464`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:01 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 00:52:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 00:52:58 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:52:58 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f9bb3211cdc0356fa18f2c315d5a7075a85a04e3f95e49be8e9402d5162bac`  
		Last Modified: Wed, 05 Aug 2026 00:53:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b2c5c0ea63055490f92db1606e565ffda5156f0f8708d4329f6e53f5228c75`  
		Last Modified: Wed, 05 Aug 2026 00:53:09 GMT  
		Size: 29.4 MB (29439558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f1174f475b98cf90be60a169f889cbbf4cc1abde6b06bad928db62b75499a5`  
		Last Modified: Wed, 05 Aug 2026 00:53:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:80b48e7fec57b22eefe0f1ab7889e2715768c748b2647e11be1e6ba616d44d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4021975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb919bd14b7c35466e1f2c8f8ac20304d0cba763764239befcc2b235a42a7ad`

```dockerfile
```

-	Layers:
	-	`sha256:8f3f854920a71cbce71998f4a145083a766c6b908274f511ed35a549cb59fd88`  
		Last Modified: Wed, 05 Aug 2026 00:53:08 GMT  
		Size: 4.0 MB (4002757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:224c23894653d05db69133bc71f2774978826d782b85fe6ff5fad803a4b7da01`  
		Last Modified: Wed, 05 Aug 2026 00:53:08 GMT  
		Size: 19.2 KB (19218 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-trixie` - linux; arm variant v7

```console
$ docker pull perl@sha256:5966d62b7795234b564dec6e962d661a3fa7f53a0b8638727caaf4b557a4b675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54715946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df8bb0577dbe32f4435bb0d3810138fa9f2031b3e0cf09e966a36fb6eef93998`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 22 Jul 2026 18:47:43 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 19:11:56 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 19:11:56 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 19:11:56 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e6794e780230332e78138fd59e8b892a3e381cd3881fe26fabbe7858782b1d`  
		Last Modified: Wed, 22 Jul 2026 18:53:49 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9045f42d0cefd1f7f1b28d7d84ef93e6415fd59e31608d1a4f873a9790af4531`  
		Last Modified: Wed, 22 Jul 2026 19:12:08 GMT  
		Size: 28.5 MB (28509210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1688572bda659067f1c1dfb2d13a8e81749f01d42f073436ac880a567744a976`  
		Last Modified: Wed, 22 Jul 2026 19:12:07 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:ac25c13dbf6b09f56f53565177167d31744c472b91dcee3c6321409c77e250b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4021162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3832bca32eb6ff7bb630697ee30429b6d248379f147b5911650b38db3bbfd7c8`

```dockerfile
```

-	Layers:
	-	`sha256:54aa56966a156069ac2afa14a9b497ee6d5fc297331e85c5da5878a91c24d45e`  
		Last Modified: Wed, 22 Jul 2026 19:12:07 GMT  
		Size: 4.0 MB (4001944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a51a794d33e2ff62d9210bba7c78c622525c5ae31bc0b28a3914e2a510e09b3a`  
		Last Modified: Wed, 22 Jul 2026 19:12:07 GMT  
		Size: 19.2 KB (19218 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:559c569c6c3fa9cb5ce67f34b606fd2007bfd39502540420b301d30f63c023c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62004270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386b95f23e0a53e6d3da9ea85f1b66474e961ae48f71f8f30915b60893ab0c4e`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:58:31 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 01:03:17 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 01:03:17 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 01:03:17 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3faa57ab62973e2c336ccdfce1ccc14409e2825c86f8ec666bda48617470e91`  
		Last Modified: Wed, 05 Aug 2026 01:03:29 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718fad300c20d1930af4abea06faed7db01e6ae33bc0fdd55f0e1727ea71bbf3`  
		Last Modified: Wed, 05 Aug 2026 01:03:29 GMT  
		Size: 31.9 MB (31860397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d537e5649c7c439ba90b9e54203a0bb44337a71bca31b9ea3d859c1d671ccc5e`  
		Last Modified: Wed, 05 Aug 2026 01:03:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:7385fbe505a2010f61e167a0a71879952bdf66125f7b097e82d2b792efab8288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4024049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc587aadb35ca2d67a2d73af45b4003eccc195e9338e58b49b8bc2543cf93505`

```dockerfile
```

-	Layers:
	-	`sha256:03d22895c737b68f80b7107271721134ec7ca3f66e1a794a512e68cefe8a0f5f`  
		Last Modified: Wed, 05 Aug 2026 01:03:29 GMT  
		Size: 4.0 MB (4004799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77f1e135f23adb0cd1ce85e8a0c8c76de9312dba86b130e478bd14cadc24841d`  
		Last Modified: Wed, 05 Aug 2026 01:03:28 GMT  
		Size: 19.2 KB (19250 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-trixie` - linux; ppc64le

```console
$ docker pull perl@sha256:bcd7ff29580cce20a0e869ab4a54eff34ff1adb449c064d98ef372b1ad05137d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66521056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea841557c1bd9b32328b40d2412f38872b049b65c8959ca09720e2cb87ffb07f`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Wed, 22 Jul 2026 19:08:53 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 21:02:07 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 21:02:07 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 21:02:07 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f80b6a74d37dc650e429eb6bac70436ad45802f26776a0c46f2a159efdbbe053`  
		Last Modified: Wed, 22 Jul 2026 19:17:35 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88054935cc4d6312715039032c12701947687a01520863868e4d50fa15dc311e`  
		Last Modified: Wed, 22 Jul 2026 21:02:30 GMT  
		Size: 32.9 MB (32919310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:660a8bc90cbdb310f1988fdbd93d53b09e1f60c2090fd800eb7d844d74010050`  
		Last Modified: Wed, 22 Jul 2026 21:02:29 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:9bdcb4d3e3c337441ff77f688dc0076aa09c416ae0bf3db2a4cc45425f078874
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4024898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e574f49e22525f1193ef534fa2967a54380870822873e487e08596f970d72a8`

```dockerfile
```

-	Layers:
	-	`sha256:f3d87f1ae91cfce13bc9f7e42f251f9d6b342d9c60ff9bfab995ddf2d89eca7d`  
		Last Modified: Wed, 22 Jul 2026 21:02:29 GMT  
		Size: 4.0 MB (4005720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f20eca4441655344dbc6ed6ae75b54cb4636958fb0a1ba9b8445759aa00c124`  
		Last Modified: Wed, 22 Jul 2026 21:02:29 GMT  
		Size: 19.2 KB (19178 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-trixie` - linux; riscv64

```console
$ docker pull perl@sha256:99969f58f4b3a2551499507ddb57650cbdb9bdd6fccace9272c288e934f05d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68309116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038594771dee2a495056925b08a0adec8a682ac0e0409a9a08631c3afdaaf936`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Mon, 20 Jul 2026 02:11:05 GMT
WORKDIR /usr/src/perl
# Thu, 23 Jul 2026 13:30:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 23 Jul 2026 13:30:49 GMT
WORKDIR /usr/src/app
# Thu, 23 Jul 2026 13:30:49 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f0803cb4ff73aea93c0402c00b490b87d4b43d3430cb4ec51e92490d4b247f`  
		Last Modified: Mon, 20 Jul 2026 03:24:52 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2612dc49bbb8d6b3ba32746ce4ce3f66d53c7e213ed77170c65eda7f59531899`  
		Last Modified: Thu, 23 Jul 2026 13:33:14 GMT  
		Size: 40.0 MB (40030645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b5b9808a14c0c3984c7839cf58a19bd50993361e89ba2ccb14b472fca5f0b1`  
		Last Modified: Thu, 23 Jul 2026 13:33:07 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:39bba79dab78ba74d886f803371cddb0cb28dfb8a89902eadb2759aada0098b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4016164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:529f2ccca1cfafbc8b1099353c3a1f63b1f2d57bceb96dbb8ce7f2c40af15cbe`

```dockerfile
```

-	Layers:
	-	`sha256:1a4cb23ad95550fc46d4fde7cd3170d6aaaf838b63a0fbcf60efb9bd04f76cec`  
		Last Modified: Thu, 23 Jul 2026 13:33:08 GMT  
		Size: 4.0 MB (3996986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e982af8b48d1d3fb277cda2a9a0d7052299eba2ab8467c3ff297c1340eb4efd3`  
		Last Modified: Thu, 23 Jul 2026 13:33:07 GMT  
		Size: 19.2 KB (19178 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-trixie` - linux; s390x

```console
$ docker pull perl@sha256:100c51a8e24ed5a17591cf593f1f99a2af436a06c3c26f7be773021f80abf387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61400073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96a697788618d2c31c19183b8ef8419c72012efda8082b1c8f27e7e6ea52428`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Wed, 22 Jul 2026 18:39:42 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 19:46:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 19:46:31 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 19:46:31 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455dfe6ee93b85e5d52d318132aa274e4764ad34ef8352fee55010636c99a237`  
		Last Modified: Wed, 22 Jul 2026 18:54:41 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e7a7127c2dd6b6108fab0da119dc48f9c2d1ff8294b51a8a9c9ae87dbec9711`  
		Last Modified: Wed, 22 Jul 2026 19:46:49 GMT  
		Size: 31.6 MB (31553173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac17110917cda08b2dc691a1b3b5296975856bf20ee6413daf971d3ced8a90a`  
		Last Modified: Wed, 22 Jul 2026 19:46:48 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:bb6e94552aa08b20ee44dc4587ac832e8d530a6016a6869aece9a3924736135a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4021158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2a61e60cbe2e73376067f4c823d584e8dcbd83b152c8a139e90f5251d1ce06a`

```dockerfile
```

-	Layers:
	-	`sha256:eb4f9244085e7c85db3bc44ed27e68d76454e0984279076817f4c92f6d40ce5a`  
		Last Modified: Wed, 22 Jul 2026 19:46:48 GMT  
		Size: 4.0 MB (4002036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5b5f32b3f73da7ae4fbb4c73e8975616526d8f90d7696b9dfed0fbbd60770ce`  
		Last Modified: Wed, 22 Jul 2026 19:46:48 GMT  
		Size: 19.1 KB (19122 bytes)  
		MIME: application/vnd.in-toto+json
