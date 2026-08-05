## `perl:5-slim-threaded-bullseye`

```console
$ docker pull perl@sha256:35ee2e80736fb5ac25898b30493a0c2a8b495a47f63bca47629bc53249f2a46e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `perl:5-slim-threaded-bullseye` - linux; amd64

```console
$ docker pull perl@sha256:e2cd39ce8b85562ff1d666aed72ce8dde14442463984263b5aabc549f6b7609d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56709033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e056129992627225b7ae5e2f6f4f5f580ac47ffa8485e7b409406f66c179b13a`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:50:17 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 00:54:52 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 00:54:52 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:54:52 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec8bdfd4c76de169871dfcd9a9baf9e73354f0c09d2dc12b902ec9579ad62e3a`  
		Last Modified: Wed, 05 Aug 2026 00:55:02 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbae6cc7d83ae028e35bf47269750f81c5bfe0b1f0955909e1b372cb0693f7f3`  
		Last Modified: Wed, 05 Aug 2026 00:55:03 GMT  
		Size: 26.4 MB (26449146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc38d9032fec2bbc03f34d14228d3eb2d044bd209131ecbd8bb07729ec469b1`  
		Last Modified: Wed, 05 Aug 2026 00:55:02 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim-threaded-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:ae93b84f576f6109c628cf02eaf16bdb2ae28a1f91610035def9b06aefc27a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4148705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c1ff9eda0a31d15bf2a7c1dd0636f3529c49025fa650c3a49344380802107e`

```dockerfile
```

-	Layers:
	-	`sha256:fa59d476cdd2737c48a17d1d837c366c086e6e7132c1799911361526812d9635`  
		Last Modified: Wed, 05 Aug 2026 00:55:02 GMT  
		Size: 4.1 MB (4129779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49c1f4cad0eb3205089f9d3776d54fe302b5c2f06c6a3e2d138205f137a52c5e`  
		Last Modified: Wed, 05 Aug 2026 00:55:02 GMT  
		Size: 18.9 KB (18926 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-slim-threaded-bullseye` - linux; arm variant v7

```console
$ docker pull perl@sha256:131ededa50ee35af4378cea1e881e7f3d517ee9ba1d9bede839d12957fde352c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49234298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d73176c7ab9fca16f76f2b099348a19e4823727ba642f28d4d0d665aa4589753`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:23:29 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 01:29:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 01:29:18 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 01:29:18 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:70c32798cd0961ebc0be60649ed3a6f97b9e69450a07514ba41434abf9b4429b`  
		Last Modified: Tue, 04 Aug 2026 23:51:48 GMT  
		Size: 25.6 MB (25552804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b8b7e82159e76bbb41fca9ae672e77ac47258123112bb67b724b67691c3705c`  
		Last Modified: Wed, 05 Aug 2026 01:29:28 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bcd26696721e3472fbbaa1045d57fd9ba708433bfab64ed3aecad3346da8bf`  
		Last Modified: Wed, 05 Aug 2026 01:29:29 GMT  
		Size: 23.7 MB (23681228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411c3ced67a8e8bca4b3d57e1a546cc67d0bb75f528f444b3d5096ccd8b75ac2`  
		Last Modified: Wed, 05 Aug 2026 01:29:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim-threaded-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:0e964acc05e3d4cf09585f79a1ca6f35a6d9ee89e06695e322335b92c4e2c041
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4122798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d971ef95f52317679a8b647d6cd071444ba069d52cbf0354b9dfaca55ada171`

```dockerfile
```

-	Layers:
	-	`sha256:eaad3776c4135023c0a6099cfeda4b73c20d807c589ab104b1e78c0e1a2238a3`  
		Last Modified: Wed, 05 Aug 2026 01:29:28 GMT  
		Size: 4.1 MB (4103784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cacbd8ac020b53415fe2b1b1b0e0bb02035910ad7aba455cb2d325917db6b887`  
		Last Modified: Wed, 05 Aug 2026 01:29:28 GMT  
		Size: 19.0 KB (19014 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-slim-threaded-bullseye` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:6f1c93dc95bb1e5c20d76eae78d0a6672d5b1be37954dd339d3834ada068f9ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54312117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf9e0531c7d2d795667c9d251896c406a4ff521ced3eba24be920d123e185f47`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:52:36 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 00:57:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 00:57:35 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:57:35 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c1be939e16985c42801e5bed910846f7b2a094d76cdae844458ff3ae7c1047`  
		Last Modified: Wed, 05 Aug 2026 00:57:46 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8c4cd6cdf7f406a5a51dd88edea68063e35ec0c6273cd33c4cfbc67f42e4f4`  
		Last Modified: Wed, 05 Aug 2026 00:57:47 GMT  
		Size: 25.6 MB (25562944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e51c05510900b6f7fa276049ea4ecf4905bf17989195514c1f181d858a11e5b`  
		Last Modified: Wed, 05 Aug 2026 00:57:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim-threaded-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:56fc406007b41a9131314307dd9c5212736c42e2110499bb864e17a67891d131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4123240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87022fb27c1fd712515d13c4386e5c26e5897be1829f25ff74d32dc239e02c6`

```dockerfile
```

-	Layers:
	-	`sha256:f9ed0e745c67a5a02a743ecb0b8bff58e73e91656a319efe257c7abbdefe68c4`  
		Last Modified: Wed, 05 Aug 2026 00:57:46 GMT  
		Size: 4.1 MB (4104198 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ad220166b89f4c805645639cd15c7810b6b67de965623c4ad680059d2bf5ad1`  
		Last Modified: Wed, 05 Aug 2026 00:57:46 GMT  
		Size: 19.0 KB (19042 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:5-slim-threaded-bullseye` - linux; 386

```console
$ docker pull perl@sha256:a4909137f2ca6c0dde75dbc143f66007fce58aa5995237fe9c1c1910ddd46014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59208428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81fd97173cc86fa2e311ef4dfa8961f7a7de5f97a788c93b7735417b5813a371`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:49:47 GMT
WORKDIR /usr/src/perl
# Wed, 05 Aug 2026 00:55:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 05 Aug 2026 00:55:08 GMT
WORKDIR /usr/src/app
# Wed, 05 Aug 2026 00:55:08 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:b73a69168edb6565b9635bebb2452c6bd4d783f27854d4abea797e1587f7f5c8`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 31.2 MB (31196309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c3761a78a6916a910545cba172089cbbdc64d757090a64c74948ea84b4fd8e`  
		Last Modified: Wed, 05 Aug 2026 00:55:18 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369a2459c179675bca276e948ffe7dbabbf2a4ff83cbc36385c03eb0a8f405ea`  
		Last Modified: Wed, 05 Aug 2026 00:55:19 GMT  
		Size: 28.0 MB (28011854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529a4fe7418107d27234ca520c9ac8cc9baef67ca6adc345c42148f81d4f8949`  
		Last Modified: Wed, 05 Aug 2026 00:55:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:5-slim-threaded-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:2843b2d1a097141f24220dc4852219ae929034c8158df7a32e26e4f0878c64cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4152940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b10da4f52096371404d678bf9ff0186126467439b6988552a635ae098f441f4`

```dockerfile
```

-	Layers:
	-	`sha256:b1ec1ff947651ac35277d94ff6fe94eb148c25e289c1c616ac8dc0cc7a7bb504`  
		Last Modified: Wed, 05 Aug 2026 00:55:18 GMT  
		Size: 4.1 MB (4134051 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc19ad95af35fe9afca01512612cf8fbfa5e6e4cfd15ee4aaa17a7504c50d534`  
		Last Modified: Wed, 05 Aug 2026 00:55:18 GMT  
		Size: 18.9 KB (18889 bytes)  
		MIME: application/vnd.in-toto+json
