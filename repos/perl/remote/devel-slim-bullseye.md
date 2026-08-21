## `perl:devel-slim-bullseye`

```console
$ docker pull perl@sha256:dd4778c6e8ef7f40a5e7da493a971e5d46e303f8b5b14741257b6bb318aaf041
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

### `perl:devel-slim-bullseye` - linux; amd64

```console
$ docker pull perl@sha256:178041b8e6b70f4d5e8c8c62cae2f2444203e454a97a2c612fc58cc585d066c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56748313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451096d68f9e40d4567a1bd3ed136d2fc2577ce7f66da1f26c831b98775a3310`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 18:13:05 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:17:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:17:12 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:17:12 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e8ce0793adc3e0228c27f9f3d1f92075d9a954c4777ed60287b6b4273481e0`  
		Last Modified: Fri, 21 Aug 2026 18:17:21 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7879ddc972f1eabbd046b3cc13c37506f99eb99b2af8e97fb25bcf9add938435`  
		Last Modified: Fri, 21 Aug 2026 18:17:22 GMT  
		Size: 26.5 MB (26488426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bb1cfcfa4b943e278e61d6adc76cb4c020eae7f18cb111d100f730cbdfb5d7c`  
		Last Modified: Fri, 21 Aug 2026 18:17:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:38b7924bf400bb5e86e7595eddf374738687ad2b4da555e4b229172f093ac1dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4152507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406c35daf50fb619fd1903eed097b91afeffcb81c9614468fe05cbfb5c5e9e03`

```dockerfile
```

-	Layers:
	-	`sha256:2084d869fea8d0d79183c3f51fff251ea46effc5c09028abcf95febdc2c64d24`  
		Last Modified: Fri, 21 Aug 2026 18:17:22 GMT  
		Size: 4.1 MB (4134270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c30e2b6f9b7394321bbc0df23367a431e4b71b6d87375e8378b0b3af4d60e9ca`  
		Last Modified: Fri, 21 Aug 2026 18:17:21 GMT  
		Size: 18.2 KB (18237 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-bullseye` - linux; arm variant v7

```console
$ docker pull perl@sha256:42a36d72ea8d7be8deb11f2fda522ff709ab1987d7e7586d26e4e1b59dc8cc41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49290880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74abeb63e2e182010cc2507f54a14ed1003c925de45ffd174c8bbdc3a783b059`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 18:30:56 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:36:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:36:30 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:36:30 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:70c32798cd0961ebc0be60649ed3a6f97b9e69450a07514ba41434abf9b4429b`  
		Last Modified: Tue, 04 Aug 2026 23:51:48 GMT  
		Size: 25.6 MB (25552804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cda2ab94a752090823350d762146f87ea17a66fe705117edbc995743df7d529`  
		Last Modified: Fri, 21 Aug 2026 18:36:39 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a3300deeeb9e51c3359faea021c0b45535d78cd4cecb01e0df3227b02cfd5e`  
		Last Modified: Fri, 21 Aug 2026 18:36:40 GMT  
		Size: 23.7 MB (23737809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c9d767566a446ccd9c16b5b0cafcb722b0efd9f16a3de4bb72f62bf52499fde`  
		Last Modified: Fri, 21 Aug 2026 18:36:39 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:d5b2211aaf83cea8b593f89d28486e71c4dbd1d546d07810da13295504045dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4126568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d537960c1d8f80300b688c98a42109c0f76cbe0891f0585dce0190979a7d5591`

```dockerfile
```

-	Layers:
	-	`sha256:44658dad68f056fcbd82feccc8887aae8cfa0f4b0e67dd78b69f51073cc235a1`  
		Last Modified: Fri, 21 Aug 2026 18:36:40 GMT  
		Size: 4.1 MB (4108259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:092b690bf8634ef0e7546a3761a852b9d674d26bde8c5e4c153fe835a1c20e66`  
		Last Modified: Fri, 21 Aug 2026 18:36:39 GMT  
		Size: 18.3 KB (18309 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-bullseye` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:3c0dfe9ac7d08d34a86fa835659cfed0f3b9b491dd23ed3ad3cae6b90e3dc06c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54362474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46da5f7fd09c8db78385149914822f292abf8a6461af6eece5cb59c401b1891a`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 17:59:49 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:21:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:21:01 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:21:01 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5326c7e4f3dc97227bf710497689030ce7b49efb4072f58d7b27453f17d170c`  
		Last Modified: Fri, 21 Aug 2026 18:05:06 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febcf9483731936f2c1f671db4e510db603011f0b0785daf74c01dc1941c7130`  
		Last Modified: Fri, 21 Aug 2026 18:21:12 GMT  
		Size: 25.6 MB (25613299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faaf95e4378d197b0a083aaf3c484c30f2ea30e37bae7c8f267b3547a08d901a`  
		Last Modified: Fri, 21 Aug 2026 18:21:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:4c40d15f5165ad23c17a0738e24c2798e3b88775971e49e0969661d06d8d5da2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4126994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:851ba1e9e80b205981e990cf9ffd044a1630e447d75395e8287563a82e3451aa`

```dockerfile
```

-	Layers:
	-	`sha256:a6c54fa81c061393ba3842494e3df3c973878cb6796c907578846a8b54148070`  
		Last Modified: Fri, 21 Aug 2026 18:21:12 GMT  
		Size: 4.1 MB (4108665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acc969992ff3543522f327f11399d988c354510e8dd05822a570f8b3eaf4bdce`  
		Last Modified: Fri, 21 Aug 2026 18:21:11 GMT  
		Size: 18.3 KB (18329 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-bullseye` - linux; 386

```console
$ docker pull perl@sha256:0ff5ab4c8686620d95da91c8352259f97540b579f542f7270f50060712c4052e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59200235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d151a832b757e3311ed9e82947a7531879dd49eaf4409a430c86dbb3841e904`
-	Default Command: `["perl5.45.2","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 18:00:53 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:11:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/ET/ETHER/perl-5.45.2.tar.gz -o perl-5.45.2.tar.gz     && echo '4ee6767d0f9e02899dc930aa6c0deeb87f6c6c92e53a796e4ccf5414afa7938f *perl-5.45.2.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.2.tar.gz -C /usr/src/perl     && rm perl-5.45.2.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:11:26 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:11:26 GMT
CMD ["perl5.45.2" "-de0"]
```

-	Layers:
	-	`sha256:b73a69168edb6565b9635bebb2452c6bd4d783f27854d4abea797e1587f7f5c8`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 31.2 MB (31196309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9f552713822df2901d0605cb71f6158e0730aea59905ae7a4298f84d880732`  
		Last Modified: Fri, 21 Aug 2026 18:06:22 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2a2845f8e0fa56d7e0b8e5affb5620aab7b7cb6a73e0b37b2993a0086bba70`  
		Last Modified: Fri, 21 Aug 2026 18:11:37 GMT  
		Size: 28.0 MB (28003659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eafd7506b03fe6e0f52b4df9b1110ea54391d51d213e79e3691169eaedd5fc69`  
		Last Modified: Fri, 21 Aug 2026 18:11:36 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:0aa947912b129660d42b302b43a53e200b9659377b8315e31ba2adab1e09a2cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4156761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee7daf5c2ad2573731eed89cc44213b982a66ed077a6ab04d4e2026759df18e`

```dockerfile
```

-	Layers:
	-	`sha256:2677648ac08f856784e4e904c084ab988d981b22d43cb555862863fc83861736`  
		Last Modified: Fri, 21 Aug 2026 18:11:37 GMT  
		Size: 4.1 MB (4138552 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2aab106ffe57877e5cdccba4ea8410f6a5f2941cfc755d193a26390316a6a85a`  
		Last Modified: Fri, 21 Aug 2026 18:11:36 GMT  
		Size: 18.2 KB (18209 bytes)  
		MIME: application/vnd.in-toto+json
