## `perl:devel-threaded-trixie`

```console
$ docker pull perl@sha256:ce87b56ed4bd1cd6a3ecf1f9903a808e6c05a69e13ee10a8e7c3552436256701
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

### `perl:devel-threaded-trixie` - linux; amd64

```console
$ docker pull perl@sha256:17a9e93ba4f254e3f48ae0d603102ceec7893263c8a3d9210db235cdaf79d427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.5 MB (396515723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca109972aa2ff36795b63a610056dfc86fc5f7664c5745c712fc7136424cfb91`
-	Default Command: `["perl5.45.3","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:27:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:16:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 03:17:15 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 03:26:40 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/B/BO/BOOK/perl-5.45.3.tar.gz -o perl-5.45.3.tar.gz     && echo 'f8aac25c3dc34abbaf0d84da132913f726c7faa27906b460cc442da417c2fdac *perl-5.45.3.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.3.tar.gz -C /usr/src/perl     && rm perl-5.45.3.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 03:26:41 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 03:26:41 GMT
CMD ["perl5.45.3" "-de0"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63040bd9752a74c5b1082903de92d441d30121f994018576b4a2f4cf8bb3bca4`  
		Last Modified: Wed, 21 Oct 2026 00:46:31 GMT  
		Size: 25.6 MB (25635564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7046f4e749f0e32d9fc67f654ad5e33cc555534f82a9971e45a00dbdb899e309`  
		Last Modified: Wed, 21 Oct 2026 01:28:14 GMT  
		Size: 67.8 MB (67818834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:992d9e06c2e85b99901bc1e8b27e557e9537e4d0eee8d4cdff13bc0f9bdee2e4`  
		Last Modified: Wed, 21 Oct 2026 02:17:47 GMT  
		Size: 237.0 MB (236996741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93c44ac45594a828f7c709d02dee175ffc67ebad686b1cbcfe285f9607a994a5`  
		Last Modified: Wed, 21 Oct 2026 03:22:02 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5cb1b3f34d5c9b574a3dd1621709c3314c2590e5cdadb11264d12fa326f9fc`  
		Last Modified: Wed, 21 Oct 2026 03:26:59 GMT  
		Size: 16.7 MB (16670696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80910382e4d4dd5330326be895166a5543a96962198ebd36dc56e32005fdcc47`  
		Last Modified: Wed, 21 Oct 2026 03:26:58 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:7c52276643c8753b12d03f99cdd3fc93637ddac5b9100dd5b1c6c0b31bc29337
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17225670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:539aa6302858cc28f5c9a52d309d0338b6141358c6a6d97a4f70691905266a3d`

```dockerfile
```

-	Layers:
	-	`sha256:db8bf307be0d4045597aef81a4d77863169c38a322786f296ef8d6d12cb4ec85`  
		Last Modified: Wed, 21 Oct 2026 03:26:59 GMT  
		Size: 17.2 MB (17207064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58c6720ba57bb9409daca41a6500217d8a32db393341730b0b5780518cbf80e6`  
		Last Modified: Wed, 21 Oct 2026 03:26:58 GMT  
		Size: 18.6 KB (18606 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-trixie` - linux; arm variant v5

```console
$ docker pull perl@sha256:ccf19c9cfdaba9b3ec659320a757afc3787799a67304d47576525153abcb579c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.9 MB (359932118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e921e5377b249a46febb61bcc8f826bf3501dc2135c49885702d3668e4f804e1`
-	Default Command: `["perl5.45.3","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:09:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 03:13:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 04:13:32 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 04:25:49 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/B/BO/BOOK/perl-5.45.3.tar.gz -o perl-5.45.3.tar.gz     && echo 'f8aac25c3dc34abbaf0d84da132913f726c7faa27906b460cc442da417c2fdac *perl-5.45.3.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.3.tar.gz -C /usr/src/perl     && rm perl-5.45.3.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 04:25:49 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 04:25:49 GMT
CMD ["perl5.45.3" "-de0"]
```

-	Layers:
	-	`sha256:a7d42171331b896f009a1d89b03785bbf95d0d6603d81916619bf24f05194252`  
		Last Modified: Tue, 20 Oct 2026 23:30:30 GMT  
		Size: 47.6 MB (47559893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e83902e4163989560ed5e5a05e1775bc79e7d58bc33cfa8c9efdf74512f232ba`  
		Last Modified: Wed, 21 Oct 2026 00:48:45 GMT  
		Size: 24.4 MB (24365141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a514e4e3df7de6aeffb7187435a645d86ac3a67b5af968ab3c1e49921314a3b`  
		Last Modified: Wed, 21 Oct 2026 02:09:29 GMT  
		Size: 65.4 MB (65352174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef6c2923864098585463600504c097306f258b0828ee5a7858adfa110bc5057`  
		Last Modified: Wed, 21 Oct 2026 03:14:14 GMT  
		Size: 206.7 MB (206693620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d80fc58656a50ce81722dbea161a82a7c64bcb5c3d9b3a67782342c5c21e70`  
		Last Modified: Wed, 21 Oct 2026 04:19:42 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c8b506c5c3492e4631d6efe666565ae59366fb3286136fb2be612b6a62fa23`  
		Last Modified: Wed, 21 Oct 2026 04:26:09 GMT  
		Size: 16.0 MB (15961023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f1d91039c65201c7c9354cb6d08ec85d40d3c4e670b4ad6325425d79a9a1432`  
		Last Modified: Wed, 21 Oct 2026 04:26:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:187d0a960587fddced2c64db2b4899c7ba95858020810a788f5d0df67e6b613f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16987989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:360942236f5d9aca992e33bc5607ccbd4416da6f93762e9fb681fd689ee353df`

```dockerfile
```

-	Layers:
	-	`sha256:167d1b9ec288a78a92682a9c1ce68917025c98be0854185b60a5ef4325fab460`  
		Last Modified: Wed, 21 Oct 2026 04:26:09 GMT  
		Size: 17.0 MB (16969287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1256c7f0599ada10a6a988f8a4dada673eb9e94a2e62324ca1438655beced6ed`  
		Last Modified: Wed, 21 Oct 2026 04:26:08 GMT  
		Size: 18.7 KB (18702 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-trixie` - linux; arm variant v7

```console
$ docker pull perl@sha256:3afe081266e328c868af4b6465d081d87d71d917dc6d84896ee8e5ec618ddc7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.2 MB (342182089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f682c44873d2273f860ff6710574313f2fd070e1ab812e92efe07a1bfad60875`
-	Default Command: `["perl5.45.3","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:29:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:48:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 03:14:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 04:24:00 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 04:47:55 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/B/BO/BOOK/perl-5.45.3.tar.gz -o perl-5.45.3.tar.gz     && echo 'f8aac25c3dc34abbaf0d84da132913f726c7faa27906b460cc442da417c2fdac *perl-5.45.3.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.3.tar.gz -C /usr/src/perl     && rm perl-5.45.3.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 04:47:55 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 04:47:55 GMT
CMD ["perl5.45.3" "-de0"]
```

-	Layers:
	-	`sha256:1754e402841fcf147f7bb4372f827a1d5e90cc18bd4014a1d7bd715e8ece4ecc`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 45.8 MB (45813599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f16e2f397e50daf634a3bb1659923e40dd3e4076bc5fc9bd98990ae4a7e2671`  
		Last Modified: Wed, 21 Oct 2026 01:29:28 GMT  
		Size: 23.6 MB (23637827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a82e1136011681a455e5beb76c55bc9d39fc7a8874f4396f669db2d589d371f8`  
		Last Modified: Wed, 21 Oct 2026 02:48:48 GMT  
		Size: 62.8 MB (62761753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43deb428fe0a20fb7751c5ead6eb80f4a8e44726b4ee003bfa67149c3166220b`  
		Last Modified: Wed, 21 Oct 2026 03:14:50 GMT  
		Size: 194.2 MB (194196301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1b2829c6f5a1f41082504fe8f035f26ab224e431df5b9910e51bd2ade4bdd0e`  
		Last Modified: Wed, 21 Oct 2026 04:29:35 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9813d47a202d1459b56a42e6744e5d64f59a60dc5347042508694146c9aabe`  
		Last Modified: Wed, 21 Oct 2026 04:48:15 GMT  
		Size: 15.8 MB (15772344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd7f9f33224ea37968fdbfd94a67f948ec2daea12c3c1aa5c9c6c38a7677575`  
		Last Modified: Wed, 21 Oct 2026 04:48:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:e65e187ac00b1ebfb6252f5ddbac6250beafb6c1593b406e5ccf28ba55cbda68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16993781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8444ec8f82f275f75e083ee36cfd7171a00094f8fcb8ecb968145a07e5b8acca`

```dockerfile
```

-	Layers:
	-	`sha256:4187ccde1d5da96b5324f2227e992ed657ed6567ff914438402dd702602c0dec`  
		Last Modified: Wed, 21 Oct 2026 04:48:15 GMT  
		Size: 17.0 MB (16975079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35231138afaf0d0f042f973e047ce2541883247e265e47152e774ffe8cea3e01`  
		Last Modified: Wed, 21 Oct 2026 04:48:14 GMT  
		Size: 18.7 KB (18702 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-trixie` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:5f5d4a3d9cb89bdd4070e4567a2a231de62fee686d76cfdee6ef92c2e1c2acb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.1 MB (386134901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f90b7edbf2fd0997e01bd7f7169c406132fdccb37b0da2510d59b8705d435ba`
-	Default Command: `["perl5.45.3","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:34:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:16:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 03:22:00 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 03:26:59 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/B/BO/BOOK/perl-5.45.3.tar.gz -o perl-5.45.3.tar.gz     && echo 'f8aac25c3dc34abbaf0d84da132913f726c7faa27906b460cc442da417c2fdac *perl-5.45.3.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.3.tar.gz -C /usr/src/perl     && rm perl-5.45.3.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 03:26:59 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 03:26:59 GMT
CMD ["perl5.45.3" "-de0"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb30108d3afde03433416a48caa9604703eb8530a12c943ec11a1e46a4d84a9`  
		Last Modified: Wed, 21 Oct 2026 00:50:04 GMT  
		Size: 25.0 MB (25036616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7d3237c24572d428cffa50bed9ee6a1844db67c96c4f566bd3a67853d3c223`  
		Last Modified: Wed, 21 Oct 2026 01:34:22 GMT  
		Size: 67.6 MB (67634136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1168ed298b87949310991d4d75ebe3a183265520d7854d16569bf3d10bf12d55`  
		Last Modified: Wed, 21 Oct 2026 02:17:30 GMT  
		Size: 227.1 MB (227095197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b17334707266af5b3645aaa7661c2ab6bf50b48c1fba1db4b03a7f4cd19216`  
		Last Modified: Wed, 21 Oct 2026 03:27:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a49a067fc3d13f0a07c2d3f7770d3141571e7edb940342c5d30fcdcb05218969`  
		Last Modified: Wed, 21 Oct 2026 03:27:19 GMT  
		Size: 16.6 MB (16607085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20c568dec9d1b8440e4d6fb2f94643b9e67e8f0230849a9aa0813c926cdbee4`  
		Last Modified: Wed, 21 Oct 2026 03:27:19 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:654404436f5e0c69071d988bfefddfa3da4b23865b5a36621b8cce58a67f9658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17309492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e5a4fff58eb65c6f75ff803c305e33307710d3093a48aaa17513b4203ced7a1`

```dockerfile
```

-	Layers:
	-	`sha256:5ae09edb29ebf193a9152c3edee44f2763eb0d6ea9878511eef0c9faa2393649`  
		Last Modified: Wed, 21 Oct 2026 03:27:19 GMT  
		Size: 17.3 MB (17290758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2d99809d645f40464f7d9b26d5cd7628bce824a13ad16f0d4f46d90d2c371b1`  
		Last Modified: Wed, 21 Oct 2026 03:27:19 GMT  
		Size: 18.7 KB (18734 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-trixie` - linux; ppc64le

```console
$ docker pull perl@sha256:8d417504592c11cbb48cc99ecd5c958644ccffb5bb2a06675094e8778aa2fc33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.1 MB (402141220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea9f2e83cb9fc2cbe38f8ca7d22159c43fe08fdf8793002030f6bbf0163c551`
-	Default Command: `["perl5.45.3","-de0"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:41:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 11:40:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 14:34:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 15:43:50 GMT
WORKDIR /usr/src/perl
# Tue, 06 Oct 2026 17:05:07 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/B/BO/BOOK/perl-5.45.3.tar.gz -o perl-5.45.3.tar.gz     && echo 'f8aac25c3dc34abbaf0d84da132913f726c7faa27906b460cc442da417c2fdac *perl-5.45.3.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.3.tar.gz -C /usr/src/perl     && rm perl-5.45.3.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 06 Oct 2026 17:05:07 GMT
WORKDIR /usr/src/app
# Tue, 06 Oct 2026 17:05:07 GMT
CMD ["perl5.45.3" "-de0"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee8c75408fb545ab55e5cbdf6e0c4e4b171baf24f9b88c760adbc0ef14b65b4`  
		Last Modified: Tue, 06 Oct 2026 04:41:57 GMT  
		Size: 27.0 MB (27023111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fd755399b9c7323fd96b40a78a5e5e123878fa481c517d7cb1672f297a2b8b`  
		Last Modified: Tue, 06 Oct 2026 11:41:10 GMT  
		Size: 73.1 MB (73088931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bdb408c91e88146791db291cb121f09d35e30d6e072b5574630e63d8fcaa84d`  
		Last Modified: Tue, 06 Oct 2026 14:36:24 GMT  
		Size: 232.1 MB (232137965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeaaaf1f2295bacda0d59042a5218475f9d8d3e94a66f7f1bbb8104ce24834a7`  
		Last Modified: Tue, 06 Oct 2026 15:54:30 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca69fb5b3ad44ce37500ef373ba40cc5ffbb4b494c3eae9fcdf55d5aaaeadca`  
		Last Modified: Tue, 06 Oct 2026 17:05:56 GMT  
		Size: 16.7 MB (16683822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e897d90ec67ffac3587a1f24fdd391042328a622d12bb1c4d40e54e58c962e4`  
		Last Modified: Tue, 06 Oct 2026 17:05:55 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:ff3a2e4972bee4b080949e7a7a128baf0616cfd0ce8cf2f26109b271943b4829
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17212451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5cb5ad667660b24b1945f80b8c80ed04f2fb5d25ad40fdff026dee6206d3b0`

```dockerfile
```

-	Layers:
	-	`sha256:d7e43e3252424b1869f99f00aa08b4d30be77bf6f81ae522f7c195879acf3364`  
		Last Modified: Tue, 06 Oct 2026 17:05:56 GMT  
		Size: 17.2 MB (17193789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8d6da1c3883638a2bcc1bde01b208fe162bede159115fd5024eea94562ec33c`  
		Last Modified: Tue, 06 Oct 2026 17:05:55 GMT  
		Size: 18.7 KB (18662 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-trixie` - linux; riscv64

```console
$ docker pull perl@sha256:94b6d17b0ab3d2c544ecdfd8a948e5c055ea216d5e9e7474eb8c573b1521f590
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **479.8 MB (479788602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65717bf16333547f8d12b1cff4029fcb865f3af724deaf4441b8445eb030195`
-	Default Command: `["perl5.45.3","-de0"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:14:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 13:45:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 10 Oct 2026 06:50:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 10 Oct 2026 21:37:26 GMT
WORKDIR /usr/src/perl
# Sun, 11 Oct 2026 08:24:32 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/B/BO/BOOK/perl-5.45.3.tar.gz -o perl-5.45.3.tar.gz     && echo 'f8aac25c3dc34abbaf0d84da132913f726c7faa27906b460cc442da417c2fdac *perl-5.45.3.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.3.tar.gz -C /usr/src/perl     && rm perl-5.45.3.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Sun, 11 Oct 2026 08:24:32 GMT
WORKDIR /usr/src/app
# Sun, 11 Oct 2026 08:24:32 GMT
CMD ["perl5.45.3" "-de0"]
```

-	Layers:
	-	`sha256:45e9f88af4f41939baf397baad507403b0b2ad7362c860679e184bbd563c9aca`  
		Last Modified: Tue, 06 Oct 2026 00:30:31 GMT  
		Size: 47.9 MB (47876327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e0101e88ea96d4f49e7fe9273c6eef716c54c0e06234a5a7880913f417bfc5`  
		Last Modified: Wed, 07 Oct 2026 20:16:35 GMT  
		Size: 25.0 MB (24972632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122ad31d36d17ee6939e04e1683afb298fda9a5815f638ddd642254a8cd102f`  
		Last Modified: Thu, 08 Oct 2026 13:49:03 GMT  
		Size: 66.7 MB (66705470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f7b3723d66e9bf982d90fb7607b939da5f6f73b5ffb86e95027a0feed4cc7b`  
		Last Modified: Sat, 10 Oct 2026 07:06:05 GMT  
		Size: 324.1 MB (324123927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465a3f4d3c3c6bb7864859b918fd4cf3da8fcb5abb5350ab394892df713a2c7f`  
		Last Modified: Sat, 10 Oct 2026 22:57:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c575bc382941016fc19d9d45cfd1690fdf72baf483467d1d0169ef6b4e3a1fb`  
		Last Modified: Sun, 11 Oct 2026 08:32:47 GMT  
		Size: 16.1 MB (16109980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c383bff6aca4c070cf36f5fcc6067cc7909867263d20e90e19199481e839891e`  
		Last Modified: Sun, 11 Oct 2026 08:32:42 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:a9a5ac06024a151d15808ef274d145e4ca86b5ebe94bf45c3b1afb9b92fc1d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17283036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfb6791d001d84b56f69a3ad73366aa0e03f83504410e38b5fe30f5fba82bb58`

```dockerfile
```

-	Layers:
	-	`sha256:e801668298e26f2efc4a0be056c6669f362079a414ae6146b22205e1df9c97ea`  
		Last Modified: Sun, 11 Oct 2026 08:32:47 GMT  
		Size: 17.3 MB (17264374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16d6cb989270c80b2dd36553dfb622c589af5d584e1e57ac185606bb97adfba2`  
		Last Modified: Sun, 11 Oct 2026 08:32:41 GMT  
		Size: 18.7 KB (18662 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-threaded-trixie` - linux; s390x

```console
$ docker pull perl@sha256:9a347057083c8609848586e2fa4814f108149d26c3916c15587d66d4bfa23a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.7 MB (369738958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779157ee23a0c001d3badf5209f3a9f4685ec6178c46c3a21fcfe7e5f40218bd`
-	Default Command: `["perl5.45.3","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:10:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:56:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:25:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 03:29:49 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 03:37:16 GMT
RUN true     && curl -fL https://cpan.metacpan.org/authors/id/B/BO/BOOK/perl-5.45.3.tar.gz -o perl-5.45.3.tar.gz     && echo 'f8aac25c3dc34abbaf0d84da132913f726c7faa27906b460cc442da417c2fdac *perl-5.45.3.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.3.tar.gz -C /usr/src/perl     && rm perl-5.45.3.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && true     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 03:37:16 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 03:37:16 GMT
CMD ["perl5.45.3" "-de0"]
```

-	Layers:
	-	`sha256:704f7e15662a961f845613a96026b2730c44eeb4278aaecb894b38a2faf73324`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 49.5 MB (49460141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd33cdea1fbdb4ffcd44fee7135b211b2c5a2a70ab9e516ec85432c1bc07fb61`  
		Last Modified: Wed, 21 Oct 2026 01:10:22 GMT  
		Size: 26.8 MB (26814219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f44aa5ddd4c553ac7c2cac8bb00eeba4af94a81fbefe6045c863220ef11212b`  
		Last Modified: Wed, 21 Oct 2026 01:56:41 GMT  
		Size: 68.7 MB (68663139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21749c740ddcacabb16b27febc2fc7e459e877eb7fd999966f02bf7486ea4a04`  
		Last Modified: Wed, 21 Oct 2026 02:26:11 GMT  
		Size: 207.5 MB (207534168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078cd381cad9f97a1dc283d6e674170133e2f5d2b0ee8e60e6098b18bf0bb33d`  
		Last Modified: Wed, 21 Oct 2026 03:37:47 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6d51b62f5d27b421bf3f6b5a0ca92936cc44921432d3113836372bcbed6b1c`  
		Last Modified: Wed, 21 Oct 2026 03:37:47 GMT  
		Size: 17.3 MB (17267027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:568e419fed97a659699eaa0e7555f5fbbaad6e333aac538fc538ba067391665a`  
		Last Modified: Wed, 21 Oct 2026 03:37:47 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:45b04edce7e27c300bd090f3805fb9bf02ed86cd19c403456b5eeec7908ca39d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17002902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c62616e8fdc372eed1ac2ee6a22907972836e1ddacc8a6bf2967f8099e5519a`

```dockerfile
```

-	Layers:
	-	`sha256:5a509fbe2873f939f421791b5fa5020a6e1a7228e8811d27b9eb3f3e0b1fe549`  
		Last Modified: Wed, 21 Oct 2026 03:37:47 GMT  
		Size: 17.0 MB (16984296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0c2ddf562ff8972b52bfd5883ed70bdeb7c3b4724c997d8b3c32c41ef6677c6`  
		Last Modified: Wed, 21 Oct 2026 03:37:47 GMT  
		Size: 18.6 KB (18606 bytes)  
		MIME: application/vnd.in-toto+json
