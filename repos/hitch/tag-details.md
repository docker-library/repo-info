<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `hitch`

-	[`hitch:1`](#hitch1)
-	[`hitch:1.8`](#hitch18)
-	[`hitch:1.8.0`](#hitch180)
-	[`hitch:1.8.0-1`](#hitch180-1)
-	[`hitch:latest`](#hitchlatest)

## `hitch:1`

```console
$ docker pull hitch@sha256:2022d3d362093108c654922d7cb853aeaf9a88c7de09c4b133535305527969ca
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

### `hitch:1` - linux; amd64

```console
$ docker pull hitch@sha256:2de916ea6a9353f6f48702c7d133655c430de20f4cdf9356fd21e44d344d0b7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32259217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e110ff5f54d3674173e69454945b48d48b871b03f91a8626db8f23243b4d19da`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:22:04 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:22:04 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:22:04 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:22:04 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:22:04 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:22:04 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:22:04 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:22:04 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:22:04 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:22:04 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:22:04 GMT
CMD []
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2314c27bdafd423901b5c336c450ed2cb5778f436233238812e7aef961d18616`  
		Last Modified: Tue, 14 Jul 2026 01:22:11 GMT  
		Size: 4.0 MB (4026129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d3edf0206cff76ba1e2f2e25d6f7e6904359c8163a7a6b623fe949c6e0616a`  
		Last Modified: Tue, 14 Jul 2026 01:22:11 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1` - unknown; unknown

```console
$ docker pull hitch@sha256:14bf7170d881361b9520a6cab16eea13659ef97a3c2b1d4cc4c9039fa9ae79cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:678e5af06acbfb9dd8420f324630f46cd4a75cf580a9eb471ac2cfd16da33dbe`

```dockerfile
```

-	Layers:
	-	`sha256:b10e49cf9dddc403c71a8faed31021278c681233afdc2ec7c2262db03c7fc738`  
		Last Modified: Tue, 14 Jul 2026 01:22:11 GMT  
		Size: 2.5 MB (2531427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f486f60d15b1726c46b6cd127716fb090e99cb7c8358706f905555008e8de20`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1` - linux; arm variant v7

```console
$ docker pull hitch@sha256:7462aa3fe19a2f428bc1c7dc5c9f90b85d8fe862c3b896cc12f9d2a72e889497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27327777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b4625cdcdff8a3cdba6c50372fd79c44af5ae3195c223dc99a4efc8ca9a7e0`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:20:27 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:20:27 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:20:27 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:20:27 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:20:27 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:20:27 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:20:27 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:20:27 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:20:27 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:20:27 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:20:27 GMT
CMD []
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488f8a194f6936469ec274b7c53e4708f47f5b663562586575672578d7d4b58f`  
		Last Modified: Tue, 14 Jul 2026 01:20:34 GMT  
		Size: 3.4 MB (3387553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5471609dc0af66ccab1c652b8206f705390ef3901763afebef955d83023188ca`  
		Last Modified: Tue, 14 Jul 2026 01:20:33 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1` - unknown; unknown

```console
$ docker pull hitch@sha256:c3b9fc1fe5af2b7bea16153933f6b8688c89e19ebb648ae03eead1a055aaff31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2547329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c060a703af610001d8d59457a267b8d320c1cf7acca5c59bc46f28f33ded538`

```dockerfile
```

-	Layers:
	-	`sha256:f664b2918c78bd39ea7bb975fd13fe15a6388e8f528073823255ac4b047ffa74`  
		Last Modified: Tue, 14 Jul 2026 01:20:34 GMT  
		Size: 2.5 MB (2533659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b2047f7d7f0f838f0d76544886fdd1e5db7f1b515c3229a41a4f41fb0cb8234`  
		Last Modified: Tue, 14 Jul 2026 01:20:33 GMT  
		Size: 13.7 KB (13670 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:5fe668c976d2699b503152212cb81d18ef63b9befa641085e0af8f1e3557b0eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d050ce117cbf126cda9251d2b72a9512f93651f1dfe0412706712cc81bb4f12`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:22:03 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:22:03 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:22:03 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:22:03 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:22:03 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:22:03 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:22:03 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:22:03 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:22:03 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:22:03 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:22:03 GMT
CMD []
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be251de5d2cfdbbf4d5021db6c7187fa66f7874cffd4dc5ba5c4d460f42f18e3`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 3.9 MB (3874151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34abcebc5d54205e1491c1e8782f7f0c92052f9ed1b15a490da4305cdab6dbd6`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1` - unknown; unknown

```console
$ docker pull hitch@sha256:32990e3e34dab7b0680d004a26d3ff19c3b5f1635c1fe0ea71488aa9b2f4ee5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb7cf5742ab991f269451a00016536b58a8c5e938915570139a40d106013a54`

```dockerfile
```

-	Layers:
	-	`sha256:37536174617b0eb39a9fc759d5cb3cc5b2033f291826acc65880e230752fe43d`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 2.5 MB (2531697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e9dd5a9f3f3118a0fe68321fd673336383a6bf3c278efc219848fe18ed2b205`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 13.7 KB (13698 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1` - linux; 386

```console
$ docker pull hitch@sha256:c2019ecf543a0ca27077dca558513ec8daf0929cdf08d7cc32acf2447400f362
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33241028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117e598f695740208018baf00ffd7a6c5b025a06885c22794e772888712dc4e9`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:18:22 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:18:22 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:18:22 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:18:22 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:18:22 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:18:22 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:18:22 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:18:22 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:18:22 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:18:22 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:18:22 GMT
CMD []
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07876d672c8e64b2e61cf982f157ae96f1f53dea4bce721cecc5c9732f39055`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 4.0 MB (4019531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed64a2b60ee1cf6bdf97c030ac6a2a9d5a4ea13a48123f4c45e2ea1fe1452f99`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1` - unknown; unknown

```console
$ docker pull hitch@sha256:bdc66874df629e8074f3e20501ff429194d26ad76124eb20e243f848a43cc5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2542148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8437b76d5ffaa7a4e7547840076d820c869ac7a93fdb7ae0d4e65f8d251636`

```dockerfile
```

-	Layers:
	-	`sha256:b35dc1a4d4c750b89785e768b8baaf90a5e1bafe5a54c34ffde15cad6a91433a`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 2.5 MB (2528603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aef47cecbf9a071e9ceb671e1078feaf76cb58b467f252e2dd0266c37bca6d22`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 13.5 KB (13545 bytes)  
		MIME: application/vnd.in-toto+json

## `hitch:1.8`

```console
$ docker pull hitch@sha256:2022d3d362093108c654922d7cb853aeaf9a88c7de09c4b133535305527969ca
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

### `hitch:1.8` - linux; amd64

```console
$ docker pull hitch@sha256:2de916ea6a9353f6f48702c7d133655c430de20f4cdf9356fd21e44d344d0b7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32259217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e110ff5f54d3674173e69454945b48d48b871b03f91a8626db8f23243b4d19da`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:22:04 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:22:04 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:22:04 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:22:04 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:22:04 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:22:04 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:22:04 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:22:04 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:22:04 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:22:04 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:22:04 GMT
CMD []
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2314c27bdafd423901b5c336c450ed2cb5778f436233238812e7aef961d18616`  
		Last Modified: Tue, 14 Jul 2026 01:22:11 GMT  
		Size: 4.0 MB (4026129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d3edf0206cff76ba1e2f2e25d6f7e6904359c8163a7a6b623fe949c6e0616a`  
		Last Modified: Tue, 14 Jul 2026 01:22:11 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8` - unknown; unknown

```console
$ docker pull hitch@sha256:14bf7170d881361b9520a6cab16eea13659ef97a3c2b1d4cc4c9039fa9ae79cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:678e5af06acbfb9dd8420f324630f46cd4a75cf580a9eb471ac2cfd16da33dbe`

```dockerfile
```

-	Layers:
	-	`sha256:b10e49cf9dddc403c71a8faed31021278c681233afdc2ec7c2262db03c7fc738`  
		Last Modified: Tue, 14 Jul 2026 01:22:11 GMT  
		Size: 2.5 MB (2531427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f486f60d15b1726c46b6cd127716fb090e99cb7c8358706f905555008e8de20`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8` - linux; arm variant v7

```console
$ docker pull hitch@sha256:7462aa3fe19a2f428bc1c7dc5c9f90b85d8fe862c3b896cc12f9d2a72e889497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27327777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b4625cdcdff8a3cdba6c50372fd79c44af5ae3195c223dc99a4efc8ca9a7e0`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:20:27 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:20:27 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:20:27 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:20:27 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:20:27 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:20:27 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:20:27 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:20:27 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:20:27 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:20:27 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:20:27 GMT
CMD []
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488f8a194f6936469ec274b7c53e4708f47f5b663562586575672578d7d4b58f`  
		Last Modified: Tue, 14 Jul 2026 01:20:34 GMT  
		Size: 3.4 MB (3387553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5471609dc0af66ccab1c652b8206f705390ef3901763afebef955d83023188ca`  
		Last Modified: Tue, 14 Jul 2026 01:20:33 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8` - unknown; unknown

```console
$ docker pull hitch@sha256:c3b9fc1fe5af2b7bea16153933f6b8688c89e19ebb648ae03eead1a055aaff31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2547329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c060a703af610001d8d59457a267b8d320c1cf7acca5c59bc46f28f33ded538`

```dockerfile
```

-	Layers:
	-	`sha256:f664b2918c78bd39ea7bb975fd13fe15a6388e8f528073823255ac4b047ffa74`  
		Last Modified: Tue, 14 Jul 2026 01:20:34 GMT  
		Size: 2.5 MB (2533659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b2047f7d7f0f838f0d76544886fdd1e5db7f1b515c3229a41a4f41fb0cb8234`  
		Last Modified: Tue, 14 Jul 2026 01:20:33 GMT  
		Size: 13.7 KB (13670 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:5fe668c976d2699b503152212cb81d18ef63b9befa641085e0af8f1e3557b0eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d050ce117cbf126cda9251d2b72a9512f93651f1dfe0412706712cc81bb4f12`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:22:03 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:22:03 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:22:03 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:22:03 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:22:03 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:22:03 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:22:03 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:22:03 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:22:03 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:22:03 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:22:03 GMT
CMD []
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be251de5d2cfdbbf4d5021db6c7187fa66f7874cffd4dc5ba5c4d460f42f18e3`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 3.9 MB (3874151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34abcebc5d54205e1491c1e8782f7f0c92052f9ed1b15a490da4305cdab6dbd6`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8` - unknown; unknown

```console
$ docker pull hitch@sha256:32990e3e34dab7b0680d004a26d3ff19c3b5f1635c1fe0ea71488aa9b2f4ee5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb7cf5742ab991f269451a00016536b58a8c5e938915570139a40d106013a54`

```dockerfile
```

-	Layers:
	-	`sha256:37536174617b0eb39a9fc759d5cb3cc5b2033f291826acc65880e230752fe43d`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 2.5 MB (2531697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e9dd5a9f3f3118a0fe68321fd673336383a6bf3c278efc219848fe18ed2b205`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 13.7 KB (13698 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8` - linux; 386

```console
$ docker pull hitch@sha256:c2019ecf543a0ca27077dca558513ec8daf0929cdf08d7cc32acf2447400f362
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33241028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117e598f695740208018baf00ffd7a6c5b025a06885c22794e772888712dc4e9`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:18:22 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:18:22 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:18:22 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:18:22 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:18:22 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:18:22 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:18:22 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:18:22 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:18:22 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:18:22 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:18:22 GMT
CMD []
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07876d672c8e64b2e61cf982f157ae96f1f53dea4bce721cecc5c9732f39055`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 4.0 MB (4019531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed64a2b60ee1cf6bdf97c030ac6a2a9d5a4ea13a48123f4c45e2ea1fe1452f99`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8` - unknown; unknown

```console
$ docker pull hitch@sha256:bdc66874df629e8074f3e20501ff429194d26ad76124eb20e243f848a43cc5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2542148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8437b76d5ffaa7a4e7547840076d820c869ac7a93fdb7ae0d4e65f8d251636`

```dockerfile
```

-	Layers:
	-	`sha256:b35dc1a4d4c750b89785e768b8baaf90a5e1bafe5a54c34ffde15cad6a91433a`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 2.5 MB (2528603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aef47cecbf9a071e9ceb671e1078feaf76cb58b467f252e2dd0266c37bca6d22`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 13.5 KB (13545 bytes)  
		MIME: application/vnd.in-toto+json

## `hitch:1.8.0`

```console
$ docker pull hitch@sha256:2022d3d362093108c654922d7cb853aeaf9a88c7de09c4b133535305527969ca
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

### `hitch:1.8.0` - linux; amd64

```console
$ docker pull hitch@sha256:2de916ea6a9353f6f48702c7d133655c430de20f4cdf9356fd21e44d344d0b7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32259217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e110ff5f54d3674173e69454945b48d48b871b03f91a8626db8f23243b4d19da`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:22:04 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:22:04 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:22:04 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:22:04 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:22:04 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:22:04 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:22:04 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:22:04 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:22:04 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:22:04 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:22:04 GMT
CMD []
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2314c27bdafd423901b5c336c450ed2cb5778f436233238812e7aef961d18616`  
		Last Modified: Tue, 14 Jul 2026 01:22:11 GMT  
		Size: 4.0 MB (4026129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d3edf0206cff76ba1e2f2e25d6f7e6904359c8163a7a6b623fe949c6e0616a`  
		Last Modified: Tue, 14 Jul 2026 01:22:11 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0` - unknown; unknown

```console
$ docker pull hitch@sha256:14bf7170d881361b9520a6cab16eea13659ef97a3c2b1d4cc4c9039fa9ae79cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:678e5af06acbfb9dd8420f324630f46cd4a75cf580a9eb471ac2cfd16da33dbe`

```dockerfile
```

-	Layers:
	-	`sha256:b10e49cf9dddc403c71a8faed31021278c681233afdc2ec7c2262db03c7fc738`  
		Last Modified: Tue, 14 Jul 2026 01:22:11 GMT  
		Size: 2.5 MB (2531427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f486f60d15b1726c46b6cd127716fb090e99cb7c8358706f905555008e8de20`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0` - linux; arm variant v7

```console
$ docker pull hitch@sha256:7462aa3fe19a2f428bc1c7dc5c9f90b85d8fe862c3b896cc12f9d2a72e889497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27327777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b4625cdcdff8a3cdba6c50372fd79c44af5ae3195c223dc99a4efc8ca9a7e0`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:20:27 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:20:27 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:20:27 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:20:27 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:20:27 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:20:27 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:20:27 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:20:27 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:20:27 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:20:27 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:20:27 GMT
CMD []
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488f8a194f6936469ec274b7c53e4708f47f5b663562586575672578d7d4b58f`  
		Last Modified: Tue, 14 Jul 2026 01:20:34 GMT  
		Size: 3.4 MB (3387553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5471609dc0af66ccab1c652b8206f705390ef3901763afebef955d83023188ca`  
		Last Modified: Tue, 14 Jul 2026 01:20:33 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0` - unknown; unknown

```console
$ docker pull hitch@sha256:c3b9fc1fe5af2b7bea16153933f6b8688c89e19ebb648ae03eead1a055aaff31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2547329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c060a703af610001d8d59457a267b8d320c1cf7acca5c59bc46f28f33ded538`

```dockerfile
```

-	Layers:
	-	`sha256:f664b2918c78bd39ea7bb975fd13fe15a6388e8f528073823255ac4b047ffa74`  
		Last Modified: Tue, 14 Jul 2026 01:20:34 GMT  
		Size: 2.5 MB (2533659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b2047f7d7f0f838f0d76544886fdd1e5db7f1b515c3229a41a4f41fb0cb8234`  
		Last Modified: Tue, 14 Jul 2026 01:20:33 GMT  
		Size: 13.7 KB (13670 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:5fe668c976d2699b503152212cb81d18ef63b9befa641085e0af8f1e3557b0eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d050ce117cbf126cda9251d2b72a9512f93651f1dfe0412706712cc81bb4f12`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:22:03 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:22:03 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:22:03 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:22:03 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:22:03 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:22:03 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:22:03 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:22:03 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:22:03 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:22:03 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:22:03 GMT
CMD []
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be251de5d2cfdbbf4d5021db6c7187fa66f7874cffd4dc5ba5c4d460f42f18e3`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 3.9 MB (3874151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34abcebc5d54205e1491c1e8782f7f0c92052f9ed1b15a490da4305cdab6dbd6`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0` - unknown; unknown

```console
$ docker pull hitch@sha256:32990e3e34dab7b0680d004a26d3ff19c3b5f1635c1fe0ea71488aa9b2f4ee5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb7cf5742ab991f269451a00016536b58a8c5e938915570139a40d106013a54`

```dockerfile
```

-	Layers:
	-	`sha256:37536174617b0eb39a9fc759d5cb3cc5b2033f291826acc65880e230752fe43d`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 2.5 MB (2531697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e9dd5a9f3f3118a0fe68321fd673336383a6bf3c278efc219848fe18ed2b205`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 13.7 KB (13698 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0` - linux; 386

```console
$ docker pull hitch@sha256:c2019ecf543a0ca27077dca558513ec8daf0929cdf08d7cc32acf2447400f362
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33241028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117e598f695740208018baf00ffd7a6c5b025a06885c22794e772888712dc4e9`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:18:22 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:18:22 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:18:22 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:18:22 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:18:22 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:18:22 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:18:22 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:18:22 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:18:22 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:18:22 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:18:22 GMT
CMD []
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07876d672c8e64b2e61cf982f157ae96f1f53dea4bce721cecc5c9732f39055`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 4.0 MB (4019531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed64a2b60ee1cf6bdf97c030ac6a2a9d5a4ea13a48123f4c45e2ea1fe1452f99`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0` - unknown; unknown

```console
$ docker pull hitch@sha256:bdc66874df629e8074f3e20501ff429194d26ad76124eb20e243f848a43cc5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2542148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8437b76d5ffaa7a4e7547840076d820c869ac7a93fdb7ae0d4e65f8d251636`

```dockerfile
```

-	Layers:
	-	`sha256:b35dc1a4d4c750b89785e768b8baaf90a5e1bafe5a54c34ffde15cad6a91433a`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 2.5 MB (2528603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aef47cecbf9a071e9ceb671e1078feaf76cb58b467f252e2dd0266c37bca6d22`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 13.5 KB (13545 bytes)  
		MIME: application/vnd.in-toto+json

## `hitch:1.8.0-1`

```console
$ docker pull hitch@sha256:2022d3d362093108c654922d7cb853aeaf9a88c7de09c4b133535305527969ca
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

### `hitch:1.8.0-1` - linux; amd64

```console
$ docker pull hitch@sha256:2de916ea6a9353f6f48702c7d133655c430de20f4cdf9356fd21e44d344d0b7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32259217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e110ff5f54d3674173e69454945b48d48b871b03f91a8626db8f23243b4d19da`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:22:04 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:22:04 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:22:04 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:22:04 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:22:04 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:22:04 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:22:04 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:22:04 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:22:04 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:22:04 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:22:04 GMT
CMD []
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2314c27bdafd423901b5c336c450ed2cb5778f436233238812e7aef961d18616`  
		Last Modified: Tue, 14 Jul 2026 01:22:11 GMT  
		Size: 4.0 MB (4026129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d3edf0206cff76ba1e2f2e25d6f7e6904359c8163a7a6b623fe949c6e0616a`  
		Last Modified: Tue, 14 Jul 2026 01:22:11 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0-1` - unknown; unknown

```console
$ docker pull hitch@sha256:14bf7170d881361b9520a6cab16eea13659ef97a3c2b1d4cc4c9039fa9ae79cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:678e5af06acbfb9dd8420f324630f46cd4a75cf580a9eb471ac2cfd16da33dbe`

```dockerfile
```

-	Layers:
	-	`sha256:b10e49cf9dddc403c71a8faed31021278c681233afdc2ec7c2262db03c7fc738`  
		Last Modified: Tue, 14 Jul 2026 01:22:11 GMT  
		Size: 2.5 MB (2531427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f486f60d15b1726c46b6cd127716fb090e99cb7c8358706f905555008e8de20`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0-1` - linux; arm variant v7

```console
$ docker pull hitch@sha256:7462aa3fe19a2f428bc1c7dc5c9f90b85d8fe862c3b896cc12f9d2a72e889497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27327777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b4625cdcdff8a3cdba6c50372fd79c44af5ae3195c223dc99a4efc8ca9a7e0`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:20:27 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:20:27 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:20:27 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:20:27 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:20:27 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:20:27 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:20:27 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:20:27 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:20:27 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:20:27 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:20:27 GMT
CMD []
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488f8a194f6936469ec274b7c53e4708f47f5b663562586575672578d7d4b58f`  
		Last Modified: Tue, 14 Jul 2026 01:20:34 GMT  
		Size: 3.4 MB (3387553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5471609dc0af66ccab1c652b8206f705390ef3901763afebef955d83023188ca`  
		Last Modified: Tue, 14 Jul 2026 01:20:33 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0-1` - unknown; unknown

```console
$ docker pull hitch@sha256:c3b9fc1fe5af2b7bea16153933f6b8688c89e19ebb648ae03eead1a055aaff31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2547329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c060a703af610001d8d59457a267b8d320c1cf7acca5c59bc46f28f33ded538`

```dockerfile
```

-	Layers:
	-	`sha256:f664b2918c78bd39ea7bb975fd13fe15a6388e8f528073823255ac4b047ffa74`  
		Last Modified: Tue, 14 Jul 2026 01:20:34 GMT  
		Size: 2.5 MB (2533659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b2047f7d7f0f838f0d76544886fdd1e5db7f1b515c3229a41a4f41fb0cb8234`  
		Last Modified: Tue, 14 Jul 2026 01:20:33 GMT  
		Size: 13.7 KB (13670 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0-1` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:5fe668c976d2699b503152212cb81d18ef63b9befa641085e0af8f1e3557b0eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d050ce117cbf126cda9251d2b72a9512f93651f1dfe0412706712cc81bb4f12`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:22:03 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:22:03 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:22:03 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:22:03 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:22:03 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:22:03 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:22:03 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:22:03 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:22:03 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:22:03 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:22:03 GMT
CMD []
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be251de5d2cfdbbf4d5021db6c7187fa66f7874cffd4dc5ba5c4d460f42f18e3`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 3.9 MB (3874151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34abcebc5d54205e1491c1e8782f7f0c92052f9ed1b15a490da4305cdab6dbd6`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0-1` - unknown; unknown

```console
$ docker pull hitch@sha256:32990e3e34dab7b0680d004a26d3ff19c3b5f1635c1fe0ea71488aa9b2f4ee5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb7cf5742ab991f269451a00016536b58a8c5e938915570139a40d106013a54`

```dockerfile
```

-	Layers:
	-	`sha256:37536174617b0eb39a9fc759d5cb3cc5b2033f291826acc65880e230752fe43d`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 2.5 MB (2531697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e9dd5a9f3f3118a0fe68321fd673336383a6bf3c278efc219848fe18ed2b205`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 13.7 KB (13698 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0-1` - linux; 386

```console
$ docker pull hitch@sha256:c2019ecf543a0ca27077dca558513ec8daf0929cdf08d7cc32acf2447400f362
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33241028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117e598f695740208018baf00ffd7a6c5b025a06885c22794e772888712dc4e9`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:18:22 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:18:22 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:18:22 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:18:22 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:18:22 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:18:22 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:18:22 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:18:22 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:18:22 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:18:22 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:18:22 GMT
CMD []
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07876d672c8e64b2e61cf982f157ae96f1f53dea4bce721cecc5c9732f39055`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 4.0 MB (4019531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed64a2b60ee1cf6bdf97c030ac6a2a9d5a4ea13a48123f4c45e2ea1fe1452f99`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0-1` - unknown; unknown

```console
$ docker pull hitch@sha256:bdc66874df629e8074f3e20501ff429194d26ad76124eb20e243f848a43cc5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2542148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8437b76d5ffaa7a4e7547840076d820c869ac7a93fdb7ae0d4e65f8d251636`

```dockerfile
```

-	Layers:
	-	`sha256:b35dc1a4d4c750b89785e768b8baaf90a5e1bafe5a54c34ffde15cad6a91433a`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 2.5 MB (2528603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aef47cecbf9a071e9ceb671e1078feaf76cb58b467f252e2dd0266c37bca6d22`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 13.5 KB (13545 bytes)  
		MIME: application/vnd.in-toto+json

## `hitch:latest`

```console
$ docker pull hitch@sha256:2022d3d362093108c654922d7cb853aeaf9a88c7de09c4b133535305527969ca
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

### `hitch:latest` - linux; amd64

```console
$ docker pull hitch@sha256:2de916ea6a9353f6f48702c7d133655c430de20f4cdf9356fd21e44d344d0b7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32259217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e110ff5f54d3674173e69454945b48d48b871b03f91a8626db8f23243b4d19da`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:22:04 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:22:04 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:22:04 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:22:04 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:22:04 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:22:04 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:22:04 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:22:04 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:22:04 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:22:04 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:22:04 GMT
CMD []
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2314c27bdafd423901b5c336c450ed2cb5778f436233238812e7aef961d18616`  
		Last Modified: Tue, 14 Jul 2026 01:22:11 GMT  
		Size: 4.0 MB (4026129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d3edf0206cff76ba1e2f2e25d6f7e6904359c8163a7a6b623fe949c6e0616a`  
		Last Modified: Tue, 14 Jul 2026 01:22:11 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:14bf7170d881361b9520a6cab16eea13659ef97a3c2b1d4cc4c9039fa9ae79cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:678e5af06acbfb9dd8420f324630f46cd4a75cf580a9eb471ac2cfd16da33dbe`

```dockerfile
```

-	Layers:
	-	`sha256:b10e49cf9dddc403c71a8faed31021278c681233afdc2ec7c2262db03c7fc738`  
		Last Modified: Tue, 14 Jul 2026 01:22:11 GMT  
		Size: 2.5 MB (2531427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f486f60d15b1726c46b6cd127716fb090e99cb7c8358706f905555008e8de20`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:latest` - linux; arm variant v7

```console
$ docker pull hitch@sha256:7462aa3fe19a2f428bc1c7dc5c9f90b85d8fe862c3b896cc12f9d2a72e889497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27327777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b4625cdcdff8a3cdba6c50372fd79c44af5ae3195c223dc99a4efc8ca9a7e0`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:20:27 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:20:27 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:20:27 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:20:27 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:20:27 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:20:27 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:20:27 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:20:27 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:20:27 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:20:27 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:20:27 GMT
CMD []
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488f8a194f6936469ec274b7c53e4708f47f5b663562586575672578d7d4b58f`  
		Last Modified: Tue, 14 Jul 2026 01:20:34 GMT  
		Size: 3.4 MB (3387553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5471609dc0af66ccab1c652b8206f705390ef3901763afebef955d83023188ca`  
		Last Modified: Tue, 14 Jul 2026 01:20:33 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:c3b9fc1fe5af2b7bea16153933f6b8688c89e19ebb648ae03eead1a055aaff31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2547329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c060a703af610001d8d59457a267b8d320c1cf7acca5c59bc46f28f33ded538`

```dockerfile
```

-	Layers:
	-	`sha256:f664b2918c78bd39ea7bb975fd13fe15a6388e8f528073823255ac4b047ffa74`  
		Last Modified: Tue, 14 Jul 2026 01:20:34 GMT  
		Size: 2.5 MB (2533659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b2047f7d7f0f838f0d76544886fdd1e5db7f1b515c3229a41a4f41fb0cb8234`  
		Last Modified: Tue, 14 Jul 2026 01:20:33 GMT  
		Size: 13.7 KB (13670 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:latest` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:5fe668c976d2699b503152212cb81d18ef63b9befa641085e0af8f1e3557b0eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d050ce117cbf126cda9251d2b72a9512f93651f1dfe0412706712cc81bb4f12`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:22:03 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:22:03 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:22:03 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:22:03 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:22:03 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:22:03 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:22:03 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:22:03 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:22:03 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:22:03 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:22:03 GMT
CMD []
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be251de5d2cfdbbf4d5021db6c7187fa66f7874cffd4dc5ba5c4d460f42f18e3`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 3.9 MB (3874151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34abcebc5d54205e1491c1e8782f7f0c92052f9ed1b15a490da4305cdab6dbd6`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:32990e3e34dab7b0680d004a26d3ff19c3b5f1635c1fe0ea71488aa9b2f4ee5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb7cf5742ab991f269451a00016536b58a8c5e938915570139a40d106013a54`

```dockerfile
```

-	Layers:
	-	`sha256:37536174617b0eb39a9fc759d5cb3cc5b2033f291826acc65880e230752fe43d`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 2.5 MB (2531697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e9dd5a9f3f3118a0fe68321fd673336383a6bf3c278efc219848fe18ed2b205`  
		Last Modified: Tue, 14 Jul 2026 01:22:10 GMT  
		Size: 13.7 KB (13698 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:latest` - linux; 386

```console
$ docker pull hitch@sha256:c2019ecf543a0ca27077dca558513ec8daf0929cdf08d7cc32acf2447400f362
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33241028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117e598f695740208018baf00ffd7a6c5b025a06885c22794e772888712dc4e9`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:18:22 GMT
ARG SRCVER=1.8.0
# Tue, 14 Jul 2026 01:18:22 GMT
ARG PKGVER=1
# Tue, 14 Jul 2026 01:18:22 GMT
ARG DISTVER=bullseye
# Tue, 14 Jul 2026 01:18:22 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 14 Jul 2026 01:18:22 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 14 Jul 2026 01:18:22 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 14 Jul 2026 01:18:22 GMT
WORKDIR /etc/hitch
# Tue, 14 Jul 2026 01:18:22 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:18:22 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 14 Jul 2026 01:18:22 GMT
EXPOSE map[443/tcp:{}]
# Tue, 14 Jul 2026 01:18:22 GMT
CMD []
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07876d672c8e64b2e61cf982f157ae96f1f53dea4bce721cecc5c9732f39055`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 4.0 MB (4019531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed64a2b60ee1cf6bdf97c030ac6a2a9d5a4ea13a48123f4c45e2ea1fe1452f99`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:bdc66874df629e8074f3e20501ff429194d26ad76124eb20e243f848a43cc5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2542148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8437b76d5ffaa7a4e7547840076d820c869ac7a93fdb7ae0d4e65f8d251636`

```dockerfile
```

-	Layers:
	-	`sha256:b35dc1a4d4c750b89785e768b8baaf90a5e1bafe5a54c34ffde15cad6a91433a`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 2.5 MB (2528603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aef47cecbf9a071e9ceb671e1078feaf76cb58b467f252e2dd0266c37bca6d22`  
		Last Modified: Tue, 14 Jul 2026 01:18:29 GMT  
		Size: 13.5 KB (13545 bytes)  
		MIME: application/vnd.in-toto+json
