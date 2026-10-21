## `perl:stable-slim-bookworm`

```console
$ docker pull perl@sha256:1acb6f9ed2c3bdcee31b7660fe665e0baf308f47e1c746035eb75f7f83c90673
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

### `perl:stable-slim-bookworm` - linux; amd64

```console
$ docker pull perl@sha256:699c50f30057126f81353263d22a38b29a859fad33eb8098a80565d37ec24768
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58484911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98742ea851a307bfd66c698672e2ac1f0f5d789da4f4e87c659c11926b77f24c`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:50:39 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 00:55:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 00:55:24 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:55:24 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b568cded08127d6ad59866510b1d3b8db578ca67672ee85f439663bfdb9f50ae`  
		Last Modified: Wed, 21 Oct 2026 00:55:36 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc9aa344969b72670a54ebaeab9c6b0523309e6c794c590182ede5e11114705a`  
		Last Modified: Wed, 21 Oct 2026 00:55:37 GMT  
		Size: 30.2 MB (30236711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e41d901eb649ce9ab9109dea8c16925b4707089f5304b73042f1cf19bca9a24`  
		Last Modified: Wed, 21 Oct 2026 00:55:36 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:7c4fe415004086dab0a50ad897c5333e9cf31d3b89f48145104f3c6a1b0889ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3962795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58a69b66eb601407310eb366b1d12964877aaa6a37e5cbd85735535f5c99448b`

```dockerfile
```

-	Layers:
	-	`sha256:6bbb85f30bffee0bc7f46dad58723af605b67a280e59992adcf10400cf9dabc2`  
		Last Modified: Wed, 21 Oct 2026 00:55:36 GMT  
		Size: 3.9 MB (3944006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20b93ae8d9380d4aee694b402639f4c7ee911c41c8befbf9b6fb2ecdfe5e9678`  
		Last Modified: Wed, 21 Oct 2026 00:55:36 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-bookworm` - linux; arm variant v7

```console
$ docker pull perl@sha256:cbbbc8b4cefe37023861cd1f789da22985394ea32732308f65a00365c189653a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50358096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c36a5a8612f655196f84242c8c563fb09cee8df7123a120d7910d56ef63da4`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:32:58 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 01:38:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 01:38:38 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 01:38:38 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:201ed164c7c7f240e8bb09d83e7b9783f48e66bd7b12ea87c87224b5516753a9`  
		Last Modified: Wed, 21 Oct 2026 01:38:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9a7c4b9594ead33ee13674c338fbbe19d5c6da7f775bd0bb54ae9b9092545e`  
		Last Modified: Wed, 21 Oct 2026 01:38:49 GMT  
		Size: 26.4 MB (26396341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dab3ac1b6b9cb553daf3b794c1dc5a79f2a646d2d74adb486ccfb3c3aae3bd57`  
		Last Modified: Wed, 21 Oct 2026 01:38:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:bf072f56d36fe614407e095c39a0864ab5a40c15bf91a534e3f4a86d3cece5ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3932975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0087de123d7baeb88b4dcc1e6a67b04947019f55b4dcc57529941e51544cc5ac`

```dockerfile
```

-	Layers:
	-	`sha256:830fed6d7196d25382b18465366c83aee035bb01fef3f9b758a6dba6c934b742`  
		Last Modified: Wed, 21 Oct 2026 01:38:48 GMT  
		Size: 3.9 MB (3914098 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24bd4249e3f904bbb60e482ca15d470d97f6557401ee131dd3f61e272e378d83`  
		Last Modified: Wed, 21 Oct 2026 01:38:48 GMT  
		Size: 18.9 KB (18877 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:913fa41c7102d7943bf0defa91cf7e5a0e744199123d34734e3da2c6fdbb9684
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.2 MB (57229772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:180908a66772924c0ea43f926967ca78142b04b7026e6a9fdb8875f81ffbce67`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:53:48 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 00:58:40 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 00:58:40 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:58:40 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777036a4c2b4d6810dcf43d41c0e5110827834c84e33151f2176b1ab834746a6`  
		Last Modified: Wed, 21 Oct 2026 00:58:52 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7375dba61aceb27ac78c62e916b8a79c48c249ef991d80ccafd870b2e3dce0ea`  
		Last Modified: Wed, 21 Oct 2026 00:58:53 GMT  
		Size: 29.1 MB (29091080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dcc7e5764cf6a529f57b8c29a653efa825e7a136f83ba41331009856bbd6f87`  
		Last Modified: Wed, 21 Oct 2026 00:58:51 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:1c02380aa6f5e59b6f2dfd7bc701183563b82204f3a710334c919c35a91492eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3934172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13258fdc1fd05673ade138e7a430944bcb7df88998c74a9f4004bde599a37b2f`

```dockerfile
```

-	Layers:
	-	`sha256:c17bb36c9e71836ff37f54cd593e301b1c099868e499373f526ffdb6964f60de`  
		Last Modified: Wed, 21 Oct 2026 00:58:52 GMT  
		Size: 3.9 MB (3915267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f5a224040bcd2670dd4a36d90455e5ed22483d8e30edd24a59f0726847640b1`  
		Last Modified: Wed, 21 Oct 2026 00:58:51 GMT  
		Size: 18.9 KB (18905 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-bookworm` - linux; 386

```console
$ docker pull perl@sha256:062dd1906e8e5e84b8d2432efcee12761636f73ba364c1d5891f630e1e3ebd2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.6 MB (58605432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928fc01b554ed1f2282d8d75419b21b19e187506aab9e3c78f1dd50c9d85b2a6`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:50:39 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 00:55:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 00:55:42 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:55:42 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:f18bb404f18e1a55e73386e40eac6da347163fe58e54559004ef9b0d1c24e4f2`  
		Last Modified: Tue, 20 Oct 2026 23:30:30 GMT  
		Size: 29.2 MB (29239245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b568cded08127d6ad59866510b1d3b8db578ca67672ee85f439663bfdb9f50ae`  
		Last Modified: Wed, 21 Oct 2026 00:55:36 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6deb8ab9a7dadbd4654cb84659a71348f0759483c22ef5059a6328ffd69ec23`  
		Last Modified: Wed, 21 Oct 2026 00:55:53 GMT  
		Size: 29.4 MB (29365922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9245bcd1be1170f2ab531198e93094ca47e647e9052155b89d0a38242950c8d`  
		Last Modified: Wed, 21 Oct 2026 00:55:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:8e90e6c5accdfef59fea51cce72b86bedb007b3643599670ac6cc4259e082585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3956690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d484ac13bca9a6b5a158124824a36e2b52ace13353944d88ae113cbac5034734`

```dockerfile
```

-	Layers:
	-	`sha256:c97d65bd5544fc79ccdf20f925c639313e34c9a8248834886794c71cf1bd1a55`  
		Last Modified: Wed, 21 Oct 2026 00:55:52 GMT  
		Size: 3.9 MB (3937938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab8c9364b3b22f90878346fd0182d0e2692a1b21c43a6e0fbb9d09c10361b43`  
		Last Modified: Wed, 21 Oct 2026 00:55:52 GMT  
		Size: 18.8 KB (18752 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-bookworm` - linux; ppc64le

```console
$ docker pull perl@sha256:74e558e37f2c1597b14971de4f2bffee73552f26919145f49e5fb195cfb464c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63130944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcafb8b64cd3450ee55810ec078aa1cb481c714349b0b2f5980299cb1a1c83ac`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 04:36:57 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 04:47:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 04:47:56 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 04:47:56 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31105be9a382947cd9a1a8ddb0edb2eae488903297b0790a7f8f5f27adb0c2ef`  
		Last Modified: Wed, 21 Oct 2026 04:48:50 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fc4954a3c1b90798fb1a5c66bb2e78d3d80dbecda26c7c4ec08199234702e7`  
		Last Modified: Wed, 21 Oct 2026 04:48:51 GMT  
		Size: 31.0 MB (31037471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd7f9f33224ea37968fdbfd94a67f948ec2daea12c3c1aa5c9c6c38a7677575`  
		Last Modified: Wed, 21 Oct 2026 04:48:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:fe81a1ffbaaceb075fc54861ca93e71c7981262de1bbf09a2c09a4a6d3ff7047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3948784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbfe06b8df73851afcf3b0f439dfd0e07e777403fcf39f35500190dcea2bc791`

```dockerfile
```

-	Layers:
	-	`sha256:7026bad8c238985acb0b74389c9095382069fa3419d2b751723d6fa1fe9cfd4b`  
		Last Modified: Wed, 21 Oct 2026 04:48:50 GMT  
		Size: 3.9 MB (3929946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4175077f77c31faffd50ce2830d02e87f0323a69358d4c97026750e35d72dab`  
		Last Modified: Wed, 21 Oct 2026 04:48:50 GMT  
		Size: 18.8 KB (18838 bytes)  
		MIME: application/vnd.in-toto+json
