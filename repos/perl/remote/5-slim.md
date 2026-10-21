## `perl:5-slim`

```console
$ docker pull perl@sha256:0c84700aa212fda34297b52499b1fa380903c4684a63b02ecff181681b6b5692
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

### `perl:5-slim` - linux; amd64

```console
$ docker pull perl@sha256:755f9b30285e61a0199e9649556a8ff45b92322cf9c7a7e17fc0d443e5d94b5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62018915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1130d060ed68afe1e3f1e6065ad000ec94956bc8b6f672cbbb28cf7e909a6d6`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:50:36 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 00:55:03 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 00:55:03 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:55:03 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6866bbce21d406d23a425dce17ab81102121096e4a14373967a33a7896219100`  
		Last Modified: Wed, 21 Oct 2026 00:55:15 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d18ba6aa96adc19545156d56c61aa5fa545a43b776eea7e9439f04a88f4a16`  
		Last Modified: Wed, 21 Oct 2026 00:55:16 GMT  
		Size: 32.2 MB (32175071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbfd708057a9376fd47fb7ef934cfbf6f4edbd0def7c1829ff4953aaa97cb2fc`  
		Last Modified: Wed, 21 Oct 2026 00:55:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim` - unknown; unknown

```console
$ docker pull perl@sha256:1d1aa62535f874da1a6d4482f512b0f5d48ca458844d8fa5c6de3011edc54a2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4036591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b6b819acf2afb2122626d1910f59d49a994b1aab0266c5471b50d166b63da6`

```dockerfile
```

-	Layers:
	-	`sha256:4d1c62355e5c9389755e8adcd03570d9dc6afc815f14cc2038c9b67230584513`  
		Last Modified: Wed, 21 Oct 2026 00:55:15 GMT  
		Size: 4.0 MB (4016340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b828ed81d3d45586ac2c6f613456dd69e6ab766cab40727fbb6444589799327`  
		Last Modified: Wed, 21 Oct 2026 00:55:14 GMT  
		Size: 20.3 KB (20251 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-slim` - linux; arm variant v5

```console
$ docker pull perl@sha256:255205d4eb9d6c2de0b68978136c65c541af9118a17aa0489eb95e5674b3a650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57418282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87a7977b25cd2d212913f4a1e41ee3cd5529bff494ba2079229f49c4ee01924b`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:51:49 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 00:57:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 00:57:38 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:57:38 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1458cf96b916f22f6455de22047619b1b0d44cf859b493b8d81272f0e9056c0`  
		Last Modified: Wed, 21 Oct 2026 00:57:49 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27de781ce5de4284fbf59002a964fb1c52460d3a8680bcb812acc606e7b2f908`  
		Last Modified: Wed, 21 Oct 2026 00:57:50 GMT  
		Size: 29.4 MB (29410223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b40c1c33b3dcb6a4935c8c305bb18ee4a1b1dd8cc8bdbca7fffe11c67e05d1ff`  
		Last Modified: Wed, 21 Oct 2026 00:57:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim` - unknown; unknown

```console
$ docker pull perl@sha256:16a5414c98b3e6deb370c46570a26534060ee954329d64ba7a77f0d3b910ac9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4029797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be4e4116a4a9151a3d558786b3a5b8e809a8fb8b3d0f620f12fdaacb8e56b493`

```dockerfile
```

-	Layers:
	-	`sha256:7be277e08a905da3e4180a9d90b9565ca16a6453a5b09e086275241114adc2f1`  
		Last Modified: Wed, 21 Oct 2026 00:57:49 GMT  
		Size: 4.0 MB (4009418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f738f6efd3136ac37a7e2bdcd9c604d0be0e8b6a586c5659dda2dfd21376d73`  
		Last Modified: Wed, 21 Oct 2026 00:57:49 GMT  
		Size: 20.4 KB (20379 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-slim` - linux; arm variant v7

```console
$ docker pull perl@sha256:36de4a2d96dd701b09dce4e1a22573f44c8c07454e82ec76e3b25089c18f2fbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54744382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6daf070acc9b9015ca07e06c91121d8fbca10d3469e24055ea78a8a6d304b6a3`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:28:05 GMT
WORKDIR /usr/src/perl
# Tue, 06 Oct 2026 02:33:40 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 06 Oct 2026 02:33:40 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 02:33:40 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bb604388d6695e8c817271f3310d7cdc44ff9459f7d8bfc843dd01d6a6eeb51`  
		Last Modified: Tue, 06 Oct 2026 02:33:50 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071fb2fe9e71f676586b6a1676d1471cfaaa5749682ae4700c93e100fa4989c7`  
		Last Modified: Tue, 06 Oct 2026 02:33:51 GMT  
		Size: 28.5 MB (28485938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a97d84aea7c6fca16f2ef64e9f37925160f4adcb4462c302da30bea4601bf0d`  
		Last Modified: Tue, 06 Oct 2026 02:33:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim` - unknown; unknown

```console
$ docker pull perl@sha256:bdd07fe5e2cae080e5d2059f22ab3f3d7cc38cfc519156104ad9ff119b3d2702
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4030267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95b7c977fbbdc77ad161529f12f5ce9f14bf294d4b0bce0e80e6ab70762eaa7d`

```dockerfile
```

-	Layers:
	-	`sha256:37bdc3718aaf7b472253819847f5f7a3cf63d90b8aba576d84f89467e4d940cb`  
		Last Modified: Tue, 06 Oct 2026 02:33:50 GMT  
		Size: 4.0 MB (4009888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0bc37e632238d5743c0456cff375aa61de70426bda9f4bdc7af80dab1d740a4`  
		Last Modified: Tue, 06 Oct 2026 02:33:50 GMT  
		Size: 20.4 KB (20379 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-slim` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:fbec17190542fd93c54258505f4fa8fe552a92320599e2583f1dbceb873676fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62037216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa6d1ea31dfd14fdd3ba99f8c112f9d3608b67df8db4b4be1966c90d29b541b`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:53:42 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 00:58:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 00:58:32 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:58:32 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f086a9be5385bb5d7ff2ddafd4626622f5e90d8df1bb67e67753a3bdb1daf1e`  
		Last Modified: Wed, 21 Oct 2026 00:58:43 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4407333594321ea78aec609db2968ee8c593cd07185180e6c696641eadb040d9`  
		Last Modified: Wed, 21 Oct 2026 00:58:44 GMT  
		Size: 31.8 MB (31836473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:643af0883aacdb34143f56bea5d79f7626c719b213ef717f65eb6f9f228dde87`  
		Last Modified: Wed, 21 Oct 2026 00:58:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim` - unknown; unknown

```console
$ docker pull perl@sha256:fa3939ae7aeef3198586d87c275f3a5fc4c694113eaa37081b1581629de1d96e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4031903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ef307e1be95de2f5ae8111a8ba2643bf7e64cf89fc74cf6a55844d239ef15b`

```dockerfile
```

-	Layers:
	-	`sha256:6bb8948411d6759649f884b57d847cd32a316492a9557ee6a1d2ee51854ae570`  
		Last Modified: Wed, 21 Oct 2026 00:58:44 GMT  
		Size: 4.0 MB (4011476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e4a30a7e2631117225f3aa13a971ecf408fb86ad059ec6cec0d3c3a10ef7f7a`  
		Last Modified: Wed, 21 Oct 2026 00:58:43 GMT  
		Size: 20.4 KB (20427 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-slim` - linux; ppc64le

```console
$ docker pull perl@sha256:02a1e7dc43da7ae496cabb1aaa3dca55286c84fad3639490a18307827c723c0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66555613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39845ed5b3d632ff80c7c3dcc84076b603b5c4686eda726f1e838c02435564df`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:52:39 GMT
WORKDIR /usr/src/perl
# Tue, 06 Oct 2026 05:02:44 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 06 Oct 2026 05:02:45 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 05:02:45 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ffea81428789814caf7f38dc19706705f8a279b403fc77a0affdde8b726613`  
		Last Modified: Tue, 06 Oct 2026 05:03:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ce9c305acfd07b06b8edbb6933eca9477e2afcaa11ff97584c0ddee8cd8239`  
		Last Modified: Tue, 06 Oct 2026 05:03:09 GMT  
		Size: 32.9 MB (32903748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3663e800282227a828e32f96a29d892dea7b8b6ce24d0783ddc94029431de0`  
		Last Modified: Tue, 06 Oct 2026 05:03:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim` - unknown; unknown

```console
$ docker pull perl@sha256:da593eca49ff92b233bb7be083e4bcdfebb52d4e269e8c7ac0f8bf914c39480b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4033989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f64cd0508ef9c4bf9d402f24544a2e496b6bdf536682706084f48d409c918af1`

```dockerfile
```

-	Layers:
	-	`sha256:fe2fde6a2fc2f2c36e6695746384b6c8b7f1de85c311c45dcd049735960a2119`  
		Last Modified: Tue, 06 Oct 2026 05:03:08 GMT  
		Size: 4.0 MB (4013658 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:128467a5e65e56c51cf1813b7c2967f9355787e88a96c4bae9132047027af9db`  
		Last Modified: Tue, 06 Oct 2026 05:03:08 GMT  
		Size: 20.3 KB (20331 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-slim` - linux; riscv64

```console
$ docker pull perl@sha256:f487af88bee3e5d828be286c5d9d7f1a43a08c4e6542cdea0ecd79b9c67dd43b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.4 MB (68358287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f219d1645c80fb2254a27fb56bbd12e27a2a6eaa64f38e51c62e25da7faccd8`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:31:50 GMT
WORKDIR /usr/src/perl
# Wed, 07 Oct 2026 21:44:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 07 Oct 2026 21:44:25 GMT
WORKDIR /usr/src/app
# Wed, 07 Oct 2026 21:44:25 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78e309378f7a5dc9ee1d61f391cc36dac9e116c96337d88ddf444f4ebcfc37cc`  
		Last Modified: Wed, 07 Oct 2026 21:46:48 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f5ccc724503f0bfc10148d5bba1ed51fcbcdc74a9f20773c445e7e4d1169420`  
		Last Modified: Wed, 07 Oct 2026 21:46:54 GMT  
		Size: 40.0 MB (40024259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a45998371f453029a6191c67535f558014563436bf5d6005dc3e817752539ef7`  
		Last Modified: Wed, 07 Oct 2026 21:46:48 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim` - unknown; unknown

```console
$ docker pull perl@sha256:cfe10a8da513153c3e00311334b2f08f852c79df270d42c8579d448c0efd4a2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4025250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df3e6f65041fbc48ae2f5544e8a6e1ecd69c7b851164bc1b25b7b7c7d288f9e`

```dockerfile
```

-	Layers:
	-	`sha256:debfed48b6c8657e93e26215803592a1b6f5e93bd1e7ee3781f4b04bb4081a8c`  
		Last Modified: Wed, 07 Oct 2026 21:46:49 GMT  
		Size: 4.0 MB (4004920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd66200cd2a25725ccf893754adbdbf8445a232d7ecb8ab37986c2c0ebe00aff`  
		Last Modified: Wed, 07 Oct 2026 21:46:48 GMT  
		Size: 20.3 KB (20330 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-slim` - linux; s390x

```console
$ docker pull perl@sha256:48db27fd56b2c20516787669bf8225f01f5c51e112b202cc6891c7e3b924cb2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61449452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5d989c24e20703d18bc3f7ca5d2d91e00340f55d5c5f32d896ed1612f0e3ebd`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:01:58 GMT
WORKDIR /usr/src/perl
# Tue, 06 Oct 2026 02:07:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 06 Oct 2026 02:07:27 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 02:07:27 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5511878b47c2d429fd115d35d87360eb1e9df55f5445fe44378e9d41d2579ef`  
		Last Modified: Tue, 06 Oct 2026 02:07:43 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65c0b9826b10f2df0a671795c0d245090cae7758247d687120744130e4995942`  
		Last Modified: Tue, 06 Oct 2026 02:07:44 GMT  
		Size: 31.5 MB (31539939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e96f7a899551dd3fc2441b631fdbf051ddcff4a8ab35b9768e101ebe10b6c78`  
		Last Modified: Tue, 06 Oct 2026 02:07:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim` - unknown; unknown

```console
$ docker pull perl@sha256:d40fa500485e81ab2f603167f845fea2f0416fcea1ff71594772e2be749bf5bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4030195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db54f540cffd424d6c518f64d673119e58ab4cf9020f5319200fea149733dfdf`

```dockerfile
```

-	Layers:
	-	`sha256:2e7e70745bde0a1dd06bd96bdf6f8a97e88de1367e0b789f46a6e70438018318`  
		Last Modified: Tue, 06 Oct 2026 02:07:43 GMT  
		Size: 4.0 MB (4009944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9da4e9939daa9a54cf5e8cb16a56319e8bdd8d6ddc9be10696e83a4c7b73718a`  
		Last Modified: Tue, 06 Oct 2026 02:07:43 GMT  
		Size: 20.3 KB (20251 bytes)  
		MIME: application/vnd.in-toto+json
