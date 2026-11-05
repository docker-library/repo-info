## `hitch:latest`

```console
$ docker pull hitch@sha256:9fb3a0cf63a49472383bdee98b04644b21b3fdce7cf7c9f01bfab3fe2b4b828c
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
$ docker pull hitch@sha256:852f46b13a2981799c19b4c2afbd04c93316c4005b3140000bf8dc7faed6edd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27368012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a09a64568b7b209a18d3c9c3efa0c90594106b7987fcaa8c4280299042e62d`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:17:38 GMT
ARG SRCVER=1.8.0
# Wed, 28 Oct 2026 01:17:38 GMT
ARG PKGVER=1
# Wed, 28 Oct 2026 01:17:38 GMT
ARG DISTVER=bullseye
# Wed, 28 Oct 2026 01:17:38 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 28 Oct 2026 01:17:38 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 28 Oct 2026 01:17:38 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 28 Oct 2026 01:17:39 GMT
WORKDIR /etc/hitch
# Wed, 28 Oct 2026 01:17:39 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:17:39 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 28 Oct 2026 01:17:39 GMT
EXPOSE map[443/tcp:{}]
# Wed, 28 Oct 2026 01:17:39 GMT
CMD []
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4927fc9c7deb47f974616544e77042b3d10e51f84f726ee7347c85b2b8bb74ec`  
		Last Modified: Wed, 28 Oct 2026 01:17:45 GMT  
		Size: 3.4 MB (3406599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:307fc4ec53044842e206fe2028772bb5f1dcb8a48a0f24c996b0a5670d1c4b4b`  
		Last Modified: Wed, 28 Oct 2026 01:17:45 GMT  
		Size: 415.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:220f64fd4b3cf59ba44d44cca76eb331308ffe00fb3a36bb5168302d24052ac5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2551272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0bfbc9469fc7f496904f2ae05d8fc1af9f4bb460c60e6e3af41592361cf1929`

```dockerfile
```

-	Layers:
	-	`sha256:6010bd3e494ab82e458b71a358395e880613c2f07e3eb658bcecd6741988c369`  
		Last Modified: Wed, 28 Oct 2026 01:17:45 GMT  
		Size: 2.5 MB (2537603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c2ea616b5ba62ec9bce7a967dd773a9f557be5a3b58a004ad1385bc743609ea`  
		Last Modified: Wed, 28 Oct 2026 01:17:45 GMT  
		Size: 13.7 KB (13669 bytes)  
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
$ docker pull hitch@sha256:203e746790745dccde9e30ee5a8971ea39ee9673468a1fd95640d067b75096ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33274623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56d9a46a00d418d7a5e30cf1f28123b2d8152f4c4b379dc449f62d59467863cd`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:15:56 GMT
ARG SRCVER=1.8.0
# Wed, 28 Oct 2026 01:15:56 GMT
ARG PKGVER=1
# Wed, 28 Oct 2026 01:15:56 GMT
ARG DISTVER=bullseye
# Wed, 28 Oct 2026 01:15:56 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 28 Oct 2026 01:15:56 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 28 Oct 2026 01:15:56 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 28 Oct 2026 01:15:56 GMT
WORKDIR /etc/hitch
# Wed, 28 Oct 2026 01:15:56 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:15:56 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 28 Oct 2026 01:15:56 GMT
EXPOSE map[443/tcp:{}]
# Wed, 28 Oct 2026 01:15:56 GMT
CMD []
```

-	Layers:
	-	`sha256:8268d978265dc07d9054d3d23c581ec1e6c2d82b134331d09069a923d04dc48a`  
		Last Modified: Wed, 28 Oct 2026 00:10:24 GMT  
		Size: 29.2 MB (29238779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d1650d9652977e2ee7280614641285fe7358de1555dbb4929c704820d5fefd7`  
		Last Modified: Wed, 28 Oct 2026 01:16:03 GMT  
		Size: 4.0 MB (4035398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6563c3c99cc8a0ff6333540bad939ddb2ad3f19accf6f6c0d84983651c99609c`  
		Last Modified: Wed, 28 Oct 2026 01:16:03 GMT  
		Size: 414.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:070e608258e4cc842a985fb9b5cb55a2a369c2588d9b31f0f015258b0a6616be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2546092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1758e1f81554d8e9d447918fea2955ee4def71445db929000ad561088ad32b49`

```dockerfile
```

-	Layers:
	-	`sha256:f292bb166d016e8a0c5324e2b65b9c6f22f828cc6e115d8998310bd096f713d8`  
		Last Modified: Wed, 28 Oct 2026 01:16:03 GMT  
		Size: 2.5 MB (2532547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbe6e7c1afc431e71e2f3dd57a14802c137867764094b12a1c449d010c51d3a9`  
		Last Modified: Wed, 28 Oct 2026 01:16:03 GMT  
		Size: 13.5 KB (13545 bytes)  
		MIME: application/vnd.in-toto+json
