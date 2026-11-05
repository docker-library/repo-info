## `perl:stable-slim-threaded-bookworm`

```console
$ docker pull perl@sha256:c61c2eba306fe156a53651f2bc621123c8854e44a7f6c7cbdf7ff1a822ca177a
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

### `perl:stable-slim-threaded-bookworm` - linux; amd64

```console
$ docker pull perl@sha256:29b8adc5c475f7677ccb4a708e2c77ac0155196c54579c7deafedeb290c8153f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58534940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93adfa2324e44b6b5418b9eec7ff6ef2b1a1911da61cb8c35081dfc21c69b590`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:42:26 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 07:47:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 07:47:26 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 07:47:26 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf23a6d34dc0ed1419a60fcf86c453cdfdfd9082072897c8d483d54cb7f46370`  
		Last Modified: Thu, 05 Nov 2026 07:47:36 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cacf2b831aded9b4372a70bfad5bef3b3cf9175b564b841757a0a1632888af`  
		Last Modified: Thu, 05 Nov 2026 07:47:37 GMT  
		Size: 30.3 MB (30286693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28db5e282bb1e9753803bf1fbb2bdeb04ca14cbd26899da9b0c1f6a40fd46514`  
		Last Modified: Thu, 05 Nov 2026 07:47:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:e29f8c7603eb2029675150a38c29672f22d6eef8f51f823f312f13c997de6508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3963104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96c175fe63c08fa9ac2fc1c1c7ee08306021fbfc363f85ac019bbd627bd071a`

```dockerfile
```

-	Layers:
	-	`sha256:217195c7fc2272d97a10ffe06de1ba32aa1e3876faffc138f574c5d44ed33d44`  
		Last Modified: Thu, 05 Nov 2026 07:47:36 GMT  
		Size: 3.9 MB (3944178 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03b7b772462b5d12bd41e36ea778b448b3b68f3e6ba21ce35a7ca49f267aef05`  
		Last Modified: Thu, 05 Nov 2026 07:47:36 GMT  
		Size: 18.9 KB (18926 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-bookworm` - linux; arm variant v7

```console
$ docker pull perl@sha256:51db22ebb509386119740983370060daea0bb016cf250b70ed4d8771e011a559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50385166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb1233f971ea2824537466c2ea38940c426b2678cac18b7c2b116927403d90b`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:22:16 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 08:28:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 08:28:18 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 08:28:18 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4352da28b108a7f67fab1b9fd58d6c05758f84338e1d003db3bd7600b4bfd9c0`  
		Last Modified: Thu, 05 Nov 2026 08:28:28 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5185f4051f7a29199b505118071fc423da7747204a7fd0fc13e1391deb1379`  
		Last Modified: Thu, 05 Nov 2026 08:28:29 GMT  
		Size: 26.4 MB (26423544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0845b5922db4629410e0d98ce3d04287bcd3eda46601ddb7277177157afc6d1`  
		Last Modified: Thu, 05 Nov 2026 08:28:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:860c2874f3aac268eb3910edab7b0dc9c05e966448d0356ca79b9d6f3c107658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3933284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be8945de8f4d756ef25a669bcfe96544ff5378bf44823f2d5302178d1f1d9004`

```dockerfile
```

-	Layers:
	-	`sha256:5bf4690074d7a4f3d8c2067005a9089f0dad4c2f3f8d825d09c508678d61790e`  
		Last Modified: Thu, 05 Nov 2026 08:28:28 GMT  
		Size: 3.9 MB (3914270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48523f2ac2925b95606aafb49987a6535b263fffeb0362c43d5f3ee4637dd359`  
		Last Modified: Thu, 05 Nov 2026 08:28:27 GMT  
		Size: 19.0 KB (19014 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-bookworm` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:ddc7fa91bb57cdaaf7df1a774e72131bbd7737a6940e293f6652c8cde8cee8ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57288216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ff37e61ff2482aea739694a980195eaee3ce0ea53533195ef6d67f499ef44a9`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:46:15 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 07:51:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 07:51:26 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 07:51:26 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:268924818f2d30751532190c3ae8a99a8029647bdbb604abc9d2defb5352ee03`  
		Last Modified: Thu, 05 Nov 2026 07:51:36 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab41e51aa7f195566f694795394e57c69142fa21692f4375915c4112c2c62d3`  
		Last Modified: Thu, 05 Nov 2026 07:51:37 GMT  
		Size: 29.1 MB (29143591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5970ebe832794b22e44e3e54b10e7df347518a0c3cc1febfc230385ed8048bf4`  
		Last Modified: Thu, 05 Nov 2026 07:51:36 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:79c7a515a7602e9cc3faad2cba0b56b642d4c8be327eeb05d08a293f0992dde7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3934481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63fa03d20c6c104ef1f9ea5687e7baf8d563ba16b67b5b2eddd787f744ca86b7`

```dockerfile
```

-	Layers:
	-	`sha256:7f0b647df362356b03b2b0271faec7ce47993c1373051aca2b2d7fb67f9d2a09`  
		Last Modified: Thu, 05 Nov 2026 07:51:37 GMT  
		Size: 3.9 MB (3915439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e92efa359f398fd1e33f4d30d765951b6c96fbc873775d2f5ac1d26d5f97847`  
		Last Modified: Thu, 05 Nov 2026 07:51:36 GMT  
		Size: 19.0 KB (19042 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-bookworm` - linux; 386

```console
$ docker pull perl@sha256:cfebc91179fddf6f52d7b6124b5c472bdfe081034aee85bd2b348ff71b1eaec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.7 MB (58719882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bcb7ca3a6eb9ad94e6208c9aca6c4870a500dfdfe22d5c15196312d5a39b796`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:43:22 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 07:48:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 07:48:43 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 07:48:43 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0ef7a04db3787da883b6fefc1a888fa114ba901342569cb3f58382b5e32907`  
		Last Modified: Thu, 05 Nov 2026 07:48:52 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3743e67b96f98cfc21dce9667962bd7bcccad1f8b634ea0c862da79f152ec7df`  
		Last Modified: Thu, 05 Nov 2026 07:48:53 GMT  
		Size: 29.5 MB (29480405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead5f660006ef34d0cb0c181b7d26bcab301a9226987775bfacef179ed94e620`  
		Last Modified: Thu, 05 Nov 2026 07:48:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:7358eec8a4f2d823b9d169eb01744040cfce7449231f7522a49f2ee440dfc496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3956999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88fa565110a6332e329c1011c5d709deba7f5a97365adcb0d592f6619ce98e3d`

```dockerfile
```

-	Layers:
	-	`sha256:d19dc9f6e42662b791b688edece3a16b2d14c36393dca753e54bd349e487b3b0`  
		Last Modified: Thu, 05 Nov 2026 07:48:52 GMT  
		Size: 3.9 MB (3938110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecf6763676e28530c18394f1aaf0890a9d96a4d10ef2ca65c042bbd0988dab67`  
		Last Modified: Thu, 05 Nov 2026 07:48:52 GMT  
		Size: 18.9 KB (18889 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-bookworm` - linux; ppc64le

```console
$ docker pull perl@sha256:25eafd9dde1893e6062f0be1e581da8356fcce747bb363e58f485d58c6c33509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63229378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ed52f90e11a2a003a4a6e3f85809fc8fff33c4a3c78bb77dd1c023b4795d6fc`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 04:32:21 GMT
WORKDIR /usr/src/perl
# Wed, 28 Oct 2026 04:53:20 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 28 Oct 2026 04:53:20 GMT
WORKDIR /usr/src/app
# Wed, 28 Oct 2026 04:53:20 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff32e80e9b3d90f5b38c3a458541c89506a6b7d837f12f02e2336068d3c0078`  
		Last Modified: Wed, 28 Oct 2026 04:42:56 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fd0ec85c177255c6ac3c323c6e423b7e0870e93db0a30f82671e327de96947`  
		Last Modified: Wed, 28 Oct 2026 04:53:44 GMT  
		Size: 31.1 MB (31136269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c6ae15c0b1751e5cb5133b9b8081ccc42bd4620e1d5c991566fafa8dd1a35d`  
		Last Modified: Wed, 28 Oct 2026 04:53:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:fdfc8294033fd98ed1ea2126295b6fdf56deb51780b16e947c51246c56016267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3949040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367126b592a42cd2c4b1dda569e8251ae10df7c4daaa882b2478cbfe6de32b26`

```dockerfile
```

-	Layers:
	-	`sha256:e16d2fc72ef8e0d4262ec1e320cf01be3a21555fb5c9df0afbbe7fecd188d776`  
		Last Modified: Wed, 28 Oct 2026 04:53:43 GMT  
		Size: 3.9 MB (3930064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7322ac0c4c942c87729910c9919fbe25ffb7b893718ee3f523bbe45611a97aa3`  
		Last Modified: Wed, 28 Oct 2026 04:53:43 GMT  
		Size: 19.0 KB (18976 bytes)  
		MIME: application/vnd.in-toto+json
