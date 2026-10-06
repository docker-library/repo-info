<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `hitch`

-	[`hitch:1`](#hitch1)
-	[`hitch:1.8`](#hitch18)
-	[`hitch:1.8.0`](#hitch180)
-	[`hitch:1.8.0-1`](#hitch180-1)
-	[`hitch:latest`](#hitchlatest)

## `hitch:1`

```console
$ docker pull hitch@sha256:d8589fd10cefe9d3852274f050122401df916bc3920ce51b09795f81c6a5ca3d
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
$ docker pull hitch@sha256:7ecc3e2d2b094a6dfa3118acc712e4efc81be094d6ddc08dfaa86db8080dcccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34580797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c4b98fae5b4e940941a2e89c0c0d28b15bbda2fad3b67e82e9a5cebf8ea4785`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:17:48 GMT
ARG SRCVER=1.8.0
# Tue, 06 Oct 2026 01:17:48 GMT
ARG PKGVER=1
# Tue, 06 Oct 2026 01:17:48 GMT
ARG DISTVER=bullseye
# Tue, 06 Oct 2026 01:17:48 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 06 Oct 2026 01:17:48 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 06 Oct 2026 01:17:48 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 06 Oct 2026 01:17:48 GMT
WORKDIR /etc/hitch
# Tue, 06 Oct 2026 01:17:48 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:48 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 06 Oct 2026 01:17:48 GMT
EXPOSE map[443/tcp:{}]
# Tue, 06 Oct 2026 01:17:48 GMT
CMD []
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0325c56e09ad28101f6e50ddd79af1d0c7bf1b36007a7293ac9acac3f8435c28`  
		Last Modified: Tue, 06 Oct 2026 01:17:56 GMT  
		Size: 6.3 MB (6331028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06acdb97c8e8badd2e7029a944479ef2c7569f27511fd3147c5d83641464fa6b`  
		Last Modified: Tue, 06 Oct 2026 01:17:55 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1` - unknown; unknown

```console
$ docker pull hitch@sha256:ac5c5b4bafefac8e62c74e09b75a7d9893da06b3a76b8444d30993348e86705a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2550248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c2baa1b50b99dfecc1b0ec73df309f99548d62de7a2d3b9ec0239f83770c0e4`

```dockerfile
```

-	Layers:
	-	`sha256:298150336145120fafdc067c244d6e7ee772fb6986bc15b13c723570e87894a1`  
		Last Modified: Tue, 06 Oct 2026 01:17:56 GMT  
		Size: 2.5 MB (2536666 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a3561d4bf4bbedd5b48cdf87c0384ef0e9d332cfd03520fadcca0fb737d120a`  
		Last Modified: Tue, 06 Oct 2026 01:17:55 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1` - linux; arm variant v7

```console
$ docker pull hitch@sha256:86b7ddf06238a7292be555710b109b9098d5b8e12699c62c6fe64b680d98e5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29450441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07dd98d59991c41ab55eeec97db47527947b7814e22aeb4eb3d5ea346c90d295`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:20:17 GMT
ARG SRCVER=1.8.0
# Tue, 06 Oct 2026 01:20:17 GMT
ARG PKGVER=1
# Tue, 06 Oct 2026 01:20:17 GMT
ARG DISTVER=bullseye
# Tue, 06 Oct 2026 01:20:17 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 06 Oct 2026 01:20:17 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 06 Oct 2026 01:20:17 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 06 Oct 2026 01:20:17 GMT
WORKDIR /etc/hitch
# Tue, 06 Oct 2026 01:20:17 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:17 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 06 Oct 2026 01:20:17 GMT
EXPOSE map[443/tcp:{}]
# Tue, 06 Oct 2026 01:20:17 GMT
CMD []
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3180ba6b7281f705398c0dd33a0351fc11fffea8e2955b8fc13f247366325bbf`  
		Last Modified: Tue, 06 Oct 2026 01:20:24 GMT  
		Size: 5.5 MB (5493426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1e6469664358c932f9bcbd604e07e996446bdedfefc3dfa70bc96cc8c28e2c`  
		Last Modified: Tue, 06 Oct 2026 01:20:23 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1` - unknown; unknown

```console
$ docker pull hitch@sha256:671ebe06602f952f78ca3e2d3040cc538294306c8d927429da4173707008901f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2552568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0679d6fbd7b4c19b5bea3542a501881efa4bc0ae49278c71cf52ef501a5267`

```dockerfile
```

-	Layers:
	-	`sha256:aba2d373df2099054ab333527707db2eac9bcad53d834e2b4eff338158989f9b`  
		Last Modified: Tue, 06 Oct 2026 01:20:24 GMT  
		Size: 2.5 MB (2538898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61ae1b958de23485f4ca7203ad2ab4926be32f7cb87cf65add95343969811ca7`  
		Last Modified: Tue, 06 Oct 2026 01:20:23 GMT  
		Size: 13.7 KB (13670 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:4254e70688d4fcffbb5e911e7e51222b3f35bffddd977dae5050286d56a7ebf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34271409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11082e271a7fb6f2f033f76e15e3734fb77f5cf60bb305369a286c1589bd8b69`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:17:22 GMT
ARG SRCVER=1.8.0
# Tue, 06 Oct 2026 01:17:22 GMT
ARG PKGVER=1
# Tue, 06 Oct 2026 01:17:22 GMT
ARG DISTVER=bullseye
# Tue, 06 Oct 2026 01:17:22 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 06 Oct 2026 01:17:22 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 06 Oct 2026 01:17:22 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 06 Oct 2026 01:17:22 GMT
WORKDIR /etc/hitch
# Tue, 06 Oct 2026 01:17:22 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:22 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 06 Oct 2026 01:17:22 GMT
EXPOSE map[443/tcp:{}]
# Tue, 06 Oct 2026 01:17:22 GMT
CMD []
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8d93e9887ffb94e44ebd35b1e242dd2168edd9650530bb75d40ad39add4164`  
		Last Modified: Tue, 06 Oct 2026 01:17:30 GMT  
		Size: 6.1 MB (6133786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a74f7b3235de0ad9ee6c3424403e3fb65f5d1c5bdbb0fdbb61efbaa40d10ee`  
		Last Modified: Tue, 06 Oct 2026 01:17:29 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1` - unknown; unknown

```console
$ docker pull hitch@sha256:f92d2f69e1db5a1d4583a4ac96b308c5e5c66d62fbcbbab8c1ca73e12b8ee143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2550633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21821d9c20a3751cba3fdaf5168a78cdaf394641b725118e3125e5e3d28ec48a`

```dockerfile
```

-	Layers:
	-	`sha256:d2514f48eb0e73fc17b0970c76405bb3ae02d153be293f96264635bfd0183db1`  
		Last Modified: Tue, 06 Oct 2026 01:17:29 GMT  
		Size: 2.5 MB (2536936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d701afa2c0f6c279231eaf12bdd81619615ba5e05e1f9112c7ac714ee89e9002`  
		Last Modified: Tue, 06 Oct 2026 01:17:29 GMT  
		Size: 13.7 KB (13697 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1` - linux; 386

```console
$ docker pull hitch@sha256:4e5a27abcd32e9b17059d395853aa53dd241c04d69fd269d2f53718d56ae09ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33261720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fba8da2d1ec41e950acfba2f52ec8f0dcfb598dce06b4c96c96c0a7560a0526`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:20:04 GMT
ARG SRCVER=1.8.0
# Sat, 19 Sep 2026 00:20:04 GMT
ARG PKGVER=1
# Sat, 19 Sep 2026 00:20:04 GMT
ARG DISTVER=bullseye
# Sat, 19 Sep 2026 00:20:04 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Sat, 19 Sep 2026 00:20:04 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Sat, 19 Sep 2026 00:20:04 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Sat, 19 Sep 2026 00:20:04 GMT
WORKDIR /etc/hitch
# Sat, 19 Sep 2026 00:20:04 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:20:04 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Sat, 19 Sep 2026 00:20:04 GMT
EXPOSE map[443/tcp:{}]
# Sat, 19 Sep 2026 00:20:04 GMT
CMD []
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fddc04dc27e7ec4271483298fe2e03e0aeb3229dce7a4c2b55dc5e396a3d922`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 4.0 MB (4035169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be5ef6dcab1716c7af5e67a28cc889fe59f79b818fe7b6b683340a81a21b387d`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1` - unknown; unknown

```console
$ docker pull hitch@sha256:bae1a913f5986dcf7c660010873808af4584cc78e91f0e00b1c640d238f3b73e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2547386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744c443b1ea30b751042a6f2e707d2f13f56beae18dfd57778cbe7684a9d3c39`

```dockerfile
```

-	Layers:
	-	`sha256:d6e4c09c7355adf066c31e43b2bc2dc4a2ae85610e1e458c452dad77673a0162`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 2.5 MB (2533842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ef41a7e89f7670e93fe731828ab7de8f3f76591eab28211bedff763da7052f`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 13.5 KB (13544 bytes)  
		MIME: application/vnd.in-toto+json

## `hitch:1.8`

```console
$ docker pull hitch@sha256:d8589fd10cefe9d3852274f050122401df916bc3920ce51b09795f81c6a5ca3d
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
$ docker pull hitch@sha256:7ecc3e2d2b094a6dfa3118acc712e4efc81be094d6ddc08dfaa86db8080dcccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34580797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c4b98fae5b4e940941a2e89c0c0d28b15bbda2fad3b67e82e9a5cebf8ea4785`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:17:48 GMT
ARG SRCVER=1.8.0
# Tue, 06 Oct 2026 01:17:48 GMT
ARG PKGVER=1
# Tue, 06 Oct 2026 01:17:48 GMT
ARG DISTVER=bullseye
# Tue, 06 Oct 2026 01:17:48 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 06 Oct 2026 01:17:48 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 06 Oct 2026 01:17:48 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 06 Oct 2026 01:17:48 GMT
WORKDIR /etc/hitch
# Tue, 06 Oct 2026 01:17:48 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:48 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 06 Oct 2026 01:17:48 GMT
EXPOSE map[443/tcp:{}]
# Tue, 06 Oct 2026 01:17:48 GMT
CMD []
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0325c56e09ad28101f6e50ddd79af1d0c7bf1b36007a7293ac9acac3f8435c28`  
		Last Modified: Tue, 06 Oct 2026 01:17:56 GMT  
		Size: 6.3 MB (6331028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06acdb97c8e8badd2e7029a944479ef2c7569f27511fd3147c5d83641464fa6b`  
		Last Modified: Tue, 06 Oct 2026 01:17:55 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8` - unknown; unknown

```console
$ docker pull hitch@sha256:ac5c5b4bafefac8e62c74e09b75a7d9893da06b3a76b8444d30993348e86705a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2550248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c2baa1b50b99dfecc1b0ec73df309f99548d62de7a2d3b9ec0239f83770c0e4`

```dockerfile
```

-	Layers:
	-	`sha256:298150336145120fafdc067c244d6e7ee772fb6986bc15b13c723570e87894a1`  
		Last Modified: Tue, 06 Oct 2026 01:17:56 GMT  
		Size: 2.5 MB (2536666 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a3561d4bf4bbedd5b48cdf87c0384ef0e9d332cfd03520fadcca0fb737d120a`  
		Last Modified: Tue, 06 Oct 2026 01:17:55 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8` - linux; arm variant v7

```console
$ docker pull hitch@sha256:86b7ddf06238a7292be555710b109b9098d5b8e12699c62c6fe64b680d98e5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29450441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07dd98d59991c41ab55eeec97db47527947b7814e22aeb4eb3d5ea346c90d295`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:20:17 GMT
ARG SRCVER=1.8.0
# Tue, 06 Oct 2026 01:20:17 GMT
ARG PKGVER=1
# Tue, 06 Oct 2026 01:20:17 GMT
ARG DISTVER=bullseye
# Tue, 06 Oct 2026 01:20:17 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 06 Oct 2026 01:20:17 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 06 Oct 2026 01:20:17 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 06 Oct 2026 01:20:17 GMT
WORKDIR /etc/hitch
# Tue, 06 Oct 2026 01:20:17 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:17 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 06 Oct 2026 01:20:17 GMT
EXPOSE map[443/tcp:{}]
# Tue, 06 Oct 2026 01:20:17 GMT
CMD []
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3180ba6b7281f705398c0dd33a0351fc11fffea8e2955b8fc13f247366325bbf`  
		Last Modified: Tue, 06 Oct 2026 01:20:24 GMT  
		Size: 5.5 MB (5493426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1e6469664358c932f9bcbd604e07e996446bdedfefc3dfa70bc96cc8c28e2c`  
		Last Modified: Tue, 06 Oct 2026 01:20:23 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8` - unknown; unknown

```console
$ docker pull hitch@sha256:671ebe06602f952f78ca3e2d3040cc538294306c8d927429da4173707008901f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2552568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0679d6fbd7b4c19b5bea3542a501881efa4bc0ae49278c71cf52ef501a5267`

```dockerfile
```

-	Layers:
	-	`sha256:aba2d373df2099054ab333527707db2eac9bcad53d834e2b4eff338158989f9b`  
		Last Modified: Tue, 06 Oct 2026 01:20:24 GMT  
		Size: 2.5 MB (2538898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61ae1b958de23485f4ca7203ad2ab4926be32f7cb87cf65add95343969811ca7`  
		Last Modified: Tue, 06 Oct 2026 01:20:23 GMT  
		Size: 13.7 KB (13670 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:4254e70688d4fcffbb5e911e7e51222b3f35bffddd977dae5050286d56a7ebf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34271409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11082e271a7fb6f2f033f76e15e3734fb77f5cf60bb305369a286c1589bd8b69`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:17:22 GMT
ARG SRCVER=1.8.0
# Tue, 06 Oct 2026 01:17:22 GMT
ARG PKGVER=1
# Tue, 06 Oct 2026 01:17:22 GMT
ARG DISTVER=bullseye
# Tue, 06 Oct 2026 01:17:22 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 06 Oct 2026 01:17:22 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 06 Oct 2026 01:17:22 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 06 Oct 2026 01:17:22 GMT
WORKDIR /etc/hitch
# Tue, 06 Oct 2026 01:17:22 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:22 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 06 Oct 2026 01:17:22 GMT
EXPOSE map[443/tcp:{}]
# Tue, 06 Oct 2026 01:17:22 GMT
CMD []
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8d93e9887ffb94e44ebd35b1e242dd2168edd9650530bb75d40ad39add4164`  
		Last Modified: Tue, 06 Oct 2026 01:17:30 GMT  
		Size: 6.1 MB (6133786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a74f7b3235de0ad9ee6c3424403e3fb65f5d1c5bdbb0fdbb61efbaa40d10ee`  
		Last Modified: Tue, 06 Oct 2026 01:17:29 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8` - unknown; unknown

```console
$ docker pull hitch@sha256:f92d2f69e1db5a1d4583a4ac96b308c5e5c66d62fbcbbab8c1ca73e12b8ee143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2550633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21821d9c20a3751cba3fdaf5168a78cdaf394641b725118e3125e5e3d28ec48a`

```dockerfile
```

-	Layers:
	-	`sha256:d2514f48eb0e73fc17b0970c76405bb3ae02d153be293f96264635bfd0183db1`  
		Last Modified: Tue, 06 Oct 2026 01:17:29 GMT  
		Size: 2.5 MB (2536936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d701afa2c0f6c279231eaf12bdd81619615ba5e05e1f9112c7ac714ee89e9002`  
		Last Modified: Tue, 06 Oct 2026 01:17:29 GMT  
		Size: 13.7 KB (13697 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8` - linux; 386

```console
$ docker pull hitch@sha256:4e5a27abcd32e9b17059d395853aa53dd241c04d69fd269d2f53718d56ae09ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33261720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fba8da2d1ec41e950acfba2f52ec8f0dcfb598dce06b4c96c96c0a7560a0526`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:20:04 GMT
ARG SRCVER=1.8.0
# Sat, 19 Sep 2026 00:20:04 GMT
ARG PKGVER=1
# Sat, 19 Sep 2026 00:20:04 GMT
ARG DISTVER=bullseye
# Sat, 19 Sep 2026 00:20:04 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Sat, 19 Sep 2026 00:20:04 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Sat, 19 Sep 2026 00:20:04 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Sat, 19 Sep 2026 00:20:04 GMT
WORKDIR /etc/hitch
# Sat, 19 Sep 2026 00:20:04 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:20:04 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Sat, 19 Sep 2026 00:20:04 GMT
EXPOSE map[443/tcp:{}]
# Sat, 19 Sep 2026 00:20:04 GMT
CMD []
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fddc04dc27e7ec4271483298fe2e03e0aeb3229dce7a4c2b55dc5e396a3d922`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 4.0 MB (4035169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be5ef6dcab1716c7af5e67a28cc889fe59f79b818fe7b6b683340a81a21b387d`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8` - unknown; unknown

```console
$ docker pull hitch@sha256:bae1a913f5986dcf7c660010873808af4584cc78e91f0e00b1c640d238f3b73e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2547386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744c443b1ea30b751042a6f2e707d2f13f56beae18dfd57778cbe7684a9d3c39`

```dockerfile
```

-	Layers:
	-	`sha256:d6e4c09c7355adf066c31e43b2bc2dc4a2ae85610e1e458c452dad77673a0162`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 2.5 MB (2533842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ef41a7e89f7670e93fe731828ab7de8f3f76591eab28211bedff763da7052f`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 13.5 KB (13544 bytes)  
		MIME: application/vnd.in-toto+json

## `hitch:1.8.0`

```console
$ docker pull hitch@sha256:d8589fd10cefe9d3852274f050122401df916bc3920ce51b09795f81c6a5ca3d
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
$ docker pull hitch@sha256:7ecc3e2d2b094a6dfa3118acc712e4efc81be094d6ddc08dfaa86db8080dcccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34580797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c4b98fae5b4e940941a2e89c0c0d28b15bbda2fad3b67e82e9a5cebf8ea4785`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:17:48 GMT
ARG SRCVER=1.8.0
# Tue, 06 Oct 2026 01:17:48 GMT
ARG PKGVER=1
# Tue, 06 Oct 2026 01:17:48 GMT
ARG DISTVER=bullseye
# Tue, 06 Oct 2026 01:17:48 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 06 Oct 2026 01:17:48 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 06 Oct 2026 01:17:48 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 06 Oct 2026 01:17:48 GMT
WORKDIR /etc/hitch
# Tue, 06 Oct 2026 01:17:48 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:48 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 06 Oct 2026 01:17:48 GMT
EXPOSE map[443/tcp:{}]
# Tue, 06 Oct 2026 01:17:48 GMT
CMD []
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0325c56e09ad28101f6e50ddd79af1d0c7bf1b36007a7293ac9acac3f8435c28`  
		Last Modified: Tue, 06 Oct 2026 01:17:56 GMT  
		Size: 6.3 MB (6331028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06acdb97c8e8badd2e7029a944479ef2c7569f27511fd3147c5d83641464fa6b`  
		Last Modified: Tue, 06 Oct 2026 01:17:55 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0` - unknown; unknown

```console
$ docker pull hitch@sha256:ac5c5b4bafefac8e62c74e09b75a7d9893da06b3a76b8444d30993348e86705a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2550248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c2baa1b50b99dfecc1b0ec73df309f99548d62de7a2d3b9ec0239f83770c0e4`

```dockerfile
```

-	Layers:
	-	`sha256:298150336145120fafdc067c244d6e7ee772fb6986bc15b13c723570e87894a1`  
		Last Modified: Tue, 06 Oct 2026 01:17:56 GMT  
		Size: 2.5 MB (2536666 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a3561d4bf4bbedd5b48cdf87c0384ef0e9d332cfd03520fadcca0fb737d120a`  
		Last Modified: Tue, 06 Oct 2026 01:17:55 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0` - linux; arm variant v7

```console
$ docker pull hitch@sha256:86b7ddf06238a7292be555710b109b9098d5b8e12699c62c6fe64b680d98e5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29450441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07dd98d59991c41ab55eeec97db47527947b7814e22aeb4eb3d5ea346c90d295`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:20:17 GMT
ARG SRCVER=1.8.0
# Tue, 06 Oct 2026 01:20:17 GMT
ARG PKGVER=1
# Tue, 06 Oct 2026 01:20:17 GMT
ARG DISTVER=bullseye
# Tue, 06 Oct 2026 01:20:17 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 06 Oct 2026 01:20:17 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 06 Oct 2026 01:20:17 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 06 Oct 2026 01:20:17 GMT
WORKDIR /etc/hitch
# Tue, 06 Oct 2026 01:20:17 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:17 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 06 Oct 2026 01:20:17 GMT
EXPOSE map[443/tcp:{}]
# Tue, 06 Oct 2026 01:20:17 GMT
CMD []
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3180ba6b7281f705398c0dd33a0351fc11fffea8e2955b8fc13f247366325bbf`  
		Last Modified: Tue, 06 Oct 2026 01:20:24 GMT  
		Size: 5.5 MB (5493426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1e6469664358c932f9bcbd604e07e996446bdedfefc3dfa70bc96cc8c28e2c`  
		Last Modified: Tue, 06 Oct 2026 01:20:23 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0` - unknown; unknown

```console
$ docker pull hitch@sha256:671ebe06602f952f78ca3e2d3040cc538294306c8d927429da4173707008901f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2552568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0679d6fbd7b4c19b5bea3542a501881efa4bc0ae49278c71cf52ef501a5267`

```dockerfile
```

-	Layers:
	-	`sha256:aba2d373df2099054ab333527707db2eac9bcad53d834e2b4eff338158989f9b`  
		Last Modified: Tue, 06 Oct 2026 01:20:24 GMT  
		Size: 2.5 MB (2538898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61ae1b958de23485f4ca7203ad2ab4926be32f7cb87cf65add95343969811ca7`  
		Last Modified: Tue, 06 Oct 2026 01:20:23 GMT  
		Size: 13.7 KB (13670 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:4254e70688d4fcffbb5e911e7e51222b3f35bffddd977dae5050286d56a7ebf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34271409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11082e271a7fb6f2f033f76e15e3734fb77f5cf60bb305369a286c1589bd8b69`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:17:22 GMT
ARG SRCVER=1.8.0
# Tue, 06 Oct 2026 01:17:22 GMT
ARG PKGVER=1
# Tue, 06 Oct 2026 01:17:22 GMT
ARG DISTVER=bullseye
# Tue, 06 Oct 2026 01:17:22 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 06 Oct 2026 01:17:22 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 06 Oct 2026 01:17:22 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 06 Oct 2026 01:17:22 GMT
WORKDIR /etc/hitch
# Tue, 06 Oct 2026 01:17:22 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:22 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 06 Oct 2026 01:17:22 GMT
EXPOSE map[443/tcp:{}]
# Tue, 06 Oct 2026 01:17:22 GMT
CMD []
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8d93e9887ffb94e44ebd35b1e242dd2168edd9650530bb75d40ad39add4164`  
		Last Modified: Tue, 06 Oct 2026 01:17:30 GMT  
		Size: 6.1 MB (6133786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a74f7b3235de0ad9ee6c3424403e3fb65f5d1c5bdbb0fdbb61efbaa40d10ee`  
		Last Modified: Tue, 06 Oct 2026 01:17:29 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0` - unknown; unknown

```console
$ docker pull hitch@sha256:f92d2f69e1db5a1d4583a4ac96b308c5e5c66d62fbcbbab8c1ca73e12b8ee143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2550633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21821d9c20a3751cba3fdaf5168a78cdaf394641b725118e3125e5e3d28ec48a`

```dockerfile
```

-	Layers:
	-	`sha256:d2514f48eb0e73fc17b0970c76405bb3ae02d153be293f96264635bfd0183db1`  
		Last Modified: Tue, 06 Oct 2026 01:17:29 GMT  
		Size: 2.5 MB (2536936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d701afa2c0f6c279231eaf12bdd81619615ba5e05e1f9112c7ac714ee89e9002`  
		Last Modified: Tue, 06 Oct 2026 01:17:29 GMT  
		Size: 13.7 KB (13697 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0` - linux; 386

```console
$ docker pull hitch@sha256:4e5a27abcd32e9b17059d395853aa53dd241c04d69fd269d2f53718d56ae09ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33261720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fba8da2d1ec41e950acfba2f52ec8f0dcfb598dce06b4c96c96c0a7560a0526`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:20:04 GMT
ARG SRCVER=1.8.0
# Sat, 19 Sep 2026 00:20:04 GMT
ARG PKGVER=1
# Sat, 19 Sep 2026 00:20:04 GMT
ARG DISTVER=bullseye
# Sat, 19 Sep 2026 00:20:04 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Sat, 19 Sep 2026 00:20:04 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Sat, 19 Sep 2026 00:20:04 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Sat, 19 Sep 2026 00:20:04 GMT
WORKDIR /etc/hitch
# Sat, 19 Sep 2026 00:20:04 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:20:04 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Sat, 19 Sep 2026 00:20:04 GMT
EXPOSE map[443/tcp:{}]
# Sat, 19 Sep 2026 00:20:04 GMT
CMD []
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fddc04dc27e7ec4271483298fe2e03e0aeb3229dce7a4c2b55dc5e396a3d922`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 4.0 MB (4035169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be5ef6dcab1716c7af5e67a28cc889fe59f79b818fe7b6b683340a81a21b387d`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0` - unknown; unknown

```console
$ docker pull hitch@sha256:bae1a913f5986dcf7c660010873808af4584cc78e91f0e00b1c640d238f3b73e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2547386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744c443b1ea30b751042a6f2e707d2f13f56beae18dfd57778cbe7684a9d3c39`

```dockerfile
```

-	Layers:
	-	`sha256:d6e4c09c7355adf066c31e43b2bc2dc4a2ae85610e1e458c452dad77673a0162`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 2.5 MB (2533842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ef41a7e89f7670e93fe731828ab7de8f3f76591eab28211bedff763da7052f`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 13.5 KB (13544 bytes)  
		MIME: application/vnd.in-toto+json

## `hitch:1.8.0-1`

```console
$ docker pull hitch@sha256:d8589fd10cefe9d3852274f050122401df916bc3920ce51b09795f81c6a5ca3d
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
$ docker pull hitch@sha256:7ecc3e2d2b094a6dfa3118acc712e4efc81be094d6ddc08dfaa86db8080dcccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34580797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c4b98fae5b4e940941a2e89c0c0d28b15bbda2fad3b67e82e9a5cebf8ea4785`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:17:48 GMT
ARG SRCVER=1.8.0
# Tue, 06 Oct 2026 01:17:48 GMT
ARG PKGVER=1
# Tue, 06 Oct 2026 01:17:48 GMT
ARG DISTVER=bullseye
# Tue, 06 Oct 2026 01:17:48 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 06 Oct 2026 01:17:48 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 06 Oct 2026 01:17:48 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 06 Oct 2026 01:17:48 GMT
WORKDIR /etc/hitch
# Tue, 06 Oct 2026 01:17:48 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:48 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 06 Oct 2026 01:17:48 GMT
EXPOSE map[443/tcp:{}]
# Tue, 06 Oct 2026 01:17:48 GMT
CMD []
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0325c56e09ad28101f6e50ddd79af1d0c7bf1b36007a7293ac9acac3f8435c28`  
		Last Modified: Tue, 06 Oct 2026 01:17:56 GMT  
		Size: 6.3 MB (6331028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06acdb97c8e8badd2e7029a944479ef2c7569f27511fd3147c5d83641464fa6b`  
		Last Modified: Tue, 06 Oct 2026 01:17:55 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0-1` - unknown; unknown

```console
$ docker pull hitch@sha256:ac5c5b4bafefac8e62c74e09b75a7d9893da06b3a76b8444d30993348e86705a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2550248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c2baa1b50b99dfecc1b0ec73df309f99548d62de7a2d3b9ec0239f83770c0e4`

```dockerfile
```

-	Layers:
	-	`sha256:298150336145120fafdc067c244d6e7ee772fb6986bc15b13c723570e87894a1`  
		Last Modified: Tue, 06 Oct 2026 01:17:56 GMT  
		Size: 2.5 MB (2536666 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a3561d4bf4bbedd5b48cdf87c0384ef0e9d332cfd03520fadcca0fb737d120a`  
		Last Modified: Tue, 06 Oct 2026 01:17:55 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0-1` - linux; arm variant v7

```console
$ docker pull hitch@sha256:86b7ddf06238a7292be555710b109b9098d5b8e12699c62c6fe64b680d98e5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29450441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07dd98d59991c41ab55eeec97db47527947b7814e22aeb4eb3d5ea346c90d295`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:20:17 GMT
ARG SRCVER=1.8.0
# Tue, 06 Oct 2026 01:20:17 GMT
ARG PKGVER=1
# Tue, 06 Oct 2026 01:20:17 GMT
ARG DISTVER=bullseye
# Tue, 06 Oct 2026 01:20:17 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 06 Oct 2026 01:20:17 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 06 Oct 2026 01:20:17 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 06 Oct 2026 01:20:17 GMT
WORKDIR /etc/hitch
# Tue, 06 Oct 2026 01:20:17 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:17 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 06 Oct 2026 01:20:17 GMT
EXPOSE map[443/tcp:{}]
# Tue, 06 Oct 2026 01:20:17 GMT
CMD []
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3180ba6b7281f705398c0dd33a0351fc11fffea8e2955b8fc13f247366325bbf`  
		Last Modified: Tue, 06 Oct 2026 01:20:24 GMT  
		Size: 5.5 MB (5493426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1e6469664358c932f9bcbd604e07e996446bdedfefc3dfa70bc96cc8c28e2c`  
		Last Modified: Tue, 06 Oct 2026 01:20:23 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0-1` - unknown; unknown

```console
$ docker pull hitch@sha256:671ebe06602f952f78ca3e2d3040cc538294306c8d927429da4173707008901f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2552568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0679d6fbd7b4c19b5bea3542a501881efa4bc0ae49278c71cf52ef501a5267`

```dockerfile
```

-	Layers:
	-	`sha256:aba2d373df2099054ab333527707db2eac9bcad53d834e2b4eff338158989f9b`  
		Last Modified: Tue, 06 Oct 2026 01:20:24 GMT  
		Size: 2.5 MB (2538898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61ae1b958de23485f4ca7203ad2ab4926be32f7cb87cf65add95343969811ca7`  
		Last Modified: Tue, 06 Oct 2026 01:20:23 GMT  
		Size: 13.7 KB (13670 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0-1` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:4254e70688d4fcffbb5e911e7e51222b3f35bffddd977dae5050286d56a7ebf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34271409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11082e271a7fb6f2f033f76e15e3734fb77f5cf60bb305369a286c1589bd8b69`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:17:22 GMT
ARG SRCVER=1.8.0
# Tue, 06 Oct 2026 01:17:22 GMT
ARG PKGVER=1
# Tue, 06 Oct 2026 01:17:22 GMT
ARG DISTVER=bullseye
# Tue, 06 Oct 2026 01:17:22 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 06 Oct 2026 01:17:22 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 06 Oct 2026 01:17:22 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 06 Oct 2026 01:17:22 GMT
WORKDIR /etc/hitch
# Tue, 06 Oct 2026 01:17:22 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:22 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 06 Oct 2026 01:17:22 GMT
EXPOSE map[443/tcp:{}]
# Tue, 06 Oct 2026 01:17:22 GMT
CMD []
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8d93e9887ffb94e44ebd35b1e242dd2168edd9650530bb75d40ad39add4164`  
		Last Modified: Tue, 06 Oct 2026 01:17:30 GMT  
		Size: 6.1 MB (6133786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a74f7b3235de0ad9ee6c3424403e3fb65f5d1c5bdbb0fdbb61efbaa40d10ee`  
		Last Modified: Tue, 06 Oct 2026 01:17:29 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0-1` - unknown; unknown

```console
$ docker pull hitch@sha256:f92d2f69e1db5a1d4583a4ac96b308c5e5c66d62fbcbbab8c1ca73e12b8ee143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2550633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21821d9c20a3751cba3fdaf5168a78cdaf394641b725118e3125e5e3d28ec48a`

```dockerfile
```

-	Layers:
	-	`sha256:d2514f48eb0e73fc17b0970c76405bb3ae02d153be293f96264635bfd0183db1`  
		Last Modified: Tue, 06 Oct 2026 01:17:29 GMT  
		Size: 2.5 MB (2536936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d701afa2c0f6c279231eaf12bdd81619615ba5e05e1f9112c7ac714ee89e9002`  
		Last Modified: Tue, 06 Oct 2026 01:17:29 GMT  
		Size: 13.7 KB (13697 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0-1` - linux; 386

```console
$ docker pull hitch@sha256:4e5a27abcd32e9b17059d395853aa53dd241c04d69fd269d2f53718d56ae09ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33261720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fba8da2d1ec41e950acfba2f52ec8f0dcfb598dce06b4c96c96c0a7560a0526`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:20:04 GMT
ARG SRCVER=1.8.0
# Sat, 19 Sep 2026 00:20:04 GMT
ARG PKGVER=1
# Sat, 19 Sep 2026 00:20:04 GMT
ARG DISTVER=bullseye
# Sat, 19 Sep 2026 00:20:04 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Sat, 19 Sep 2026 00:20:04 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Sat, 19 Sep 2026 00:20:04 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Sat, 19 Sep 2026 00:20:04 GMT
WORKDIR /etc/hitch
# Sat, 19 Sep 2026 00:20:04 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:20:04 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Sat, 19 Sep 2026 00:20:04 GMT
EXPOSE map[443/tcp:{}]
# Sat, 19 Sep 2026 00:20:04 GMT
CMD []
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fddc04dc27e7ec4271483298fe2e03e0aeb3229dce7a4c2b55dc5e396a3d922`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 4.0 MB (4035169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be5ef6dcab1716c7af5e67a28cc889fe59f79b818fe7b6b683340a81a21b387d`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0-1` - unknown; unknown

```console
$ docker pull hitch@sha256:bae1a913f5986dcf7c660010873808af4584cc78e91f0e00b1c640d238f3b73e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2547386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744c443b1ea30b751042a6f2e707d2f13f56beae18dfd57778cbe7684a9d3c39`

```dockerfile
```

-	Layers:
	-	`sha256:d6e4c09c7355adf066c31e43b2bc2dc4a2ae85610e1e458c452dad77673a0162`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 2.5 MB (2533842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ef41a7e89f7670e93fe731828ab7de8f3f76591eab28211bedff763da7052f`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 13.5 KB (13544 bytes)  
		MIME: application/vnd.in-toto+json

## `hitch:latest`

```console
$ docker pull hitch@sha256:d8589fd10cefe9d3852274f050122401df916bc3920ce51b09795f81c6a5ca3d
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
$ docker pull hitch@sha256:7ecc3e2d2b094a6dfa3118acc712e4efc81be094d6ddc08dfaa86db8080dcccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34580797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c4b98fae5b4e940941a2e89c0c0d28b15bbda2fad3b67e82e9a5cebf8ea4785`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:17:48 GMT
ARG SRCVER=1.8.0
# Tue, 06 Oct 2026 01:17:48 GMT
ARG PKGVER=1
# Tue, 06 Oct 2026 01:17:48 GMT
ARG DISTVER=bullseye
# Tue, 06 Oct 2026 01:17:48 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 06 Oct 2026 01:17:48 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 06 Oct 2026 01:17:48 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 06 Oct 2026 01:17:48 GMT
WORKDIR /etc/hitch
# Tue, 06 Oct 2026 01:17:48 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:48 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 06 Oct 2026 01:17:48 GMT
EXPOSE map[443/tcp:{}]
# Tue, 06 Oct 2026 01:17:48 GMT
CMD []
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0325c56e09ad28101f6e50ddd79af1d0c7bf1b36007a7293ac9acac3f8435c28`  
		Last Modified: Tue, 06 Oct 2026 01:17:56 GMT  
		Size: 6.3 MB (6331028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06acdb97c8e8badd2e7029a944479ef2c7569f27511fd3147c5d83641464fa6b`  
		Last Modified: Tue, 06 Oct 2026 01:17:55 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:ac5c5b4bafefac8e62c74e09b75a7d9893da06b3a76b8444d30993348e86705a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2550248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c2baa1b50b99dfecc1b0ec73df309f99548d62de7a2d3b9ec0239f83770c0e4`

```dockerfile
```

-	Layers:
	-	`sha256:298150336145120fafdc067c244d6e7ee772fb6986bc15b13c723570e87894a1`  
		Last Modified: Tue, 06 Oct 2026 01:17:56 GMT  
		Size: 2.5 MB (2536666 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a3561d4bf4bbedd5b48cdf87c0384ef0e9d332cfd03520fadcca0fb737d120a`  
		Last Modified: Tue, 06 Oct 2026 01:17:55 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:latest` - linux; arm variant v7

```console
$ docker pull hitch@sha256:86b7ddf06238a7292be555710b109b9098d5b8e12699c62c6fe64b680d98e5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29450441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07dd98d59991c41ab55eeec97db47527947b7814e22aeb4eb3d5ea346c90d295`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:20:17 GMT
ARG SRCVER=1.8.0
# Tue, 06 Oct 2026 01:20:17 GMT
ARG PKGVER=1
# Tue, 06 Oct 2026 01:20:17 GMT
ARG DISTVER=bullseye
# Tue, 06 Oct 2026 01:20:17 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 06 Oct 2026 01:20:17 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 06 Oct 2026 01:20:17 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 06 Oct 2026 01:20:17 GMT
WORKDIR /etc/hitch
# Tue, 06 Oct 2026 01:20:17 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:17 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 06 Oct 2026 01:20:17 GMT
EXPOSE map[443/tcp:{}]
# Tue, 06 Oct 2026 01:20:17 GMT
CMD []
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3180ba6b7281f705398c0dd33a0351fc11fffea8e2955b8fc13f247366325bbf`  
		Last Modified: Tue, 06 Oct 2026 01:20:24 GMT  
		Size: 5.5 MB (5493426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1e6469664358c932f9bcbd604e07e996446bdedfefc3dfa70bc96cc8c28e2c`  
		Last Modified: Tue, 06 Oct 2026 01:20:23 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:671ebe06602f952f78ca3e2d3040cc538294306c8d927429da4173707008901f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2552568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0679d6fbd7b4c19b5bea3542a501881efa4bc0ae49278c71cf52ef501a5267`

```dockerfile
```

-	Layers:
	-	`sha256:aba2d373df2099054ab333527707db2eac9bcad53d834e2b4eff338158989f9b`  
		Last Modified: Tue, 06 Oct 2026 01:20:24 GMT  
		Size: 2.5 MB (2538898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61ae1b958de23485f4ca7203ad2ab4926be32f7cb87cf65add95343969811ca7`  
		Last Modified: Tue, 06 Oct 2026 01:20:23 GMT  
		Size: 13.7 KB (13670 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:latest` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:4254e70688d4fcffbb5e911e7e51222b3f35bffddd977dae5050286d56a7ebf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34271409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11082e271a7fb6f2f033f76e15e3734fb77f5cf60bb305369a286c1589bd8b69`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:17:22 GMT
ARG SRCVER=1.8.0
# Tue, 06 Oct 2026 01:17:22 GMT
ARG PKGVER=1
# Tue, 06 Oct 2026 01:17:22 GMT
ARG DISTVER=bullseye
# Tue, 06 Oct 2026 01:17:22 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Tue, 06 Oct 2026 01:17:22 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Tue, 06 Oct 2026 01:17:22 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Tue, 06 Oct 2026 01:17:22 GMT
WORKDIR /etc/hitch
# Tue, 06 Oct 2026 01:17:22 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:22 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Tue, 06 Oct 2026 01:17:22 GMT
EXPOSE map[443/tcp:{}]
# Tue, 06 Oct 2026 01:17:22 GMT
CMD []
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8d93e9887ffb94e44ebd35b1e242dd2168edd9650530bb75d40ad39add4164`  
		Last Modified: Tue, 06 Oct 2026 01:17:30 GMT  
		Size: 6.1 MB (6133786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a74f7b3235de0ad9ee6c3424403e3fb65f5d1c5bdbb0fdbb61efbaa40d10ee`  
		Last Modified: Tue, 06 Oct 2026 01:17:29 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:f92d2f69e1db5a1d4583a4ac96b308c5e5c66d62fbcbbab8c1ca73e12b8ee143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2550633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21821d9c20a3751cba3fdaf5168a78cdaf394641b725118e3125e5e3d28ec48a`

```dockerfile
```

-	Layers:
	-	`sha256:d2514f48eb0e73fc17b0970c76405bb3ae02d153be293f96264635bfd0183db1`  
		Last Modified: Tue, 06 Oct 2026 01:17:29 GMT  
		Size: 2.5 MB (2536936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d701afa2c0f6c279231eaf12bdd81619615ba5e05e1f9112c7ac714ee89e9002`  
		Last Modified: Tue, 06 Oct 2026 01:17:29 GMT  
		Size: 13.7 KB (13697 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:latest` - linux; 386

```console
$ docker pull hitch@sha256:4e5a27abcd32e9b17059d395853aa53dd241c04d69fd269d2f53718d56ae09ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33261720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fba8da2d1ec41e950acfba2f52ec8f0dcfb598dce06b4c96c96c0a7560a0526`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:20:04 GMT
ARG SRCVER=1.8.0
# Sat, 19 Sep 2026 00:20:04 GMT
ARG PKGVER=1
# Sat, 19 Sep 2026 00:20:04 GMT
ARG DISTVER=bullseye
# Sat, 19 Sep 2026 00:20:04 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Sat, 19 Sep 2026 00:20:04 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Sat, 19 Sep 2026 00:20:04 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Sat, 19 Sep 2026 00:20:04 GMT
WORKDIR /etc/hitch
# Sat, 19 Sep 2026 00:20:04 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:20:04 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Sat, 19 Sep 2026 00:20:04 GMT
EXPOSE map[443/tcp:{}]
# Sat, 19 Sep 2026 00:20:04 GMT
CMD []
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fddc04dc27e7ec4271483298fe2e03e0aeb3229dce7a4c2b55dc5e396a3d922`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 4.0 MB (4035169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be5ef6dcab1716c7af5e67a28cc889fe59f79b818fe7b6b683340a81a21b387d`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:bae1a913f5986dcf7c660010873808af4584cc78e91f0e00b1c640d238f3b73e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2547386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744c443b1ea30b751042a6f2e707d2f13f56beae18dfd57778cbe7684a9d3c39`

```dockerfile
```

-	Layers:
	-	`sha256:d6e4c09c7355adf066c31e43b2bc2dc4a2ae85610e1e458c452dad77673a0162`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 2.5 MB (2533842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ef41a7e89f7670e93fe731828ab7de8f3f76591eab28211bedff763da7052f`  
		Last Modified: Sat, 19 Sep 2026 00:20:11 GMT  
		Size: 13.5 KB (13544 bytes)  
		MIME: application/vnd.in-toto+json
