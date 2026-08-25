## `perl:devel-slim-trixie`

```console
$ docker pull perl@sha256:6543fe169d0c2fe96cfd6401fd00a9260d77f6f5030bf3a72922b01e35bb3b41
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
$ docker pull perl@sha256:13dfca904efe99f62a6b2bad53eb8e20fa83b452be93db58b6e462c8982324cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62040136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cc513c731bc6f0a20ed9434ce716f5365561fccd5ae5a63ae2bb8e278dd596b`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:58:02 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 01:08:15 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 01:08:15 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 01:08:15 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2522428b905c9a85cfbbeb5049c8b722254f3aa9f6fd5b33adc740dd1bb7197`  
		Last Modified: Tue, 25 Aug 2026 01:03:23 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:151f96ce90c8abf85c26b43876a490d2d2b59bad5ee039f7d5e0064e95b583b4`  
		Last Modified: Tue, 25 Aug 2026 01:08:27 GMT  
		Size: 32.2 MB (32247209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28bdcb0d507c4f913f4b9e094539bdfa919800d211ee9f8e4c117926cc8711c`  
		Last Modified: Tue, 25 Aug 2026 01:08:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:2f613c4cf0e18abc52175974c93f438fa5ebe09b39f7f88e9c36b5327bd42000
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4029031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a63a77d61fd3319ed092654f1f80bf362a47c30cab0ad55d7d44dd7488f305`

```dockerfile
```

-	Layers:
	-	`sha256:d2dcd0b33058308cb5a99c112902873ce316762a359abf60ff6feed7f500ea70`  
		Last Modified: Tue, 25 Aug 2026 01:08:26 GMT  
		Size: 4.0 MB (4009910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f12e8b39a0cb728ed44ff5bb718b7ef428b5ab823a4e5e54b5f70feead0b9504`  
		Last Modified: Tue, 25 Aug 2026 01:08:26 GMT  
		Size: 19.1 KB (19121 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-trixie` - linux; arm variant v5

```console
$ docker pull perl@sha256:04f7d54f5ea093ee9fb4cc12b8998811443e6e0a62120d919eb6a65a16662cdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57445253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ba7efc2a402f4aba4c9a839b6f5532e27919e88fcf85a47f56126d9879a61aa`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 17:59:25 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:18:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:18:35 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:18:35 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c40c81acc11d14ca67f17baa58548d8a3f29e239210a63362ff2323253e042`  
		Last Modified: Fri, 21 Aug 2026 18:05:46 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e759dd841ef0adc1fb01039e66c0d9f1cae493d19722e88260287da355a80b6`  
		Last Modified: Fri, 21 Aug 2026 18:18:46 GMT  
		Size: 29.5 MB (29490271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897778ca313d0863006ab68802c8c7da91b5f49b11d7040f2ca0d2544ddb56ce`  
		Last Modified: Fri, 21 Aug 2026 18:18:45 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:940696f92b1c6895c4779c8eadbb007f88d56d2d3d2846198be7ef8d982f6a80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4021974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:925371ff43d5e8974c2939c44c40c8598068a48284450831f0a8cde6bf9fd681`

```dockerfile
```

-	Layers:
	-	`sha256:3506db764342f0bfcc86b03d4d96b8104d1f99c084f2ebc309f6e538f8d7225f`  
		Last Modified: Fri, 21 Aug 2026 18:18:46 GMT  
		Size: 4.0 MB (4002757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52df376980c99bddea07f977f5d7bb33ee6c941f5d61a0e7d70a20c629b4cd16`  
		Last Modified: Fri, 21 Aug 2026 18:18:45 GMT  
		Size: 19.2 KB (19217 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-trixie` - linux; arm variant v7

```console
$ docker pull perl@sha256:477c47b82ed0776570622c2cccb52b729bef2191e5774ab83f0941670f6b1f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54764386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65a767a03895871b7cb3c7b53b1fe04091c4246169273e3274f85e4adf0f2b74`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 18:29:46 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:35:20 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:35:20 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:35:20 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549cd4d7aeebce24529cee154d66d033a7e8027fc02d3111d690a1967a012e9a`  
		Last Modified: Fri, 21 Aug 2026 18:35:31 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e7f2286566b651ae05dfc9770114c336e87219c09bf9b08100f2a332f6cd9b`  
		Last Modified: Fri, 21 Aug 2026 18:35:32 GMT  
		Size: 28.6 MB (28557746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b12d0ab5e65c6f9adc3306306994dce27f31b87edd680095ec7a584aa0ff023`  
		Last Modified: Fri, 21 Aug 2026 18:35:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:d4acd1b43975acc608c708b406e129cfc8a3844473b47e6bba0a3e87dfbc0e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4021165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6bc370773432caf8fcae8c6a5cc18561f5b0d13b482d35c043d6e336c65b79c`

```dockerfile
```

-	Layers:
	-	`sha256:c775ff5faa5a657feff584eb7866844eb60b45a290d80992ff3ecb62f4d35a25`  
		Last Modified: Fri, 21 Aug 2026 18:35:31 GMT  
		Size: 4.0 MB (4001948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:958a7b5058464689862521e02ce097e29466cc0a87d44a6be1cc794068588711`  
		Last Modified: Fri, 21 Aug 2026 18:35:31 GMT  
		Size: 19.2 KB (19217 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:6f4cfd87d7411eb679633565da8ccaedade1119470bb72acb4b28776d723f6f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62072137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b82ec60d22b076f8f47f8fa6575bed8e306e8fa3d2310f67788961b2f200cf`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:03:57 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 01:08:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 01:08:41 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 01:08:41 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaaa9f525e18409084cce8d9d4179ec93b63b5e9763a6fdc4f56fb00aa40bedd`  
		Last Modified: Tue, 25 Aug 2026 01:08:53 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dedef84bfb9431c2ba88a01bdced6d106355e1235a2f1e8acee218e4be9fb577`  
		Last Modified: Tue, 25 Aug 2026 01:08:54 GMT  
		Size: 31.9 MB (31912287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a56dac59e129b24058308d57c3feb28ce5bbe10129fad3b5cc209d607a0924e1`  
		Last Modified: Tue, 25 Aug 2026 01:08:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:808875c0ea28fab72d12a8fe20f54b2a572634ba26065a69e8fd02a867fa25d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4024246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02759625e44d456cb9aeb3365ae440ebb71240d55d0669f741926d94f8aabe89`

```dockerfile
```

-	Layers:
	-	`sha256:e51c265349dd167e42d5edd26369414e432cfa404ef014294f60245114699615`  
		Last Modified: Tue, 25 Aug 2026 01:08:53 GMT  
		Size: 4.0 MB (4004997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:609f4fd3d9dba26bb64483a7db3df7caffcb6713d9c237476a33cbcd3ee742bb`  
		Last Modified: Tue, 25 Aug 2026 01:08:52 GMT  
		Size: 19.2 KB (19249 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-trixie` - linux; ppc64le

```console
$ docker pull perl@sha256:8dbb70029e2b90a52f40e82730b0d90a1fdcb1ce0d88e4c830fe15db1a2f7b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66563793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83c7b4c40aa4c3edb37f5e5a24e916323aed4a323fce7f02afdcfda8046b4040`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 18:12:32 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 20:01:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 20:01:25 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 20:01:25 GMT
CMD ["perl5.45.2" "-de0"]
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
	-	`sha256:c238e4175cb160aeb83ad179740a3f66f19739f03f02db7be02da638cf672a8a`  
		Last Modified: Fri, 21 Aug 2026 20:01:46 GMT  
		Size: 33.0 MB (32962184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800947d6f554d9ecc199147e793ec274fe523f78852d184ef75daec832f342b0`  
		Last Modified: Fri, 21 Aug 2026 20:01:45 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:937ba0349686a18bb75e1d9a6b54924c686a352f6d3fbf9188b10ba23e7f4a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4024901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:088bc0d7f922c6c2119eed03f5025f5b76e6f3aa58c45e1ff654af449650c461`

```dockerfile
```

-	Layers:
	-	`sha256:ee955859fea32031fb9459901153249deee423ec5467153a6673f1313f2bfb7d`  
		Last Modified: Fri, 21 Aug 2026 20:01:45 GMT  
		Size: 4.0 MB (4005724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4755f7f537d036ac3c26ea838a33c14aa1f29a6ba3804910ee1c2c00d25d5b8a`  
		Last Modified: Fri, 21 Aug 2026 20:01:45 GMT  
		Size: 19.2 KB (19177 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-trixie` - linux; riscv64

```console
$ docker pull perl@sha256:6d368c2f2c66897e4a5d8cfd7bde1f36846533e7c24412e7c1597c9ec374d508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.4 MB (68356775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49cea275acefc66b764bd7a4b74f2741d62a31c84a2428f526b41600a0032e8d`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:59:18 GMT
WORKDIR /usr/src/perl
# Sat, 22 Aug 2026 11:37:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Sat, 22 Aug 2026 11:37:12 GMT
WORKDIR /usr/src/app
# Sat, 22 Aug 2026 11:37:12 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef966a2fc99083e9dca01062fb92bbf8dd051d70e5fa18dd4d6cb2429f32099b`  
		Last Modified: Fri, 21 Aug 2026 21:12:07 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8d9c45eedf66454d1f60cadf397397decb73037afe7718db3e9d4ea4c395e46`  
		Last Modified: Sat, 22 Aug 2026 11:39:38 GMT  
		Size: 40.1 MB (40078390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a74c8ca0110e5ff9a695b7d516458627d95bcc1471ae531bfedc77511b5fa204`  
		Last Modified: Sat, 22 Aug 2026 11:39:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:0ac95b17173ef525fc49104f2a8fe37878cccc59173073399a4b68c655df2288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4016167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901bf99a0596d62edc90d0285801b3348c7ee32ffecfc1bbcf550559b5b70592`

```dockerfile
```

-	Layers:
	-	`sha256:43d6c0c414314f5a9d879cf28d124c8fa4ce9171b733d1974033cf5a96a13528`  
		Last Modified: Sat, 22 Aug 2026 11:39:33 GMT  
		Size: 4.0 MB (3996990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a183ce585b89ac3443909271f8c00fdd1b192a77ec963462e609b087d0156779`  
		Last Modified: Sat, 22 Aug 2026 11:39:32 GMT  
		Size: 19.2 KB (19177 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-trixie` - linux; s390x

```console
$ docker pull perl@sha256:2271b3ef65863c167623e4f49bd3b7876fa8bee3aee697e217e501cc2a8ec1a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61471571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7e014d903501a9d1436b20c18dafcc6b0985e3498647076378bb712bb303e71`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:30:07 GMT
WORKDIR /usr/src/perl
# Tue, 25 Aug 2026 01:44:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 25 Aug 2026 01:44:58 GMT
WORKDIR /usr/src/app
# Tue, 25 Aug 2026 01:44:58 GMT
CMD ["perl5.45.2" "-de0"]
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
	-	`sha256:def62d8e210248d1255a070cd43df72596f88b28a21ccdb28d0dcc2677cb5c44`  
		Last Modified: Tue, 25 Aug 2026 01:45:17 GMT  
		Size: 31.6 MB (31603585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abd77542de7398dc97379bcba343aee43c14a76e244c35c38e690542b014873`  
		Last Modified: Tue, 25 Aug 2026 01:45:16 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:92d8cf4378623690029791bbe6b13dc3330c9effb3a108fb92c5d456842ecfcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4021359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d0f57ee5b5166ee2de7dfba0cb0e7e93f02ed1ac06cd9e851a51ec1a29a454`

```dockerfile
```

-	Layers:
	-	`sha256:dc4b52d2cc799ffcf2038b9cd28b0a19f0042dc4556776b430c5e2afc235c15f`  
		Last Modified: Tue, 25 Aug 2026 01:45:17 GMT  
		Size: 4.0 MB (4002238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a17e4b24ccc4ce0c45dd9634c4816a58c20ba40105bf9e46c296b42dfcbde913`  
		Last Modified: Tue, 25 Aug 2026 01:45:16 GMT  
		Size: 19.1 KB (19121 bytes)  
		MIME: application/vnd.in-toto+json
