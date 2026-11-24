## `perl:devel-slim-threaded-forky`

```console
$ docker pull perl@sha256:81e4eaf867bebedf72bb3fe1572c5c7feb5770a4f8d9a83521da63abf632bd23
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
$ docker pull perl@sha256:d37e6f59771bc50423a3a1600bae69456303c1a982e8e7fa6ef9ea4a09c6cb78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63502246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d00ddfda23fc5748ec00a46e4a4b96109c0698849955f5cef6493a644e2e65`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:48:48 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 04:54:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 04:54:00 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:54:00 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:a971188a655efddc53adb544bb28f1245d3d88e962b9cfe6aacccd3cc320b90c`  
		Last Modified: Tue, 24 Nov 2026 03:40:10 GMT  
		Size: 31.5 MB (31545383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d6bad3c6de0195c6a2030d097c65b54e270f7b04b5444f531f05a58d1245193`  
		Last Modified: Tue, 24 Nov 2026 04:54:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d88c8a90f66e256e1852c24a4143e5b0cfb11fb6f9cef83d994e42d8d249ca7`  
		Last Modified: Tue, 24 Nov 2026 04:54:12 GMT  
		Size: 32.0 MB (31956600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96134488d74448aa8fbe783f29967945fb98c12d97774b4dbb3f85c58a9b2483`  
		Last Modified: Tue, 24 Nov 2026 04:54:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:586a7218d5876520869492d0f6b3fa26af0d37bf3cf1c5c231e0b800af008a77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4068660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38736134a3b0dbe386e31d9825ed337717a656e22f7787c1d25d34f6b1c32e87`

```dockerfile
```

-	Layers:
	-	`sha256:6cf485cc838ea8ae238991e64b786619636dea98e329375be082c22808014de1`  
		Last Modified: Tue, 24 Nov 2026 04:54:11 GMT  
		Size: 4.1 MB (4050347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bfcfcd07557eab3cc419ffc844263c212dcb9c38450d7a5b8e79935261cab73`  
		Last Modified: Tue, 24 Nov 2026 04:54:11 GMT  
		Size: 18.3 KB (18313 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-forky` - linux; arm variant v7

```console
$ docker pull perl@sha256:d4c0e0c2c56331656c090ae685999a550794e31175e80fe651166e4d1a28951c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55553528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a96a9a01728315b7d15df513766b6279d84c41f5307f30dc428e2c4c5df0b6`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 05:28:45 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 05:35:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 05:35:19 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 05:35:19 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:b1365a97501b08af3adb92126ff1f67fc1a1695c825f73951bb13e78e5808bdb`  
		Last Modified: Tue, 24 Nov 2026 03:40:26 GMT  
		Size: 27.5 MB (27482273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf78cff99ef2b670c54dd2f9fb69208a14fb639e5b8c7fbc1de8f5a3576b14aa`  
		Last Modified: Tue, 24 Nov 2026 05:35:29 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a084e6e49c8d71d82d6b14b1ef1427e2b82a51923ae6059d06a23d3c94f0cb12`  
		Last Modified: Tue, 24 Nov 2026 05:35:30 GMT  
		Size: 28.1 MB (28070990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3845fe0c392a250de66eb80b7c2f7fbeae7cb5faeae6945c2138e45372c319b4`  
		Last Modified: Tue, 24 Nov 2026 05:35:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:a90813aecdfca98f3be120dd74cb01512dfb6d721c5a3384c07224615ddffc87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4061146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f137b3c72f79145c576d8d866e74f0fa0075dcf5d6c150e8af644e5901a973b3`

```dockerfile
```

-	Layers:
	-	`sha256:80defd5493879aca80da1903b4b760a0b0e84a01388c5dc5603b445aae4ca85f`  
		Last Modified: Tue, 24 Nov 2026 05:35:29 GMT  
		Size: 4.0 MB (4042763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b7c2bf3862731b9cb3ea41c77951f841a9ebce306b06161d433d783bd009e48`  
		Last Modified: Tue, 24 Nov 2026 05:35:29 GMT  
		Size: 18.4 KB (18383 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-forky` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:f7df028287261425572624179b27899119ffbb9f8a312febd8ed0f19169bd2f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61944845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f3158813ac23c3ae274193b61fd1925fcbbfd6b92e27ecf3f82e22187bcc83`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:53:17 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 04:58:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 04:58:46 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 04:58:46 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:ee010aed21a1cf224a1abe45a7acf2c4d02af0de891b9b07f0a444a37951236f`  
		Last Modified: Tue, 24 Nov 2026 03:40:14 GMT  
		Size: 30.7 MB (30676031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b0052f51ef3ed4efcf8e2cc889c57dca983320decfa25202857b60962737a3`  
		Last Modified: Tue, 24 Nov 2026 04:58:57 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f83b3cfae31f275aa919beafb9a76767755983fd773aec76566761d4ccacceaa`  
		Last Modified: Tue, 24 Nov 2026 04:58:58 GMT  
		Size: 31.3 MB (31268549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c40a5b16a086d6c450d25f6b2fac7750e1a4593ee57cd17905fcc0926274e9fd`  
		Last Modified: Tue, 24 Nov 2026 04:58:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:3dd496bf72a64163962a8239871333b68536fa8f626619e24f6a5148b211194b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4063903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18df07c34cce3834dfa10ef4050787dff52adfa54ae9b246c87deff73bcf8daa`

```dockerfile
```

-	Layers:
	-	`sha256:d98bcae6d9f3a2e36d71b9caaddfe5c21ba6c79e8c3b6b41770e5e0c981d7664`  
		Last Modified: Tue, 24 Nov 2026 04:58:58 GMT  
		Size: 4.0 MB (4045498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c2161b311efed618121d9f16b367c11ac7470ea5dc0ba9ae7a6e4f93b6dd780`  
		Last Modified: Tue, 24 Nov 2026 04:58:57 GMT  
		Size: 18.4 KB (18405 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-threaded-forky` - linux; ppc64le

```console
$ docker pull perl@sha256:776529862d4abceed73edc618f6f11c4f2c6b69bfed3331a1b7c897dadfea2db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.7 MB (68704469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b139cc7a15494af6f8560edce41c0a6145ee869378e7149deb1834feb146cbd`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 08:15:42 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 08:41:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 08:41:50 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 08:41:50 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:559f6a2ca85773e83c3ad6e27eec1193f9b61e80901de395b0fd504da009e071`  
		Last Modified: Tue, 24 Nov 2026 03:39:56 GMT  
		Size: 36.2 MB (36151554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b9e80fa0ad954973d13417089d9adeb4bcdd0c7673e8520b53826bba9cf49d`  
		Last Modified: Tue, 24 Nov 2026 08:26:48 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a866da1c99e3fdbc585e2985d1530211ff7580dfec3b25ff999c20817447ca48`  
		Last Modified: Tue, 24 Nov 2026 08:42:27 GMT  
		Size: 32.6 MB (32552653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d232f42300ad5e28f0eede2e2fd0647473a68a798a42dfa0f9992b0df81acce`  
		Last Modified: Tue, 24 Nov 2026 08:42:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:13fdd8af05bc1177080e25510e2bfdcee0c9d6d76c7f47bf21b6f5d3ca4b5351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4065012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b898a490dd2ec17ad08952f8821896bae79b96ed9fcd6ef1a6850f98486532`

```dockerfile
```

-	Layers:
	-	`sha256:c9c9a46274c89e8edcda920dda753d435ead0e8163019a7a137b74273ad41aae`  
		Last Modified: Tue, 24 Nov 2026 08:42:26 GMT  
		Size: 4.0 MB (4046661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38deb9bed719326928fda9dff951e1845b030df2f6e7648204b1ce5f83245977`  
		Last Modified: Tue, 24 Nov 2026 08:42:26 GMT  
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
$ docker pull perl@sha256:afe872bc3d3dac1f657482ff81adf5226c3c67ee079d0a7e925aa7d1fd62e176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61497246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775d1ade1adc7f77e14757f701f2a297621eb45725ed3333d4a4bbeaf2373be0`
-	Default Command: `["perl5.45.5","-de0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 05:05:20 GMT
WORKDIR /usr/src/perl
# Tue, 24 Nov 2026 05:14:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/E/EH/EHERMAN/perl-5.45.5.tar.gz -o perl-5.45.5.tar.gz     && echo '43942ec8a80396abe4d688a6abbc27287442a8073e1a563fb70feb74676db131 *perl-5.45.5.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.5.tar.gz -C /usr/src/perl     && rm perl-5.45.5.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.7/cpm -o /usr/local/bin/cpm     && echo '7375479d039ed1fc97e79e6a333b72e5536247d6fd52ca7e2aac16b0142da959 */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Tue, 24 Nov 2026 05:14:47 GMT
WORKDIR /usr/src/app
# Tue, 24 Nov 2026 05:14:47 GMT
CMD ["perl5.45.5" "-de0"]
```

-	Layers:
	-	`sha256:7fe644287736406c1b91766ba0960eefbcdff489a7cdd491b4b266ecb2ea0ff3`  
		Last Modified: Tue, 24 Nov 2026 03:39:11 GMT  
		Size: 30.6 MB (30577692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c448db3e314646e3f4fc6d1cbc8709e9502bbd33592c48b87dad9cb03af1f83`  
		Last Modified: Tue, 24 Nov 2026 05:10:58 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37b9a4696bc6ae51a61bf75b49ffc092f8ef081e5094affbc0f280ceca2e59e`  
		Last Modified: Tue, 24 Nov 2026 05:15:03 GMT  
		Size: 30.9 MB (30919289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6098c6e3fd8b699e8de62bbf7e35d53460e25ae995e53da6648213c6a4261904`  
		Last Modified: Tue, 24 Nov 2026 05:15:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-threaded-forky` - unknown; unknown

```console
$ docker pull perl@sha256:2eee2adc0c1528310c6c7528690b30903d99a8b266b44c1eb62bd866260fc7d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4060920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2f01de9fc2747bf0915c3863aa83d4f30d3ccb59743f0a7dd82201e5400021`

```dockerfile
```

-	Layers:
	-	`sha256:1ea34cfd2805c92ca146002d5c861af8031acc6537870f64b4253c4bcf2472d8`  
		Last Modified: Tue, 24 Nov 2026 05:15:02 GMT  
		Size: 4.0 MB (4042607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:044e9691bc4c0691df22bdf3ae20d902adb881b7ded9e325725d1125d0c7b11d`  
		Last Modified: Tue, 24 Nov 2026 05:15:02 GMT  
		Size: 18.3 KB (18313 bytes)  
		MIME: application/vnd.in-toto+json
