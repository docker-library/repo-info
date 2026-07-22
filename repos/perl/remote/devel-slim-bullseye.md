## `perl:devel-slim-bullseye`

```console
$ docker pull perl@sha256:3c00a3b5324bb6952bb521cb4598d6db840045e4d44c7eff145c26f9f433302a
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
$ docker pull perl@sha256:ec9e26196288799f02306ccb24030535567978173c14617c4928d85ea27cd75b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56686726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75d9f04bbf7379ad4459fce3cb191736aa3f35cefe4441ea4b73ae89099ff5a`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Wed, 22 Jul 2026 18:31:43 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 18:55:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 18:55:50 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 18:55:50 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8579daed81dfddea287a0bf9a6f2f2d90dbac41293c30d9ca4b70cb47694595`  
		Last Modified: Wed, 22 Jul 2026 18:36:18 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c038c0f719b7bdf7199a2789ba44a36eeee5419064da674868f041323e1d43`  
		Last Modified: Wed, 22 Jul 2026 18:56:00 GMT  
		Size: 26.4 MB (26426703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50379f589b22a258f6ed9bdd8c7706760a17918b2633f3f497d8fa1a9038dd92`  
		Last Modified: Wed, 22 Jul 2026 18:55:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:2c8ecb68ea541c9d41d8a092833df3fc35382e14c9c47e6d51018c6dfecef293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4147305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19df2c229f80e928f2c2e2bf71a110abaafd094cea23bf1cb5bc59c5121349d`

```dockerfile
```

-	Layers:
	-	`sha256:0f8ecabc8e04f3f3c75ae6ac08bc8a6dfc24caa438ad2336f4733b4f4235a3e1`  
		Last Modified: Wed, 22 Jul 2026 18:56:00 GMT  
		Size: 4.1 MB (4129067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e9f46e4fdecf8b01062d23e0a808c38f0d81828362c272f86588e964e0fe96c`  
		Last Modified: Wed, 22 Jul 2026 18:55:59 GMT  
		Size: 18.2 KB (18238 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-bullseye` - linux; arm variant v7

```console
$ docker pull perl@sha256:1ba01921f98e96373ed5eed2835feaec3e30a26da9eb5c53c06c54ea8791a1a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49234914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5182ab56bc78839b5abed1edf0288a18e64306404c40ce88c9ac32203e490f16`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1783900800'
# Wed, 22 Jul 2026 19:07:35 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 19:13:10 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 19:13:10 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 19:13:10 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:301f8758eee44f5c6a8795e4da887ce9a14655e7c70df1b75476e9e243049185`  
		Last Modified: Tue, 14 Jul 2026 00:14:06 GMT  
		Size: 25.6 MB (25552916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f00d109536585550708b781fa6cc63e22d999ed0d53ff21742a37f34da107a2`  
		Last Modified: Wed, 22 Jul 2026 19:13:20 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8c30a90b7463a6f52de9ecb99b48d850093fc41350393a835bce29f88c45d1`  
		Last Modified: Wed, 22 Jul 2026 19:13:21 GMT  
		Size: 23.7 MB (23681730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f43d8005b95ff22ab78ba4e2c151e14b9cf7de5698d3868b88d8bb041f5739`  
		Last Modified: Wed, 22 Jul 2026 19:13:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:1fb1cf8b0d7ca007912230492c06359231bf4cc721c3c38c2c3679ba78ca6c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4121366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3421f973484a55a36f530826c488d9e07a7765b37bc9b0615bf9fca5073e8437`

```dockerfile
```

-	Layers:
	-	`sha256:d8db69d86f80d7a4c87822b7884ea5c636612397cf772b42faaf925b0e09c3f3`  
		Last Modified: Wed, 22 Jul 2026 19:13:20 GMT  
		Size: 4.1 MB (4103056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfa2a0e51dd1ffdbaa31ceb64a611b3615e8942e803ea788dd52f864328f82d7`  
		Last Modified: Wed, 22 Jul 2026 19:13:20 GMT  
		Size: 18.3 KB (18310 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-bullseye` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:57038bb1acc3ef32fa0821846e3b41b57097d0d4fc75c6d9298569d2663df546
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54302436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d7d66fda3835cf9429c66686fdd806537837ac6087ec9c88ac6a9817f657316`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Wed, 22 Jul 2026 18:45:43 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 18:50:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 18:50:21 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 18:50:21 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c038d156f1408821087e6d13d821b4f1e40415a3ca1c1e83064d77c1cc2fc4f3`  
		Last Modified: Wed, 22 Jul 2026 18:50:32 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c29a3126bca0362493b82db155963cc6448310d4dd8fa914b018157457229e7`  
		Last Modified: Wed, 22 Jul 2026 18:50:33 GMT  
		Size: 25.6 MB (25553184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cbda94175b1abe34e54dfd5d48632d70a42f509f684d7515d8e2340153785b0`  
		Last Modified: Wed, 22 Jul 2026 18:50:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:6821ff8996c096384c88552396105ac2a1e981b12b5ab43a0e8e456a8d9f188e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4121792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ea531218c822eeea290dcd7378a03c484d253261eee6f9af222df05d6fbcb4`

```dockerfile
```

-	Layers:
	-	`sha256:e312144b203b5b36812f926b3c0b858f573743d6d04857efc857013e710d7e52`  
		Last Modified: Wed, 22 Jul 2026 18:50:32 GMT  
		Size: 4.1 MB (4103462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8ca0995c428c4ca51ddc93434ba9820c1acdca4fb89a552c771be8890d740bb`  
		Last Modified: Wed, 22 Jul 2026 18:50:32 GMT  
		Size: 18.3 KB (18330 bytes)  
		MIME: application/vnd.in-toto+json

### `perl:devel-slim-bullseye` - linux; 386

```console
$ docker pull perl@sha256:87adadd8f98de5b25c8ce491d8ffef1d103ddc173688ba412e4c292d09e0ba04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59134950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f747b7803c042c08dbece11554c56e1ee36df956739766daba33d5a4dcedbaf6`
-	Default Command: `["perl5.45.1","-de0"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1783900800'
# Wed, 22 Jul 2026 18:34:54 GMT
WORKDIR /usr/src/perl
# Wed, 22 Jul 2026 18:39:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        zlib1g-dev        xz-utils        libssl-dev     && curl -fL https://cpan.metacpan.org/authors/id/P/PE/PEVANS/perl-5.45.1.tar.gz -o perl-5.45.1.tar.gz     && echo '2b6d691916596835c411ee0181b6c66e4ee1c8d6ab60f8b0733c7c9cf8b58e3e *perl-5.45.1.tar.gz' | sha256sum --strict --check -     && tar --strip-components=1 -xaf perl-5.45.1.tar.gz -C /usr/src/perl     && rm perl-5.45.1.tar.gz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local -Dusedevel -Dversiononly=undef -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -fLO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7049.tar.gz     && echo 'b9ffb88e62a06aa91bd7d5a28ef6bdbb942608aea90e3969aa29b33640035214 *App-cpanminus-1.7049.tar.gz' | sha256sum --strict --check -     && tar -xzf App-cpanminus-1.7049.tar.gz && cd App-cpanminus-1.7049     && perl -pi -E 's{http://(www\.cpan\.org|backpan\.perl\.org|cpan\.metacpan\.org|fastapi\.metacpan\.org|cpanmetadb\.plackperl\.org)}{https://$1}g' bin/cpanm     && perl -pi -E 's{try_lwp=>1}{try_lwp=>0}g' bin/cpanm     && perl bin/cpanm . && cd /root     && curl -fLO 'https://www.cpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz'     && echo 'ab213691685fb2a576c669cbc8d9266f8165a31563ad15b7c4030b94adfc0753 *Net-SSLeay-1.96.tar.gz' | sha256sum --strict --check -     && cpanm --notest --from $PWD Net-SSLeay-1.96.tar.gz     && curl -fLO 'https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.099.tar.gz'     && echo 'a0be800ff4852b1567ee5500e772417ad7a360abff80c01b5b875c15d44be832 *IO-Socket-SSL-2.099.tar.gz' | sha256sum --strict --check -     && SSL_CERT_DIR=/etc/ssl/certs cpanm --from $PWD IO-Socket-SSL-2.099.tar.gz     && curl -fL https://raw.githubusercontent.com/skaji/cpm/v1.1.4/cpm -o /usr/local/bin/cpm     && echo '6f5ae6d0e25ba20f768b8856ea61481da9d142a04629d658025011c76d3bbc3f */usr/local/bin/cpm' | sha256sum --strict --check -     && chmod +x /usr/local/bin/cpm     && savedPackages="ca-certificates curl make netbase zlib1g-dev libssl-dev"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr /root/.cpanm /root/Net-SSLeay-1.96* /root/IO-Socket-SSL-2.099* /usr/src/perl /usr/src/App-cpanminus-1.7049* /tmp/*     && cpanm --version && cpm --version # buildkit
# Wed, 22 Jul 2026 18:39:49 GMT
WORKDIR /usr/src/app
# Wed, 22 Jul 2026 18:39:49 GMT
CMD ["perl5.45.1" "-de0"]
```

-	Layers:
	-	`sha256:2c368d4079ccf402f5dc5d2e6c4c9516c79938eeb350b952a619d581125d4d00`  
		Last Modified: Tue, 14 Jul 2026 00:14:37 GMT  
		Size: 31.2 MB (31196405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a88c0d2e2ae507d70cd53184414c2e8031b06fe9d580254b622f6bb3a40c458a`  
		Last Modified: Wed, 22 Jul 2026 18:39:59 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d12ae4523a2f402afac36a2fd76719370ed62a994a2bfcdb7b8bd9e397887d`  
		Last Modified: Wed, 22 Jul 2026 18:40:00 GMT  
		Size: 27.9 MB (27938278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9fc3b289895cbc1fc8ee100ce7616d31d67d510a4ed9d691b49bc4d28d0ad6`  
		Last Modified: Wed, 22 Jul 2026 18:39:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `perl:devel-slim-bullseye` - unknown; unknown

```console
$ docker pull perl@sha256:0f8c70aa3f22edc570cac8fbf191a54d59f175f08a2efcd3b121821084ab5216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4151560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f3d9ae228f2c8d83fda08cb1fd9ba349668237370fe9a61bbe54c80bb9747c5`

```dockerfile
```

-	Layers:
	-	`sha256:be04b789db9a8edad766f792e74ef4069c8eef4790428353fb0f1f67153119ca`  
		Last Modified: Wed, 22 Jul 2026 18:39:59 GMT  
		Size: 4.1 MB (4133349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a4722a0e5def02d08983c7b6ea68b49c2e67059e0f11e3e7a4df259f5db446a`  
		Last Modified: Wed, 22 Jul 2026 18:39:59 GMT  
		Size: 18.2 KB (18211 bytes)  
		MIME: application/vnd.in-toto+json
