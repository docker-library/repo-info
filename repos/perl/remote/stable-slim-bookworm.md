## `perl:stable-slim-bookworm`

```console
$ docker pull perl@sha256:3daaa9c1f6178497f2a45788c4f0a5827aef560bb547f31d5b88ff3278c858d6
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
$ docker pull perl@sha256:761c4bfff3edcb32bfb71b2ed93241787c35b5b75118067f6bb9de9675194212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52443292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a19a73cf597a442196862bd29431be43a57740ae50c9547c48aa29679f397c7`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:28:26 GMT
WORKDIR /usr/src/perl
# Tue, 06 Oct 2026 02:34:07 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 06 Oct 2026 02:34:07 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 02:34:07 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c6a7b659edb27228f40d4ee82e4a709c0f7f5c336cfcf1522703e3e2269590`  
		Last Modified: Tue, 06 Oct 2026 02:34:17 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9790b90d90380daa2cb75000dc1ea56bfce7d21e10ecb0e6456cc5723c22d0d`  
		Last Modified: Tue, 06 Oct 2026 02:34:18 GMT  
		Size: 28.5 MB (28486455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a5434f31ee42231857069d844848edcd69487c84eb8e2ca4f5be6bc692f522c`  
		Last Modified: Tue, 06 Oct 2026 02:34:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:ab7f0e2547a6ddf905e1a37109ecf6eae3f621f3e6f7cb8cffda6fcbdb65a84e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3934270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d451e41ef5638d0812f7df215bb2564664cd6f25d816b1c4f5022a11dff49d2`

```dockerfile
```

-	Layers:
	-	`sha256:6087e97784958bb76b0938562803db79ab9bc84f890deb2b929612e31422a130`  
		Last Modified: Tue, 06 Oct 2026 02:34:17 GMT  
		Size: 3.9 MB (3915393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab87d2309292a9bee70f23cacd4f3e50a29feb7a67a0f62d7926f245bb5a6750`  
		Last Modified: Tue, 06 Oct 2026 02:34:17 GMT  
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
$ docker pull perl@sha256:baa7d7442699c2afde7cba917cd323b5bbbc6b6cb5add8a25e4e805d4cb2b7e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0f3514a830ddc7f3bc38a8636983e8c9181422d3bd95e7479f6c783b7caa2a`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:48:23 GMT
WORKDIR /usr/src/perl
# Tue, 06 Oct 2026 01:54:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 06 Oct 2026 01:54:11 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 01:54:11 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1668b008ead544a33fdbf77e828b82df0422dd04bdf0c2a6a0a93bf7f0a67e75`  
		Last Modified: Tue, 06 Oct 2026 01:54:21 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffae0b2e51a307c80abd62eeb1bbc71b002d3982faaee62874c5d0bba1051df9`  
		Last Modified: Tue, 06 Oct 2026 01:54:22 GMT  
		Size: 31.8 MB (31792493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe31e59ce0c4b8ee66b5abaf7ee67b9938eaf0195b388af1996eb4cf7d8aaff`  
		Last Modified: Tue, 06 Oct 2026 01:54:21 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:1503426525983e1e10541212e591a84e7f5e416dcb70cfeb25c1e79eab57e400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3957985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40e03fdcfcf2153cc934f0f990effc251304c8984675175edf8066b94d853bf`

```dockerfile
```

-	Layers:
	-	`sha256:3c44441a1b6507af4fb3310f7ac141f0bd5011031526b057c92f84deb0f275fb`  
		Last Modified: Tue, 06 Oct 2026 01:54:22 GMT  
		Size: 3.9 MB (3939233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ddbe75afb8a1dcd4f2412af0a8590de18aa2a43d35bf91da8d0a254b3be86a0`  
		Last Modified: Tue, 06 Oct 2026 01:54:21 GMT  
		Size: 18.8 KB (18752 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-bookworm` - linux; ppc64le

```console
$ docker pull perl@sha256:f401e0440529d76c40fee36c8d9c695c4b0b424de82f747a9cf74a485c490ddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.6 MB (65587794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1ee34189732979c4208312414bc245e7b1f1809d68f3cc55c18be081012ec24`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 04:54:56 GMT
WORKDIR /usr/src/perl
# Tue, 06 Oct 2026 05:05:09 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 06 Oct 2026 05:05:10 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 05:05:10 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff9059df46a61fed557eca9d6bd71a573ffd9dd6b4d606039da470f3d94c732`  
		Last Modified: Tue, 06 Oct 2026 05:05:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e23148411dac108cf8f425d104f529bc58f08b7fbd53c122cba1e045547501d`  
		Last Modified: Tue, 06 Oct 2026 05:05:34 GMT  
		Size: 33.5 MB (33495094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3724d39402d36854e005b2a4217a830069c268f9b1d3a99e0baef7f8283a487`  
		Last Modified: Tue, 06 Oct 2026 05:05:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:264e61caff49000ac90665491c05ee3c8218b08bc3f1ebe28a14833cdc67ea07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3950080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81efc1339b453278f35dc7a3f027c31a4f1af5fd092cb332041bf35eca962275`

```dockerfile
```

-	Layers:
	-	`sha256:e028f5e25a3af9598121da13c09575080c3745a40c28bd6204cab043c094071c`  
		Last Modified: Tue, 06 Oct 2026 05:05:33 GMT  
		Size: 3.9 MB (3931241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f185c5ef247b9a25354dd3b7806c1236819fd1390661e6ac6a89435713318b4`  
		Last Modified: Tue, 06 Oct 2026 05:05:33 GMT  
		Size: 18.8 KB (18839 bytes)  
		MIME: application/vnd.in-toto+json
