## `perl:devel-slim-forky`

```console
$ docker pull perl@sha256:2b8f4b4d907b4046a44cf9e30dc4cea5728baa9e43e515ad2756438c950524c8
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

### `perl:devel-slim-forky` - linux; amd64

```console
$ docker pull perl@sha256:b8745783aeb1f3081ff5d11108bff0be3ff08af02b634f8e8a3d2d1de9ce5dd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62705856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1763f2479bbebb47c9c4636c53207ef35fdba5a8f3f9bf2826bcf9b87d45e2`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:47:14 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 07:51:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 07:51:28 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 07:51:28 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:11077c1fccb63fa5dfb8a9b32cff13f9da256c63c1659634c3b47cbf981edd4d`  
		Last Modified: Thu, 05 Nov 2026 06:15:59 GMT  
		Size: 30.9 MB (30873922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cb01d8044527c72654b83b23f56b2797ef207835a6f2d591ddb267eb8821d79`  
		Last Modified: Thu, 05 Nov 2026 07:51:38 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069adaca294c590a6b64766679fe5f6b284a98239c5b91c8eb648c1253f0354c`  
		Last Modified: Thu, 05 Nov 2026 07:51:39 GMT  
		Size: 31.8 MB (31831668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72ea8e7fd6e189f1785ceaeb7124c15c25460e7fdefce5df98dfabb917bd4089`  
		Last Modified: Thu, 05 Nov 2026 07:51:38 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-forky` - unknown; unknown

```console
$ docker pull perl@sha256:2ac1199256fbd1e1bb90f51612b7afd4bb45f618f8e05117029eadab9e13e315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4053677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eac807644e014ab3b13d4145f7ee08ff5b9e997ce46913c74c6f87adcda8c1e`

```dockerfile
```

-	Layers:
	-	`sha256:4cb3edce61f246ad8f22b3509ebeea0d2b6692d4785d7fff6e7e664c59a2f3d7`  
		Last Modified: Thu, 05 Nov 2026 07:51:38 GMT  
		Size: 4.0 MB (4035470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5593023673a29a25d2924d5f557990739df9807bfab682798b39190400214db`  
		Last Modified: Thu, 05 Nov 2026 07:51:38 GMT  
		Size: 18.2 KB (18207 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-forky` - linux; arm variant v7

```console
$ docker pull perl@sha256:d0a51159c426c23d253edd85de49a57df5d83120b08a2d12907d7f642e2e4917
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55027331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cbbb53bb4cb462fe4a4615b0b98a05cb31f3ba0eda007b2b8021b9378297a0d`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 08:29:49 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 08:35:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 08:35:42 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 08:35:42 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:0c73633eec97d86ba9174b30c3ed0803fe94aeda4f1131796cad83187fc50020`  
		Last Modified: Thu, 05 Nov 2026 06:16:01 GMT  
		Size: 27.1 MB (27057239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9750d0229d9a55f273043e2d7869eef9b03a8cd5169a4a688dfb13da7956da8a`  
		Last Modified: Thu, 05 Nov 2026 08:35:53 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66cf18c5306dab688241ddf2a4328950b34aaf0b8ed7f0766f40dbc90c989618`  
		Last Modified: Thu, 05 Nov 2026 08:35:54 GMT  
		Size: 28.0 MB (27969825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27bd74318522051e6fc8e05506d8cd9d6276dec5c27ed0e43bff3e7e6c89b6b1`  
		Last Modified: Thu, 05 Nov 2026 08:35:53 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-forky` - unknown; unknown

```console
$ docker pull perl@sha256:42f88265382c78f27066882f97f43ae433facd546cebec4ddd7f8e76db3b8f4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4046121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1415a18973ca5b0bba27b644ae459f24e6d2de615fe40224a83878c896f5da34`

```dockerfile
```

-	Layers:
	-	`sha256:dee4222d05f398e6d75fc89a24e1f9c16efe4db250818408ed4a32b4522674eb`  
		Last Modified: Thu, 05 Nov 2026 08:35:53 GMT  
		Size: 4.0 MB (4027841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2eaadc80417638ba412794bee2af95698e121b500c76c1994a60aeb86278b3b`  
		Last Modified: Thu, 05 Nov 2026 08:35:53 GMT  
		Size: 18.3 KB (18280 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-forky` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:66c733d0a5f98e97a4e13446c8109560841d8d20b4aecb86b39e3eee60aa8226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61344418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3b4c84525b3830c7c7532a09f38696c80272ec192ff727dd790cd3774759a9`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:51:52 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 07:56:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 07:56:48 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 07:56:48 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:6488ff28c400f26dda1139fa258bba39b5762ee29b0f3c51f4116ae3b02aa157`  
		Last Modified: Thu, 05 Nov 2026 06:15:41 GMT  
		Size: 30.2 MB (30211062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9909262b21a88c63f3f6279e5b3864b294e3d383b1d012316a4acdb803170d25`  
		Last Modified: Thu, 05 Nov 2026 07:57:00 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08df68c250256b0ad83226e5cf3e989ed603263aaf08a8a553c8e389ae13ae3b`  
		Last Modified: Thu, 05 Nov 2026 07:57:01 GMT  
		Size: 31.1 MB (31133090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9141d08c8fe52dcc6a52e7f7bbec849030368a17b132b54b958803fd78de0f25`  
		Last Modified: Thu, 05 Nov 2026 07:57:00 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-forky` - unknown; unknown

```console
$ docker pull perl@sha256:67d9d6d01b915d3b2de13b2dc43974ba2e15c93d62abd0168cefea3e792cdd60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4048906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d136762a4e398629e6fb4f3f51e77efd7ee3713aa74604a80b6092ac445e8e`

```dockerfile
```

-	Layers:
	-	`sha256:1b0fccf046977f1c8e6efd57a7763127159355e861093fd776518fb3e53a068e`  
		Last Modified: Thu, 05 Nov 2026 07:57:00 GMT  
		Size: 4.0 MB (4030606 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fee1270bec79dd36be28b8ead88f8a1bcf44bbfdde20c03118785874a6bf5d1`  
		Last Modified: Thu, 05 Nov 2026 07:57:00 GMT  
		Size: 18.3 KB (18300 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-forky` - linux; ppc64le

```console
$ docker pull perl@sha256:249f3c93545577f8c0ffc4c1befee6cb9d8fe7177089edc26615f8ef8b42fcac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67913299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7554483cd3973e843c3dc6686993746503a34bdfb6915e0748c2df1205438b7d`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 11:37:34 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 11:46:44 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 11:46:45 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 11:46:45 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:655f291cc6dd098122c2d5f3c20fd9877fd2763f0d0ae588b1a9ff2bf41afc8a`  
		Last Modified: Thu, 05 Nov 2026 06:15:09 GMT  
		Size: 35.6 MB (35550468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750a96b00bb4159498e0f2c6fd051d3fe499a163b91ab358cf4af411f29223a5`  
		Last Modified: Thu, 05 Nov 2026 11:47:12 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e369acaf90e0e29e0de952a68e82361005d094be7475f9b9968db07a24e97fd`  
		Last Modified: Thu, 05 Nov 2026 11:47:13 GMT  
		Size: 32.4 MB (32362566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79386e7985bc69a324046560e8a41a9f905723f9f398aec3aa5ab2221bae8c9`  
		Last Modified: Thu, 05 Nov 2026 11:47:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-forky` - unknown; unknown

```console
$ docker pull perl@sha256:573bc1a0cb4adbab582839d49343175a702dc250b77c28f6551ebce1d09b22a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4049951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4921b3f6dffb5849f9aee7c91781c463f5ec78c10bf09d71a0d763a572156c27`

```dockerfile
```

-	Layers:
	-	`sha256:fadc2d1f3d67a4ba2e359825bf52ca07435b3130a9ad39c9351be119dac72881`  
		Last Modified: Thu, 05 Nov 2026 11:47:13 GMT  
		Size: 4.0 MB (4031705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfe4a08c328bbdbe041d2a09b6009ee848ccf40e385c8992fe4ae11da89e370a`  
		Last Modified: Thu, 05 Nov 2026 11:47:12 GMT  
		Size: 18.2 KB (18246 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-forky` - linux; riscv64

```console
$ docker pull perl@sha256:803f1d6ccc3e772485e654527ce43681eadaa4654ed38b5b74a57836ea432a93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72637843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2afb14aa25e6dbc15d9ec5662922cf502545a2bbb87adef2fc4f8f3b41e9cd19`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1793059200'
# Sun, 01 Nov 2026 21:21:15 GMT
WORKDIR /usr/src/perl
# Sun, 01 Nov 2026 22:36:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Sun, 01 Nov 2026 22:36:06 GMT
WORKDIR /usr/src/app
# Sun, 01 Nov 2026 22:36:06 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:d0df6c5be8720356c19095eb767c449279e1c095b36725d92f90b81d193e5541`  
		Last Modified: Wed, 28 Oct 2026 18:23:09 GMT  
		Size: 28.3 MB (28289708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27587faab1e632f9bc54588ce4ae6cc8974c3aedce6c0ef0fcc7bfdb5adbb98`  
		Last Modified: Sun, 01 Nov 2026 22:38:42 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e656aded8971fbdb4e2ff7204c556592ef1a7f71dfcdf11ec45207bc7f99a613`  
		Last Modified: Sun, 01 Nov 2026 22:38:49 GMT  
		Size: 44.3 MB (44347867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5f5ea0a4f101f1a76c95d7bad54917f6e050fc155420a8429f5073e10202ac`  
		Last Modified: Sun, 01 Nov 2026 22:38:42 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-forky` - unknown; unknown

```console
$ docker pull perl@sha256:b4750a5b3ce4e269d3af1be431eb78b7a475c4942eeb0367d071c3b6ffa0ae12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4040979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776af9567da180b24f61d8c5dcaee313770af09622b774450cde08b66da392d4`

```dockerfile
```

-	Layers:
	-	`sha256:fa931a84197bdaf988767ea1f83f4053136962e2b74053dba69c070aacea1edb`  
		Last Modified: Sun, 01 Nov 2026 22:38:43 GMT  
		Size: 4.0 MB (4022733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e591b0e31a9663a21c117f54467b2c1ff3b08cd32fa17652987bee201d1ca425`  
		Last Modified: Sun, 01 Nov 2026 22:38:42 GMT  
		Size: 18.2 KB (18246 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-forky` - linux; s390x

```console
$ docker pull perl@sha256:77df48225c0625148ebca8f63569cf6d300ee6684e394cdd9904ef002cbab4a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60746907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e19f40125271910943b853627d0404366d1b3317d2c86002d0034b79cd286e1`
-	Default Command: `["perl5.45.4","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 08:10:23 GMT
WORKDIR /usr/src/perl
# Thu, 05 Nov 2026 08:16:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.4.tar.gz -o perl-5.45.4.tar.gz     && echo '9ad6ff5750dd512437af86f260365186d925a4fcd5002a1d88b8385df5938ea4 *perl-5.45.4.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.4.tar.gz -C /usr/src/perl     && rm perl-5.45.4.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Thu, 05 Nov 2026 08:16:14 GMT
WORKDIR /usr/src/app
# Thu, 05 Nov 2026 08:16:14 GMT
CMD ["perl5.45.4" "-de0"]
```

-	Layers:
	-	`sha256:6491c093bdb8110f8fd4f7e4f1b3b801e74f36e4f9a8e89d5d67ad177b6d256b`  
		Last Modified: Thu, 05 Nov 2026 06:15:01 GMT  
		Size: 30.0 MB (29968350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1092e5bd82f29afb4f0d9b25d5813012f132737030bfb9d83dc7efc04dd45f82`  
		Last Modified: Thu, 05 Nov 2026 08:16:30 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0963c6a948708428ad40987abd1c11ffe3d8c16824249d1a7eca30523362bd0f`  
		Last Modified: Thu, 05 Nov 2026 08:16:30 GMT  
		Size: 30.8 MB (30778291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e698f621256d8177fe7a67456b796a9f4eada24b6a1972206f6c58cbd64727f0`  
		Last Modified: Thu, 05 Nov 2026 08:16:30 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-forky` - unknown; unknown

```console
$ docker pull perl@sha256:5d985f8bb863014e448265680db4db3bb02f8ab8488c1a2e56f5fa6378ec6c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4045952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12e53af7a2e05376e89cfec0145b3a4e26c38e9fc3303cdad028737ed23caf30`

```dockerfile
```

-	Layers:
	-	`sha256:0fac5c72ead76e6ba64e1624af5f1b8b271ab455fac9efb7b8b3b324adf263bc`  
		Last Modified: Thu, 05 Nov 2026 08:16:30 GMT  
		Size: 4.0 MB (4027745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bb8c6d95baf7c0953091e215c5b87fdfe58305cca47f7fd9e6ce041d976cd2f`  
		Last Modified: Thu, 05 Nov 2026 08:16:30 GMT  
		Size: 18.2 KB (18207 bytes)  
		MIME: application/vnd.in-toto+json
