## `perl:devel-slim-threaded-forky`

```console
$ docker pull perl@sha256:bf33c022e06df1ee8773fdaefe5a54e1395c14ecc05633f4955e0a74c8b58ab5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
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

### `perl:devel-slim-threaded-forky` - linux; amd64

```console
$ docker pull perl@sha256:9e918c2fe20eb2f34ff8ac16545c69e1e6a3362f4ab62210123cf5a326b39ce0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.0 MB (67014390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c498ba2a91232631833bb9aa3a32dfebeddaf76619dcdbf78dc5faa115e3aaf`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793827419'
# Thu, 19 Nov 2026 22:01:00 GMT
WORKDIR /usr/src/perl
# Thu, 19 Nov 2026 22:06:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 19 Nov 2026 22:06:01 GMT
WORKDIR /usr/src/app
# Thu, 19 Nov 2026 22:06:01 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:11077c1fccb63fa5dfb8a9b32cff13f9da256c63c1659634c3b47cbf981edd4d`  
		Last Modified: Thu, 05 Nov 2026 06:15:59 GMT  
		Size: 30.9 MB (30873922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea731aa29b78829ef6ca7420e9291a9660a950a93537d157c3360f6991ae4e80`  
		Last Modified: Thu, 19 Nov 2026 22:06:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680e144c13652b49b62e2bedf00c08da9fcb87a51bc56eb625fd985dbb62a31d`  
		Last Modified: Thu, 19 Nov 2026 22:06:12 GMT  
		Size: 36.1 MB (36140203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768632e3c23dae219f447ccac6fc5900ecfe8bdaed2e9a834e3285965632e62f`  
		Last Modified: Thu, 19 Nov 2026 22:06:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:e37e01efc897604dc741ddb21b4e22587067b3f98042b59f524d1ac2328a6548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4064393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f105c0c1b29578d436f4d211492413d11200a79ef3558b7c0768fa40b36f449`

```dockerfile
```

-	Layers:
	-	`sha256:1eb9a1d812240f9eb391526721c7564e16a0f6cccf4a84a760ab4f1e551dc5ae`  
		Last Modified: Thu, 19 Nov 2026 22:06:11 GMT  
		Size: 4.0 MB (4046080 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d4e27baf5fbb01bc31d284b99699e205c81dbabc2e35980fb70e9c7280c41f6`  
		Last Modified: Thu, 19 Nov 2026 22:06:11 GMT  
		Size: 18.3 KB (18313 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-forky` - linux; arm variant v7

```console
$ docker pull perl@sha256:90b7a36a0e4996c335f259b89c83cb47342aafbfd170dbba5229be10e1eaaf95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.8 MB (58779381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:119401f0bfdfcfe476f444d91d6a817be370e99275ef96fddb44b1e451c13e0b`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1793827419'
# Thu, 19 Nov 2026 22:08:57 GMT
WORKDIR /usr/src/perl
# Thu, 19 Nov 2026 22:15:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 19 Nov 2026 22:15:32 GMT
WORKDIR /usr/src/app
# Thu, 19 Nov 2026 22:15:32 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:0c73633eec97d86ba9174b30c3ed0803fe94aeda4f1131796cad83187fc50020`  
		Last Modified: Thu, 05 Nov 2026 06:16:01 GMT  
		Size: 27.1 MB (27057239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2f62d8eaf185d90e3e6a344a480be901037801a8a19a6505af27145f864573c`  
		Last Modified: Thu, 19 Nov 2026 22:15:43 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03896a9b895a0a0d35065a9d2940cb07b3025c78c68eb6bcb9c1929a74b1b3b4`  
		Last Modified: Thu, 19 Nov 2026 22:15:44 GMT  
		Size: 31.7 MB (31721874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e981e26fcd3a26d116d54bcb7817408066d28dd077d421606639a557a621d048`  
		Last Modified: Thu, 19 Nov 2026 22:15:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:6967417a966827252b0296e0dfb1c9b7ec10d1cc0f6182df05591c5e7418ad27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4056875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49205ad8fb1d8d210955ba81d96a4967844d4098450a47bb03e5014956633e8a`

```dockerfile
```

-	Layers:
	-	`sha256:dcc84f0cd05cf75fd6b7c6f2bbf050d5a9ac989bc6bf201e8d9ec80e5f409bf2`  
		Last Modified: Thu, 19 Nov 2026 22:15:43 GMT  
		Size: 4.0 MB (4038490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1c7e85d82b477349367236798e0714a506e5feb377e4c0d98acf86a70f42318`  
		Last Modified: Thu, 19 Nov 2026 22:15:43 GMT  
		Size: 18.4 KB (18385 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-forky` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:03e40095e9aa1fda5c2bb8245028e892dce2812608b358eacde5c3ab1ab86d69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65430099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d94b521302e7e76eb8e49c91b359f8039272b5272a3fa025137d8177c91d83`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793827419'
# Thu, 19 Nov 2026 22:03:59 GMT
WORKDIR /usr/src/perl
# Thu, 19 Nov 2026 22:09:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 19 Nov 2026 22:09:16 GMT
WORKDIR /usr/src/app
# Thu, 19 Nov 2026 22:09:16 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:6488ff28c400f26dda1139fa258bba39b5762ee29b0f3c51f4116ae3b02aa157`  
		Last Modified: Thu, 05 Nov 2026 06:15:41 GMT  
		Size: 30.2 MB (30211062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0271aea4e0759e4305c7306500f2f161e749590c64a3e02570a61a27c5ca3127`  
		Last Modified: Thu, 19 Nov 2026 22:09:27 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74afa7fb12e220de33b013492dd903350c1eeff144558fba655856236f4db12`  
		Last Modified: Thu, 19 Nov 2026 22:09:29 GMT  
		Size: 35.2 MB (35218770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe15f406d77c499d4cb2012636f142d03b903b7f234736dc9f9322ff3cfa665`  
		Last Modified: Thu, 19 Nov 2026 22:09:27 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:cd821a5bc851c22a1875105e58a7ae5244e1db69f953353982d5454cd73a90ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4059634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2e9208a4c7ad3b792d74b5b29192622fd3739a622ca6aede199f86292c49d34`

```dockerfile
```

-	Layers:
	-	`sha256:1fc9419f2f328c54ac0f90a8af13cd908fdf350bf24405e3730ba2e7b8ea5209`  
		Last Modified: Thu, 19 Nov 2026 22:09:28 GMT  
		Size: 4.0 MB (4041229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17e7e87f20c20b1851cebf9c5c8f8470bf1b22be39a242e1ce2cead73af0c415`  
		Last Modified: Thu, 19 Nov 2026 22:09:27 GMT  
		Size: 18.4 KB (18405 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-forky` - linux; ppc64le

```console
$ docker pull perl@sha256:9b02fac1a76dd0a38bf49287e90bea3e749dac5da1aa89135ad068e0f1cc24c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.7 MB (72687559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea71995c04624744ce0b6db66825b6965e83244c93e779bf67d1aaa58c5726fd`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1793827419'
# Fri, 20 Nov 2026 00:39:27 GMT
WORKDIR /usr/src/perl
# Fri, 20 Nov 2026 01:23:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 20 Nov 2026 01:23:51 GMT
WORKDIR /usr/src/app
# Fri, 20 Nov 2026 01:23:51 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:655f291cc6dd098122c2d5f3c20fd9877fd2763f0d0ae588b1a9ff2bf41afc8a`  
		Last Modified: Thu, 05 Nov 2026 06:15:09 GMT  
		Size: 35.6 MB (35550468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc922689e1501c725ed4bc97b6d4cc85674d60186c79548f01ecfdd6cb7c8f0`  
		Last Modified: Fri, 20 Nov 2026 00:51:24 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb3d0e337ff6b998ec6212dedf4b5389aabdc159a55106a8e9ed2caf07056f0`  
		Last Modified: Fri, 20 Nov 2026 01:24:18 GMT  
		Size: 37.1 MB (37136824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc0dc2cf8c7d6cdb80be3c9e90bac2e67fb7d77e59acb51d38aeea57c2b1ce35`  
		Last Modified: Fri, 20 Nov 2026 01:24:17 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:21e38f9e38d9d72ac2d78ab8b3ce2b306adddedac185dd8815eba87043d021e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4060731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47bfc9351ff64fa6e4ad6196bf282d66c0ec8007bad81504628cda886df8c441`

```dockerfile
```

-	Layers:
	-	`sha256:0d9c64964e4ffcd857c70d66f6ce0e9a00d704982b2f835f66d74ad86452febb`  
		Last Modified: Fri, 20 Nov 2026 01:24:17 GMT  
		Size: 4.0 MB (4042380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d546eeaeaa961e489e5ee2278eccbc017a4582914d386d4483e459901eda6d08`  
		Last Modified: Fri, 20 Nov 2026 01:24:17 GMT  
		Size: 18.4 KB (18351 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-forky` - linux; riscv64

```console
$ docker pull perl@sha256:ad8458b832239facd0bef7b37bc450236a52eaf813eda087c44b447d1adcae6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.8 MB (72783575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f90d6e8be08a00ca038364228f22acb19daa4ab24cc5bc86ab8207e0b119de0`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1793827419'
# Sat, 07 Nov 2026 13:44:46 GMT
WORKDIR /usr/src/perl
# Sat, 07 Nov 2026 17:52:17 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Sat, 07 Nov 2026 17:52:18 GMT
WORKDIR /usr/src/app
# Sat, 07 Nov 2026 17:52:18 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:d0fe891bb8d85aa1a435221de3cef0f512c622850175d501061ab7ee018110b7`  
		Last Modified: Thu, 05 Nov 2026 07:22:34 GMT  
		Size: 28.3 MB (28307048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9253ffaad4845364248a004d1f516aa4f59dc8d0b1c50788710626ce230a5f`  
		Last Modified: Sat, 07 Nov 2026 15:03:38 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6cbc055dcf1b9b03cc33bc6001729754a848cf2e428d5d255dde2daaecb5db`  
		Last Modified: Sat, 07 Nov 2026 17:55:10 GMT  
		Size: 44.5 MB (44476262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:730f983b4c9851bba14ae9c4752aa239a5f1c7f4fc5cdd1857203c407ad0bbf0`  
		Last Modified: Sat, 07 Nov 2026 17:55:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:d4bfd40e6dc2fa0d28685d8ed2411497d5d2f1df4c268c338be12cf3ed037209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4041137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f9a08d0fbcf67a284a6c022eca5b90eb3f42ad91139776797b6d2abf1a2587`

```dockerfile
```

-	Layers:
	-	`sha256:9fc0f1d3cfafca03f28f7b254e2e89ef0536808443858dc554ff896914af3f04`  
		Last Modified: Sat, 07 Nov 2026 17:55:03 GMT  
		Size: 4.0 MB (4022787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:795ecb29032b617d22854aed007ebe80589dbc26f92e9aef9778f8a8540d0daf`  
		Last Modified: Sat, 07 Nov 2026 17:55:02 GMT  
		Size: 18.4 KB (18350 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-forky` - linux; s390x

```console
$ docker pull perl@sha256:dec9659b91194d0cfae655c1a7e285b2230a8b9d51dfa22b669314ee0c9c0298
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.3 MB (65273713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dd62f5d659c15807f4a17f165759d6bb7b08c8aa2757509790369bf3d4375c6`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1793827419'
# Thu, 19 Nov 2026 21:55:17 GMT
WORKDIR /usr/src/perl
# Thu, 19 Nov 2026 22:07:44 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 19 Nov 2026 22:07:44 GMT
WORKDIR /usr/src/app
# Thu, 19 Nov 2026 22:07:44 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:6491c093bdb8110f8fd4f7e4f1b3b801e74f36e4f9a8e89d5d67ad177b6d256b`  
		Last Modified: Thu, 05 Nov 2026 06:15:01 GMT  
		Size: 30.0 MB (29968350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5357e8c66e44db8079ce99b443b985aab672bde4ee6274b5d31ab037a557bb5`  
		Last Modified: Thu, 19 Nov 2026 22:01:21 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e0deae4deff954d41f07ec2b4b418cf669f4f4501ae8834507705c0dd1bcc2`  
		Last Modified: Thu, 19 Nov 2026 22:08:01 GMT  
		Size: 35.3 MB (35305097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642b9f51d8063ca790939a06bae9b4e48512c5bcfa101ad26e6838de13f318f9`  
		Last Modified: Thu, 19 Nov 2026 22:08:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:e5d244997c0eb9f518ca6c62855023da1c658afa993764e2eb58f3c6e7a0733b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4056655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f49f638e3970baf22a3fef407833fdec6106f12b09ad67790f63e76f49710f41`

```dockerfile
```

-	Layers:
	-	`sha256:aa84c0bbd7da15cfbff17a6968c09ed48d2a5e10c76aa0f867da0cfbab61e61e`  
		Last Modified: Thu, 19 Nov 2026 22:08:00 GMT  
		Size: 4.0 MB (4038342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32db732b6ab0b536af875f819a79b02ff8e3bd61115918b27cf3f342419f9beb`  
		Last Modified: Thu, 19 Nov 2026 22:08:00 GMT  
		Size: 18.3 KB (18313 bytes)  
		MIME: application/vnd.in-toto+json
