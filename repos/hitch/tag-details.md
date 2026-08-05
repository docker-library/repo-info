<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `hitch`

-	[`hitch:1`](#hitch1)
-	[`hitch:1.8`](#hitch18)
-	[`hitch:1.8.0`](#hitch180)
-	[`hitch:1.8.0-1`](#hitch180-1)
-	[`hitch:latest`](#hitchlatest)

## `hitch:1`

```console
$ docker pull hitch@sha256:2aa93fae5c1184d56318c56ad98776feaba95f8a7f33779e4d4236818bc0fd27
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
$ docker pull hitch@sha256:eca134fe0c0240ea9be6463eaf6763174d2f957097ac8d68ad963f92d58676a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32259120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22eec8e08113754d98531f04d7791e7c4ee3d8f3a987d5b96ffc02856a79a280`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:21:18 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:21:18 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:21:18 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:21:18 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:21:18 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:21:18 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:21:18 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:21:18 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:21:18 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:21:18 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:21:18 GMT
CMD []
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e4c795fb8cf6eef2d7f2d383df1ab8d076a66ab8c03eac288418bbc9155d28`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 4.0 MB (4026086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9752a8ac4678cb123706b754f1246c682e6b0a21faeeda127060031af40f5cc6`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1` - unknown; unknown

```console
$ docker pull hitch@sha256:a8aeb41f34c97e449a419be1d6d0f8f17d82bd17e0ec130e3f5a543c831d237a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f86e3369afe721203416e9bab6b09406c3facba72c3a7f452bb9b7278a85dd3`

```dockerfile
```

-	Layers:
	-	`sha256:1f4b0cc7ae97229233e8a3741a9a4a4cd51faf5f713331c06296a0373c913dbd`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 2.5 MB (2531427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56eabe41b8fcd7544733c44c480644be6cc6f800078527288d812f52d5850744`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1` - linux; arm variant v7

```console
$ docker pull hitch@sha256:335ab57a3cf5f438d0792d6733780b4607cee5f6832399ad415cb240a723adbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27327749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd7cc3b906e67254ce22213a4f8773719bc68200145047c0d03fea4c05125a0`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:20:17 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:20:17 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:20:17 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:20:17 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:20:17 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:20:17 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:20:17 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:20:18 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:20:18 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:20:18 GMT
CMD []
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0680f4c8f7d8db4fdae6d99967b062857dc429c757257b6def4248932767e218`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 3.4 MB (3387556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0942226a0dcc57bbfd6c4eb1ce0d37ef3f55e55a943133438f0dc8ef8331f4d6`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1` - unknown; unknown

```console
$ docker pull hitch@sha256:2ae29beb11ee5fae1d5574c2fd9c6d05879b730effeef53d8dcd2a42af797419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2547327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b74fe6fe56621b4465c19a5d2144d876b0a259d194361db4e6f00a4bb647ce04`

```dockerfile
```

-	Layers:
	-	`sha256:b42838030f64dc66e9dd89436c61e41703636ff07e3da2d96a96c9c131805daa`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 2.5 MB (2533659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6043fb41eaf9f16bd9b42e3ef5d3cf9bdfebb82f2d7cb77d6ee6d4f1818a416`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 13.7 KB (13668 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:16c5dbbd12631cb74cc1ec13402e6346199c5714b961be3b22f5158b6a1218c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a1535d7a8335331a89f1253649b74667a03e372cb8a108851c1cb7e02a1999`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:21:23 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:21:23 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:21:23 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:21:23 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:21:23 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:21:23 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:21:23 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:21:23 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:21:23 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:21:23 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:21:23 GMT
CMD []
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2b27d16eb00399955e3609783a091af59dc46115f415b0e78f02e309da83c7`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 3.9 MB (3874168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3559bacfce67ef987836f31abfea03d628ad69a93ed2a16db249cf7529ac329`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1` - unknown; unknown

```console
$ docker pull hitch@sha256:56d7c41cd6c6f5cd5414e07543513ead215de796753629c4cd28a801b78c1536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83fa295bfd4a0d13cff161a04a634914171e95846b55ed0f7fb8cc8e2d5d628`

```dockerfile
```

-	Layers:
	-	`sha256:3b37b6266fbca53ee1455ab0fa9e5fbf08b324ee5a69cc089d7c2601762858de`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 2.5 MB (2531697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f5dc56f690db98ab54be5db19d2f4e3e7b8c345393c8a556ac4ffa545bfd3fc`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 13.7 KB (13698 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1` - linux; 386

```console
$ docker pull hitch@sha256:86c703de5adbc5c98488ddb6476521c94b5cc17e200b39fce6aeef7fe256ccbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33240938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d304f36f5058cf50b3139a79cccd711b2935b8f605ee213f8b00197f9adefd`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:17:31 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:17:31 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:17:31 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:17:31 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:17:31 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:17:31 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:17:31 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:17:31 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:17:31 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:17:31 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:17:31 GMT
CMD []
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:972e1fcbc0922b6c6b2f92c1d7dc147126cccd2e904c26d5f088be321636cd79`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 4.0 MB (4019516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468e19ac9b3f05c94044d434306e5df39157f9bfb174665dc17ea51de4d6a68b`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1` - unknown; unknown

```console
$ docker pull hitch@sha256:9ee252d5eb56416e566fe52136176c4a10b3770a55ad220a160d5bbbeff14d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2542148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b7c06a60531aa95182fc6032a6bcf3dd623ae0e311efd6002375bbcf2211bb`

```dockerfile
```

-	Layers:
	-	`sha256:fcdd7f6bd6ce1fe2409c434d526c2104b4efc3f80fda1557694833fdcea2c93b`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 2.5 MB (2528603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c70aa52c170c10cb753201926b02625251cb4d16193d853667d363e7202f463`  
		Last Modified: Wed, 05 Aug 2026 00:17:37 GMT  
		Size: 13.5 KB (13545 bytes)  
		MIME: application/vnd.in-toto+json

## `hitch:1.8`

```console
$ docker pull hitch@sha256:2aa93fae5c1184d56318c56ad98776feaba95f8a7f33779e4d4236818bc0fd27
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
$ docker pull hitch@sha256:eca134fe0c0240ea9be6463eaf6763174d2f957097ac8d68ad963f92d58676a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32259120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22eec8e08113754d98531f04d7791e7c4ee3d8f3a987d5b96ffc02856a79a280`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:21:18 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:21:18 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:21:18 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:21:18 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:21:18 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:21:18 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:21:18 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:21:18 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:21:18 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:21:18 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:21:18 GMT
CMD []
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e4c795fb8cf6eef2d7f2d383df1ab8d076a66ab8c03eac288418bbc9155d28`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 4.0 MB (4026086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9752a8ac4678cb123706b754f1246c682e6b0a21faeeda127060031af40f5cc6`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8` - unknown; unknown

```console
$ docker pull hitch@sha256:a8aeb41f34c97e449a419be1d6d0f8f17d82bd17e0ec130e3f5a543c831d237a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f86e3369afe721203416e9bab6b09406c3facba72c3a7f452bb9b7278a85dd3`

```dockerfile
```

-	Layers:
	-	`sha256:1f4b0cc7ae97229233e8a3741a9a4a4cd51faf5f713331c06296a0373c913dbd`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 2.5 MB (2531427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56eabe41b8fcd7544733c44c480644be6cc6f800078527288d812f52d5850744`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8` - linux; arm variant v7

```console
$ docker pull hitch@sha256:335ab57a3cf5f438d0792d6733780b4607cee5f6832399ad415cb240a723adbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27327749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd7cc3b906e67254ce22213a4f8773719bc68200145047c0d03fea4c05125a0`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:20:17 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:20:17 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:20:17 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:20:17 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:20:17 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:20:17 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:20:17 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:20:18 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:20:18 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:20:18 GMT
CMD []
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0680f4c8f7d8db4fdae6d99967b062857dc429c757257b6def4248932767e218`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 3.4 MB (3387556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0942226a0dcc57bbfd6c4eb1ce0d37ef3f55e55a943133438f0dc8ef8331f4d6`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8` - unknown; unknown

```console
$ docker pull hitch@sha256:2ae29beb11ee5fae1d5574c2fd9c6d05879b730effeef53d8dcd2a42af797419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2547327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b74fe6fe56621b4465c19a5d2144d876b0a259d194361db4e6f00a4bb647ce04`

```dockerfile
```

-	Layers:
	-	`sha256:b42838030f64dc66e9dd89436c61e41703636ff07e3da2d96a96c9c131805daa`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 2.5 MB (2533659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6043fb41eaf9f16bd9b42e3ef5d3cf9bdfebb82f2d7cb77d6ee6d4f1818a416`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 13.7 KB (13668 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:16c5dbbd12631cb74cc1ec13402e6346199c5714b961be3b22f5158b6a1218c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a1535d7a8335331a89f1253649b74667a03e372cb8a108851c1cb7e02a1999`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:21:23 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:21:23 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:21:23 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:21:23 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:21:23 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:21:23 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:21:23 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:21:23 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:21:23 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:21:23 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:21:23 GMT
CMD []
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2b27d16eb00399955e3609783a091af59dc46115f415b0e78f02e309da83c7`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 3.9 MB (3874168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3559bacfce67ef987836f31abfea03d628ad69a93ed2a16db249cf7529ac329`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8` - unknown; unknown

```console
$ docker pull hitch@sha256:56d7c41cd6c6f5cd5414e07543513ead215de796753629c4cd28a801b78c1536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83fa295bfd4a0d13cff161a04a634914171e95846b55ed0f7fb8cc8e2d5d628`

```dockerfile
```

-	Layers:
	-	`sha256:3b37b6266fbca53ee1455ab0fa9e5fbf08b324ee5a69cc089d7c2601762858de`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 2.5 MB (2531697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f5dc56f690db98ab54be5db19d2f4e3e7b8c345393c8a556ac4ffa545bfd3fc`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 13.7 KB (13698 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8` - linux; 386

```console
$ docker pull hitch@sha256:86c703de5adbc5c98488ddb6476521c94b5cc17e200b39fce6aeef7fe256ccbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33240938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d304f36f5058cf50b3139a79cccd711b2935b8f605ee213f8b00197f9adefd`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:17:31 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:17:31 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:17:31 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:17:31 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:17:31 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:17:31 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:17:31 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:17:31 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:17:31 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:17:31 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:17:31 GMT
CMD []
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:972e1fcbc0922b6c6b2f92c1d7dc147126cccd2e904c26d5f088be321636cd79`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 4.0 MB (4019516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468e19ac9b3f05c94044d434306e5df39157f9bfb174665dc17ea51de4d6a68b`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8` - unknown; unknown

```console
$ docker pull hitch@sha256:9ee252d5eb56416e566fe52136176c4a10b3770a55ad220a160d5bbbeff14d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2542148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b7c06a60531aa95182fc6032a6bcf3dd623ae0e311efd6002375bbcf2211bb`

```dockerfile
```

-	Layers:
	-	`sha256:fcdd7f6bd6ce1fe2409c434d526c2104b4efc3f80fda1557694833fdcea2c93b`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 2.5 MB (2528603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c70aa52c170c10cb753201926b02625251cb4d16193d853667d363e7202f463`  
		Last Modified: Wed, 05 Aug 2026 00:17:37 GMT  
		Size: 13.5 KB (13545 bytes)  
		MIME: application/vnd.in-toto+json

## `hitch:1.8.0`

```console
$ docker pull hitch@sha256:2aa93fae5c1184d56318c56ad98776feaba95f8a7f33779e4d4236818bc0fd27
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
$ docker pull hitch@sha256:eca134fe0c0240ea9be6463eaf6763174d2f957097ac8d68ad963f92d58676a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32259120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22eec8e08113754d98531f04d7791e7c4ee3d8f3a987d5b96ffc02856a79a280`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:21:18 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:21:18 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:21:18 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:21:18 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:21:18 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:21:18 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:21:18 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:21:18 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:21:18 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:21:18 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:21:18 GMT
CMD []
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e4c795fb8cf6eef2d7f2d383df1ab8d076a66ab8c03eac288418bbc9155d28`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 4.0 MB (4026086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9752a8ac4678cb123706b754f1246c682e6b0a21faeeda127060031af40f5cc6`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0` - unknown; unknown

```console
$ docker pull hitch@sha256:a8aeb41f34c97e449a419be1d6d0f8f17d82bd17e0ec130e3f5a543c831d237a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f86e3369afe721203416e9bab6b09406c3facba72c3a7f452bb9b7278a85dd3`

```dockerfile
```

-	Layers:
	-	`sha256:1f4b0cc7ae97229233e8a3741a9a4a4cd51faf5f713331c06296a0373c913dbd`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 2.5 MB (2531427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56eabe41b8fcd7544733c44c480644be6cc6f800078527288d812f52d5850744`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0` - linux; arm variant v7

```console
$ docker pull hitch@sha256:335ab57a3cf5f438d0792d6733780b4607cee5f6832399ad415cb240a723adbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27327749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd7cc3b906e67254ce22213a4f8773719bc68200145047c0d03fea4c05125a0`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:20:17 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:20:17 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:20:17 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:20:17 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:20:17 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:20:17 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:20:17 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:20:18 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:20:18 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:20:18 GMT
CMD []
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0680f4c8f7d8db4fdae6d99967b062857dc429c757257b6def4248932767e218`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 3.4 MB (3387556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0942226a0dcc57bbfd6c4eb1ce0d37ef3f55e55a943133438f0dc8ef8331f4d6`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0` - unknown; unknown

```console
$ docker pull hitch@sha256:2ae29beb11ee5fae1d5574c2fd9c6d05879b730effeef53d8dcd2a42af797419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2547327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b74fe6fe56621b4465c19a5d2144d876b0a259d194361db4e6f00a4bb647ce04`

```dockerfile
```

-	Layers:
	-	`sha256:b42838030f64dc66e9dd89436c61e41703636ff07e3da2d96a96c9c131805daa`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 2.5 MB (2533659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6043fb41eaf9f16bd9b42e3ef5d3cf9bdfebb82f2d7cb77d6ee6d4f1818a416`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 13.7 KB (13668 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:16c5dbbd12631cb74cc1ec13402e6346199c5714b961be3b22f5158b6a1218c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a1535d7a8335331a89f1253649b74667a03e372cb8a108851c1cb7e02a1999`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:21:23 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:21:23 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:21:23 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:21:23 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:21:23 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:21:23 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:21:23 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:21:23 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:21:23 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:21:23 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:21:23 GMT
CMD []
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2b27d16eb00399955e3609783a091af59dc46115f415b0e78f02e309da83c7`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 3.9 MB (3874168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3559bacfce67ef987836f31abfea03d628ad69a93ed2a16db249cf7529ac329`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0` - unknown; unknown

```console
$ docker pull hitch@sha256:56d7c41cd6c6f5cd5414e07543513ead215de796753629c4cd28a801b78c1536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83fa295bfd4a0d13cff161a04a634914171e95846b55ed0f7fb8cc8e2d5d628`

```dockerfile
```

-	Layers:
	-	`sha256:3b37b6266fbca53ee1455ab0fa9e5fbf08b324ee5a69cc089d7c2601762858de`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 2.5 MB (2531697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f5dc56f690db98ab54be5db19d2f4e3e7b8c345393c8a556ac4ffa545bfd3fc`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 13.7 KB (13698 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0` - linux; 386

```console
$ docker pull hitch@sha256:86c703de5adbc5c98488ddb6476521c94b5cc17e200b39fce6aeef7fe256ccbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33240938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d304f36f5058cf50b3139a79cccd711b2935b8f605ee213f8b00197f9adefd`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:17:31 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:17:31 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:17:31 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:17:31 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:17:31 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:17:31 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:17:31 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:17:31 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:17:31 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:17:31 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:17:31 GMT
CMD []
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:972e1fcbc0922b6c6b2f92c1d7dc147126cccd2e904c26d5f088be321636cd79`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 4.0 MB (4019516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468e19ac9b3f05c94044d434306e5df39157f9bfb174665dc17ea51de4d6a68b`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0` - unknown; unknown

```console
$ docker pull hitch@sha256:9ee252d5eb56416e566fe52136176c4a10b3770a55ad220a160d5bbbeff14d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2542148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b7c06a60531aa95182fc6032a6bcf3dd623ae0e311efd6002375bbcf2211bb`

```dockerfile
```

-	Layers:
	-	`sha256:fcdd7f6bd6ce1fe2409c434d526c2104b4efc3f80fda1557694833fdcea2c93b`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 2.5 MB (2528603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c70aa52c170c10cb753201926b02625251cb4d16193d853667d363e7202f463`  
		Last Modified: Wed, 05 Aug 2026 00:17:37 GMT  
		Size: 13.5 KB (13545 bytes)  
		MIME: application/vnd.in-toto+json

## `hitch:1.8.0-1`

```console
$ docker pull hitch@sha256:2aa93fae5c1184d56318c56ad98776feaba95f8a7f33779e4d4236818bc0fd27
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
$ docker pull hitch@sha256:eca134fe0c0240ea9be6463eaf6763174d2f957097ac8d68ad963f92d58676a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32259120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22eec8e08113754d98531f04d7791e7c4ee3d8f3a987d5b96ffc02856a79a280`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:21:18 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:21:18 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:21:18 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:21:18 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:21:18 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:21:18 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:21:18 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:21:18 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:21:18 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:21:18 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:21:18 GMT
CMD []
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e4c795fb8cf6eef2d7f2d383df1ab8d076a66ab8c03eac288418bbc9155d28`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 4.0 MB (4026086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9752a8ac4678cb123706b754f1246c682e6b0a21faeeda127060031af40f5cc6`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0-1` - unknown; unknown

```console
$ docker pull hitch@sha256:a8aeb41f34c97e449a419be1d6d0f8f17d82bd17e0ec130e3f5a543c831d237a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f86e3369afe721203416e9bab6b09406c3facba72c3a7f452bb9b7278a85dd3`

```dockerfile
```

-	Layers:
	-	`sha256:1f4b0cc7ae97229233e8a3741a9a4a4cd51faf5f713331c06296a0373c913dbd`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 2.5 MB (2531427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56eabe41b8fcd7544733c44c480644be6cc6f800078527288d812f52d5850744`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0-1` - linux; arm variant v7

```console
$ docker pull hitch@sha256:335ab57a3cf5f438d0792d6733780b4607cee5f6832399ad415cb240a723adbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27327749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd7cc3b906e67254ce22213a4f8773719bc68200145047c0d03fea4c05125a0`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:20:17 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:20:17 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:20:17 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:20:17 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:20:17 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:20:17 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:20:17 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:20:18 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:20:18 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:20:18 GMT
CMD []
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0680f4c8f7d8db4fdae6d99967b062857dc429c757257b6def4248932767e218`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 3.4 MB (3387556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0942226a0dcc57bbfd6c4eb1ce0d37ef3f55e55a943133438f0dc8ef8331f4d6`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0-1` - unknown; unknown

```console
$ docker pull hitch@sha256:2ae29beb11ee5fae1d5574c2fd9c6d05879b730effeef53d8dcd2a42af797419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2547327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b74fe6fe56621b4465c19a5d2144d876b0a259d194361db4e6f00a4bb647ce04`

```dockerfile
```

-	Layers:
	-	`sha256:b42838030f64dc66e9dd89436c61e41703636ff07e3da2d96a96c9c131805daa`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 2.5 MB (2533659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6043fb41eaf9f16bd9b42e3ef5d3cf9bdfebb82f2d7cb77d6ee6d4f1818a416`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 13.7 KB (13668 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0-1` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:16c5dbbd12631cb74cc1ec13402e6346199c5714b961be3b22f5158b6a1218c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a1535d7a8335331a89f1253649b74667a03e372cb8a108851c1cb7e02a1999`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:21:23 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:21:23 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:21:23 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:21:23 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:21:23 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:21:23 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:21:23 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:21:23 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:21:23 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:21:23 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:21:23 GMT
CMD []
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2b27d16eb00399955e3609783a091af59dc46115f415b0e78f02e309da83c7`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 3.9 MB (3874168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3559bacfce67ef987836f31abfea03d628ad69a93ed2a16db249cf7529ac329`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0-1` - unknown; unknown

```console
$ docker pull hitch@sha256:56d7c41cd6c6f5cd5414e07543513ead215de796753629c4cd28a801b78c1536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83fa295bfd4a0d13cff161a04a634914171e95846b55ed0f7fb8cc8e2d5d628`

```dockerfile
```

-	Layers:
	-	`sha256:3b37b6266fbca53ee1455ab0fa9e5fbf08b324ee5a69cc089d7c2601762858de`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 2.5 MB (2531697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f5dc56f690db98ab54be5db19d2f4e3e7b8c345393c8a556ac4ffa545bfd3fc`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 13.7 KB (13698 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:1.8.0-1` - linux; 386

```console
$ docker pull hitch@sha256:86c703de5adbc5c98488ddb6476521c94b5cc17e200b39fce6aeef7fe256ccbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33240938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d304f36f5058cf50b3139a79cccd711b2935b8f605ee213f8b00197f9adefd`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:17:31 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:17:31 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:17:31 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:17:31 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:17:31 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:17:31 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:17:31 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:17:31 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:17:31 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:17:31 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:17:31 GMT
CMD []
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:972e1fcbc0922b6c6b2f92c1d7dc147126cccd2e904c26d5f088be321636cd79`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 4.0 MB (4019516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468e19ac9b3f05c94044d434306e5df39157f9bfb174665dc17ea51de4d6a68b`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:1.8.0-1` - unknown; unknown

```console
$ docker pull hitch@sha256:9ee252d5eb56416e566fe52136176c4a10b3770a55ad220a160d5bbbeff14d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2542148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b7c06a60531aa95182fc6032a6bcf3dd623ae0e311efd6002375bbcf2211bb`

```dockerfile
```

-	Layers:
	-	`sha256:fcdd7f6bd6ce1fe2409c434d526c2104b4efc3f80fda1557694833fdcea2c93b`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 2.5 MB (2528603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c70aa52c170c10cb753201926b02625251cb4d16193d853667d363e7202f463`  
		Last Modified: Wed, 05 Aug 2026 00:17:37 GMT  
		Size: 13.5 KB (13545 bytes)  
		MIME: application/vnd.in-toto+json

## `hitch:latest`

```console
$ docker pull hitch@sha256:2aa93fae5c1184d56318c56ad98776feaba95f8a7f33779e4d4236818bc0fd27
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
$ docker pull hitch@sha256:eca134fe0c0240ea9be6463eaf6763174d2f957097ac8d68ad963f92d58676a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32259120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22eec8e08113754d98531f04d7791e7c4ee3d8f3a987d5b96ffc02856a79a280`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:21:18 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:21:18 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:21:18 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:21:18 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:21:18 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:21:18 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:21:18 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:21:18 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:21:18 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:21:18 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:21:18 GMT
CMD []
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e4c795fb8cf6eef2d7f2d383df1ab8d076a66ab8c03eac288418bbc9155d28`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 4.0 MB (4026086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9752a8ac4678cb123706b754f1246c682e6b0a21faeeda127060031af40f5cc6`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:a8aeb41f34c97e449a419be1d6d0f8f17d82bd17e0ec130e3f5a543c831d237a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f86e3369afe721203416e9bab6b09406c3facba72c3a7f452bb9b7278a85dd3`

```dockerfile
```

-	Layers:
	-	`sha256:1f4b0cc7ae97229233e8a3741a9a4a4cd51faf5f713331c06296a0373c913dbd`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 2.5 MB (2531427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56eabe41b8fcd7544733c44c480644be6cc6f800078527288d812f52d5850744`  
		Last Modified: Wed, 05 Aug 2026 00:21:24 GMT  
		Size: 13.6 KB (13582 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:latest` - linux; arm variant v7

```console
$ docker pull hitch@sha256:335ab57a3cf5f438d0792d6733780b4607cee5f6832399ad415cb240a723adbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27327749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd7cc3b906e67254ce22213a4f8773719bc68200145047c0d03fea4c05125a0`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:20:17 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:20:17 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:20:17 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:20:17 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:20:17 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:20:17 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:20:17 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:20:18 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:20:18 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:20:18 GMT
CMD []
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0680f4c8f7d8db4fdae6d99967b062857dc429c757257b6def4248932767e218`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 3.4 MB (3387556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0942226a0dcc57bbfd6c4eb1ce0d37ef3f55e55a943133438f0dc8ef8331f4d6`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:2ae29beb11ee5fae1d5574c2fd9c6d05879b730effeef53d8dcd2a42af797419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2547327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b74fe6fe56621b4465c19a5d2144d876b0a259d194361db4e6f00a4bb647ce04`

```dockerfile
```

-	Layers:
	-	`sha256:b42838030f64dc66e9dd89436c61e41703636ff07e3da2d96a96c9c131805daa`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 2.5 MB (2533659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6043fb41eaf9f16bd9b42e3ef5d3cf9bdfebb82f2d7cb77d6ee6d4f1818a416`  
		Last Modified: Wed, 05 Aug 2026 00:20:24 GMT  
		Size: 13.7 KB (13668 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:latest` - linux; arm64 variant v8

```console
$ docker pull hitch@sha256:16c5dbbd12631cb74cc1ec13402e6346199c5714b961be3b22f5158b6a1218c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a1535d7a8335331a89f1253649b74667a03e372cb8a108851c1cb7e02a1999`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:21:23 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:21:23 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:21:23 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:21:23 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:21:23 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:21:23 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:21:23 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:21:23 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:21:23 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:21:23 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:21:23 GMT
CMD []
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2b27d16eb00399955e3609783a091af59dc46115f415b0e78f02e309da83c7`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 3.9 MB (3874168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3559bacfce67ef987836f31abfea03d628ad69a93ed2a16db249cf7529ac329`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:56d7c41cd6c6f5cd5414e07543513ead215de796753629c4cd28a801b78c1536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2545395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83fa295bfd4a0d13cff161a04a634914171e95846b55ed0f7fb8cc8e2d5d628`

```dockerfile
```

-	Layers:
	-	`sha256:3b37b6266fbca53ee1455ab0fa9e5fbf08b324ee5a69cc089d7c2601762858de`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 2.5 MB (2531697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f5dc56f690db98ab54be5db19d2f4e3e7b8c345393c8a556ac4ffa545bfd3fc`  
		Last Modified: Wed, 05 Aug 2026 00:21:30 GMT  
		Size: 13.7 KB (13698 bytes)  
		MIME: application/vnd.in-toto+json

### `hitch:latest` - linux; 386

```console
$ docker pull hitch@sha256:86c703de5adbc5c98488ddb6476521c94b5cc17e200b39fce6aeef7fe256ccbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33240938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d304f36f5058cf50b3139a79cccd711b2935b8f605ee213f8b00197f9adefd`
-	Entrypoint: `["docker-hitch-entrypoint"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:17:31 GMT
ARG SRCVER=1.8.0
# Wed, 05 Aug 2026 00:17:31 GMT
ARG PKGVER=1
# Wed, 05 Aug 2026 00:17:31 GMT
ARG DISTVER=bullseye
# Wed, 05 Aug 2026 00:17:31 GMT
ARG PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794
# Wed, 05 Aug 2026 00:17:31 GMT
ARG SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
# Wed, 05 Aug 2026 00:17:31 GMT
# ARGS: SRCVER=1.8.0 PKGVER=1 DISTVER=bullseye PKGCOMMIT=f12ab7958bc4885f3f00311cbca5103d9e6ba794 SHASUM=62b3554d668c9d17382415db10898bf661ee76343e4ee364f904457efda6cb1eeee7cb81d7a3897734024812b64b1c0e2dc305605706d81a0c1f6030508bf7e2
RUN set -ex;     BASE_PKGS="apt-utils curl dirmngr dpkg-dev debhelper devscripts equivs fakeroot git gnupg pkg-config";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;     tmpdir="$(mktemp -d)";     cd "$tmpdir";     apt-get update;     apt-get install -y --no-install-recommends $BASE_PKGS;     git clone https://github.com/varnish/pkg-hitch.git;     cd pkg-hitch;     git checkout ${PKGCOMMIT};     rm -rf .git;     curl -Lf https://hitch-tls.org/source/hitch-${SRCVER}.tar.gz -o $tmpdir/orig.tgz;     echo "${SHASUM}  $tmpdir/orig.tgz" | sha512sum -c -;     tar xavf $tmpdir/orig.tgz --strip 1;     sed -i         -e "s/@SRCVER@/${SRCVER}/g"         -e "s/@PKGVER@/${PKGVER:-1}/g"         -e "s/@DISTVER@/$DISTVER/g" debian/changelog;     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --yes" debian/control;     sed -i '' debian/hitch*;     dpkg-buildpackage -us -uc -j"$(nproc)";     apt-get -y purge --auto-remove hitch-build-deps $BASE_PKGS;     apt-get -y --no-install-recommends install ../*.deb;     sed -i 's/daemon = on/daemon = off/' /etc/hitch/hitch.conf;     rm -rf /var/lib/apt/lists/* "$tmpdir" # buildkit
# Wed, 05 Aug 2026 00:17:31 GMT
WORKDIR /etc/hitch
# Wed, 05 Aug 2026 00:17:31 GMT
COPY docker-hitch-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:17:31 GMT
ENTRYPOINT ["docker-hitch-entrypoint"]
# Wed, 05 Aug 2026 00:17:31 GMT
EXPOSE map[443/tcp:{}]
# Wed, 05 Aug 2026 00:17:31 GMT
CMD []
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:972e1fcbc0922b6c6b2f92c1d7dc147126cccd2e904c26d5f088be321636cd79`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 4.0 MB (4019516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468e19ac9b3f05c94044d434306e5df39157f9bfb174665dc17ea51de4d6a68b`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hitch:latest` - unknown; unknown

```console
$ docker pull hitch@sha256:9ee252d5eb56416e566fe52136176c4a10b3770a55ad220a160d5bbbeff14d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2542148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b7c06a60531aa95182fc6032a6bcf3dd623ae0e311efd6002375bbcf2211bb`

```dockerfile
```

-	Layers:
	-	`sha256:fcdd7f6bd6ce1fe2409c434d526c2104b4efc3f80fda1557694833fdcea2c93b`  
		Last Modified: Wed, 05 Aug 2026 00:17:38 GMT  
		Size: 2.5 MB (2528603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c70aa52c170c10cb753201926b02625251cb4d16193d853667d363e7202f463`  
		Last Modified: Wed, 05 Aug 2026 00:17:37 GMT  
		Size: 13.5 KB (13545 bytes)  
		MIME: application/vnd.in-toto+json
