## `perl:slim-threaded-trixie`

```console
$ docker pull perl@sha256:89a883badc8570943ba7c1c4e4cf9d0f8ae9cb19a847b1b099dd08858194fde1
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

### `perl:slim-threaded-trixie` - linux; amd64

```console
$ docker pull perl@sha256:8842f46d6fb0f7f73e8e82bacb3e32880405bbfeefce2be72ad343296cd84424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62068430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92151890a939d843ad7ee71eda3651c8d221ad4f4c8c822b5396a51b775ced37`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:50:47 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 00:56:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 00:56:02 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:56:02 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b129b6f5334f99bd0c707fac5e697463b88f0510f6c6df9ef831a372676d5ee`  
		Last Modified: Wed, 21 Oct 2026 00:56:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d1c399b39b2c4dd1c29c5886f6d348055d153291c250a7e2c5785417119b59b`  
		Last Modified: Wed, 21 Oct 2026 00:56:14 GMT  
		Size: 32.2 MB (32224588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71909515a85f4071957c0317cb442e805519b8a583ac71515dfb8474510a5322`  
		Last Modified: Wed, 21 Oct 2026 00:56:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:771028318a4f972b47e618e719634d77dba6bd6ec416ef08b37a6d73a333bb49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4036998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e57fb7a5860848e48ef19b43e0da9ed379f8f00e6dc6576c38fe96dca483afce`

```dockerfile
```

-	Layers:
	-	`sha256:55c4e63ae8516e050a82ee5b5b9f928d0712ece29d6e6f668d5f0b593a6ece6c`  
		Last Modified: Wed, 21 Oct 2026 00:56:13 GMT  
		Size: 4.0 MB (4016520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ce09d68400e0019f8677d4035cca51891978c2925334de797d36ff31594e592`  
		Last Modified: Wed, 21 Oct 2026 00:56:13 GMT  
		Size: 20.5 KB (20478 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded-trixie` - linux; arm variant v5

```console
$ docker pull perl@sha256:4da3c92c500a82349f8c67edee4432c388fc3e4c8645c6b9bb599685a356fee5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57446812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90c1f95e4c9f2da05bb92d86070829449b131a75428bad932554a96d3608d437`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:52:03 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 00:58:15 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 00:58:15 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:58:15 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a946cec3604939adf0a8f5798de9a2519ab6c14350e1824ef7eb171685e72e`  
		Last Modified: Wed, 21 Oct 2026 00:58:25 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0d619cf2f838c9f7e307d6fc155af85eb991853965a50c5ae60707a4d2d8b9`  
		Last Modified: Wed, 21 Oct 2026 00:58:26 GMT  
		Size: 29.4 MB (29438755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1153b9b7cd069224cce1ad8b8301fcc5d44c1f25f65480ceb6d9e93fc455544a`  
		Last Modified: Wed, 21 Oct 2026 00:58:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:a8da4bb764b139a8ed1d1944ac451dc77310bc7d99bc1d4904b5ef711320ae49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4030203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce14ec87233773f6f9398545c0a8e3c6e6b0374f441611be9f30907b20c737a`

```dockerfile
```

-	Layers:
	-	`sha256:19f9c3a9164ddd1b12346fb2003e488e3660c669d74de07dfd8655884f4899d2`  
		Last Modified: Wed, 21 Oct 2026 00:58:26 GMT  
		Size: 4.0 MB (4009598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:105cc81ebc49eaa2af45157b58e79f1e992e34b6b82e0260a9fd265da41484ef`  
		Last Modified: Wed, 21 Oct 2026 00:58:26 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded-trixie` - linux; arm variant v7

```console
$ docker pull perl@sha256:b7baf878f3502eba130580106e2023a505a14ac5963090bd18b999c177151b86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54770652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aac8afe35508973857cf6dc99074cd3c845d7caa1596ff1acae2e168c39b1da1`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:33:01 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 01:38:52 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 01:38:52 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 01:38:52 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c3901e4db5894a50b9da82b28b719b6357d7138e4aef45327d9444de1cd0c8`  
		Last Modified: Wed, 21 Oct 2026 01:39:03 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78510a1f6de041c80bbfa90df9c125762a3dbc85c48aeb8cb9c1cccf7f4993d`  
		Last Modified: Wed, 21 Oct 2026 01:39:04 GMT  
		Size: 28.5 MB (28511991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d3ca0208732c7eecf00719ffffb3638905773cbc0b8d39e4b48a0175ffa03e`  
		Last Modified: Wed, 21 Oct 2026 01:39:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:b756b382da604a63dc3172c1b4233061736d47cbe9d4ab8c081f73f34e8955e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4029397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd39ff20abeed6268dba8eaf5e06fdcd7c28ed13e87f3e7737a9636734f69f2b`

```dockerfile
```

-	Layers:
	-	`sha256:b7f3a471e2c5e17db2747d7198c342211494b9aac0156032ae0f0e0f2a3ab564`  
		Last Modified: Wed, 21 Oct 2026 01:39:03 GMT  
		Size: 4.0 MB (4008791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a1cc53df00cd29d1b9fa09c8803b12c7973a3ec60e8049161382cb69a656acd`  
		Last Modified: Wed, 21 Oct 2026 01:39:03 GMT  
		Size: 20.6 KB (20606 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded-trixie` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:cd12b92eb7b71f53ff7e45d39c145a84bffeaa102350b8f218f2ab2f50680e6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62085958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86544711c15015ac26122705bc83d902cb3af76da4d53f250913ea9c10041e17`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:53:54 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 00:59:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 00:59:04 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 00:59:04 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6dd4ae6a012abdf241e0a097ad9ab430effdbf24e91571a4203301d5223a991`  
		Last Modified: Wed, 21 Oct 2026 00:59:14 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b7172921fcfb8e4b49948740ff1cc15d2ad1a07d167b6ca07eec6709dd82f9e`  
		Last Modified: Wed, 21 Oct 2026 00:59:15 GMT  
		Size: 31.9 MB (31885213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fc33ad2d9dcfd96f0e2d979ce10cc383bbca026c74b7ffacdc1777a88bf39f`  
		Last Modified: Wed, 21 Oct 2026 00:59:14 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:7c5524d7b981bbfff6f7e92db67fd4caf74559be2c0943b52d3a522185a4a254
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4032310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0624edd71dd8d1dd65712f3677e3491288245c914b3dbab217d172c5dfcb5ad`

```dockerfile
```

-	Layers:
	-	`sha256:0cf625c729ea835dcd241d8ff3ffd34413a6b41a9722142108a0b1b50c50bbe3`  
		Last Modified: Wed, 21 Oct 2026 00:59:15 GMT  
		Size: 4.0 MB (4011656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61cb443f273726272ddd485ad35116ee567f8157a19efb8ebbade19fef6651e6`  
		Last Modified: Wed, 21 Oct 2026 00:59:14 GMT  
		Size: 20.7 KB (20654 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded-trixie` - linux; ppc64le

```console
$ docker pull perl@sha256:84b4cb8c79e4f5f889ea07cef6a6d5eb74f090f4efa2d19994fafca4d6c1aad2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66653348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a232ff37486cc2b58137abdcbc1139461fc1332dbbf18b22929833a9be627e4`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 04:35:04 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 04:57:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 04:57:07 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 04:57:07 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d287b73dd487111657899a5c8efeee49a0d95505bcdb9ad496be4232d64aa805`  
		Last Modified: Wed, 21 Oct 2026 04:46:15 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eded48829034dfd71ad663133650eb0e711bf0c45e4048a591b3d4c98e46dafc`  
		Last Modified: Wed, 21 Oct 2026 04:57:35 GMT  
		Size: 33.0 MB (33001147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4235f6a3fb4bc119e8bbf529d5cb0a0f91ec25673e57d900d3043c3bf3de189f`  
		Last Modified: Wed, 21 Oct 2026 04:57:34 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:00e84e89432016bbb196bc655759cc470cf7f022385c9040076e9e5f977393f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4033118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e87afbf3e8dbe1b746e3914a824aad139b03b13f5bf5eb80e094ca6ed6bfe5d`

```dockerfile
```

-	Layers:
	-	`sha256:228c706aae9dd1624aa656d5f0771b70f65fd3bb4da65649db6f6bc0cff5ea28`  
		Last Modified: Wed, 21 Oct 2026 04:57:35 GMT  
		Size: 4.0 MB (4012561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ecd12bdd2e829682c7a4e0cec2788528b4b3609b203e9a3c10d7bf163ead572`  
		Last Modified: Wed, 21 Oct 2026 04:57:34 GMT  
		Size: 20.6 KB (20557 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded-trixie` - linux; riscv64

```console
$ docker pull perl@sha256:99530fa443b1472411c3c11fa3b691f3e9d922a232a516ae4927eeef47b852e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68502424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9270fb7bfc4fad801ddfed01e66545a7afaf55466ca2f2d478e17fc8f1c81a25`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:31:50 GMT
WORKDIR /usr/src/perl
# Wed, 07 Oct 2026 23:03:40 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 07 Oct 2026 23:03:40 GMT
WORKDIR /usr/src/app
# Wed, 07 Oct 2026 23:03:40 GMT
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
	-	`sha256:78c0c2dee3fa0d89d0ba19ebbb081267fd0af66bae3291848729391aa41f436a`  
		Last Modified: Wed, 07 Oct 2026 23:06:10 GMT  
		Size: 40.2 MB (40168397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93eeb3b237bc588839148719a1c6980c55446becedde0863df02491daacd43e`  
		Last Modified: Wed, 07 Oct 2026 23:06:03 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:d3cb5dfdd5a81d4a9cab06331296faba5017d282b3f64132bec239e9c8068adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4025658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5cd5e03d822217f83b8824eed5c8017099c6ec15039401d88a6a6043d05546`

```dockerfile
```

-	Layers:
	-	`sha256:a237d24737f27fd1ad5ca1e5a0434257e669d72107ea73ef50554c896561b1f4`  
		Last Modified: Wed, 07 Oct 2026 23:06:04 GMT  
		Size: 4.0 MB (4005100 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae2916807a43ec1d0791f028078161572871c51ee0cd03404af786deeb574d94`  
		Last Modified: Wed, 07 Oct 2026 23:06:03 GMT  
		Size: 20.6 KB (20558 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:slim-threaded-trixie` - linux; s390x

```console
$ docker pull perl@sha256:1532660a9d230b4b96802c17f6fdf75f6ade19b1808da9a6ff7099f618995e0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61495593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:531d3dc10093b3780fd6e95bd573c64837f2c0f07522f4fbf7bc1f4ea59a414f`
-	Default Command: `["perl5.44.0","-de0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:14:40 GMT
WORKDIR /usr/src/perl
# Wed, 21 Oct 2026 01:21:10 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/L/LE/LEONT/perl-5.44.0.tar.gz -o perl-5.44.0.tar.gz     && echo '3b855066b92491cb40e86affb1ca57d1a388aa43e51b91c7806a32c2f65f96c3 *perl-5.44.0.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.44.0.tar.gz -C /usr/src/perl     && rm perl-5.44.0.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.5/cpm -o /usr/local/bin/cpm     && echo '2e7cdae8f84a673384d40e2486aa236955b7f69547d66f9920564c05b330f9e0 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 21 Oct 2026 01:21:10 GMT
WORKDIR /usr/src/app
# Wed, 21 Oct 2026 01:21:10 GMT
CMD ["perl5.44.0" "-de0"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc7aef99aaaa0949bbfb08045c6382d7e32e621c992a627f19b0f7df2c906544`  
		Last Modified: Wed, 21 Oct 2026 01:20:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f392070635ef1524b6168152027dd1d81db0a6239eb567ff9fe852f95d92acc`  
		Last Modified: Wed, 21 Oct 2026 01:21:26 GMT  
		Size: 31.6 MB (31583890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caf98f3f03d01390be6e3b71bf86516bebff8dc2363420cdb22566359b46eed5`  
		Last Modified: Wed, 21 Oct 2026 01:21:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:slim-threaded-trixie` - unknown; unknown

```console
$ docker pull perl@sha256:7c7a8295e09815494fcd40ae010c33539dc40928f279f03fccbadd1fbe44d91f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4029325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4b88673f2ef779020065243b6b4cb8393415e980e9e92b35cafe956584d4e2`

```dockerfile
```

-	Layers:
	-	`sha256:c95541cf7b4f63684459b6079f6cea905a796cd8a89931d3ff6d84ee3994bf8b`  
		Last Modified: Wed, 21 Oct 2026 01:21:25 GMT  
		Size: 4.0 MB (4008847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1779c9ce46f88ab944c2bcece5212b3833af14d00711d7939f27c400b8dc2cdb`  
		Last Modified: Wed, 21 Oct 2026 01:21:25 GMT  
		Size: 20.5 KB (20478 bytes)  
		MIME: application/vnd.in-toto+json
