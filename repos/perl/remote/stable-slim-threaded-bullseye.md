## `perl:stable-slim-threaded-bullseye`

```console
$ docker pull perl@sha256:5027c37967f7409b58d6226196b09711c67e447dc60221c1474a9c49ab060e4a
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

### `perl:stable-slim-threaded-bullseye` - linux; amd64

```console
$ docker pull perl@sha256:e64500fdab84617c6fb8ae4856595828d38bf67ef1620a91791541c11d88edcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56723997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1e5e0b56c833a61f8ec310284ce9ffb1db940b4599ffccf33c39734735a59c5`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 17:53:42 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:02:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:02:28 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:02:28 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b0f1b8700aa3880c2fc292c6f6bb881d07df5b6844fe06a6602a56f82f6019`  
		Last Modified: Fri, 21 Aug 2026 17:57:52 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e201f8a27536a539d3b9adf35499aca5190e5afac35f2a72ea837ae9c0e8ab22`  
		Last Modified: Fri, 21 Aug 2026 18:02:37 GMT  
		Size: 26.5 MB (26464108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b6c6f60e43d67e1a44e8597ca033bab8e1a11a8bd974576aecd77ead26aa6a7`  
		Last Modified: Fri, 21 Aug 2026 18:02:36 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:f65408444fe8e526e652d2942c845af52d8f2cf01a5fccebad0c996354678fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4153907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3980f6587bf3a86997c5510f5db0707bc09ef30da7c3a6756864952148afed1d`

```dockerfile
```

-	Layers:
	-	`sha256:1e9fad812c0a44a1a5d865ebdddbe862d73a98ecb9f600dbdf4447d78c8e20c7`  
		Last Modified: Fri, 21 Aug 2026 18:02:37 GMT  
		Size: 4.1 MB (4134982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11bc911963b374e7b0c83f1ffe04d44974a341bdfb732338eff8df52bfb34fd3`  
		Last Modified: Fri, 21 Aug 2026 18:02:36 GMT  
		Size: 18.9 KB (18925 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-bullseye` - linux; arm variant v7

```console
$ docker pull perl@sha256:b85a1c8de7d7dc27fb6c2b4507c138bef1a903cf1a203522e3d97e5aa7d8c34f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49245205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765e0d7f839085825032d7ab5eada263019c5d78f186a7f240eacfcd3956d1fd`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 18:12:12 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:18:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:18:18 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:18:18 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:70c32798cd0961ebc0be60649ed3a6f97b9e69450a07514ba41434abf9b4429b`  
		Last Modified: Tue, 04 Aug 2026 23:51:48 GMT  
		Size: 25.6 MB (25552804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6e4e9a27c44ef374c9a5c063e21980ba0cbb6dae11e8f76c874a073ee408f02`  
		Last Modified: Fri, 21 Aug 2026 18:18:27 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf78fc649a86c404582a20dfcd9cd71bef4a9b8f819c3ec26e887850319c94e`  
		Last Modified: Fri, 21 Aug 2026 18:18:28 GMT  
		Size: 23.7 MB (23692134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf5000076c4fdb13b581db76222784736103c5d5f411715112f15d1830719ad`  
		Last Modified: Fri, 21 Aug 2026 18:18:27 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:673a0129358ae9d12d0bb7b793233afc787d6a9852d9ca01517ba7f839ca52b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4128001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6962727edf9e94868131d15e84d7a8b16115ea877d128d677cbe1fa9013b71a8`

```dockerfile
```

-	Layers:
	-	`sha256:682c5632cf66620e975a65f2e22aabbf775c44766ff8bcc68243d571f68d0a66`  
		Last Modified: Fri, 21 Aug 2026 18:18:28 GMT  
		Size: 4.1 MB (4108987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf7fcff0b84af9b4edca8177efb9a61b921254aefee3ca88248ccddafae5f6b7`  
		Last Modified: Fri, 21 Aug 2026 18:18:27 GMT  
		Size: 19.0 KB (19014 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-bullseye` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:013186f2fc89f78cbc8acad7f18531e160a4a368fb9ee9a29be812e60298e5af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54321705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b36025170854a2f73907021aa641df69120d629db4fd87a1cdda8bc9fb4f86d9`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 17:59:49 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:04:56 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:04:56 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:04:56 GMT
CMD ["perl5.44.0" "-de0"]
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
	-	`sha256:c5add970bcb246cffce094750c0e29fa75d940188174d4cb2692da69d069abec`  
		Last Modified: Fri, 21 Aug 2026 18:05:07 GMT  
		Size: 25.6 MB (25572530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ff09eae64cfbd3245e1ea25414011cc7b9094605d0ea7c867e3af3a06c3bf77`  
		Last Modified: Fri, 21 Aug 2026 18:05:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:cca4fd4166877a8469e8fd3a62d628710fed305a089098076e8f140a670a6a15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4128443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab74e74901da1bb743afd06b4ba354a6f6468b3bdbd79c1bbfae21cdefdc3ef8`

```dockerfile
```

-	Layers:
	-	`sha256:a92531984964ce047c63abd674c4cc534cde821bc7bcb8fffb10c549427556ad`  
		Last Modified: Fri, 21 Aug 2026 18:05:06 GMT  
		Size: 4.1 MB (4109401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8208027f92427b03989a8f4c3b3db46c8751a7a1fbc2ba8e1507ddf1b175b4c6`  
		Last Modified: Fri, 21 Aug 2026 18:05:06 GMT  
		Size: 19.0 KB (19042 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:stable-slim-threaded-bullseye` - linux; 386

```console
$ docker pull perl@sha256:4e0097c0acabdb8b8df942fe88ffd634a647979816c8dafd6e7abe730cbfca43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59228302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573394fdd60b26af654085c83350cead76f37687f2523235eb10f00535f438c4`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 17:55:11 GMT
WORKDIR /usr/src/perl
# Fri, 21 Aug 2026 18:00:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 21 Aug 2026 18:00:32 GMT
WORKDIR /usr/src/app
# Fri, 21 Aug 2026 18:00:32 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:b73a69168edb6565b9635bebb2452c6bd4d783f27854d4abea797e1587f7f5c8`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 31.2 MB (31196309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d24cc711d30e121197813f7463db4a562592ff762807487c459606a7fbf177a`  
		Last Modified: Fri, 21 Aug 2026 18:00:42 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a555887f114afdff1f995d6a772cf9ad1030130fc8661e716a9ea1d2806364bd`  
		Last Modified: Fri, 21 Aug 2026 18:00:45 GMT  
		Size: 28.0 MB (28031726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4324953c4c3f186ac773f66e5d8fd9102825825275ef85914672499caa6373b`  
		Last Modified: Fri, 21 Aug 2026 18:00:43 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:stable-slim-threaded-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:058cb9faba250defa2e661e221795642849f485c72cfcc3b2335c56e891f1acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4158143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9780f42af922dbb2451a4b4e2cfbdb39265e12f5230ea542d6efb8e93769d59`

```dockerfile
```

-	Layers:
	-	`sha256:0e648669f1a6f02a2482b700276339aae1dbad5d9a24c8f7db4c0e659e8cd82a`  
		Last Modified: Fri, 21 Aug 2026 18:00:47 GMT  
		Size: 4.1 MB (4139254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b038a248cc6506db46b5a90deb6f91ae88ace2ca7db84fe0a5a09a6042313ccc`  
		Last Modified: Fri, 21 Aug 2026 18:00:43 GMT  
		Size: 18.9 KB (18889 bytes)  
		MIME: application/vnd.in-toto+json
