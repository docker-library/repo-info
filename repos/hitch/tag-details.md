<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `hitch`

-	[`hitch:1`](#hitch1)
-	[`hitch:1.8`](#hitch18)
-	[`hitch:1.8.0`](#hitch180)
-	[`hitch:1.8.0-1`](#hitch180-1)
-	[`hitch:latest`](#hitchlatest)

## `hitch:1`

```console
$ docker pull hitch@sha256:91a93a77157131d0f9d09dc7aea80f565eb1a40fdf537014f5bc4b9fc741ce97
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
$ docker pull hitch@sha256:8f89d6f0af9c026f8118e3ee3a27f7438dbca86db5310d0222893cfee3d8d1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32287028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ddcca8629c041fc5aaff821eacfac2eb2368d701aaf67f0d1a5bd4e88a45a31`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:15:39 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:15:39 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:15:39 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:15:39 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:15:39 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:15:39 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:15:40 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:15:40 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:15:40 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:15:40 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:15:40 GMT
CMD []
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66146fb7b9d58c234fa2cd7d48c7d455f64ecc18a4c5095721901281e7de997e`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 4.0 MB (4038600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa4aab10d7f0df53e01b82f1fd451f2cb7d2afa246e5f8e1bb110703e559905`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1` - unknown; unknown

```console
$ docker pull hitch@sha256:924845b12fa8b848b3944d8b25b067ee83f784dc23d63d7d1e4d716e1cfd3ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2548953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771f165f3870611d5e0442fbde731fa30954b0ced7e3d3e1ac10c17e108f77fa`

```dockerfile
```

-	Layers:
	-	`sha256:8f3195a66bfc7ea95fa3b9cd28d8b8c9d538e0199b71d2110c5b55a21d6b53fe`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 2.5 MB (2535371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99e2e8564fe4b8db990a064622f3886542aba4804c545c1ab35215661f4e2ec3`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1` - linux; arm variant v7

```console
$ docker pull hitch@sha256:d3183b2d3ffb2ac1d5c98814f6ac8b37fd2bfcfd326670fd6787620656862c37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27368553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f7b6c27bfb3cf79c56c5c7a80d7820a8821675cc9ccaafb958b70711d407f2`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:17:31 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:17:31 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:17:31 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:17:31 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:17:31 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:17:31 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:17:31 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:17:31 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:31 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:17:31 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:17:31 GMT
CMD []
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ec920a717cc40737497196c92ae63e9fab0c9f4aafeb7d537e7b85515a0365`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 3.4 MB (3406751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52f9ea8da6da8f2d0c8e3ec462f63da0c75a9500d4b43898aadd18d2997804f`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1` - unknown; unknown

```console
$ docker pull hitch@sha256:0737df7ded1bea33af03cbcf300d7b513278bb46cd9a2f748e521b3b79d1f475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2551273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8c736437120320192951f460f04da4ca8292b12ba34c5c27fb2de184f7d612e`

```dockerfile
```

-	Layers:
	-	`sha256:2910c82162f9aaadf8134d451f32f6a7d60fa3b1a326044da369ef91d56b7495`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 2.5 MB (2537603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:828f0cf69b406c1dd36439edc5db426d5ae7b20d4c9bd3ac76007ece32277212`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 13.7 KB (13670 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:30ac219d10c54183c04859e5b010aca143d4463bbab9bbd99d552daea73bd8ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32031770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a3c48a62ed1b85b32efc282e0a3c685901d978e3bad21762029f3478a05efc`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:15:13 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:15:13 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:15:13 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:15:13 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:15:13 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:15:13 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:15:13 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:15:13 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:15:13 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:15:13 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:15:13 GMT
CMD []
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d13badfae4a80b79ce7386cecc7fbdd8df3e88007345cfb4f340d0be08592de`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 3.9 MB (3886966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626e9fe432f4124a4ec3882d11763fc663222937347e6f56bb1cf518ebc23c03`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1` - unknown; unknown

```console
$ docker pull hitch@sha256:9cfaecedc4ba223ce3826a2d62e1c0cbd01e6580953b398fb799ef8292d7b1bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2549339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3952caf4fe67f4b88b808b8b81f9e7e156f7ff7a65bce841c980c11f7915ea`

```dockerfile
```

-	Layers:
	-	`sha256:26ff1a1decd1324b5eeaac4db0e5b117c1ca6d51448a194246a614af713eb1fe`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 2.5 MB (2535641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:958b5610aa3900c4a1408dbe1a8efc22175becae93d91ec58a845a7327e007fc`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 13.7 KB (13698 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1` - linux; 386

```console
$ docker pull hitch@sha256:60068a0f457c3866749405256610e2e2092aa9ef345f297eea68e534a8bac0f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33274988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20d461750ebc453d22a964b9b82706bdf62dbe2d78df81375d932a255370e33`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:14:54 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:14:54 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:14:54 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:14:54 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:14:54 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:14:54 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:14:54 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:14:54 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:14:54 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:14:54 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:14:54 GMT
CMD []
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff80ad40267300e97e00cf278fb2cd61b531348ebf117871d24cf2b50d398a6`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 4.0 MB (4035329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556dc080587fff1b930bddac4ba836b77d282cdc5e4407be57ad4c75315a8a62`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 415.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1` - unknown; unknown

```console
$ docker pull hitch@sha256:0d4709a35abc3999877663317d71ae9d0add4d1126a9ccc1d3a670f3ae8cd196
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2546092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536de493f94b60e66713c21bd4dcb8ac88b8e18be8b8876cf57aaaa5ebc1cf1e`

```dockerfile
```

-	Layers:
	-	`sha256:fe11b1e7ede3509d08f67ff48451864f15bf8cff504718b4716303ec381e672e`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 2.5 MB (2532547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d52aad1cdb491449783d07fd2e4f25096b2df5af5692e3a56211deca9d54ff8`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 13.5 KB (13545 bytes)  
		MIME: application/vnd.in-toto+json

## `hitch:1.8`

```console
$ docker pull hitch@sha256:91a93a77157131d0f9d09dc7aea80f565eb1a40fdf537014f5bc4b9fc741ce97
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
$ docker pull hitch@sha256:8f89d6f0af9c026f8118e3ee3a27f7438dbca86db5310d0222893cfee3d8d1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32287028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ddcca8629c041fc5aaff821eacfac2eb2368d701aaf67f0d1a5bd4e88a45a31`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:15:39 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:15:39 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:15:39 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:15:39 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:15:39 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:15:39 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:15:40 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:15:40 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:15:40 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:15:40 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:15:40 GMT
CMD []
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66146fb7b9d58c234fa2cd7d48c7d455f64ecc18a4c5095721901281e7de997e`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 4.0 MB (4038600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa4aab10d7f0df53e01b82f1fd451f2cb7d2afa246e5f8e1bb110703e559905`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8` - unknown; unknown

```console
$ docker pull hitch@sha256:924845b12fa8b848b3944d8b25b067ee83f784dc23d63d7d1e4d716e1cfd3ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2548953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771f165f3870611d5e0442fbde731fa30954b0ced7e3d3e1ac10c17e108f77fa`

```dockerfile
```

-	Layers:
	-	`sha256:8f3195a66bfc7ea95fa3b9cd28d8b8c9d538e0199b71d2110c5b55a21d6b53fe`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 2.5 MB (2535371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99e2e8564fe4b8db990a064622f3886542aba4804c545c1ab35215661f4e2ec3`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8` - linux; arm variant v7

```console
$ docker pull hitch@sha256:d3183b2d3ffb2ac1d5c98814f6ac8b37fd2bfcfd326670fd6787620656862c37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27368553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f7b6c27bfb3cf79c56c5c7a80d7820a8821675cc9ccaafb958b70711d407f2`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:17:31 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:17:31 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:17:31 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:17:31 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:17:31 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:17:31 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:17:31 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:17:31 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:31 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:17:31 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:17:31 GMT
CMD []
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ec920a717cc40737497196c92ae63e9fab0c9f4aafeb7d537e7b85515a0365`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 3.4 MB (3406751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52f9ea8da6da8f2d0c8e3ec462f63da0c75a9500d4b43898aadd18d2997804f`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8` - unknown; unknown

```console
$ docker pull hitch@sha256:0737df7ded1bea33af03cbcf300d7b513278bb46cd9a2f748e521b3b79d1f475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2551273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8c736437120320192951f460f04da4ca8292b12ba34c5c27fb2de184f7d612e`

```dockerfile
```

-	Layers:
	-	`sha256:2910c82162f9aaadf8134d451f32f6a7d60fa3b1a326044da369ef91d56b7495`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 2.5 MB (2537603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:828f0cf69b406c1dd36439edc5db426d5ae7b20d4c9bd3ac76007ece32277212`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 13.7 KB (13670 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:30ac219d10c54183c04859e5b010aca143d4463bbab9bbd99d552daea73bd8ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32031770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a3c48a62ed1b85b32efc282e0a3c685901d978e3bad21762029f3478a05efc`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:15:13 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:15:13 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:15:13 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:15:13 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:15:13 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:15:13 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:15:13 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:15:13 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:15:13 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:15:13 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:15:13 GMT
CMD []
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d13badfae4a80b79ce7386cecc7fbdd8df3e88007345cfb4f340d0be08592de`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 3.9 MB (3886966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626e9fe432f4124a4ec3882d11763fc663222937347e6f56bb1cf518ebc23c03`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8` - unknown; unknown

```console
$ docker pull hitch@sha256:9cfaecedc4ba223ce3826a2d62e1c0cbd01e6580953b398fb799ef8292d7b1bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2549339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3952caf4fe67f4b88b808b8b81f9e7e156f7ff7a65bce841c980c11f7915ea`

```dockerfile
```

-	Layers:
	-	`sha256:26ff1a1decd1324b5eeaac4db0e5b117c1ca6d51448a194246a614af713eb1fe`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 2.5 MB (2535641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:958b5610aa3900c4a1408dbe1a8efc22175becae93d91ec58a845a7327e007fc`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 13.7 KB (13698 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8` - linux; 386

```console
$ docker pull hitch@sha256:60068a0f457c3866749405256610e2e2092aa9ef345f297eea68e534a8bac0f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33274988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20d461750ebc453d22a964b9b82706bdf62dbe2d78df81375d932a255370e33`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:14:54 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:14:54 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:14:54 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:14:54 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:14:54 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:14:54 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:14:54 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:14:54 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:14:54 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:14:54 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:14:54 GMT
CMD []
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff80ad40267300e97e00cf278fb2cd61b531348ebf117871d24cf2b50d398a6`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 4.0 MB (4035329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556dc080587fff1b930bddac4ba836b77d282cdc5e4407be57ad4c75315a8a62`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 415.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8` - unknown; unknown

```console
$ docker pull hitch@sha256:0d4709a35abc3999877663317d71ae9d0add4d1126a9ccc1d3a670f3ae8cd196
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2546092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536de493f94b60e66713c21bd4dcb8ac88b8e18be8b8876cf57aaaa5ebc1cf1e`

```dockerfile
```

-	Layers:
	-	`sha256:fe11b1e7ede3509d08f67ff48451864f15bf8cff504718b4716303ec381e672e`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 2.5 MB (2532547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d52aad1cdb491449783d07fd2e4f25096b2df5af5692e3a56211deca9d54ff8`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 13.5 KB (13545 bytes)  
		MIME: application/vnd.in-toto+json

## `hitch:1.8.0`

```console
$ docker pull hitch@sha256:91a93a77157131d0f9d09dc7aea80f565eb1a40fdf537014f5bc4b9fc741ce97
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
$ docker pull hitch@sha256:8f89d6f0af9c026f8118e3ee3a27f7438dbca86db5310d0222893cfee3d8d1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32287028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ddcca8629c041fc5aaff821eacfac2eb2368d701aaf67f0d1a5bd4e88a45a31`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:15:39 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:15:39 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:15:39 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:15:39 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:15:39 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:15:39 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:15:40 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:15:40 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:15:40 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:15:40 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:15:40 GMT
CMD []
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66146fb7b9d58c234fa2cd7d48c7d455f64ecc18a4c5095721901281e7de997e`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 4.0 MB (4038600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa4aab10d7f0df53e01b82f1fd451f2cb7d2afa246e5f8e1bb110703e559905`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0` - unknown; unknown

```console
$ docker pull hitch@sha256:924845b12fa8b848b3944d8b25b067ee83f784dc23d63d7d1e4d716e1cfd3ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2548953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771f165f3870611d5e0442fbde731fa30954b0ced7e3d3e1ac10c17e108f77fa`

```dockerfile
```

-	Layers:
	-	`sha256:8f3195a66bfc7ea95fa3b9cd28d8b8c9d538e0199b71d2110c5b55a21d6b53fe`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 2.5 MB (2535371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99e2e8564fe4b8db990a064622f3886542aba4804c545c1ab35215661f4e2ec3`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0` - linux; arm variant v7

```console
$ docker pull hitch@sha256:d3183b2d3ffb2ac1d5c98814f6ac8b37fd2bfcfd326670fd6787620656862c37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27368553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f7b6c27bfb3cf79c56c5c7a80d7820a8821675cc9ccaafb958b70711d407f2`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:17:31 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:17:31 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:17:31 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:17:31 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:17:31 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:17:31 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:17:31 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:17:31 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:31 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:17:31 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:17:31 GMT
CMD []
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ec920a717cc40737497196c92ae63e9fab0c9f4aafeb7d537e7b85515a0365`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 3.4 MB (3406751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52f9ea8da6da8f2d0c8e3ec462f63da0c75a9500d4b43898aadd18d2997804f`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0` - unknown; unknown

```console
$ docker pull hitch@sha256:0737df7ded1bea33af03cbcf300d7b513278bb46cd9a2f748e521b3b79d1f475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2551273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8c736437120320192951f460f04da4ca8292b12ba34c5c27fb2de184f7d612e`

```dockerfile
```

-	Layers:
	-	`sha256:2910c82162f9aaadf8134d451f32f6a7d60fa3b1a326044da369ef91d56b7495`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 2.5 MB (2537603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:828f0cf69b406c1dd36439edc5db426d5ae7b20d4c9bd3ac76007ece32277212`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 13.7 KB (13670 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:30ac219d10c54183c04859e5b010aca143d4463bbab9bbd99d552daea73bd8ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32031770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a3c48a62ed1b85b32efc282e0a3c685901d978e3bad21762029f3478a05efc`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:15:13 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:15:13 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:15:13 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:15:13 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:15:13 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:15:13 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:15:13 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:15:13 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:15:13 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:15:13 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:15:13 GMT
CMD []
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d13badfae4a80b79ce7386cecc7fbdd8df3e88007345cfb4f340d0be08592de`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 3.9 MB (3886966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626e9fe432f4124a4ec3882d11763fc663222937347e6f56bb1cf518ebc23c03`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0` - unknown; unknown

```console
$ docker pull hitch@sha256:9cfaecedc4ba223ce3826a2d62e1c0cbd01e6580953b398fb799ef8292d7b1bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2549339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3952caf4fe67f4b88b808b8b81f9e7e156f7ff7a65bce841c980c11f7915ea`

```dockerfile
```

-	Layers:
	-	`sha256:26ff1a1decd1324b5eeaac4db0e5b117c1ca6d51448a194246a614af713eb1fe`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 2.5 MB (2535641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:958b5610aa3900c4a1408dbe1a8efc22175becae93d91ec58a845a7327e007fc`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 13.7 KB (13698 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0` - linux; 386

```console
$ docker pull hitch@sha256:60068a0f457c3866749405256610e2e2092aa9ef345f297eea68e534a8bac0f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33274988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20d461750ebc453d22a964b9b82706bdf62dbe2d78df81375d932a255370e33`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:14:54 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:14:54 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:14:54 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:14:54 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:14:54 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:14:54 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:14:54 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:14:54 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:14:54 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:14:54 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:14:54 GMT
CMD []
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff80ad40267300e97e00cf278fb2cd61b531348ebf117871d24cf2b50d398a6`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 4.0 MB (4035329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556dc080587fff1b930bddac4ba836b77d282cdc5e4407be57ad4c75315a8a62`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 415.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0` - unknown; unknown

```console
$ docker pull hitch@sha256:0d4709a35abc3999877663317d71ae9d0add4d1126a9ccc1d3a670f3ae8cd196
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2546092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536de493f94b60e66713c21bd4dcb8ac88b8e18be8b8876cf57aaaa5ebc1cf1e`

```dockerfile
```

-	Layers:
	-	`sha256:fe11b1e7ede3509d08f67ff48451864f15bf8cff504718b4716303ec381e672e`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 2.5 MB (2532547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d52aad1cdb491449783d07fd2e4f25096b2df5af5692e3a56211deca9d54ff8`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 13.5 KB (13545 bytes)  
		MIME: application/vnd.in-toto+json

## `hitch:1.8.0-1`

```console
$ docker pull hitch@sha256:91a93a77157131d0f9d09dc7aea80f565eb1a40fdf537014f5bc4b9fc741ce97
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
$ docker pull hitch@sha256:8f89d6f0af9c026f8118e3ee3a27f7438dbca86db5310d0222893cfee3d8d1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32287028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ddcca8629c041fc5aaff821eacfac2eb2368d701aaf67f0d1a5bd4e88a45a31`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:15:39 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:15:39 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:15:39 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:15:39 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:15:39 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:15:39 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:15:40 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:15:40 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:15:40 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:15:40 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:15:40 GMT
CMD []
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66146fb7b9d58c234fa2cd7d48c7d455f64ecc18a4c5095721901281e7de997e`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 4.0 MB (4038600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa4aab10d7f0df53e01b82f1fd451f2cb7d2afa246e5f8e1bb110703e559905`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0-1` - unknown; unknown

```console
$ docker pull hitch@sha256:924845b12fa8b848b3944d8b25b067ee83f784dc23d63d7d1e4d716e1cfd3ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2548953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771f165f3870611d5e0442fbde731fa30954b0ced7e3d3e1ac10c17e108f77fa`

```dockerfile
```

-	Layers:
	-	`sha256:8f3195a66bfc7ea95fa3b9cd28d8b8c9d538e0199b71d2110c5b55a21d6b53fe`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 2.5 MB (2535371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99e2e8564fe4b8db990a064622f3886542aba4804c545c1ab35215661f4e2ec3`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0-1` - linux; arm variant v7

```console
$ docker pull hitch@sha256:d3183b2d3ffb2ac1d5c98814f6ac8b37fd2bfcfd326670fd6787620656862c37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27368553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f7b6c27bfb3cf79c56c5c7a80d7820a8821675cc9ccaafb958b70711d407f2`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:17:31 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:17:31 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:17:31 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:17:31 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:17:31 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:17:31 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:17:31 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:17:31 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:31 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:17:31 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:17:31 GMT
CMD []
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ec920a717cc40737497196c92ae63e9fab0c9f4aafeb7d537e7b85515a0365`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 3.4 MB (3406751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52f9ea8da6da8f2d0c8e3ec462f63da0c75a9500d4b43898aadd18d2997804f`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0-1` - unknown; unknown

```console
$ docker pull hitch@sha256:0737df7ded1bea33af03cbcf300d7b513278bb46cd9a2f748e521b3b79d1f475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2551273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8c736437120320192951f460f04da4ca8292b12ba34c5c27fb2de184f7d612e`

```dockerfile
```

-	Layers:
	-	`sha256:2910c82162f9aaadf8134d451f32f6a7d60fa3b1a326044da369ef91d56b7495`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 2.5 MB (2537603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:828f0cf69b406c1dd36439edc5db426d5ae7b20d4c9bd3ac76007ece32277212`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 13.7 KB (13670 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0-1` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:30ac219d10c54183c04859e5b010aca143d4463bbab9bbd99d552daea73bd8ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32031770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a3c48a62ed1b85b32efc282e0a3c685901d978e3bad21762029f3478a05efc`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:15:13 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:15:13 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:15:13 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:15:13 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:15:13 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:15:13 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:15:13 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:15:13 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:15:13 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:15:13 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:15:13 GMT
CMD []
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d13badfae4a80b79ce7386cecc7fbdd8df3e88007345cfb4f340d0be08592de`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 3.9 MB (3886966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626e9fe432f4124a4ec3882d11763fc663222937347e6f56bb1cf518ebc23c03`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0-1` - unknown; unknown

```console
$ docker pull hitch@sha256:9cfaecedc4ba223ce3826a2d62e1c0cbd01e6580953b398fb799ef8292d7b1bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2549339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3952caf4fe67f4b88b808b8b81f9e7e156f7ff7a65bce841c980c11f7915ea`

```dockerfile
```

-	Layers:
	-	`sha256:26ff1a1decd1324b5eeaac4db0e5b117c1ca6d51448a194246a614af713eb1fe`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 2.5 MB (2535641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:958b5610aa3900c4a1408dbe1a8efc22175becae93d91ec58a845a7327e007fc`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 13.7 KB (13698 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0-1` - linux; 386

```console
$ docker pull hitch@sha256:60068a0f457c3866749405256610e2e2092aa9ef345f297eea68e534a8bac0f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33274988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20d461750ebc453d22a964b9b82706bdf62dbe2d78df81375d932a255370e33`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:14:54 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:14:54 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:14:54 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:14:54 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:14:54 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:14:54 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:14:54 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:14:54 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:14:54 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:14:54 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:14:54 GMT
CMD []
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff80ad40267300e97e00cf278fb2cd61b531348ebf117871d24cf2b50d398a6`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 4.0 MB (4035329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556dc080587fff1b930bddac4ba836b77d282cdc5e4407be57ad4c75315a8a62`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 415.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0-1` - unknown; unknown

```console
$ docker pull hitch@sha256:0d4709a35abc3999877663317d71ae9d0add4d1126a9ccc1d3a670f3ae8cd196
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2546092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536de493f94b60e66713c21bd4dcb8ac88b8e18be8b8876cf57aaaa5ebc1cf1e`

```dockerfile
```

-	Layers:
	-	`sha256:fe11b1e7ede3509d08f67ff48451864f15bf8cff504718b4716303ec381e672e`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 2.5 MB (2532547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d52aad1cdb491449783d07fd2e4f25096b2df5af5692e3a56211deca9d54ff8`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 13.5 KB (13545 bytes)  
		MIME: application/vnd.in-toto+json

## `hitch:latest`

```console
$ docker pull hitch@sha256:91a93a77157131d0f9d09dc7aea80f565eb1a40fdf537014f5bc4b9fc741ce97
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
$ docker pull hitch@sha256:8f89d6f0af9c026f8118e3ee3a27f7438dbca86db5310d0222893cfee3d8d1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32287028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ddcca8629c041fc5aaff821eacfac2eb2368d701aaf67f0d1a5bd4e88a45a31`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:15:39 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:15:39 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:15:39 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:15:39 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:15:39 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:15:39 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:15:40 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:15:40 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:15:40 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:15:40 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:15:40 GMT
CMD []
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66146fb7b9d58c234fa2cd7d48c7d455f64ecc18a4c5095721901281e7de997e`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 4.0 MB (4038600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa4aab10d7f0df53e01b82f1fd451f2cb7d2afa246e5f8e1bb110703e559905`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:924845b12fa8b848b3944d8b25b067ee83f784dc23d63d7d1e4d716e1cfd3ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2548953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771f165f3870611d5e0442fbde731fa30954b0ced7e3d3e1ac10c17e108f77fa`

```dockerfile
```

-	Layers:
	-	`sha256:8f3195a66bfc7ea95fa3b9cd28d8b8c9d538e0199b71d2110c5b55a21d6b53fe`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 2.5 MB (2535371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99e2e8564fe4b8db990a064622f3886542aba4804c545c1ab35215661f4e2ec3`  
		Last Modified: Thu, 05 Nov 2026 07:15:46 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:latest` - linux; arm variant v7

```console
$ docker pull hitch@sha256:d3183b2d3ffb2ac1d5c98814f6ac8b37fd2bfcfd326670fd6787620656862c37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27368553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f7b6c27bfb3cf79c56c5c7a80d7820a8821675cc9ccaafb958b70711d407f2`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:17:31 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:17:31 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:17:31 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:17:31 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:17:31 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:17:31 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:17:31 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:17:31 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:31 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:17:31 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:17:31 GMT
CMD []
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ec920a717cc40737497196c92ae63e9fab0c9f4aafeb7d537e7b85515a0365`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 3.4 MB (3406751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52f9ea8da6da8f2d0c8e3ec462f63da0c75a9500d4b43898aadd18d2997804f`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:0737df7ded1bea33af03cbcf300d7b513278bb46cd9a2f748e521b3b79d1f475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2551273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8c736437120320192951f460f04da4ca8292b12ba34c5c27fb2de184f7d612e`

```dockerfile
```

-	Layers:
	-	`sha256:2910c82162f9aaadf8134d451f32f6a7d60fa3b1a326044da369ef91d56b7495`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 2.5 MB (2537603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:828f0cf69b406c1dd36439edc5db426d5ae7b20d4c9bd3ac76007ece32277212`  
		Last Modified: Thu, 05 Nov 2026 07:17:38 GMT  
		Size: 13.7 KB (13670 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:latest` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:30ac219d10c54183c04859e5b010aca143d4463bbab9bbd99d552daea73bd8ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32031770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a3c48a62ed1b85b32efc282e0a3c685901d978e3bad21762029f3478a05efc`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:15:13 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:15:13 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:15:13 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:15:13 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:15:13 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:15:13 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:15:13 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:15:13 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:15:13 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:15:13 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:15:13 GMT
CMD []
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d13badfae4a80b79ce7386cecc7fbdd8df3e88007345cfb4f340d0be08592de`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 3.9 MB (3886966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626e9fe432f4124a4ec3882d11763fc663222937347e6f56bb1cf518ebc23c03`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:9cfaecedc4ba223ce3826a2d62e1c0cbd01e6580953b398fb799ef8292d7b1bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2549339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3952caf4fe67f4b88b808b8b81f9e7e156f7ff7a65bce841c980c11f7915ea`

```dockerfile
```

-	Layers:
	-	`sha256:26ff1a1decd1324b5eeaac4db0e5b117c1ca6d51448a194246a614af713eb1fe`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 2.5 MB (2535641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:958b5610aa3900c4a1408dbe1a8efc22175becae93d91ec58a845a7327e007fc`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 13.7 KB (13698 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:latest` - linux; 386

```console
$ docker pull hitch@sha256:60068a0f457c3866749405256610e2e2092aa9ef345f297eea68e534a8bac0f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33274988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20d461750ebc453d22a964b9b82706bdf62dbe2d78df81375d932a255370e33`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:14:54 GMT
ARG SRCVER=1.8.0
# Thu, 05 Nov 2026 07:14:54 GMT
ARG PKGVER=1
# Thu, 05 Nov 2026 07:14:54 GMT
ARG DISTVER=bullseye
# Thu, 05 Nov 2026 07:14:54 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Thu, 05 Nov 2026 07:14:54 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Thu, 05 Nov 2026 07:14:54 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Thu, 05 Nov 2026 07:14:54 GMT
WORKDIR /etc/hitch
# Thu, 05 Nov 2026 07:14:54 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:14:54 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Thu, 05 Nov 2026 07:14:54 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:14:54 GMT
CMD []
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff80ad40267300e97e00cf278fb2cd61b531348ebf117871d24cf2b50d398a6`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 4.0 MB (4035329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556dc080587fff1b930bddac4ba836b77d282cdc5e4407be57ad4c75315a8a62`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 415.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:0d4709a35abc3999877663317d71ae9d0add4d1126a9ccc1d3a670f3ae8cd196
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2546092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536de493f94b60e66713c21bd4dcb8ac88b8e18be8b8876cf57aaaa5ebc1cf1e`

```dockerfile
```

-	Layers:
	-	`sha256:fe11b1e7ede3509d08f67ff48451864f15bf8cff504718b4716303ec381e672e`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 2.5 MB (2532547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d52aad1cdb491449783d07fd2e4f25096b2df5af5692e3a56211deca9d54ff8`  
		Last Modified: Thu, 05 Nov 2026 07:15:00 GMT  
		Size: 13.5 KB (13545 bytes)  
		MIME: application/vnd.in-toto+json
