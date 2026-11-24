## `perl:devel-threaded-bookworm`

```console
$ docker pull perl@sha256:ca0d8b49c7041612bbfb5e0d871596bf38dd6ed5ed25d87ff64865a25a6734ac
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

### `perl:devel-threaded-bookworm` - linux; amd64

```console
$ docker pull perl@sha256:86b057debddc4408092f4dab5551ddc09deacbcd7f793ebdf4950815a64a55e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.4 MB (365433986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f9204586af6133442640ed318d8a93b54a887ca26dd00c6cf7de90889d8338`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:20:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:15:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:33:38 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:38:21 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:38:21 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:38:21 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1d5603818e4025d8c8e4b5578914535e7e3466d860768e69f957f49fc5fac8`  
		Last Modified: Tue, 24 Nov 2026 05:21:02 GMT  
		Size: 64.4 MB (64432507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0db1ede1885b185de542c8de726f000ae4285b7f766859ee4e398a0c5ae4f430`  
		Last Modified: Tue, 24 Nov 2026 06:15:50 GMT  
		Size: 211.9 MB (211884679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c51c5a245afdf945562df0593f10c5bb0eaaff30971151fc0b42f20697b518`  
		Last Modified: Tue, 24 Nov 2026 07:38:36 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4415e14150b785a230aedfbc21e23b4ca57cd042acbc1c87c7d89b059878e370`  
		Last Modified: Tue, 24 Nov 2026 07:38:36 GMT  
		Size: 16.7 MB (16716903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8902165a3aece685e955d742a54497969f8f434fc2eb5c610bc42df88c80b56a`  
		Last Modified: Tue, 24 Nov 2026 07:38:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:784c1c9bc52468137d8b3ddb055e375d9e887c81ebecf0698f4e38096a95d0db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15888347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:005e8f561257fb6b51df85942b92a110da88582b57360b5cdb203abcc5c49a8f`

```dockerfile
```

-	Layers:
	-	`sha256:fe36949eed86eb1b955670460a004ec5e7d81fa5deab1ac5746e2fafc4c3b5fb`  
		Last Modified: Tue, 24 Nov 2026 07:38:36 GMT  
		Size: 15.9 MB (15870642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c5873225333be7582343d42a4c940ed54538ad4d77ae816351d46f47aecd6db`  
		Last Modified: Tue, 24 Nov 2026 07:38:36 GMT  
		Size: 17.7 KB (17705 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-bookworm` - linux; arm variant v7

```console
$ docker pull perl@sha256:f92d9f17af7d80020bc1fa7dd3a287c1f72af08c536a68b7b87c826713be0d02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.3 MB (317252413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e3ce7bbc09add9fa6e09b456b34e6eda344e078c0ec309d72188fe3d84e54d`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:41:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:13:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 08:39:04 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 08:45:27 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 08:45:27 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 08:45:27 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:bf46e8a44ab51f3c808ab48aaf11399ad2da7d0966cd41620337234ab118fa7f`  
		Last Modified: Tue, 24 Nov 2026 03:39:44 GMT  
		Size: 44.2 MB (44223203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd6ac0d814892f590af7533060e7d411f4b069b41846d6b77643c1ec671212d`  
		Last Modified: Tue, 24 Nov 2026 05:16:06 GMT  
		Size: 21.8 MB (21769445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22aecb817db0f9e40c6e19edcff5610744501481756bfd0fbc3b3cfe54d407ef`  
		Last Modified: Tue, 24 Nov 2026 06:42:14 GMT  
		Size: 59.7 MB (59697363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d67a1a803bc1f2eaf672448119ba9b9c0c128620c7f37502beb5e54f1041bd2`  
		Last Modified: Tue, 24 Nov 2026 07:13:49 GMT  
		Size: 175.8 MB (175796989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d987703d185e873ec8a7d7eeeb788d7b496768a3c2dc5371f943713ad3dcb0f6`  
		Last Modified: Tue, 24 Nov 2026 08:45:44 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d39aca95791a1a260dbf07247c2604922861cc46d5ef4f42741c5dd6b9493c67`  
		Last Modified: Tue, 24 Nov 2026 08:45:45 GMT  
		Size: 15.8 MB (15765149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:939e68aff9d534ae40f998122cd99e126d6bb41209c2c7f77ac1e394366e95f5`  
		Last Modified: Tue, 24 Nov 2026 08:45:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:0610224dc67f6212e215dd24fd3c8771d9b3bf3743ec1bb564911ca6858f5a23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15690887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ebb3c8951b3a67fe423e4fcf983b1600502c89ce4d478be0347fe9113bbe692`

```dockerfile
```

-	Layers:
	-	`sha256:52c00fb9433dc7e5568889272f93cf6fc188140e4d91eb8f73577283665d0b54`  
		Last Modified: Tue, 24 Nov 2026 08:45:45 GMT  
		Size: 15.7 MB (15673110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9061c32c57dc36d91d3566435629c26c6a1b25a38f59adcc3cfdf292afca01d`  
		Last Modified: Tue, 24 Nov 2026 08:45:44 GMT  
		Size: 17.8 KB (17777 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-bookworm` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:7a3c33f388db48706396abffdfd36376b8cbfbbcb434e6a16293a760f62d8808
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.5 MB (356465642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91464571ade258369fa5bfa1c7164966b3982cd6a3d9ab7223936832f6fcd79c`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:32:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:13:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:25:36 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:41:14 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:41:14 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:41:14 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e80db409d5b905f3c0d8228a2f82637b923bf2af30b11e87cb3b42e5e070d7`  
		Last Modified: Tue, 24 Nov 2026 04:43:36 GMT  
		Size: 23.4 MB (23440379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4d528de4b5383d96c1d03b858675d089f6dffcb1103cda3766265f17482fda`  
		Last Modified: Tue, 24 Nov 2026 05:32:20 GMT  
		Size: 64.5 MB (64528539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e076418e2fef05c49d1ad9e7afd24c85e08d63b43153895554ddb17ffa54e0d`  
		Last Modified: Tue, 24 Nov 2026 06:14:27 GMT  
		Size: 203.4 MB (203425851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca598b4a23b5fd68b9273d0cd5178f272dbce9963e6e98f96338209ad567e077`  
		Last Modified: Tue, 24 Nov 2026 07:30:31 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1471758d511760e45b55fb934d6b08a0144f81e2a3a935ac0fa1f8e8770fcf7`  
		Last Modified: Tue, 24 Nov 2026 07:41:34 GMT  
		Size: 16.7 MB (16658346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a76674b4e01f4bd3c23aa02c1fc9fb54b40d0edd165646046df25acc1dceaf`  
		Last Modified: Tue, 24 Nov 2026 07:41:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:4fc232ea18c75795ebb374b593b004837c8036cdc2abf84fd17241393941df30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15916953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e79adc74ca5e28c2a1afb8e3e1c20816136adbdee127bdc79274521941c6ca`

```dockerfile
```

-	Layers:
	-	`sha256:869f8ef30a04c0a4a83d1ba1713eea2eebed4a926cef698553fc124755219368`  
		Last Modified: Tue, 24 Nov 2026 07:41:34 GMT  
		Size: 15.9 MB (15899156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b964f8a59abf73f428b2e3490054fcb8ff9b7deef33b8e765d0a66c1f4b3c137`  
		Last Modified: Tue, 24 Nov 2026 07:41:33 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-bookworm` - linux; 386

```console
$ docker pull perl@sha256:fd8e5ec1b462cb60fba4270a3c18b323abbfe0b90a3015f3ab1fbee40a41e68a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.6 MB (367583212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:088808225ad64c79b49ee76786a34ea995b8de4423e10ad65163e8a4c90fecee`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:41:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:24:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:15:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:12:59 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 07:23:33 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 07:23:33 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 07:23:33 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:09060430fb43c1c139cc1889a4b8e7bb0d465c2c692e898e363029cce671f6ce`  
		Last Modified: Tue, 24 Nov 2026 03:39:50 GMT  
		Size: 49.5 MB (49515532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88783f32aad09b5608dad8e3ae3a279d819927fdfd70306f643bde0f0d4fee0c`  
		Last Modified: Tue, 24 Nov 2026 04:41:12 GMT  
		Size: 24.7 MB (24703788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76dab45eed6abc8d2bffa7ecbd77476aa63bebb9085d90a9465823b63c72419c`  
		Last Modified: Tue, 24 Nov 2026 05:24:37 GMT  
		Size: 66.3 MB (66278926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:164dd950c3174cfd7ac3085a1ec55b674320092c296804b1c37f9bd20e938fa9`  
		Last Modified: Tue, 24 Nov 2026 06:15:57 GMT  
		Size: 210.8 MB (210809373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7959ef59e6ad57154d65339507700650cbe55ca605e2190a1e757ef283a8886`  
		Last Modified: Tue, 24 Nov 2026 07:17:59 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae04b8face87a1cefbfbb95667126693f0d2a91edb574fb7bc0bda99e9cbc07b`  
		Last Modified: Tue, 24 Nov 2026 07:23:50 GMT  
		Size: 16.3 MB (16275326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee5be9538ba9f7fb8f23c1ef90404b5d8d94497a3416018227bcc8fea05f9b9`  
		Last Modified: Tue, 24 Nov 2026 07:23:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:4dfdd8ffac17d19b6429775f819d277a65bb336bdac0eb7d6e644ee5cbdea85e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15866546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c698832417ef83fb9ac86815bba9cdcb2ff8ad288be16a241fbf5401a098e79`

```dockerfile
```

-	Layers:
	-	`sha256:af894c8969111e788a4fbac113176e6db01eb0bc1f3d109cef7120774fa6b4bf`  
		Last Modified: Tue, 24 Nov 2026 07:23:50 GMT  
		Size: 15.8 MB (15848868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfb7be2667d4cfddcaadefb71350ffa9eb19315cfcc595882169754acf1a0874`  
		Last Modified: Tue, 24 Nov 2026 07:23:49 GMT  
		Size: 17.7 KB (17678 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-bookworm` - linux; ppc64le

```console
$ docker pull perl@sha256:3968ac55f29938f046ca40f99c7b4f68130586e4eea8710740a1282d27f26a50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.4 MB (379435505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f94b71aaf4edc46df7c8836c692e32fc93d33e57ec4c9a806f73951cf694ba37`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 10:07:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 17:24:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 20:46:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 21:54:23 GMT
WORKDIR /usr/src/perl
# Fri, 20 Nov 2026 01:01:36 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Fri, 20 Nov 2026 01:01:38 GMT
WORKDIR /usr/src/app
# Fri, 20 Nov 2026 01:01:38 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ffec0873fe14b6e584873c80e384c7a988558ed670b69a2083f4a9eff8ef04`  
		Last Modified: Thu, 05 Nov 2026 10:08:16 GMT  
		Size: 25.5 MB (25515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912f86862ce2795897774b132f3a86834590ad3758900c8ec8c600b44058ae52`  
		Last Modified: Thu, 05 Nov 2026 17:25:45 GMT  
		Size: 69.9 MB (69899279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14d5fee07632732bb5754d3454367b1ee28cf1d75bc620bc2ef6967edde5432`  
		Last Modified: Thu, 05 Nov 2026 20:48:27 GMT  
		Size: 214.9 MB (214901016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9abd5354dba267bbd21d7bab28107dd20762df2d33becc36b4874bda346582dc`  
		Last Modified: Thu, 19 Nov 2026 22:05:27 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db27a4fd91537092928c1e0ed6759d280171fd87b276d412e0882518fc4dc93`  
		Last Modified: Fri, 20 Nov 2026 01:02:21 GMT  
		Size: 16.8 MB (16751153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a8da11b7b8177294bbb177bc95d166d5727952bc8838fd891b2c778a29f32ea`  
		Last Modified: Fri, 20 Nov 2026 01:02:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-bookworm` - unknown; unknown

```console
$ docker pull perl@sha256:ae9d8f8161cd62e25c95da096ac3b9bbe4987be7a95a3f1946e087657c110407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15864087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af8b8cc69ae8e4dc7aad12a22bae105029505ad9247d9ecba4989ca3f17ed6e3`

```dockerfile
```

-	Layers:
	-	`sha256:11e3ab9ef8a053f8fb115a916198bb8f39defa066063589a3a753abb545bc87f`  
		Last Modified: Fri, 20 Nov 2026 01:02:21 GMT  
		Size: 15.8 MB (15846344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0066ba5cf78c6ac529bfd07efcea1fff274fe33ee3626c0128bcafafeed4d9e`  
		Last Modified: Fri, 20 Nov 2026 01:02:21 GMT  
		Size: 17.7 KB (17743 bytes)  
		MIME: application/vnd.in-toto+json
