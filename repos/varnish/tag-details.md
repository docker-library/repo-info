<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `varnish`

-	[`varnish:6`](#varnish6)
-	[`varnish:6.0`](#varnish60)
-	[`varnish:6.0.18`](#varnish6018)
-	[`varnish:6.0.18-1`](#varnish6018-1)
-	[`varnish:8`](#varnish8)
-	[`varnish:8-alpine`](#varnish8-alpine)
-	[`varnish:8.0`](#varnish80)
-	[`varnish:8.0-alpine`](#varnish80-alpine)
-	[`varnish:8.0.2`](#varnish802)
-	[`varnish:8.0.2-1`](#varnish802-1)
-	[`varnish:8.0.2-alpine`](#varnish802-alpine)
-	[`varnish:9`](#varnish9)
-	[`varnish:9.0`](#varnish90)
-	[`varnish:9.0.3`](#varnish903)
-	[`varnish:9.0.3-5`](#varnish903-5)
-	[`varnish:fresh`](#varnishfresh)
-	[`varnish:latest`](#varnishlatest)
-	[`varnish:old`](#varnishold)
-	[`varnish:old-alpine`](#varnishold-alpine)
-	[`varnish:stable`](#varnishstable)

## `varnish:6`

```console
$ docker pull varnish@sha256:89d3255fadd980d5c7051f8139cacb80f4f633bc2b4a42707a42b89ddbad73a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6` - linux; amd64

```console
$ docker pull varnish@sha256:65355fcc308df94c8a287dd1b038e995e379c0010c510f9c899f58e169d572a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121950075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0827efb64be1a6d6ac1d82138064679d08bcd46e3268dde5c625badbf6678665`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:45:53 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:45:53 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 25 Aug 2026 00:45:53 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:45:53 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:45:53 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:45:53 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:45:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:45:53 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:45:53 GMT
CMD []
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f00697cc1f7b353b53234ee9fb4c98711ab49a40436cf8d203868def1a04ade`  
		Last Modified: Tue, 25 Aug 2026 00:46:07 GMT  
		Size: 93.7 MB (93716665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600f164f078b85bc5252b96e60cea32665d5af0e0cddd7d3cc6a44710141a779`  
		Last Modified: Tue, 25 Aug 2026 00:46:04 GMT  
		Size: 723.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6` - unknown; unknown

```console
$ docker pull varnish@sha256:1b4f5185e65decbb5ecbea0005f679ca9bde8caafadba04deccef5709bae0ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f0f2101e9fd699f88d5db503e418a520339f3f0bbf7de5d8a286bf1ebd55cd`

```dockerfile
```

-	Layers:
	-	`sha256:4bb293463276abe2ca105d1faa938ece3cc400f5a86bd7c4d5cd7a3dd3019fa0`  
		Last Modified: Tue, 25 Aug 2026 00:46:05 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:cd1c3f94838ae2403b0a7d0d8cac8f487da109d6c41b37cc2518281ada02cc47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116396246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d33b57fdff0121690f7c3495aa01d10d20d41c7982df9fe1885875ac1043955`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:48:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:48:09 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 25 Aug 2026 00:48:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:48:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:48:09 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:48:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:48:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:48:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:48:09 GMT
CMD []
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cde4b8420ac9825d0c7195cb2fcdfb718d62d08c33785b3f1ca3f434d2efef48`  
		Last Modified: Tue, 25 Aug 2026 00:48:22 GMT  
		Size: 88.3 MB (88278204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:148f95e17919d69d4355b54da08e9e9e04fe6989697367f3402e7c8180645fb6`  
		Last Modified: Tue, 25 Aug 2026 00:48:19 GMT  
		Size: 721.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6` - unknown; unknown

```console
$ docker pull varnish@sha256:22063bfee7ec6c9ee3685b61648f330df41dfb0e3cdaf764de013d89be35a743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8de856cc7007b3162420c2fa1755799c25590c4a835378685b7e3d2ab7b076`

```dockerfile
```

-	Layers:
	-	`sha256:3f2b6b727ff90250924cef4af4d1008cf9ffc2a85e186fa5cdd081b70a33c7ad`  
		Last Modified: Tue, 25 Aug 2026 00:48:20 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0`

```console
$ docker pull varnish@sha256:89d3255fadd980d5c7051f8139cacb80f4f633bc2b4a42707a42b89ddbad73a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0` - linux; amd64

```console
$ docker pull varnish@sha256:65355fcc308df94c8a287dd1b038e995e379c0010c510f9c899f58e169d572a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121950075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0827efb64be1a6d6ac1d82138064679d08bcd46e3268dde5c625badbf6678665`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:45:53 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:45:53 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 25 Aug 2026 00:45:53 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:45:53 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:45:53 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:45:53 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:45:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:45:53 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:45:53 GMT
CMD []
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f00697cc1f7b353b53234ee9fb4c98711ab49a40436cf8d203868def1a04ade`  
		Last Modified: Tue, 25 Aug 2026 00:46:07 GMT  
		Size: 93.7 MB (93716665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600f164f078b85bc5252b96e60cea32665d5af0e0cddd7d3cc6a44710141a779`  
		Last Modified: Tue, 25 Aug 2026 00:46:04 GMT  
		Size: 723.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0` - unknown; unknown

```console
$ docker pull varnish@sha256:1b4f5185e65decbb5ecbea0005f679ca9bde8caafadba04deccef5709bae0ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f0f2101e9fd699f88d5db503e418a520339f3f0bbf7de5d8a286bf1ebd55cd`

```dockerfile
```

-	Layers:
	-	`sha256:4bb293463276abe2ca105d1faa938ece3cc400f5a86bd7c4d5cd7a3dd3019fa0`  
		Last Modified: Tue, 25 Aug 2026 00:46:05 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:cd1c3f94838ae2403b0a7d0d8cac8f487da109d6c41b37cc2518281ada02cc47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116396246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d33b57fdff0121690f7c3495aa01d10d20d41c7982df9fe1885875ac1043955`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:48:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:48:09 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 25 Aug 2026 00:48:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:48:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:48:09 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:48:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:48:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:48:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:48:09 GMT
CMD []
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cde4b8420ac9825d0c7195cb2fcdfb718d62d08c33785b3f1ca3f434d2efef48`  
		Last Modified: Tue, 25 Aug 2026 00:48:22 GMT  
		Size: 88.3 MB (88278204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:148f95e17919d69d4355b54da08e9e9e04fe6989697367f3402e7c8180645fb6`  
		Last Modified: Tue, 25 Aug 2026 00:48:19 GMT  
		Size: 721.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0` - unknown; unknown

```console
$ docker pull varnish@sha256:22063bfee7ec6c9ee3685b61648f330df41dfb0e3cdaf764de013d89be35a743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8de856cc7007b3162420c2fa1755799c25590c4a835378685b7e3d2ab7b076`

```dockerfile
```

-	Layers:
	-	`sha256:3f2b6b727ff90250924cef4af4d1008cf9ffc2a85e186fa5cdd081b70a33c7ad`  
		Last Modified: Tue, 25 Aug 2026 00:48:20 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0.18`

```console
$ docker pull varnish@sha256:89d3255fadd980d5c7051f8139cacb80f4f633bc2b4a42707a42b89ddbad73a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0.18` - linux; amd64

```console
$ docker pull varnish@sha256:65355fcc308df94c8a287dd1b038e995e379c0010c510f9c899f58e169d572a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121950075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0827efb64be1a6d6ac1d82138064679d08bcd46e3268dde5c625badbf6678665`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:45:53 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:45:53 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 25 Aug 2026 00:45:53 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:45:53 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:45:53 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:45:53 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:45:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:45:53 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:45:53 GMT
CMD []
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f00697cc1f7b353b53234ee9fb4c98711ab49a40436cf8d203868def1a04ade`  
		Last Modified: Tue, 25 Aug 2026 00:46:07 GMT  
		Size: 93.7 MB (93716665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600f164f078b85bc5252b96e60cea32665d5af0e0cddd7d3cc6a44710141a779`  
		Last Modified: Tue, 25 Aug 2026 00:46:04 GMT  
		Size: 723.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18` - unknown; unknown

```console
$ docker pull varnish@sha256:1b4f5185e65decbb5ecbea0005f679ca9bde8caafadba04deccef5709bae0ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f0f2101e9fd699f88d5db503e418a520339f3f0bbf7de5d8a286bf1ebd55cd`

```dockerfile
```

-	Layers:
	-	`sha256:4bb293463276abe2ca105d1faa938ece3cc400f5a86bd7c4d5cd7a3dd3019fa0`  
		Last Modified: Tue, 25 Aug 2026 00:46:05 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0.18` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:cd1c3f94838ae2403b0a7d0d8cac8f487da109d6c41b37cc2518281ada02cc47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116396246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d33b57fdff0121690f7c3495aa01d10d20d41c7982df9fe1885875ac1043955`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:48:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:48:09 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 25 Aug 2026 00:48:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:48:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:48:09 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:48:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:48:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:48:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:48:09 GMT
CMD []
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cde4b8420ac9825d0c7195cb2fcdfb718d62d08c33785b3f1ca3f434d2efef48`  
		Last Modified: Tue, 25 Aug 2026 00:48:22 GMT  
		Size: 88.3 MB (88278204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:148f95e17919d69d4355b54da08e9e9e04fe6989697367f3402e7c8180645fb6`  
		Last Modified: Tue, 25 Aug 2026 00:48:19 GMT  
		Size: 721.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18` - unknown; unknown

```console
$ docker pull varnish@sha256:22063bfee7ec6c9ee3685b61648f330df41dfb0e3cdaf764de013d89be35a743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8de856cc7007b3162420c2fa1755799c25590c4a835378685b7e3d2ab7b076`

```dockerfile
```

-	Layers:
	-	`sha256:3f2b6b727ff90250924cef4af4d1008cf9ffc2a85e186fa5cdd081b70a33c7ad`  
		Last Modified: Tue, 25 Aug 2026 00:48:20 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0.18-1`

```console
$ docker pull varnish@sha256:89d3255fadd980d5c7051f8139cacb80f4f633bc2b4a42707a42b89ddbad73a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0.18-1` - linux; amd64

```console
$ docker pull varnish@sha256:65355fcc308df94c8a287dd1b038e995e379c0010c510f9c899f58e169d572a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121950075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0827efb64be1a6d6ac1d82138064679d08bcd46e3268dde5c625badbf6678665`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:45:53 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:45:53 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 25 Aug 2026 00:45:53 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:45:53 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:45:53 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:45:53 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:45:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:45:53 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:45:53 GMT
CMD []
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f00697cc1f7b353b53234ee9fb4c98711ab49a40436cf8d203868def1a04ade`  
		Last Modified: Tue, 25 Aug 2026 00:46:07 GMT  
		Size: 93.7 MB (93716665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600f164f078b85bc5252b96e60cea32665d5af0e0cddd7d3cc6a44710141a779`  
		Last Modified: Tue, 25 Aug 2026 00:46:04 GMT  
		Size: 723.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18-1` - unknown; unknown

```console
$ docker pull varnish@sha256:1b4f5185e65decbb5ecbea0005f679ca9bde8caafadba04deccef5709bae0ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f0f2101e9fd699f88d5db503e418a520339f3f0bbf7de5d8a286bf1ebd55cd`

```dockerfile
```

-	Layers:
	-	`sha256:4bb293463276abe2ca105d1faa938ece3cc400f5a86bd7c4d5cd7a3dd3019fa0`  
		Last Modified: Tue, 25 Aug 2026 00:46:05 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0.18-1` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:cd1c3f94838ae2403b0a7d0d8cac8f487da109d6c41b37cc2518281ada02cc47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116396246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d33b57fdff0121690f7c3495aa01d10d20d41c7982df9fe1885875ac1043955`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:48:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:48:09 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 25 Aug 2026 00:48:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:48:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:48:09 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:48:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:48:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:48:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:48:09 GMT
CMD []
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cde4b8420ac9825d0c7195cb2fcdfb718d62d08c33785b3f1ca3f434d2efef48`  
		Last Modified: Tue, 25 Aug 2026 00:48:22 GMT  
		Size: 88.3 MB (88278204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:148f95e17919d69d4355b54da08e9e9e04fe6989697367f3402e7c8180645fb6`  
		Last Modified: Tue, 25 Aug 2026 00:48:19 GMT  
		Size: 721.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18-1` - unknown; unknown

```console
$ docker pull varnish@sha256:22063bfee7ec6c9ee3685b61648f330df41dfb0e3cdaf764de013d89be35a743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8de856cc7007b3162420c2fa1755799c25590c4a835378685b7e3d2ab7b076`

```dockerfile
```

-	Layers:
	-	`sha256:3f2b6b727ff90250924cef4af4d1008cf9ffc2a85e186fa5cdd081b70a33c7ad`  
		Last Modified: Tue, 25 Aug 2026 00:48:20 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8`

```console
$ docker pull varnish@sha256:ba8f3a402e97aa061c5aae3e1b80b96108fce75c5545026137d14cdd67667d77
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8` - linux; amd64

```console
$ docker pull varnish@sha256:a5bce22c57e62c0ebd4bc86aed3c4f9d5e94a449bc21168d826839a25e6d77bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120274675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61239bd46f3c06da83464eea8b652cdf640c161b59b2cce69011ec860c2fad4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:45:32 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:45:32 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 25 Aug 2026 00:45:32 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 25 Aug 2026 00:45:32 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 25 Aug 2026 00:45:32 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 00:45:32 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 00:45:32 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:45:32 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 00:45:32 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:45:32 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:45:32 GMT
USER varnish
# Tue, 25 Aug 2026 00:45:32 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:45:32 GMT
CMD []
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b0f011d2e3dfc34939fbc8ea0a7e77671fb4b243b38c17197a8d35d3da0dfa`  
		Last Modified: Tue, 25 Aug 2026 00:45:46 GMT  
		Size: 90.5 MB (90478897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a30c68ad0c1341dcce36733e0ccbf04edb590d948d624e477b53118d776dae64`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2761e781f769a3e78bb837a0a77fbc65f661e51aac08b808ea3066366dbe6c86`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f14234c72de452c8df90a56c167a8509be41cb308815f1983a6c00de14856dc`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8` - unknown; unknown

```console
$ docker pull varnish@sha256:b17eb4b68922b65005817f6af075d17000f32cafe7373a38c97384b6635ba453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab8b3e217f061e9290898c6536b6d6b98fd422a1fabbc25ebec6bb97c37e14d`

```dockerfile
```

-	Layers:
	-	`sha256:8347257a34dc8bcfc607a66c57358f83f5630f191600679bc969e3586dabb418`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 21.0 KB (20996 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:13b1b3fd4899cfcc50f550045583bdc27d8b09d5855f9e38dbf3c072866113e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114274980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae8822490d06ec597e69dd4fe9708d14ee2d74fb19acef034ec52bae01d2590`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:47:51 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:47:51 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 25 Aug 2026 00:47:51 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 25 Aug 2026 00:47:51 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 25 Aug 2026 00:47:51 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 00:47:51 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 00:47:51 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:47:51 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 00:47:51 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:47:51 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:47:51 GMT
USER varnish
# Tue, 25 Aug 2026 00:47:51 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:47:51 GMT
CMD []
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e0711d03861e469fae233d9f7a54970c999f408a7e3bbb9a4f556eca7bb711`  
		Last Modified: Tue, 25 Aug 2026 00:48:05 GMT  
		Size: 84.1 MB (84112287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da715b03936542924f1cfcd8811714b3d5238c686489ebc7fc44e6511abc348`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:960fc4e6ffa7d58615123be0c9e53f3c15de32c2ee96bf994ef59334e2f18db9`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88f38f5907b80e4b82b1c6b0f5004f5ac404beba339417f583e3d70c1a5a3a0`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8` - unknown; unknown

```console
$ docker pull varnish@sha256:4289ebba12c2e9ebd0fb4d8b6491314d945c37290ef4ed9e947b142b74908317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 KB (21113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407485b32a61b613869a51c2ac8346d9d5949ea186f7da973909a09bb260a44e`

```dockerfile
```

-	Layers:
	-	`sha256:c11fff66fe741f01267151278e40b6c506ff25dfe2a46cbccb30ac22ac0f783a`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 21.1 KB (21113 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8-alpine`

```console
$ docker pull varnish@sha256:d9182e9b64bbd217c48c4767b112ba41681b48fcea3c6713eccfa536d9b8e503
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8-alpine` - linux; amd64

```console
$ docker pull varnish@sha256:078984a5078cc835a0f79a88b7931d63069815ea236a8852696a2af9fa1c20cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.0 MB (93034895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7237598e05a1aea1866e8f2d241d20a806d667a3a7556236e35b7368265bdd`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 14 Jul 2026 18:12:38 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Tue, 14 Jul 2026 18:12:38 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:12:38 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:12:38 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Tue, 14 Jul 2026 18:12:38 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:12:38 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:12:38 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:12:38 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:12:38 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:12:38 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:38 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:38 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:12:38 GMT
USER varnish
# Tue, 14 Jul 2026 18:12:38 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:12:38 GMT
CMD []
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:881d8c4ed99b6e29c8ac0071f9d1a8abf261f0ead6adbc1d636745d20e7eba4e`  
		Last Modified: Tue, 14 Jul 2026 18:12:52 GMT  
		Size: 89.2 MB (89187340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99162f8ba4345448baed6b98ece5116e284e061c98c9478d50e451237e33a81e`  
		Last Modified: Tue, 14 Jul 2026 18:12:50 GMT  
		Size: 503.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b69a9c41f45256f5b48ec95ac13fdfee3432c6bf5738458889987806789dbf0`  
		Last Modified: Tue, 14 Jul 2026 18:12:50 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2960bc606e38e807c90fb3d49638fca637db2ba95ecc9e1d334e12b802def54`  
		Last Modified: Tue, 14 Jul 2026 18:12:50 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:5f40b4e0e31a5ba634ca248ae3eb8feda7e7ef17d9bb827aad93c13be913c756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f77ffdb94a0cbcd9dc3041e705a5ea264756489f7cedac136c51057963589e`

```dockerfile
```

-	Layers:
	-	`sha256:d93050f8d7bb92a487b7f2b2d090bee95dc896bc2b099dcccdd27364cf7d72f4`  
		Last Modified: Tue, 14 Jul 2026 18:12:50 GMT  
		Size: 20.6 KB (20626 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8-alpine` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:5606a072527e20d634119baa94dc79dee802984fc7e0d8e10aa471b61c29e5d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84788812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:567c5f7a92fb1117d99dd6be0cd24c6659f1a4e4c9801dea287d60084efb770b`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 14 Jul 2026 18:01:38 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Tue, 14 Jul 2026 18:01:38 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:01:38 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:01:38 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Tue, 14 Jul 2026 18:01:38 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:01:38 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:01:38 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:01:38 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:01:38 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:01:38 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:01:38 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:01:38 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:01:38 GMT
USER varnish
# Tue, 14 Jul 2026 18:01:38 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:01:38 GMT
CMD []
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695bf53644b3c7c8acfee811fa97abe111d40ac8d5766a7615205430f7b8d8f4`  
		Last Modified: Tue, 14 Jul 2026 18:01:50 GMT  
		Size: 80.6 MB (80603814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b6e521f527504dd4cd535c1df4c9779a088b84c77cd594e75e71cec2100638`  
		Last Modified: Tue, 14 Jul 2026 18:01:48 GMT  
		Size: 502.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58810e7ded4eb70bf6f9831c18b9a9648756959cc921c0393c26963e15c4a6e`  
		Last Modified: Tue, 14 Jul 2026 18:01:48 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80fc1aa3dc64938439bb43ed26e2faf7c5c611fb0f173ce1627010fd499f0d2b`  
		Last Modified: Tue, 14 Jul 2026 18:01:49 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:67a47dccf019a3c53de09071c98c93cee8597097435dc967bd894a7c33c1e3d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f1c191678fc0cafbb63516b348df62a53b053069c2928acbd6198f516bd46e`

```dockerfile
```

-	Layers:
	-	`sha256:ef5564d31b8504ed05058137d886aff48bf67983fad9843d6e09f37b74846ada`  
		Last Modified: Tue, 14 Jul 2026 18:01:48 GMT  
		Size: 20.7 KB (20730 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8.0`

```console
$ docker pull varnish@sha256:ba8f3a402e97aa061c5aae3e1b80b96108fce75c5545026137d14cdd67667d77
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0` - linux; amd64

```console
$ docker pull varnish@sha256:a5bce22c57e62c0ebd4bc86aed3c4f9d5e94a449bc21168d826839a25e6d77bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120274675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61239bd46f3c06da83464eea8b652cdf640c161b59b2cce69011ec860c2fad4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:45:32 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:45:32 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 25 Aug 2026 00:45:32 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 25 Aug 2026 00:45:32 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 25 Aug 2026 00:45:32 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 00:45:32 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 00:45:32 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:45:32 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 00:45:32 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:45:32 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:45:32 GMT
USER varnish
# Tue, 25 Aug 2026 00:45:32 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:45:32 GMT
CMD []
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b0f011d2e3dfc34939fbc8ea0a7e77671fb4b243b38c17197a8d35d3da0dfa`  
		Last Modified: Tue, 25 Aug 2026 00:45:46 GMT  
		Size: 90.5 MB (90478897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a30c68ad0c1341dcce36733e0ccbf04edb590d948d624e477b53118d776dae64`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2761e781f769a3e78bb837a0a77fbc65f661e51aac08b808ea3066366dbe6c86`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f14234c72de452c8df90a56c167a8509be41cb308815f1983a6c00de14856dc`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0` - unknown; unknown

```console
$ docker pull varnish@sha256:b17eb4b68922b65005817f6af075d17000f32cafe7373a38c97384b6635ba453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab8b3e217f061e9290898c6536b6d6b98fd422a1fabbc25ebec6bb97c37e14d`

```dockerfile
```

-	Layers:
	-	`sha256:8347257a34dc8bcfc607a66c57358f83f5630f191600679bc969e3586dabb418`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 21.0 KB (20996 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:13b1b3fd4899cfcc50f550045583bdc27d8b09d5855f9e38dbf3c072866113e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114274980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae8822490d06ec597e69dd4fe9708d14ee2d74fb19acef034ec52bae01d2590`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:47:51 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:47:51 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 25 Aug 2026 00:47:51 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 25 Aug 2026 00:47:51 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 25 Aug 2026 00:47:51 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 00:47:51 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 00:47:51 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:47:51 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 00:47:51 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:47:51 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:47:51 GMT
USER varnish
# Tue, 25 Aug 2026 00:47:51 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:47:51 GMT
CMD []
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e0711d03861e469fae233d9f7a54970c999f408a7e3bbb9a4f556eca7bb711`  
		Last Modified: Tue, 25 Aug 2026 00:48:05 GMT  
		Size: 84.1 MB (84112287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da715b03936542924f1cfcd8811714b3d5238c686489ebc7fc44e6511abc348`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:960fc4e6ffa7d58615123be0c9e53f3c15de32c2ee96bf994ef59334e2f18db9`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88f38f5907b80e4b82b1c6b0f5004f5ac404beba339417f583e3d70c1a5a3a0`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0` - unknown; unknown

```console
$ docker pull varnish@sha256:4289ebba12c2e9ebd0fb4d8b6491314d945c37290ef4ed9e947b142b74908317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 KB (21113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407485b32a61b613869a51c2ac8346d9d5949ea186f7da973909a09bb260a44e`

```dockerfile
```

-	Layers:
	-	`sha256:c11fff66fe741f01267151278e40b6c506ff25dfe2a46cbccb30ac22ac0f783a`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 21.1 KB (21113 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8.0-alpine`

```console
$ docker pull varnish@sha256:d9182e9b64bbd217c48c4767b112ba41681b48fcea3c6713eccfa536d9b8e503
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0-alpine` - linux; amd64

```console
$ docker pull varnish@sha256:078984a5078cc835a0f79a88b7931d63069815ea236a8852696a2af9fa1c20cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.0 MB (93034895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7237598e05a1aea1866e8f2d241d20a806d667a3a7556236e35b7368265bdd`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 14 Jul 2026 18:12:38 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Tue, 14 Jul 2026 18:12:38 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:12:38 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:12:38 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Tue, 14 Jul 2026 18:12:38 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:12:38 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:12:38 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:12:38 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:12:38 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:12:38 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:38 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:38 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:12:38 GMT
USER varnish
# Tue, 14 Jul 2026 18:12:38 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:12:38 GMT
CMD []
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:881d8c4ed99b6e29c8ac0071f9d1a8abf261f0ead6adbc1d636745d20e7eba4e`  
		Last Modified: Tue, 14 Jul 2026 18:12:52 GMT  
		Size: 89.2 MB (89187340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99162f8ba4345448baed6b98ece5116e284e061c98c9478d50e451237e33a81e`  
		Last Modified: Tue, 14 Jul 2026 18:12:50 GMT  
		Size: 503.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b69a9c41f45256f5b48ec95ac13fdfee3432c6bf5738458889987806789dbf0`  
		Last Modified: Tue, 14 Jul 2026 18:12:50 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2960bc606e38e807c90fb3d49638fca637db2ba95ecc9e1d334e12b802def54`  
		Last Modified: Tue, 14 Jul 2026 18:12:50 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:5f40b4e0e31a5ba634ca248ae3eb8feda7e7ef17d9bb827aad93c13be913c756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f77ffdb94a0cbcd9dc3041e705a5ea264756489f7cedac136c51057963589e`

```dockerfile
```

-	Layers:
	-	`sha256:d93050f8d7bb92a487b7f2b2d090bee95dc896bc2b099dcccdd27364cf7d72f4`  
		Last Modified: Tue, 14 Jul 2026 18:12:50 GMT  
		Size: 20.6 KB (20626 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0-alpine` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:5606a072527e20d634119baa94dc79dee802984fc7e0d8e10aa471b61c29e5d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84788812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:567c5f7a92fb1117d99dd6be0cd24c6659f1a4e4c9801dea287d60084efb770b`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 14 Jul 2026 18:01:38 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Tue, 14 Jul 2026 18:01:38 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:01:38 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:01:38 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Tue, 14 Jul 2026 18:01:38 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:01:38 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:01:38 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:01:38 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:01:38 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:01:38 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:01:38 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:01:38 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:01:38 GMT
USER varnish
# Tue, 14 Jul 2026 18:01:38 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:01:38 GMT
CMD []
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695bf53644b3c7c8acfee811fa97abe111d40ac8d5766a7615205430f7b8d8f4`  
		Last Modified: Tue, 14 Jul 2026 18:01:50 GMT  
		Size: 80.6 MB (80603814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b6e521f527504dd4cd535c1df4c9779a088b84c77cd594e75e71cec2100638`  
		Last Modified: Tue, 14 Jul 2026 18:01:48 GMT  
		Size: 502.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58810e7ded4eb70bf6f9831c18b9a9648756959cc921c0393c26963e15c4a6e`  
		Last Modified: Tue, 14 Jul 2026 18:01:48 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80fc1aa3dc64938439bb43ed26e2faf7c5c611fb0f173ce1627010fd499f0d2b`  
		Last Modified: Tue, 14 Jul 2026 18:01:49 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:67a47dccf019a3c53de09071c98c93cee8597097435dc967bd894a7c33c1e3d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f1c191678fc0cafbb63516b348df62a53b053069c2928acbd6198f516bd46e`

```dockerfile
```

-	Layers:
	-	`sha256:ef5564d31b8504ed05058137d886aff48bf67983fad9843d6e09f37b74846ada`  
		Last Modified: Tue, 14 Jul 2026 18:01:48 GMT  
		Size: 20.7 KB (20730 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8.0.2`

```console
$ docker pull varnish@sha256:ba8f3a402e97aa061c5aae3e1b80b96108fce75c5545026137d14cdd67667d77
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0.2` - linux; amd64

```console
$ docker pull varnish@sha256:a5bce22c57e62c0ebd4bc86aed3c4f9d5e94a449bc21168d826839a25e6d77bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120274675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61239bd46f3c06da83464eea8b652cdf640c161b59b2cce69011ec860c2fad4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:45:32 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:45:32 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 25 Aug 2026 00:45:32 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 25 Aug 2026 00:45:32 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 25 Aug 2026 00:45:32 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 00:45:32 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 00:45:32 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:45:32 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 00:45:32 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:45:32 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:45:32 GMT
USER varnish
# Tue, 25 Aug 2026 00:45:32 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:45:32 GMT
CMD []
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b0f011d2e3dfc34939fbc8ea0a7e77671fb4b243b38c17197a8d35d3da0dfa`  
		Last Modified: Tue, 25 Aug 2026 00:45:46 GMT  
		Size: 90.5 MB (90478897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a30c68ad0c1341dcce36733e0ccbf04edb590d948d624e477b53118d776dae64`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2761e781f769a3e78bb837a0a77fbc65f661e51aac08b808ea3066366dbe6c86`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f14234c72de452c8df90a56c167a8509be41cb308815f1983a6c00de14856dc`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2` - unknown; unknown

```console
$ docker pull varnish@sha256:b17eb4b68922b65005817f6af075d17000f32cafe7373a38c97384b6635ba453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab8b3e217f061e9290898c6536b6d6b98fd422a1fabbc25ebec6bb97c37e14d`

```dockerfile
```

-	Layers:
	-	`sha256:8347257a34dc8bcfc607a66c57358f83f5630f191600679bc969e3586dabb418`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 21.0 KB (20996 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0.2` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:13b1b3fd4899cfcc50f550045583bdc27d8b09d5855f9e38dbf3c072866113e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114274980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae8822490d06ec597e69dd4fe9708d14ee2d74fb19acef034ec52bae01d2590`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:47:51 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:47:51 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 25 Aug 2026 00:47:51 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 25 Aug 2026 00:47:51 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 25 Aug 2026 00:47:51 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 00:47:51 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 00:47:51 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:47:51 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 00:47:51 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:47:51 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:47:51 GMT
USER varnish
# Tue, 25 Aug 2026 00:47:51 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:47:51 GMT
CMD []
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e0711d03861e469fae233d9f7a54970c999f408a7e3bbb9a4f556eca7bb711`  
		Last Modified: Tue, 25 Aug 2026 00:48:05 GMT  
		Size: 84.1 MB (84112287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da715b03936542924f1cfcd8811714b3d5238c686489ebc7fc44e6511abc348`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:960fc4e6ffa7d58615123be0c9e53f3c15de32c2ee96bf994ef59334e2f18db9`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88f38f5907b80e4b82b1c6b0f5004f5ac404beba339417f583e3d70c1a5a3a0`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2` - unknown; unknown

```console
$ docker pull varnish@sha256:4289ebba12c2e9ebd0fb4d8b6491314d945c37290ef4ed9e947b142b74908317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 KB (21113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407485b32a61b613869a51c2ac8346d9d5949ea186f7da973909a09bb260a44e`

```dockerfile
```

-	Layers:
	-	`sha256:c11fff66fe741f01267151278e40b6c506ff25dfe2a46cbccb30ac22ac0f783a`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 21.1 KB (21113 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8.0.2-1`

```console
$ docker pull varnish@sha256:ba8f3a402e97aa061c5aae3e1b80b96108fce75c5545026137d14cdd67667d77
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0.2-1` - linux; amd64

```console
$ docker pull varnish@sha256:a5bce22c57e62c0ebd4bc86aed3c4f9d5e94a449bc21168d826839a25e6d77bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120274675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61239bd46f3c06da83464eea8b652cdf640c161b59b2cce69011ec860c2fad4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:45:32 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:45:32 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 25 Aug 2026 00:45:32 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 25 Aug 2026 00:45:32 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 25 Aug 2026 00:45:32 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 00:45:32 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 00:45:32 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:45:32 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 00:45:32 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:45:32 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:45:32 GMT
USER varnish
# Tue, 25 Aug 2026 00:45:32 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:45:32 GMT
CMD []
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b0f011d2e3dfc34939fbc8ea0a7e77671fb4b243b38c17197a8d35d3da0dfa`  
		Last Modified: Tue, 25 Aug 2026 00:45:46 GMT  
		Size: 90.5 MB (90478897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a30c68ad0c1341dcce36733e0ccbf04edb590d948d624e477b53118d776dae64`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2761e781f769a3e78bb837a0a77fbc65f661e51aac08b808ea3066366dbe6c86`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f14234c72de452c8df90a56c167a8509be41cb308815f1983a6c00de14856dc`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2-1` - unknown; unknown

```console
$ docker pull varnish@sha256:b17eb4b68922b65005817f6af075d17000f32cafe7373a38c97384b6635ba453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab8b3e217f061e9290898c6536b6d6b98fd422a1fabbc25ebec6bb97c37e14d`

```dockerfile
```

-	Layers:
	-	`sha256:8347257a34dc8bcfc607a66c57358f83f5630f191600679bc969e3586dabb418`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 21.0 KB (20996 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0.2-1` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:13b1b3fd4899cfcc50f550045583bdc27d8b09d5855f9e38dbf3c072866113e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114274980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae8822490d06ec597e69dd4fe9708d14ee2d74fb19acef034ec52bae01d2590`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:47:51 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:47:51 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 25 Aug 2026 00:47:51 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 25 Aug 2026 00:47:51 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 25 Aug 2026 00:47:51 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 00:47:51 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 00:47:51 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:47:51 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 00:47:51 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:47:51 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:47:51 GMT
USER varnish
# Tue, 25 Aug 2026 00:47:51 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:47:51 GMT
CMD []
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e0711d03861e469fae233d9f7a54970c999f408a7e3bbb9a4f556eca7bb711`  
		Last Modified: Tue, 25 Aug 2026 00:48:05 GMT  
		Size: 84.1 MB (84112287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da715b03936542924f1cfcd8811714b3d5238c686489ebc7fc44e6511abc348`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:960fc4e6ffa7d58615123be0c9e53f3c15de32c2ee96bf994ef59334e2f18db9`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88f38f5907b80e4b82b1c6b0f5004f5ac404beba339417f583e3d70c1a5a3a0`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2-1` - unknown; unknown

```console
$ docker pull varnish@sha256:4289ebba12c2e9ebd0fb4d8b6491314d945c37290ef4ed9e947b142b74908317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 KB (21113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407485b32a61b613869a51c2ac8346d9d5949ea186f7da973909a09bb260a44e`

```dockerfile
```

-	Layers:
	-	`sha256:c11fff66fe741f01267151278e40b6c506ff25dfe2a46cbccb30ac22ac0f783a`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 21.1 KB (21113 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8.0.2-alpine`

```console
$ docker pull varnish@sha256:d9182e9b64bbd217c48c4767b112ba41681b48fcea3c6713eccfa536d9b8e503
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0.2-alpine` - linux; amd64

```console
$ docker pull varnish@sha256:078984a5078cc835a0f79a88b7931d63069815ea236a8852696a2af9fa1c20cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.0 MB (93034895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7237598e05a1aea1866e8f2d241d20a806d667a3a7556236e35b7368265bdd`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 14 Jul 2026 18:12:38 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Tue, 14 Jul 2026 18:12:38 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:12:38 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:12:38 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Tue, 14 Jul 2026 18:12:38 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:12:38 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:12:38 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:12:38 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:12:38 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:12:38 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:38 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:38 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:12:38 GMT
USER varnish
# Tue, 14 Jul 2026 18:12:38 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:12:38 GMT
CMD []
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:881d8c4ed99b6e29c8ac0071f9d1a8abf261f0ead6adbc1d636745d20e7eba4e`  
		Last Modified: Tue, 14 Jul 2026 18:12:52 GMT  
		Size: 89.2 MB (89187340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99162f8ba4345448baed6b98ece5116e284e061c98c9478d50e451237e33a81e`  
		Last Modified: Tue, 14 Jul 2026 18:12:50 GMT  
		Size: 503.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b69a9c41f45256f5b48ec95ac13fdfee3432c6bf5738458889987806789dbf0`  
		Last Modified: Tue, 14 Jul 2026 18:12:50 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2960bc606e38e807c90fb3d49638fca637db2ba95ecc9e1d334e12b802def54`  
		Last Modified: Tue, 14 Jul 2026 18:12:50 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:5f40b4e0e31a5ba634ca248ae3eb8feda7e7ef17d9bb827aad93c13be913c756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f77ffdb94a0cbcd9dc3041e705a5ea264756489f7cedac136c51057963589e`

```dockerfile
```

-	Layers:
	-	`sha256:d93050f8d7bb92a487b7f2b2d090bee95dc896bc2b099dcccdd27364cf7d72f4`  
		Last Modified: Tue, 14 Jul 2026 18:12:50 GMT  
		Size: 20.6 KB (20626 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0.2-alpine` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:5606a072527e20d634119baa94dc79dee802984fc7e0d8e10aa471b61c29e5d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84788812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:567c5f7a92fb1117d99dd6be0cd24c6659f1a4e4c9801dea287d60084efb770b`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 14 Jul 2026 18:01:38 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Tue, 14 Jul 2026 18:01:38 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:01:38 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:01:38 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Tue, 14 Jul 2026 18:01:38 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:01:38 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:01:38 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:01:38 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:01:38 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:01:38 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:01:38 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:01:38 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:01:38 GMT
USER varnish
# Tue, 14 Jul 2026 18:01:38 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:01:38 GMT
CMD []
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695bf53644b3c7c8acfee811fa97abe111d40ac8d5766a7615205430f7b8d8f4`  
		Last Modified: Tue, 14 Jul 2026 18:01:50 GMT  
		Size: 80.6 MB (80603814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b6e521f527504dd4cd535c1df4c9779a088b84c77cd594e75e71cec2100638`  
		Last Modified: Tue, 14 Jul 2026 18:01:48 GMT  
		Size: 502.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58810e7ded4eb70bf6f9831c18b9a9648756959cc921c0393c26963e15c4a6e`  
		Last Modified: Tue, 14 Jul 2026 18:01:48 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80fc1aa3dc64938439bb43ed26e2faf7c5c611fb0f173ce1627010fd499f0d2b`  
		Last Modified: Tue, 14 Jul 2026 18:01:49 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:67a47dccf019a3c53de09071c98c93cee8597097435dc967bd894a7c33c1e3d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f1c191678fc0cafbb63516b348df62a53b053069c2928acbd6198f516bd46e`

```dockerfile
```

-	Layers:
	-	`sha256:ef5564d31b8504ed05058137d886aff48bf67983fad9843d6e09f37b74846ada`  
		Last Modified: Tue, 14 Jul 2026 18:01:48 GMT  
		Size: 20.7 KB (20730 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9`

```console
$ docker pull varnish@sha256:90c6c9c38cc9f4502cff80972e6fcd17029f7fbc594aa7e958ddfc8ecbdaa740
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9` - linux; amd64

```console
$ docker pull varnish@sha256:42424c88fc1dfbe7e860c32a7c0b54f851e56a57e26914ca546956ca3ba77adf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 MB (135405965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d963e4c963941b8e0b906711bb61176f906364841987939280de646be9bc27ac`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 20:47:53 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 20:47:53 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-5
# Tue, 25 Aug 2026 20:47:53 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 25 Aug 2026 20:47:53 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 20:47:53 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 20:47:53 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 20:47:53 GMT
USER varnish
# Tue, 25 Aug 2026 20:47:53 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 20:47:53 GMT
CMD []
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be34f221f8c4c8289f83ae718e26d24e58b6f96c1d37ceb098741e6fa1af8002`  
		Last Modified: Tue, 25 Aug 2026 20:48:08 GMT  
		Size: 105.6 MB (105610422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1491f24cefa4b45d20f9752af5083330b99e7eb974358c299f7d14d2c65d97ed`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a8d8d4fe8d55b5504e1abac3bd1265e9ebbe57f0d2ec32194b909672e13ed3`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77ba9892e765155d35e28678b228d0d02b5d88345f99590dbb7639515009f41`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:5e26c54822610d633932c9d2adf199e1465cef11f20343c7c2fafef0f471f5f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4371257dcf37b83a0c2d363535d66078b149f5ef725e6d80ca1937dc3689b9a6`

```dockerfile
```

-	Layers:
	-	`sha256:a29793b62fba2cd7994bab9f63e87146381271aeb0bccbf59916b2bfe8d0c7de`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6386a9bd704366b57c3a1ece40d88f18a24414cfa03ca00bbb3bc4fa31a1252b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128896498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52874007a09e9e5d02c02fd6210059031aa26a7c503062bd133f93eabfa0e41`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 20:48:13 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 20:48:13 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-5
# Tue, 25 Aug 2026 20:48:13 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 25 Aug 2026 20:48:13 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 20:48:13 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 20:48:13 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 20:48:13 GMT
USER varnish
# Tue, 25 Aug 2026 20:48:13 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 20:48:13 GMT
CMD []
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313f006b9ccb242ea2e21d5e3e341f288c5c30e16c86db37b65bb38843f93a9a`  
		Last Modified: Tue, 25 Aug 2026 20:48:29 GMT  
		Size: 98.7 MB (98734030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e5b230de5d450478a74d4fdc573d083efe9751e5a457d966424508db1cf75e`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a57d0ad8629f4ea1f80b05b81802193595e8d8990192ff733308cb422851250`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180c3fd665a8ae91f6b251ecd4682d6763cfb9c85ce33aeb0bc3a8c3c9a39a14`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:3c0abb4c33d9e17e73f3dd45b5bb23e27e2d7192bf06d229a8bd73c7c1d9dec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6868336e96048e331b6119e7bb5c26a3a874afeed5aad769dc5fe46e152a40`

```dockerfile
```

-	Layers:
	-	`sha256:48972f0d0b00db6a0320dc4460defd85b1d74e5241117fd338d319a7fbcde7fa`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0`

```console
$ docker pull varnish@sha256:90c6c9c38cc9f4502cff80972e6fcd17029f7fbc594aa7e958ddfc8ecbdaa740
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0` - linux; amd64

```console
$ docker pull varnish@sha256:42424c88fc1dfbe7e860c32a7c0b54f851e56a57e26914ca546956ca3ba77adf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 MB (135405965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d963e4c963941b8e0b906711bb61176f906364841987939280de646be9bc27ac`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 20:47:53 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 20:47:53 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-5
# Tue, 25 Aug 2026 20:47:53 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 25 Aug 2026 20:47:53 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 20:47:53 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 20:47:53 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 20:47:53 GMT
USER varnish
# Tue, 25 Aug 2026 20:47:53 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 20:47:53 GMT
CMD []
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be34f221f8c4c8289f83ae718e26d24e58b6f96c1d37ceb098741e6fa1af8002`  
		Last Modified: Tue, 25 Aug 2026 20:48:08 GMT  
		Size: 105.6 MB (105610422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1491f24cefa4b45d20f9752af5083330b99e7eb974358c299f7d14d2c65d97ed`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a8d8d4fe8d55b5504e1abac3bd1265e9ebbe57f0d2ec32194b909672e13ed3`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77ba9892e765155d35e28678b228d0d02b5d88345f99590dbb7639515009f41`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0` - unknown; unknown

```console
$ docker pull varnish@sha256:5e26c54822610d633932c9d2adf199e1465cef11f20343c7c2fafef0f471f5f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4371257dcf37b83a0c2d363535d66078b149f5ef725e6d80ca1937dc3689b9a6`

```dockerfile
```

-	Layers:
	-	`sha256:a29793b62fba2cd7994bab9f63e87146381271aeb0bccbf59916b2bfe8d0c7de`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6386a9bd704366b57c3a1ece40d88f18a24414cfa03ca00bbb3bc4fa31a1252b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128896498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52874007a09e9e5d02c02fd6210059031aa26a7c503062bd133f93eabfa0e41`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 20:48:13 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 20:48:13 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-5
# Tue, 25 Aug 2026 20:48:13 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 25 Aug 2026 20:48:13 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 20:48:13 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 20:48:13 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 20:48:13 GMT
USER varnish
# Tue, 25 Aug 2026 20:48:13 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 20:48:13 GMT
CMD []
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313f006b9ccb242ea2e21d5e3e341f288c5c30e16c86db37b65bb38843f93a9a`  
		Last Modified: Tue, 25 Aug 2026 20:48:29 GMT  
		Size: 98.7 MB (98734030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e5b230de5d450478a74d4fdc573d083efe9751e5a457d966424508db1cf75e`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a57d0ad8629f4ea1f80b05b81802193595e8d8990192ff733308cb422851250`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180c3fd665a8ae91f6b251ecd4682d6763cfb9c85ce33aeb0bc3a8c3c9a39a14`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0` - unknown; unknown

```console
$ docker pull varnish@sha256:3c0abb4c33d9e17e73f3dd45b5bb23e27e2d7192bf06d229a8bd73c7c1d9dec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6868336e96048e331b6119e7bb5c26a3a874afeed5aad769dc5fe46e152a40`

```dockerfile
```

-	Layers:
	-	`sha256:48972f0d0b00db6a0320dc4460defd85b1d74e5241117fd338d319a7fbcde7fa`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0.3`

```console
$ docker pull varnish@sha256:90c6c9c38cc9f4502cff80972e6fcd17029f7fbc594aa7e958ddfc8ecbdaa740
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0.3` - linux; amd64

```console
$ docker pull varnish@sha256:42424c88fc1dfbe7e860c32a7c0b54f851e56a57e26914ca546956ca3ba77adf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 MB (135405965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d963e4c963941b8e0b906711bb61176f906364841987939280de646be9bc27ac`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 20:47:53 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 20:47:53 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-5
# Tue, 25 Aug 2026 20:47:53 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 25 Aug 2026 20:47:53 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 20:47:53 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 20:47:53 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 20:47:53 GMT
USER varnish
# Tue, 25 Aug 2026 20:47:53 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 20:47:53 GMT
CMD []
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be34f221f8c4c8289f83ae718e26d24e58b6f96c1d37ceb098741e6fa1af8002`  
		Last Modified: Tue, 25 Aug 2026 20:48:08 GMT  
		Size: 105.6 MB (105610422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1491f24cefa4b45d20f9752af5083330b99e7eb974358c299f7d14d2c65d97ed`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a8d8d4fe8d55b5504e1abac3bd1265e9ebbe57f0d2ec32194b909672e13ed3`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77ba9892e765155d35e28678b228d0d02b5d88345f99590dbb7639515009f41`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.3` - unknown; unknown

```console
$ docker pull varnish@sha256:5e26c54822610d633932c9d2adf199e1465cef11f20343c7c2fafef0f471f5f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4371257dcf37b83a0c2d363535d66078b149f5ef725e6d80ca1937dc3689b9a6`

```dockerfile
```

-	Layers:
	-	`sha256:a29793b62fba2cd7994bab9f63e87146381271aeb0bccbf59916b2bfe8d0c7de`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0.3` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6386a9bd704366b57c3a1ece40d88f18a24414cfa03ca00bbb3bc4fa31a1252b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128896498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52874007a09e9e5d02c02fd6210059031aa26a7c503062bd133f93eabfa0e41`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 20:48:13 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 20:48:13 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-5
# Tue, 25 Aug 2026 20:48:13 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 25 Aug 2026 20:48:13 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 20:48:13 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 20:48:13 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 20:48:13 GMT
USER varnish
# Tue, 25 Aug 2026 20:48:13 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 20:48:13 GMT
CMD []
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313f006b9ccb242ea2e21d5e3e341f288c5c30e16c86db37b65bb38843f93a9a`  
		Last Modified: Tue, 25 Aug 2026 20:48:29 GMT  
		Size: 98.7 MB (98734030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e5b230de5d450478a74d4fdc573d083efe9751e5a457d966424508db1cf75e`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a57d0ad8629f4ea1f80b05b81802193595e8d8990192ff733308cb422851250`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180c3fd665a8ae91f6b251ecd4682d6763cfb9c85ce33aeb0bc3a8c3c9a39a14`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.3` - unknown; unknown

```console
$ docker pull varnish@sha256:3c0abb4c33d9e17e73f3dd45b5bb23e27e2d7192bf06d229a8bd73c7c1d9dec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6868336e96048e331b6119e7bb5c26a3a874afeed5aad769dc5fe46e152a40`

```dockerfile
```

-	Layers:
	-	`sha256:48972f0d0b00db6a0320dc4460defd85b1d74e5241117fd338d319a7fbcde7fa`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0.3-5`

```console
$ docker pull varnish@sha256:90c6c9c38cc9f4502cff80972e6fcd17029f7fbc594aa7e958ddfc8ecbdaa740
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0.3-5` - linux; amd64

```console
$ docker pull varnish@sha256:42424c88fc1dfbe7e860c32a7c0b54f851e56a57e26914ca546956ca3ba77adf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 MB (135405965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d963e4c963941b8e0b906711bb61176f906364841987939280de646be9bc27ac`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 20:47:53 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 20:47:53 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-5
# Tue, 25 Aug 2026 20:47:53 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 25 Aug 2026 20:47:53 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 20:47:53 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 20:47:53 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 20:47:53 GMT
USER varnish
# Tue, 25 Aug 2026 20:47:53 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 20:47:53 GMT
CMD []
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be34f221f8c4c8289f83ae718e26d24e58b6f96c1d37ceb098741e6fa1af8002`  
		Last Modified: Tue, 25 Aug 2026 20:48:08 GMT  
		Size: 105.6 MB (105610422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1491f24cefa4b45d20f9752af5083330b99e7eb974358c299f7d14d2c65d97ed`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a8d8d4fe8d55b5504e1abac3bd1265e9ebbe57f0d2ec32194b909672e13ed3`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77ba9892e765155d35e28678b228d0d02b5d88345f99590dbb7639515009f41`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.3-5` - unknown; unknown

```console
$ docker pull varnish@sha256:5e26c54822610d633932c9d2adf199e1465cef11f20343c7c2fafef0f471f5f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4371257dcf37b83a0c2d363535d66078b149f5ef725e6d80ca1937dc3689b9a6`

```dockerfile
```

-	Layers:
	-	`sha256:a29793b62fba2cd7994bab9f63e87146381271aeb0bccbf59916b2bfe8d0c7de`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0.3-5` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6386a9bd704366b57c3a1ece40d88f18a24414cfa03ca00bbb3bc4fa31a1252b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128896498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52874007a09e9e5d02c02fd6210059031aa26a7c503062bd133f93eabfa0e41`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 20:48:13 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 20:48:13 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-5
# Tue, 25 Aug 2026 20:48:13 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 25 Aug 2026 20:48:13 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 20:48:13 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 20:48:13 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 20:48:13 GMT
USER varnish
# Tue, 25 Aug 2026 20:48:13 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 20:48:13 GMT
CMD []
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313f006b9ccb242ea2e21d5e3e341f288c5c30e16c86db37b65bb38843f93a9a`  
		Last Modified: Tue, 25 Aug 2026 20:48:29 GMT  
		Size: 98.7 MB (98734030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e5b230de5d450478a74d4fdc573d083efe9751e5a457d966424508db1cf75e`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a57d0ad8629f4ea1f80b05b81802193595e8d8990192ff733308cb422851250`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180c3fd665a8ae91f6b251ecd4682d6763cfb9c85ce33aeb0bc3a8c3c9a39a14`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.3-5` - unknown; unknown

```console
$ docker pull varnish@sha256:3c0abb4c33d9e17e73f3dd45b5bb23e27e2d7192bf06d229a8bd73c7c1d9dec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6868336e96048e331b6119e7bb5c26a3a874afeed5aad769dc5fe46e152a40`

```dockerfile
```

-	Layers:
	-	`sha256:48972f0d0b00db6a0320dc4460defd85b1d74e5241117fd338d319a7fbcde7fa`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:fresh`

```console
$ docker pull varnish@sha256:90c6c9c38cc9f4502cff80972e6fcd17029f7fbc594aa7e958ddfc8ecbdaa740
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:fresh` - linux; amd64

```console
$ docker pull varnish@sha256:42424c88fc1dfbe7e860c32a7c0b54f851e56a57e26914ca546956ca3ba77adf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 MB (135405965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d963e4c963941b8e0b906711bb61176f906364841987939280de646be9bc27ac`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 20:47:53 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 20:47:53 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-5
# Tue, 25 Aug 2026 20:47:53 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 25 Aug 2026 20:47:53 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 20:47:53 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 20:47:53 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 20:47:53 GMT
USER varnish
# Tue, 25 Aug 2026 20:47:53 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 20:47:53 GMT
CMD []
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be34f221f8c4c8289f83ae718e26d24e58b6f96c1d37ceb098741e6fa1af8002`  
		Last Modified: Tue, 25 Aug 2026 20:48:08 GMT  
		Size: 105.6 MB (105610422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1491f24cefa4b45d20f9752af5083330b99e7eb974358c299f7d14d2c65d97ed`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a8d8d4fe8d55b5504e1abac3bd1265e9ebbe57f0d2ec32194b909672e13ed3`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77ba9892e765155d35e28678b228d0d02b5d88345f99590dbb7639515009f41`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:5e26c54822610d633932c9d2adf199e1465cef11f20343c7c2fafef0f471f5f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4371257dcf37b83a0c2d363535d66078b149f5ef725e6d80ca1937dc3689b9a6`

```dockerfile
```

-	Layers:
	-	`sha256:a29793b62fba2cd7994bab9f63e87146381271aeb0bccbf59916b2bfe8d0c7de`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:fresh` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6386a9bd704366b57c3a1ece40d88f18a24414cfa03ca00bbb3bc4fa31a1252b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128896498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52874007a09e9e5d02c02fd6210059031aa26a7c503062bd133f93eabfa0e41`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 20:48:13 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 20:48:13 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-5
# Tue, 25 Aug 2026 20:48:13 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 25 Aug 2026 20:48:13 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 20:48:13 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 20:48:13 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 20:48:13 GMT
USER varnish
# Tue, 25 Aug 2026 20:48:13 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 20:48:13 GMT
CMD []
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313f006b9ccb242ea2e21d5e3e341f288c5c30e16c86db37b65bb38843f93a9a`  
		Last Modified: Tue, 25 Aug 2026 20:48:29 GMT  
		Size: 98.7 MB (98734030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e5b230de5d450478a74d4fdc573d083efe9751e5a457d966424508db1cf75e`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a57d0ad8629f4ea1f80b05b81802193595e8d8990192ff733308cb422851250`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180c3fd665a8ae91f6b251ecd4682d6763cfb9c85ce33aeb0bc3a8c3c9a39a14`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:3c0abb4c33d9e17e73f3dd45b5bb23e27e2d7192bf06d229a8bd73c7c1d9dec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6868336e96048e331b6119e7bb5c26a3a874afeed5aad769dc5fe46e152a40`

```dockerfile
```

-	Layers:
	-	`sha256:48972f0d0b00db6a0320dc4460defd85b1d74e5241117fd338d319a7fbcde7fa`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:latest`

```console
$ docker pull varnish@sha256:90c6c9c38cc9f4502cff80972e6fcd17029f7fbc594aa7e958ddfc8ecbdaa740
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:latest` - linux; amd64

```console
$ docker pull varnish@sha256:42424c88fc1dfbe7e860c32a7c0b54f851e56a57e26914ca546956ca3ba77adf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 MB (135405965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d963e4c963941b8e0b906711bb61176f906364841987939280de646be9bc27ac`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 20:47:53 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 20:47:53 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-5
# Tue, 25 Aug 2026 20:47:53 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 25 Aug 2026 20:47:53 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 20:47:53 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 20:47:53 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 20:47:53 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 25 Aug 2026 20:47:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 20:47:53 GMT
USER varnish
# Tue, 25 Aug 2026 20:47:53 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 20:47:53 GMT
CMD []
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be34f221f8c4c8289f83ae718e26d24e58b6f96c1d37ceb098741e6fa1af8002`  
		Last Modified: Tue, 25 Aug 2026 20:48:08 GMT  
		Size: 105.6 MB (105610422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1491f24cefa4b45d20f9752af5083330b99e7eb974358c299f7d14d2c65d97ed`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a8d8d4fe8d55b5504e1abac3bd1265e9ebbe57f0d2ec32194b909672e13ed3`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77ba9892e765155d35e28678b228d0d02b5d88345f99590dbb7639515009f41`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:5e26c54822610d633932c9d2adf199e1465cef11f20343c7c2fafef0f471f5f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4371257dcf37b83a0c2d363535d66078b149f5ef725e6d80ca1937dc3689b9a6`

```dockerfile
```

-	Layers:
	-	`sha256:a29793b62fba2cd7994bab9f63e87146381271aeb0bccbf59916b2bfe8d0c7de`  
		Last Modified: Tue, 25 Aug 2026 20:48:05 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:latest` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6386a9bd704366b57c3a1ece40d88f18a24414cfa03ca00bbb3bc4fa31a1252b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128896498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52874007a09e9e5d02c02fd6210059031aa26a7c503062bd133f93eabfa0e41`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 20:48:13 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 20:48:13 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-5
# Tue, 25 Aug 2026 20:48:13 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 25 Aug 2026 20:48:13 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 20:48:13 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 20:48:13 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 20:48:13 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 25 Aug 2026 20:48:13 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 20:48:13 GMT
USER varnish
# Tue, 25 Aug 2026 20:48:13 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 20:48:13 GMT
CMD []
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313f006b9ccb242ea2e21d5e3e341f288c5c30e16c86db37b65bb38843f93a9a`  
		Last Modified: Tue, 25 Aug 2026 20:48:29 GMT  
		Size: 98.7 MB (98734030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e5b230de5d450478a74d4fdc573d083efe9751e5a457d966424508db1cf75e`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a57d0ad8629f4ea1f80b05b81802193595e8d8990192ff733308cb422851250`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180c3fd665a8ae91f6b251ecd4682d6763cfb9c85ce33aeb0bc3a8c3c9a39a14`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:3c0abb4c33d9e17e73f3dd45b5bb23e27e2d7192bf06d229a8bd73c7c1d9dec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6868336e96048e331b6119e7bb5c26a3a874afeed5aad769dc5fe46e152a40`

```dockerfile
```

-	Layers:
	-	`sha256:48972f0d0b00db6a0320dc4460defd85b1d74e5241117fd338d319a7fbcde7fa`  
		Last Modified: Tue, 25 Aug 2026 20:48:27 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:old`

```console
$ docker pull varnish@sha256:ba8f3a402e97aa061c5aae3e1b80b96108fce75c5545026137d14cdd67667d77
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:old` - linux; amd64

```console
$ docker pull varnish@sha256:a5bce22c57e62c0ebd4bc86aed3c4f9d5e94a449bc21168d826839a25e6d77bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120274675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61239bd46f3c06da83464eea8b652cdf640c161b59b2cce69011ec860c2fad4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:45:32 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:45:32 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 25 Aug 2026 00:45:32 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 25 Aug 2026 00:45:32 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 25 Aug 2026 00:45:32 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 00:45:32 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 00:45:32 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:45:32 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 00:45:32 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:45:32 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:45:32 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:45:32 GMT
USER varnish
# Tue, 25 Aug 2026 00:45:32 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:45:32 GMT
CMD []
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b0f011d2e3dfc34939fbc8ea0a7e77671fb4b243b38c17197a8d35d3da0dfa`  
		Last Modified: Tue, 25 Aug 2026 00:45:46 GMT  
		Size: 90.5 MB (90478897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a30c68ad0c1341dcce36733e0ccbf04edb590d948d624e477b53118d776dae64`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2761e781f769a3e78bb837a0a77fbc65f661e51aac08b808ea3066366dbe6c86`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f14234c72de452c8df90a56c167a8509be41cb308815f1983a6c00de14856dc`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:b17eb4b68922b65005817f6af075d17000f32cafe7373a38c97384b6635ba453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab8b3e217f061e9290898c6536b6d6b98fd422a1fabbc25ebec6bb97c37e14d`

```dockerfile
```

-	Layers:
	-	`sha256:8347257a34dc8bcfc607a66c57358f83f5630f191600679bc969e3586dabb418`  
		Last Modified: Tue, 25 Aug 2026 00:45:44 GMT  
		Size: 21.0 KB (20996 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:old` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:13b1b3fd4899cfcc50f550045583bdc27d8b09d5855f9e38dbf3c072866113e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114274980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae8822490d06ec597e69dd4fe9708d14ee2d74fb19acef034ec52bae01d2590`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:47:51 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:47:51 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 25 Aug 2026 00:47:51 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 25 Aug 2026 00:47:51 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 25 Aug 2026 00:47:51 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 25 Aug 2026 00:47:51 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 25 Aug 2026 00:47:51 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:47:51 GMT
ENV VSM_NOPID=1
# Tue, 25 Aug 2026 00:47:51 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:47:51 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 25 Aug 2026 00:47:51 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:47:51 GMT
USER varnish
# Tue, 25 Aug 2026 00:47:51 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:47:51 GMT
CMD []
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e0711d03861e469fae233d9f7a54970c999f408a7e3bbb9a4f556eca7bb711`  
		Last Modified: Tue, 25 Aug 2026 00:48:05 GMT  
		Size: 84.1 MB (84112287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da715b03936542924f1cfcd8811714b3d5238c686489ebc7fc44e6511abc348`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:960fc4e6ffa7d58615123be0c9e53f3c15de32c2ee96bf994ef59334e2f18db9`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88f38f5907b80e4b82b1c6b0f5004f5ac404beba339417f583e3d70c1a5a3a0`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:4289ebba12c2e9ebd0fb4d8b6491314d945c37290ef4ed9e947b142b74908317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 KB (21113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407485b32a61b613869a51c2ac8346d9d5949ea186f7da973909a09bb260a44e`

```dockerfile
```

-	Layers:
	-	`sha256:c11fff66fe741f01267151278e40b6c506ff25dfe2a46cbccb30ac22ac0f783a`  
		Last Modified: Tue, 25 Aug 2026 00:48:03 GMT  
		Size: 21.1 KB (21113 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:old-alpine`

```console
$ docker pull varnish@sha256:d9182e9b64bbd217c48c4767b112ba41681b48fcea3c6713eccfa536d9b8e503
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:old-alpine` - linux; amd64

```console
$ docker pull varnish@sha256:078984a5078cc835a0f79a88b7931d63069815ea236a8852696a2af9fa1c20cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.0 MB (93034895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7237598e05a1aea1866e8f2d241d20a806d667a3a7556236e35b7368265bdd`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 14 Jul 2026 18:12:38 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Tue, 14 Jul 2026 18:12:38 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:12:38 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:12:38 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:12:38 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Tue, 14 Jul 2026 18:12:38 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:12:38 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:12:38 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:12:38 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:12:38 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:12:38 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:38 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:38 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:12:38 GMT
USER varnish
# Tue, 14 Jul 2026 18:12:38 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:12:38 GMT
CMD []
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:881d8c4ed99b6e29c8ac0071f9d1a8abf261f0ead6adbc1d636745d20e7eba4e`  
		Last Modified: Tue, 14 Jul 2026 18:12:52 GMT  
		Size: 89.2 MB (89187340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99162f8ba4345448baed6b98ece5116e284e061c98c9478d50e451237e33a81e`  
		Last Modified: Tue, 14 Jul 2026 18:12:50 GMT  
		Size: 503.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b69a9c41f45256f5b48ec95ac13fdfee3432c6bf5738458889987806789dbf0`  
		Last Modified: Tue, 14 Jul 2026 18:12:50 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2960bc606e38e807c90fb3d49638fca637db2ba95ecc9e1d334e12b802def54`  
		Last Modified: Tue, 14 Jul 2026 18:12:50 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:5f40b4e0e31a5ba634ca248ae3eb8feda7e7ef17d9bb827aad93c13be913c756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f77ffdb94a0cbcd9dc3041e705a5ea264756489f7cedac136c51057963589e`

```dockerfile
```

-	Layers:
	-	`sha256:d93050f8d7bb92a487b7f2b2d090bee95dc896bc2b099dcccdd27364cf7d72f4`  
		Last Modified: Tue, 14 Jul 2026 18:12:50 GMT  
		Size: 20.6 KB (20626 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:old-alpine` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:5606a072527e20d634119baa94dc79dee802984fc7e0d8e10aa471b61c29e5d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84788812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:567c5f7a92fb1117d99dd6be0cd24c6659f1a4e4c9801dea287d60084efb770b`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 14 Jul 2026 18:01:38 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Tue, 14 Jul 2026 18:01:38 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:01:38 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:01:38 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:01:38 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Tue, 14 Jul 2026 18:01:38 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:01:38 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:01:38 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:01:38 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:01:38 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:01:38 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:01:38 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:01:38 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:01:38 GMT
USER varnish
# Tue, 14 Jul 2026 18:01:38 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:01:38 GMT
CMD []
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695bf53644b3c7c8acfee811fa97abe111d40ac8d5766a7615205430f7b8d8f4`  
		Last Modified: Tue, 14 Jul 2026 18:01:50 GMT  
		Size: 80.6 MB (80603814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b6e521f527504dd4cd535c1df4c9779a088b84c77cd594e75e71cec2100638`  
		Last Modified: Tue, 14 Jul 2026 18:01:48 GMT  
		Size: 502.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58810e7ded4eb70bf6f9831c18b9a9648756959cc921c0393c26963e15c4a6e`  
		Last Modified: Tue, 14 Jul 2026 18:01:48 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80fc1aa3dc64938439bb43ed26e2faf7c5c611fb0f173ce1627010fd499f0d2b`  
		Last Modified: Tue, 14 Jul 2026 18:01:49 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:67a47dccf019a3c53de09071c98c93cee8597097435dc967bd894a7c33c1e3d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f1c191678fc0cafbb63516b348df62a53b053069c2928acbd6198f516bd46e`

```dockerfile
```

-	Layers:
	-	`sha256:ef5564d31b8504ed05058137d886aff48bf67983fad9843d6e09f37b74846ada`  
		Last Modified: Tue, 14 Jul 2026 18:01:48 GMT  
		Size: 20.7 KB (20730 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:stable`

```console
$ docker pull varnish@sha256:89d3255fadd980d5c7051f8139cacb80f4f633bc2b4a42707a42b89ddbad73a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:stable` - linux; amd64

```console
$ docker pull varnish@sha256:65355fcc308df94c8a287dd1b038e995e379c0010c510f9c899f58e169d572a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121950075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0827efb64be1a6d6ac1d82138064679d08bcd46e3268dde5c625badbf6678665`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:45:53 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:45:53 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 25 Aug 2026 00:45:53 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:45:53 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:45:53 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:45:53 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:45:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:45:53 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:45:53 GMT
CMD []
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f00697cc1f7b353b53234ee9fb4c98711ab49a40436cf8d203868def1a04ade`  
		Last Modified: Tue, 25 Aug 2026 00:46:07 GMT  
		Size: 93.7 MB (93716665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600f164f078b85bc5252b96e60cea32665d5af0e0cddd7d3cc6a44710141a779`  
		Last Modified: Tue, 25 Aug 2026 00:46:04 GMT  
		Size: 723.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:stable` - unknown; unknown

```console
$ docker pull varnish@sha256:1b4f5185e65decbb5ecbea0005f679ca9bde8caafadba04deccef5709bae0ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f0f2101e9fd699f88d5db503e418a520339f3f0bbf7de5d8a286bf1ebd55cd`

```dockerfile
```

-	Layers:
	-	`sha256:4bb293463276abe2ca105d1faa938ece3cc400f5a86bd7c4d5cd7a3dd3019fa0`  
		Last Modified: Tue, 25 Aug 2026 00:46:05 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:stable` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:cd1c3f94838ae2403b0a7d0d8cac8f487da109d6c41b37cc2518281ada02cc47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116396246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d33b57fdff0121690f7c3495aa01d10d20d41c7982df9fe1885875ac1043955`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:48:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 25 Aug 2026 00:48:09 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 25 Aug 2026 00:48:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 25 Aug 2026 00:48:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 25 Aug 2026 00:48:09 GMT
WORKDIR /etc/varnish
# Tue, 25 Aug 2026 00:48:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:48:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 25 Aug 2026 00:48:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 25 Aug 2026 00:48:09 GMT
CMD []
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cde4b8420ac9825d0c7195cb2fcdfb718d62d08c33785b3f1ca3f434d2efef48`  
		Last Modified: Tue, 25 Aug 2026 00:48:22 GMT  
		Size: 88.3 MB (88278204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:148f95e17919d69d4355b54da08e9e9e04fe6989697367f3402e7c8180645fb6`  
		Last Modified: Tue, 25 Aug 2026 00:48:19 GMT  
		Size: 721.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:stable` - unknown; unknown

```console
$ docker pull varnish@sha256:22063bfee7ec6c9ee3685b61648f330df41dfb0e3cdaf764de013d89be35a743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8de856cc7007b3162420c2fa1755799c25590c4a835378685b7e3d2ab7b076`

```dockerfile
```

-	Layers:
	-	`sha256:3f2b6b727ff90250924cef4af4d1008cf9ffc2a85e186fa5cdd081b70a33c7ad`  
		Last Modified: Tue, 25 Aug 2026 00:48:20 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json
