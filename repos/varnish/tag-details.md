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
-	[`varnish:9.0.3-3`](#varnish903-3)
-	[`varnish:fresh`](#varnishfresh)
-	[`varnish:latest`](#varnishlatest)
-	[`varnish:old`](#varnishold)
-	[`varnish:old-alpine`](#varnishold-alpine)
-	[`varnish:stable`](#varnishstable)

## `varnish:6`

```console
$ docker pull varnish@sha256:05c583aa2bb69d17ed41a2c80e01de2e7181d49e54a3483277c54ee4dbe0378e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6` - linux; amd64

```console
$ docker pull varnish@sha256:7b7e88dbf3a2ed3ed886d84006af84e736c2ce60cf20dfffd3297a2a47a93029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121892562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1176fffba2ebf74600f5af171f16e1c312295accca1eedf724bf371daf6a9213`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:39:21 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:39:21 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 14 Jul 2026 01:39:21 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:39:21 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:39:21 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:39:21 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:39:21 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:39:21 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:39:21 GMT
CMD []
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90a565b87e254c342e59689b58e0c029b658e2efd3fb28256ffd6cc69db5d75`  
		Last Modified: Tue, 14 Jul 2026 01:39:35 GMT  
		Size: 93.7 MB (93659166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2dd2421a0b3a92fa3b87384ecf9c1833bcdfaa6f4333ee7eae5cc036f66fd38`  
		Last Modified: Tue, 14 Jul 2026 01:39:32 GMT  
		Size: 721.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6` - unknown; unknown

```console
$ docker pull varnish@sha256:807f78fc0394bb7a1c7908707be4fdccec0f3b8c3fb30bbbee4bffd38aa0d85c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:443aacbad366320a47fd7b34d5e55da1be135cd50b884e798b7878c9ce5adf39`

```dockerfile
```

-	Layers:
	-	`sha256:dd8d86208044292e0d3ba1d073202e0d7a817c66e6f48b2eb11acdb3547d621b`  
		Last Modified: Tue, 14 Jul 2026 01:39:32 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:46279ea82babc12127f76364b386f33304f92f3c04d32eff9fb9931b069fbfc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116330996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a652ebcbbe413fc3f1ee3e94b10aa19b368a2f745636510aabac0d2b24e2b19d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:42:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:42:09 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 14 Jul 2026 01:42:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:42:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:42:09 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:42:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:42:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:42:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:42:09 GMT
CMD []
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf25f2626b9a59c60dd8217e3322ee049596f690c32a6be955b4ba59cbf527e`  
		Last Modified: Tue, 14 Jul 2026 01:42:23 GMT  
		Size: 88.2 MB (88212987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a4463bcecf21b861ab4b000b97e2057b5ee891d6acf9e96b55cf3c552bf436`  
		Last Modified: Tue, 14 Jul 2026 01:42:20 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6` - unknown; unknown

```console
$ docker pull varnish@sha256:7b26b126559591fd7757d1a423be1dc455c8c6ae07195be7df5fbae12081e386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53cd6a317b67d537e4ce5bf4f3282f9939cc4d3371de208ab93a83a1002cc20d`

```dockerfile
```

-	Layers:
	-	`sha256:19b476306e275796a9e0b39b21386eb32a7f22897c20a3e3f60fba720ec78828`  
		Last Modified: Tue, 14 Jul 2026 01:42:20 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0`

```console
$ docker pull varnish@sha256:05c583aa2bb69d17ed41a2c80e01de2e7181d49e54a3483277c54ee4dbe0378e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0` - linux; amd64

```console
$ docker pull varnish@sha256:7b7e88dbf3a2ed3ed886d84006af84e736c2ce60cf20dfffd3297a2a47a93029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121892562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1176fffba2ebf74600f5af171f16e1c312295accca1eedf724bf371daf6a9213`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:39:21 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:39:21 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 14 Jul 2026 01:39:21 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:39:21 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:39:21 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:39:21 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:39:21 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:39:21 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:39:21 GMT
CMD []
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90a565b87e254c342e59689b58e0c029b658e2efd3fb28256ffd6cc69db5d75`  
		Last Modified: Tue, 14 Jul 2026 01:39:35 GMT  
		Size: 93.7 MB (93659166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2dd2421a0b3a92fa3b87384ecf9c1833bcdfaa6f4333ee7eae5cc036f66fd38`  
		Last Modified: Tue, 14 Jul 2026 01:39:32 GMT  
		Size: 721.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0` - unknown; unknown

```console
$ docker pull varnish@sha256:807f78fc0394bb7a1c7908707be4fdccec0f3b8c3fb30bbbee4bffd38aa0d85c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:443aacbad366320a47fd7b34d5e55da1be135cd50b884e798b7878c9ce5adf39`

```dockerfile
```

-	Layers:
	-	`sha256:dd8d86208044292e0d3ba1d073202e0d7a817c66e6f48b2eb11acdb3547d621b`  
		Last Modified: Tue, 14 Jul 2026 01:39:32 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:46279ea82babc12127f76364b386f33304f92f3c04d32eff9fb9931b069fbfc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116330996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a652ebcbbe413fc3f1ee3e94b10aa19b368a2f745636510aabac0d2b24e2b19d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:42:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:42:09 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 14 Jul 2026 01:42:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:42:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:42:09 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:42:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:42:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:42:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:42:09 GMT
CMD []
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf25f2626b9a59c60dd8217e3322ee049596f690c32a6be955b4ba59cbf527e`  
		Last Modified: Tue, 14 Jul 2026 01:42:23 GMT  
		Size: 88.2 MB (88212987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a4463bcecf21b861ab4b000b97e2057b5ee891d6acf9e96b55cf3c552bf436`  
		Last Modified: Tue, 14 Jul 2026 01:42:20 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0` - unknown; unknown

```console
$ docker pull varnish@sha256:7b26b126559591fd7757d1a423be1dc455c8c6ae07195be7df5fbae12081e386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53cd6a317b67d537e4ce5bf4f3282f9939cc4d3371de208ab93a83a1002cc20d`

```dockerfile
```

-	Layers:
	-	`sha256:19b476306e275796a9e0b39b21386eb32a7f22897c20a3e3f60fba720ec78828`  
		Last Modified: Tue, 14 Jul 2026 01:42:20 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0.18`

```console
$ docker pull varnish@sha256:05c583aa2bb69d17ed41a2c80e01de2e7181d49e54a3483277c54ee4dbe0378e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0.18` - linux; amd64

```console
$ docker pull varnish@sha256:7b7e88dbf3a2ed3ed886d84006af84e736c2ce60cf20dfffd3297a2a47a93029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121892562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1176fffba2ebf74600f5af171f16e1c312295accca1eedf724bf371daf6a9213`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:39:21 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:39:21 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 14 Jul 2026 01:39:21 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:39:21 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:39:21 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:39:21 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:39:21 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:39:21 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:39:21 GMT
CMD []
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90a565b87e254c342e59689b58e0c029b658e2efd3fb28256ffd6cc69db5d75`  
		Last Modified: Tue, 14 Jul 2026 01:39:35 GMT  
		Size: 93.7 MB (93659166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2dd2421a0b3a92fa3b87384ecf9c1833bcdfaa6f4333ee7eae5cc036f66fd38`  
		Last Modified: Tue, 14 Jul 2026 01:39:32 GMT  
		Size: 721.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18` - unknown; unknown

```console
$ docker pull varnish@sha256:807f78fc0394bb7a1c7908707be4fdccec0f3b8c3fb30bbbee4bffd38aa0d85c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:443aacbad366320a47fd7b34d5e55da1be135cd50b884e798b7878c9ce5adf39`

```dockerfile
```

-	Layers:
	-	`sha256:dd8d86208044292e0d3ba1d073202e0d7a817c66e6f48b2eb11acdb3547d621b`  
		Last Modified: Tue, 14 Jul 2026 01:39:32 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0.18` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:46279ea82babc12127f76364b386f33304f92f3c04d32eff9fb9931b069fbfc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116330996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a652ebcbbe413fc3f1ee3e94b10aa19b368a2f745636510aabac0d2b24e2b19d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:42:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:42:09 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 14 Jul 2026 01:42:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:42:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:42:09 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:42:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:42:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:42:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:42:09 GMT
CMD []
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf25f2626b9a59c60dd8217e3322ee049596f690c32a6be955b4ba59cbf527e`  
		Last Modified: Tue, 14 Jul 2026 01:42:23 GMT  
		Size: 88.2 MB (88212987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a4463bcecf21b861ab4b000b97e2057b5ee891d6acf9e96b55cf3c552bf436`  
		Last Modified: Tue, 14 Jul 2026 01:42:20 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18` - unknown; unknown

```console
$ docker pull varnish@sha256:7b26b126559591fd7757d1a423be1dc455c8c6ae07195be7df5fbae12081e386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53cd6a317b67d537e4ce5bf4f3282f9939cc4d3371de208ab93a83a1002cc20d`

```dockerfile
```

-	Layers:
	-	`sha256:19b476306e275796a9e0b39b21386eb32a7f22897c20a3e3f60fba720ec78828`  
		Last Modified: Tue, 14 Jul 2026 01:42:20 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0.18-1`

```console
$ docker pull varnish@sha256:05c583aa2bb69d17ed41a2c80e01de2e7181d49e54a3483277c54ee4dbe0378e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0.18-1` - linux; amd64

```console
$ docker pull varnish@sha256:7b7e88dbf3a2ed3ed886d84006af84e736c2ce60cf20dfffd3297a2a47a93029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121892562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1176fffba2ebf74600f5af171f16e1c312295accca1eedf724bf371daf6a9213`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:39:21 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:39:21 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 14 Jul 2026 01:39:21 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:39:21 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:39:21 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:39:21 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:39:21 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:39:21 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:39:21 GMT
CMD []
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90a565b87e254c342e59689b58e0c029b658e2efd3fb28256ffd6cc69db5d75`  
		Last Modified: Tue, 14 Jul 2026 01:39:35 GMT  
		Size: 93.7 MB (93659166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2dd2421a0b3a92fa3b87384ecf9c1833bcdfaa6f4333ee7eae5cc036f66fd38`  
		Last Modified: Tue, 14 Jul 2026 01:39:32 GMT  
		Size: 721.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18-1` - unknown; unknown

```console
$ docker pull varnish@sha256:807f78fc0394bb7a1c7908707be4fdccec0f3b8c3fb30bbbee4bffd38aa0d85c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:443aacbad366320a47fd7b34d5e55da1be135cd50b884e798b7878c9ce5adf39`

```dockerfile
```

-	Layers:
	-	`sha256:dd8d86208044292e0d3ba1d073202e0d7a817c66e6f48b2eb11acdb3547d621b`  
		Last Modified: Tue, 14 Jul 2026 01:39:32 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0.18-1` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:46279ea82babc12127f76364b386f33304f92f3c04d32eff9fb9931b069fbfc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116330996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a652ebcbbe413fc3f1ee3e94b10aa19b368a2f745636510aabac0d2b24e2b19d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:42:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:42:09 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 14 Jul 2026 01:42:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:42:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:42:09 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:42:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:42:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:42:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:42:09 GMT
CMD []
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf25f2626b9a59c60dd8217e3322ee049596f690c32a6be955b4ba59cbf527e`  
		Last Modified: Tue, 14 Jul 2026 01:42:23 GMT  
		Size: 88.2 MB (88212987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a4463bcecf21b861ab4b000b97e2057b5ee891d6acf9e96b55cf3c552bf436`  
		Last Modified: Tue, 14 Jul 2026 01:42:20 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18-1` - unknown; unknown

```console
$ docker pull varnish@sha256:7b26b126559591fd7757d1a423be1dc455c8c6ae07195be7df5fbae12081e386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53cd6a317b67d537e4ce5bf4f3282f9939cc4d3371de208ab93a83a1002cc20d`

```dockerfile
```

-	Layers:
	-	`sha256:19b476306e275796a9e0b39b21386eb32a7f22897c20a3e3f60fba720ec78828`  
		Last Modified: Tue, 14 Jul 2026 01:42:20 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8`

```console
$ docker pull varnish@sha256:4b595728592a5b9709c9aac15368ca492e9742fb269ed12466b434a62b2c1b63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8` - linux; amd64

```console
$ docker pull varnish@sha256:adf7e703e6d587af2b4650de70577b539bb23327d9f0b6108b57f7c38ffd491f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120253544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af3863ad31fd396961b4403df3c93c7e85c144020b632a76621328ffe0c1578`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:12:25 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:12:25 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:12:25 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:12:25 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:12:25 GMT
USER varnish
# Tue, 14 Jul 2026 18:12:25 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:12:25 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:497eee8f588e2e60b98a30bf2b86bc4b0b2e5aefe1233abdf5467c34cc6c1441`  
		Last Modified: Tue, 14 Jul 2026 18:12:40 GMT  
		Size: 90.5 MB (90469518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbc4ff9f1854eb0685ec29af4c58d2436a7abed97d78fe50f7612f689f5b266`  
		Last Modified: Tue, 14 Jul 2026 18:12:37 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65384e8a5dd88be9c6f80e83481c924a10cdab8af6739eaf48ad147bcf1774b6`  
		Last Modified: Tue, 14 Jul 2026 18:12:38 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61819120a864512478198cf549576f552c547afde73c2c0b780d7f79a63c6f7`  
		Last Modified: Tue, 14 Jul 2026 18:12:38 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8` - unknown; unknown

```console
$ docker pull varnish@sha256:4e7e3ee91ccbe5b54d075acabe98d43f11ccda4954a15d5946b57d106be1cc67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51132c7b2b54bcf62bb55c4a339485564920be81b870b0e9f2d97963a03e61e`

```dockerfile
```

-	Layers:
	-	`sha256:089428c41929c3ba226ffee068cb057c70cf467c8d09c0ab30613cde491a0ecb`  
		Last Modified: Tue, 14 Jul 2026 18:12:37 GMT  
		Size: 21.0 KB (20997 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:9907dcca0b773dc33db1e5b078d446cb3008b600921a1d505a55c526a92c0d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114257623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b37ef742bd5b893ef81f7e39a30d2543706a0440025f1788464f5bfe81c281`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:00:03 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:00:03 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:00:03 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:00:03 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:00:03 GMT
USER varnish
# Tue, 14 Jul 2026 18:00:03 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:00:03 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98bcd9d50c954f71fbe6c8147e4f8ec8a795892548a16df9f5b32b82b7857a00`  
		Last Modified: Tue, 14 Jul 2026 18:00:17 GMT  
		Size: 84.1 MB (84110794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2bc88cf0621115589a1875ac197fb46bfac354faee80878b35b3e092116c01`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509b10e6b3dcf70c575c643b0d31354056597c2c8dd63d63b1916c0267195b26`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8be1db79de26c45bdbd37998e78e62c041a0df56ab46680dfd35ace802339743`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8` - unknown; unknown

```console
$ docker pull varnish@sha256:643e479da0e35b9bd55d8473b0b7396a23760d0315603c41a277ea6cbdbc4284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 KB (21112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7b02498ca9736460c6b90f4b49e013ad92d78eef2f56d0cddf606b832fa727`

```dockerfile
```

-	Layers:
	-	`sha256:64fb5f61d8cc58ff61ae7ee554aa19f39db04ae59f85dcf6c6154689a69efa50`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 21.1 KB (21112 bytes)  
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
$ docker pull varnish@sha256:4b595728592a5b9709c9aac15368ca492e9742fb269ed12466b434a62b2c1b63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0` - linux; amd64

```console
$ docker pull varnish@sha256:adf7e703e6d587af2b4650de70577b539bb23327d9f0b6108b57f7c38ffd491f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120253544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af3863ad31fd396961b4403df3c93c7e85c144020b632a76621328ffe0c1578`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:12:25 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:12:25 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:12:25 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:12:25 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:12:25 GMT
USER varnish
# Tue, 14 Jul 2026 18:12:25 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:12:25 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:497eee8f588e2e60b98a30bf2b86bc4b0b2e5aefe1233abdf5467c34cc6c1441`  
		Last Modified: Tue, 14 Jul 2026 18:12:40 GMT  
		Size: 90.5 MB (90469518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbc4ff9f1854eb0685ec29af4c58d2436a7abed97d78fe50f7612f689f5b266`  
		Last Modified: Tue, 14 Jul 2026 18:12:37 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65384e8a5dd88be9c6f80e83481c924a10cdab8af6739eaf48ad147bcf1774b6`  
		Last Modified: Tue, 14 Jul 2026 18:12:38 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61819120a864512478198cf549576f552c547afde73c2c0b780d7f79a63c6f7`  
		Last Modified: Tue, 14 Jul 2026 18:12:38 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0` - unknown; unknown

```console
$ docker pull varnish@sha256:4e7e3ee91ccbe5b54d075acabe98d43f11ccda4954a15d5946b57d106be1cc67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51132c7b2b54bcf62bb55c4a339485564920be81b870b0e9f2d97963a03e61e`

```dockerfile
```

-	Layers:
	-	`sha256:089428c41929c3ba226ffee068cb057c70cf467c8d09c0ab30613cde491a0ecb`  
		Last Modified: Tue, 14 Jul 2026 18:12:37 GMT  
		Size: 21.0 KB (20997 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:9907dcca0b773dc33db1e5b078d446cb3008b600921a1d505a55c526a92c0d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114257623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b37ef742bd5b893ef81f7e39a30d2543706a0440025f1788464f5bfe81c281`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:00:03 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:00:03 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:00:03 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:00:03 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:00:03 GMT
USER varnish
# Tue, 14 Jul 2026 18:00:03 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:00:03 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98bcd9d50c954f71fbe6c8147e4f8ec8a795892548a16df9f5b32b82b7857a00`  
		Last Modified: Tue, 14 Jul 2026 18:00:17 GMT  
		Size: 84.1 MB (84110794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2bc88cf0621115589a1875ac197fb46bfac354faee80878b35b3e092116c01`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509b10e6b3dcf70c575c643b0d31354056597c2c8dd63d63b1916c0267195b26`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8be1db79de26c45bdbd37998e78e62c041a0df56ab46680dfd35ace802339743`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0` - unknown; unknown

```console
$ docker pull varnish@sha256:643e479da0e35b9bd55d8473b0b7396a23760d0315603c41a277ea6cbdbc4284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 KB (21112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7b02498ca9736460c6b90f4b49e013ad92d78eef2f56d0cddf606b832fa727`

```dockerfile
```

-	Layers:
	-	`sha256:64fb5f61d8cc58ff61ae7ee554aa19f39db04ae59f85dcf6c6154689a69efa50`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 21.1 KB (21112 bytes)  
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
$ docker pull varnish@sha256:4b595728592a5b9709c9aac15368ca492e9742fb269ed12466b434a62b2c1b63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0.2` - linux; amd64

```console
$ docker pull varnish@sha256:adf7e703e6d587af2b4650de70577b539bb23327d9f0b6108b57f7c38ffd491f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120253544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af3863ad31fd396961b4403df3c93c7e85c144020b632a76621328ffe0c1578`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:12:25 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:12:25 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:12:25 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:12:25 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:12:25 GMT
USER varnish
# Tue, 14 Jul 2026 18:12:25 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:12:25 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:497eee8f588e2e60b98a30bf2b86bc4b0b2e5aefe1233abdf5467c34cc6c1441`  
		Last Modified: Tue, 14 Jul 2026 18:12:40 GMT  
		Size: 90.5 MB (90469518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbc4ff9f1854eb0685ec29af4c58d2436a7abed97d78fe50f7612f689f5b266`  
		Last Modified: Tue, 14 Jul 2026 18:12:37 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65384e8a5dd88be9c6f80e83481c924a10cdab8af6739eaf48ad147bcf1774b6`  
		Last Modified: Tue, 14 Jul 2026 18:12:38 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61819120a864512478198cf549576f552c547afde73c2c0b780d7f79a63c6f7`  
		Last Modified: Tue, 14 Jul 2026 18:12:38 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2` - unknown; unknown

```console
$ docker pull varnish@sha256:4e7e3ee91ccbe5b54d075acabe98d43f11ccda4954a15d5946b57d106be1cc67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51132c7b2b54bcf62bb55c4a339485564920be81b870b0e9f2d97963a03e61e`

```dockerfile
```

-	Layers:
	-	`sha256:089428c41929c3ba226ffee068cb057c70cf467c8d09c0ab30613cde491a0ecb`  
		Last Modified: Tue, 14 Jul 2026 18:12:37 GMT  
		Size: 21.0 KB (20997 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0.2` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:9907dcca0b773dc33db1e5b078d446cb3008b600921a1d505a55c526a92c0d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114257623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b37ef742bd5b893ef81f7e39a30d2543706a0440025f1788464f5bfe81c281`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:00:03 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:00:03 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:00:03 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:00:03 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:00:03 GMT
USER varnish
# Tue, 14 Jul 2026 18:00:03 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:00:03 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98bcd9d50c954f71fbe6c8147e4f8ec8a795892548a16df9f5b32b82b7857a00`  
		Last Modified: Tue, 14 Jul 2026 18:00:17 GMT  
		Size: 84.1 MB (84110794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2bc88cf0621115589a1875ac197fb46bfac354faee80878b35b3e092116c01`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509b10e6b3dcf70c575c643b0d31354056597c2c8dd63d63b1916c0267195b26`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8be1db79de26c45bdbd37998e78e62c041a0df56ab46680dfd35ace802339743`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2` - unknown; unknown

```console
$ docker pull varnish@sha256:643e479da0e35b9bd55d8473b0b7396a23760d0315603c41a277ea6cbdbc4284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 KB (21112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7b02498ca9736460c6b90f4b49e013ad92d78eef2f56d0cddf606b832fa727`

```dockerfile
```

-	Layers:
	-	`sha256:64fb5f61d8cc58ff61ae7ee554aa19f39db04ae59f85dcf6c6154689a69efa50`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 21.1 KB (21112 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8.0.2-1`

```console
$ docker pull varnish@sha256:4b595728592a5b9709c9aac15368ca492e9742fb269ed12466b434a62b2c1b63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0.2-1` - linux; amd64

```console
$ docker pull varnish@sha256:adf7e703e6d587af2b4650de70577b539bb23327d9f0b6108b57f7c38ffd491f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120253544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af3863ad31fd396961b4403df3c93c7e85c144020b632a76621328ffe0c1578`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:12:25 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:12:25 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:12:25 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:12:25 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:12:25 GMT
USER varnish
# Tue, 14 Jul 2026 18:12:25 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:12:25 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:497eee8f588e2e60b98a30bf2b86bc4b0b2e5aefe1233abdf5467c34cc6c1441`  
		Last Modified: Tue, 14 Jul 2026 18:12:40 GMT  
		Size: 90.5 MB (90469518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbc4ff9f1854eb0685ec29af4c58d2436a7abed97d78fe50f7612f689f5b266`  
		Last Modified: Tue, 14 Jul 2026 18:12:37 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65384e8a5dd88be9c6f80e83481c924a10cdab8af6739eaf48ad147bcf1774b6`  
		Last Modified: Tue, 14 Jul 2026 18:12:38 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61819120a864512478198cf549576f552c547afde73c2c0b780d7f79a63c6f7`  
		Last Modified: Tue, 14 Jul 2026 18:12:38 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2-1` - unknown; unknown

```console
$ docker pull varnish@sha256:4e7e3ee91ccbe5b54d075acabe98d43f11ccda4954a15d5946b57d106be1cc67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51132c7b2b54bcf62bb55c4a339485564920be81b870b0e9f2d97963a03e61e`

```dockerfile
```

-	Layers:
	-	`sha256:089428c41929c3ba226ffee068cb057c70cf467c8d09c0ab30613cde491a0ecb`  
		Last Modified: Tue, 14 Jul 2026 18:12:37 GMT  
		Size: 21.0 KB (20997 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0.2-1` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:9907dcca0b773dc33db1e5b078d446cb3008b600921a1d505a55c526a92c0d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114257623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b37ef742bd5b893ef81f7e39a30d2543706a0440025f1788464f5bfe81c281`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:00:03 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:00:03 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:00:03 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:00:03 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:00:03 GMT
USER varnish
# Tue, 14 Jul 2026 18:00:03 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:00:03 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98bcd9d50c954f71fbe6c8147e4f8ec8a795892548a16df9f5b32b82b7857a00`  
		Last Modified: Tue, 14 Jul 2026 18:00:17 GMT  
		Size: 84.1 MB (84110794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2bc88cf0621115589a1875ac197fb46bfac354faee80878b35b3e092116c01`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509b10e6b3dcf70c575c643b0d31354056597c2c8dd63d63b1916c0267195b26`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8be1db79de26c45bdbd37998e78e62c041a0df56ab46680dfd35ace802339743`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2-1` - unknown; unknown

```console
$ docker pull varnish@sha256:643e479da0e35b9bd55d8473b0b7396a23760d0315603c41a277ea6cbdbc4284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 KB (21112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7b02498ca9736460c6b90f4b49e013ad92d78eef2f56d0cddf606b832fa727`

```dockerfile
```

-	Layers:
	-	`sha256:64fb5f61d8cc58ff61ae7ee554aa19f39db04ae59f85dcf6c6154689a69efa50`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 21.1 KB (21112 bytes)  
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
$ docker pull varnish@sha256:5bc4e05a10570fb234fff01d13eb25ecac697f5c66a2c26ba7353ce491ac5500
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9` - linux; amd64

```console
$ docker pull varnish@sha256:a8ea39fa449f671271992ff118c78ec6d5059b8aba146b06b42a393794cc09fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125044011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:920a1ff6367629ce82455f55766d77d3e9d973fbf7173a93613d42d857b213ea`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:11:12 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:11:12 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-3
# Tue, 14 Jul 2026 18:11:12 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:11:12 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-3 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:11:12 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:11:12 GMT
USER varnish
# Tue, 14 Jul 2026 18:11:12 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:11:12 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927c16520d846410bc0ece14c1a8a67007c93500e4ac8aa695f9fb086a8e41bd`  
		Last Modified: Tue, 14 Jul 2026 18:11:27 GMT  
		Size: 95.3 MB (95260231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfecb8a2153a6d71b66b0ccb1c27930a0491bf3f472339e5b4ee41bce4ee33c`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bde9b0dce60139ddcf974d4ed819fb526e9d46a145f6633f1a457f8e8694963`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 1.0 KB (1003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191c0fbfd7b3d2cecfe297e5efb6b5f9054c4d20e46bb0e88a4f1445273f8a3a`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:d0806b4004e277795c9057adfa63988a4c955ae2940417f813b9aa139bf73823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 KB (20291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87c112e7169439e4d7479edeccb5e22ab831248fd576db02af241d3c6877fa5`

```dockerfile
```

-	Layers:
	-	`sha256:f4b2dcf3c5c7cd8d0b97d655f45c93d00e58ad56157cf30d6a72640d9f59f3e5`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 20.3 KB (20291 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:06ea45e2435d3a7ec5dc5575aa075bd504b26d18502b8ae67416f838b0331e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118868434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f53709de323137b4f7617f26dc99107bdd5424680de27800846cba0219a92fc2`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 17:58:41 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 17:58:41 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-3
# Tue, 14 Jul 2026 17:58:41 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 17:58:41 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-3 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 17:58:41 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 17:58:41 GMT
USER varnish
# Tue, 14 Jul 2026 17:58:41 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 17:58:41 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb4d8aa892c41184a1923c223f64f1b89bb9734f5a14e8015f29e67c84f74d84`  
		Last Modified: Tue, 14 Jul 2026 17:58:56 GMT  
		Size: 88.7 MB (88721849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98aa80fb57659661aeb21e5455bb87d436e064edd7ec1b6a5807a9b95caada62`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b794725c116bd583540faa8e3869b55eacd539515c2d192604d43619ecaf724f`  
		Last Modified: Tue, 14 Jul 2026 17:58:53 GMT  
		Size: 1.0 KB (1006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953e94d63dfe9abc4d0935c4b079c491caa63777e4d8bf3ffc276b0a92aae907`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:37a721df8a30b9b540006d3dbdb8c93d3c07c43f59ae66456add79b7f6f8adac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 KB (20421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4da822d7d06e3296f528434ffc2e9ea436f4973acfd1799c32a0f7dfce49806`

```dockerfile
```

-	Layers:
	-	`sha256:1f898191fad47116218d186ad4e5ac9d28fd42d69a46081c8623956ba73ead62`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 20.4 KB (20421 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0`

```console
$ docker pull varnish@sha256:5bc4e05a10570fb234fff01d13eb25ecac697f5c66a2c26ba7353ce491ac5500
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0` - linux; amd64

```console
$ docker pull varnish@sha256:a8ea39fa449f671271992ff118c78ec6d5059b8aba146b06b42a393794cc09fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125044011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:920a1ff6367629ce82455f55766d77d3e9d973fbf7173a93613d42d857b213ea`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:11:12 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:11:12 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-3
# Tue, 14 Jul 2026 18:11:12 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:11:12 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-3 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:11:12 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:11:12 GMT
USER varnish
# Tue, 14 Jul 2026 18:11:12 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:11:12 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927c16520d846410bc0ece14c1a8a67007c93500e4ac8aa695f9fb086a8e41bd`  
		Last Modified: Tue, 14 Jul 2026 18:11:27 GMT  
		Size: 95.3 MB (95260231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfecb8a2153a6d71b66b0ccb1c27930a0491bf3f472339e5b4ee41bce4ee33c`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bde9b0dce60139ddcf974d4ed819fb526e9d46a145f6633f1a457f8e8694963`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 1.0 KB (1003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191c0fbfd7b3d2cecfe297e5efb6b5f9054c4d20e46bb0e88a4f1445273f8a3a`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0` - unknown; unknown

```console
$ docker pull varnish@sha256:d0806b4004e277795c9057adfa63988a4c955ae2940417f813b9aa139bf73823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 KB (20291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87c112e7169439e4d7479edeccb5e22ab831248fd576db02af241d3c6877fa5`

```dockerfile
```

-	Layers:
	-	`sha256:f4b2dcf3c5c7cd8d0b97d655f45c93d00e58ad56157cf30d6a72640d9f59f3e5`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 20.3 KB (20291 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:06ea45e2435d3a7ec5dc5575aa075bd504b26d18502b8ae67416f838b0331e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118868434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f53709de323137b4f7617f26dc99107bdd5424680de27800846cba0219a92fc2`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 17:58:41 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 17:58:41 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-3
# Tue, 14 Jul 2026 17:58:41 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 17:58:41 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-3 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 17:58:41 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 17:58:41 GMT
USER varnish
# Tue, 14 Jul 2026 17:58:41 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 17:58:41 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb4d8aa892c41184a1923c223f64f1b89bb9734f5a14e8015f29e67c84f74d84`  
		Last Modified: Tue, 14 Jul 2026 17:58:56 GMT  
		Size: 88.7 MB (88721849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98aa80fb57659661aeb21e5455bb87d436e064edd7ec1b6a5807a9b95caada62`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b794725c116bd583540faa8e3869b55eacd539515c2d192604d43619ecaf724f`  
		Last Modified: Tue, 14 Jul 2026 17:58:53 GMT  
		Size: 1.0 KB (1006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953e94d63dfe9abc4d0935c4b079c491caa63777e4d8bf3ffc276b0a92aae907`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0` - unknown; unknown

```console
$ docker pull varnish@sha256:37a721df8a30b9b540006d3dbdb8c93d3c07c43f59ae66456add79b7f6f8adac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 KB (20421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4da822d7d06e3296f528434ffc2e9ea436f4973acfd1799c32a0f7dfce49806`

```dockerfile
```

-	Layers:
	-	`sha256:1f898191fad47116218d186ad4e5ac9d28fd42d69a46081c8623956ba73ead62`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 20.4 KB (20421 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0.3`

```console
$ docker pull varnish@sha256:5bc4e05a10570fb234fff01d13eb25ecac697f5c66a2c26ba7353ce491ac5500
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0.3` - linux; amd64

```console
$ docker pull varnish@sha256:a8ea39fa449f671271992ff118c78ec6d5059b8aba146b06b42a393794cc09fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125044011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:920a1ff6367629ce82455f55766d77d3e9d973fbf7173a93613d42d857b213ea`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:11:12 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:11:12 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-3
# Tue, 14 Jul 2026 18:11:12 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:11:12 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-3 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:11:12 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:11:12 GMT
USER varnish
# Tue, 14 Jul 2026 18:11:12 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:11:12 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927c16520d846410bc0ece14c1a8a67007c93500e4ac8aa695f9fb086a8e41bd`  
		Last Modified: Tue, 14 Jul 2026 18:11:27 GMT  
		Size: 95.3 MB (95260231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfecb8a2153a6d71b66b0ccb1c27930a0491bf3f472339e5b4ee41bce4ee33c`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bde9b0dce60139ddcf974d4ed819fb526e9d46a145f6633f1a457f8e8694963`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 1.0 KB (1003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191c0fbfd7b3d2cecfe297e5efb6b5f9054c4d20e46bb0e88a4f1445273f8a3a`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.3` - unknown; unknown

```console
$ docker pull varnish@sha256:d0806b4004e277795c9057adfa63988a4c955ae2940417f813b9aa139bf73823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 KB (20291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87c112e7169439e4d7479edeccb5e22ab831248fd576db02af241d3c6877fa5`

```dockerfile
```

-	Layers:
	-	`sha256:f4b2dcf3c5c7cd8d0b97d655f45c93d00e58ad56157cf30d6a72640d9f59f3e5`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 20.3 KB (20291 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0.3` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:06ea45e2435d3a7ec5dc5575aa075bd504b26d18502b8ae67416f838b0331e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118868434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f53709de323137b4f7617f26dc99107bdd5424680de27800846cba0219a92fc2`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 17:58:41 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 17:58:41 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-3
# Tue, 14 Jul 2026 17:58:41 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 17:58:41 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-3 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 17:58:41 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 17:58:41 GMT
USER varnish
# Tue, 14 Jul 2026 17:58:41 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 17:58:41 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb4d8aa892c41184a1923c223f64f1b89bb9734f5a14e8015f29e67c84f74d84`  
		Last Modified: Tue, 14 Jul 2026 17:58:56 GMT  
		Size: 88.7 MB (88721849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98aa80fb57659661aeb21e5455bb87d436e064edd7ec1b6a5807a9b95caada62`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b794725c116bd583540faa8e3869b55eacd539515c2d192604d43619ecaf724f`  
		Last Modified: Tue, 14 Jul 2026 17:58:53 GMT  
		Size: 1.0 KB (1006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953e94d63dfe9abc4d0935c4b079c491caa63777e4d8bf3ffc276b0a92aae907`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.3` - unknown; unknown

```console
$ docker pull varnish@sha256:37a721df8a30b9b540006d3dbdb8c93d3c07c43f59ae66456add79b7f6f8adac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 KB (20421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4da822d7d06e3296f528434ffc2e9ea436f4973acfd1799c32a0f7dfce49806`

```dockerfile
```

-	Layers:
	-	`sha256:1f898191fad47116218d186ad4e5ac9d28fd42d69a46081c8623956ba73ead62`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 20.4 KB (20421 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0.3-3`

```console
$ docker pull varnish@sha256:5bc4e05a10570fb234fff01d13eb25ecac697f5c66a2c26ba7353ce491ac5500
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0.3-3` - linux; amd64

```console
$ docker pull varnish@sha256:a8ea39fa449f671271992ff118c78ec6d5059b8aba146b06b42a393794cc09fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125044011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:920a1ff6367629ce82455f55766d77d3e9d973fbf7173a93613d42d857b213ea`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:11:12 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:11:12 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-3
# Tue, 14 Jul 2026 18:11:12 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:11:12 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-3 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:11:12 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:11:12 GMT
USER varnish
# Tue, 14 Jul 2026 18:11:12 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:11:12 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927c16520d846410bc0ece14c1a8a67007c93500e4ac8aa695f9fb086a8e41bd`  
		Last Modified: Tue, 14 Jul 2026 18:11:27 GMT  
		Size: 95.3 MB (95260231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfecb8a2153a6d71b66b0ccb1c27930a0491bf3f472339e5b4ee41bce4ee33c`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bde9b0dce60139ddcf974d4ed819fb526e9d46a145f6633f1a457f8e8694963`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 1.0 KB (1003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191c0fbfd7b3d2cecfe297e5efb6b5f9054c4d20e46bb0e88a4f1445273f8a3a`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.3-3` - unknown; unknown

```console
$ docker pull varnish@sha256:d0806b4004e277795c9057adfa63988a4c955ae2940417f813b9aa139bf73823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 KB (20291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87c112e7169439e4d7479edeccb5e22ab831248fd576db02af241d3c6877fa5`

```dockerfile
```

-	Layers:
	-	`sha256:f4b2dcf3c5c7cd8d0b97d655f45c93d00e58ad56157cf30d6a72640d9f59f3e5`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 20.3 KB (20291 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0.3-3` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:06ea45e2435d3a7ec5dc5575aa075bd504b26d18502b8ae67416f838b0331e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118868434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f53709de323137b4f7617f26dc99107bdd5424680de27800846cba0219a92fc2`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 17:58:41 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 17:58:41 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-3
# Tue, 14 Jul 2026 17:58:41 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 17:58:41 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-3 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 17:58:41 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 17:58:41 GMT
USER varnish
# Tue, 14 Jul 2026 17:58:41 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 17:58:41 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb4d8aa892c41184a1923c223f64f1b89bb9734f5a14e8015f29e67c84f74d84`  
		Last Modified: Tue, 14 Jul 2026 17:58:56 GMT  
		Size: 88.7 MB (88721849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98aa80fb57659661aeb21e5455bb87d436e064edd7ec1b6a5807a9b95caada62`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b794725c116bd583540faa8e3869b55eacd539515c2d192604d43619ecaf724f`  
		Last Modified: Tue, 14 Jul 2026 17:58:53 GMT  
		Size: 1.0 KB (1006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953e94d63dfe9abc4d0935c4b079c491caa63777e4d8bf3ffc276b0a92aae907`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.3-3` - unknown; unknown

```console
$ docker pull varnish@sha256:37a721df8a30b9b540006d3dbdb8c93d3c07c43f59ae66456add79b7f6f8adac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 KB (20421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4da822d7d06e3296f528434ffc2e9ea436f4973acfd1799c32a0f7dfce49806`

```dockerfile
```

-	Layers:
	-	`sha256:1f898191fad47116218d186ad4e5ac9d28fd42d69a46081c8623956ba73ead62`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 20.4 KB (20421 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:fresh`

```console
$ docker pull varnish@sha256:5bc4e05a10570fb234fff01d13eb25ecac697f5c66a2c26ba7353ce491ac5500
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:fresh` - linux; amd64

```console
$ docker pull varnish@sha256:a8ea39fa449f671271992ff118c78ec6d5059b8aba146b06b42a393794cc09fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125044011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:920a1ff6367629ce82455f55766d77d3e9d973fbf7173a93613d42d857b213ea`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:11:12 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:11:12 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-3
# Tue, 14 Jul 2026 18:11:12 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:11:12 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-3 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:11:12 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:11:12 GMT
USER varnish
# Tue, 14 Jul 2026 18:11:12 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:11:12 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927c16520d846410bc0ece14c1a8a67007c93500e4ac8aa695f9fb086a8e41bd`  
		Last Modified: Tue, 14 Jul 2026 18:11:27 GMT  
		Size: 95.3 MB (95260231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfecb8a2153a6d71b66b0ccb1c27930a0491bf3f472339e5b4ee41bce4ee33c`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bde9b0dce60139ddcf974d4ed819fb526e9d46a145f6633f1a457f8e8694963`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 1.0 KB (1003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191c0fbfd7b3d2cecfe297e5efb6b5f9054c4d20e46bb0e88a4f1445273f8a3a`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:d0806b4004e277795c9057adfa63988a4c955ae2940417f813b9aa139bf73823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 KB (20291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87c112e7169439e4d7479edeccb5e22ab831248fd576db02af241d3c6877fa5`

```dockerfile
```

-	Layers:
	-	`sha256:f4b2dcf3c5c7cd8d0b97d655f45c93d00e58ad56157cf30d6a72640d9f59f3e5`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 20.3 KB (20291 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:fresh` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:06ea45e2435d3a7ec5dc5575aa075bd504b26d18502b8ae67416f838b0331e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118868434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f53709de323137b4f7617f26dc99107bdd5424680de27800846cba0219a92fc2`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 17:58:41 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 17:58:41 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-3
# Tue, 14 Jul 2026 17:58:41 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 17:58:41 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-3 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 17:58:41 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 17:58:41 GMT
USER varnish
# Tue, 14 Jul 2026 17:58:41 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 17:58:41 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb4d8aa892c41184a1923c223f64f1b89bb9734f5a14e8015f29e67c84f74d84`  
		Last Modified: Tue, 14 Jul 2026 17:58:56 GMT  
		Size: 88.7 MB (88721849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98aa80fb57659661aeb21e5455bb87d436e064edd7ec1b6a5807a9b95caada62`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b794725c116bd583540faa8e3869b55eacd539515c2d192604d43619ecaf724f`  
		Last Modified: Tue, 14 Jul 2026 17:58:53 GMT  
		Size: 1.0 KB (1006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953e94d63dfe9abc4d0935c4b079c491caa63777e4d8bf3ffc276b0a92aae907`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:37a721df8a30b9b540006d3dbdb8c93d3c07c43f59ae66456add79b7f6f8adac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 KB (20421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4da822d7d06e3296f528434ffc2e9ea436f4973acfd1799c32a0f7dfce49806`

```dockerfile
```

-	Layers:
	-	`sha256:1f898191fad47116218d186ad4e5ac9d28fd42d69a46081c8623956ba73ead62`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 20.4 KB (20421 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:latest`

```console
$ docker pull varnish@sha256:5bc4e05a10570fb234fff01d13eb25ecac697f5c66a2c26ba7353ce491ac5500
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:latest` - linux; amd64

```console
$ docker pull varnish@sha256:a8ea39fa449f671271992ff118c78ec6d5059b8aba146b06b42a393794cc09fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125044011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:920a1ff6367629ce82455f55766d77d3e9d973fbf7173a93613d42d857b213ea`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:11:12 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:11:12 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-3
# Tue, 14 Jul 2026 18:11:12 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:11:12 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-3 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:11:12 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:11:12 GMT
USER varnish
# Tue, 14 Jul 2026 18:11:12 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:11:12 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927c16520d846410bc0ece14c1a8a67007c93500e4ac8aa695f9fb086a8e41bd`  
		Last Modified: Tue, 14 Jul 2026 18:11:27 GMT  
		Size: 95.3 MB (95260231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfecb8a2153a6d71b66b0ccb1c27930a0491bf3f472339e5b4ee41bce4ee33c`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bde9b0dce60139ddcf974d4ed819fb526e9d46a145f6633f1a457f8e8694963`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 1.0 KB (1003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191c0fbfd7b3d2cecfe297e5efb6b5f9054c4d20e46bb0e88a4f1445273f8a3a`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:d0806b4004e277795c9057adfa63988a4c955ae2940417f813b9aa139bf73823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 KB (20291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87c112e7169439e4d7479edeccb5e22ab831248fd576db02af241d3c6877fa5`

```dockerfile
```

-	Layers:
	-	`sha256:f4b2dcf3c5c7cd8d0b97d655f45c93d00e58ad56157cf30d6a72640d9f59f3e5`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 20.3 KB (20291 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:latest` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:06ea45e2435d3a7ec5dc5575aa075bd504b26d18502b8ae67416f838b0331e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118868434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f53709de323137b4f7617f26dc99107bdd5424680de27800846cba0219a92fc2`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 17:58:41 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 17:58:41 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-3
# Tue, 14 Jul 2026 17:58:41 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 17:58:41 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-3 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 17:58:41 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 17:58:41 GMT
USER varnish
# Tue, 14 Jul 2026 17:58:41 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 17:58:41 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb4d8aa892c41184a1923c223f64f1b89bb9734f5a14e8015f29e67c84f74d84`  
		Last Modified: Tue, 14 Jul 2026 17:58:56 GMT  
		Size: 88.7 MB (88721849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98aa80fb57659661aeb21e5455bb87d436e064edd7ec1b6a5807a9b95caada62`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b794725c116bd583540faa8e3869b55eacd539515c2d192604d43619ecaf724f`  
		Last Modified: Tue, 14 Jul 2026 17:58:53 GMT  
		Size: 1.0 KB (1006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953e94d63dfe9abc4d0935c4b079c491caa63777e4d8bf3ffc276b0a92aae907`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:37a721df8a30b9b540006d3dbdb8c93d3c07c43f59ae66456add79b7f6f8adac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 KB (20421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4da822d7d06e3296f528434ffc2e9ea436f4973acfd1799c32a0f7dfce49806`

```dockerfile
```

-	Layers:
	-	`sha256:1f898191fad47116218d186ad4e5ac9d28fd42d69a46081c8623956ba73ead62`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 20.4 KB (20421 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:old`

```console
$ docker pull varnish@sha256:4b595728592a5b9709c9aac15368ca492e9742fb269ed12466b434a62b2c1b63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:old` - linux; amd64

```console
$ docker pull varnish@sha256:adf7e703e6d587af2b4650de70577b539bb23327d9f0b6108b57f7c38ffd491f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120253544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af3863ad31fd396961b4403df3c93c7e85c144020b632a76621328ffe0c1578`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:12:25 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:12:25 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:12:25 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:12:25 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:12:25 GMT
USER varnish
# Tue, 14 Jul 2026 18:12:25 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:12:25 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:497eee8f588e2e60b98a30bf2b86bc4b0b2e5aefe1233abdf5467c34cc6c1441`  
		Last Modified: Tue, 14 Jul 2026 18:12:40 GMT  
		Size: 90.5 MB (90469518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbc4ff9f1854eb0685ec29af4c58d2436a7abed97d78fe50f7612f689f5b266`  
		Last Modified: Tue, 14 Jul 2026 18:12:37 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65384e8a5dd88be9c6f80e83481c924a10cdab8af6739eaf48ad147bcf1774b6`  
		Last Modified: Tue, 14 Jul 2026 18:12:38 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61819120a864512478198cf549576f552c547afde73c2c0b780d7f79a63c6f7`  
		Last Modified: Tue, 14 Jul 2026 18:12:38 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:4e7e3ee91ccbe5b54d075acabe98d43f11ccda4954a15d5946b57d106be1cc67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51132c7b2b54bcf62bb55c4a339485564920be81b870b0e9f2d97963a03e61e`

```dockerfile
```

-	Layers:
	-	`sha256:089428c41929c3ba226ffee068cb057c70cf467c8d09c0ab30613cde491a0ecb`  
		Last Modified: Tue, 14 Jul 2026 18:12:37 GMT  
		Size: 21.0 KB (20997 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:old` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:9907dcca0b773dc33db1e5b078d446cb3008b600921a1d505a55c526a92c0d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114257623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b37ef742bd5b893ef81f7e39a30d2543706a0440025f1788464f5bfe81c281`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:00:03 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:00:03 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:00:03 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:00:03 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:00:03 GMT
USER varnish
# Tue, 14 Jul 2026 18:00:03 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:00:03 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98bcd9d50c954f71fbe6c8147e4f8ec8a795892548a16df9f5b32b82b7857a00`  
		Last Modified: Tue, 14 Jul 2026 18:00:17 GMT  
		Size: 84.1 MB (84110794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2bc88cf0621115589a1875ac197fb46bfac354faee80878b35b3e092116c01`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509b10e6b3dcf70c575c643b0d31354056597c2c8dd63d63b1916c0267195b26`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8be1db79de26c45bdbd37998e78e62c041a0df56ab46680dfd35ace802339743`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:643e479da0e35b9bd55d8473b0b7396a23760d0315603c41a277ea6cbdbc4284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 KB (21112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7b02498ca9736460c6b90f4b49e013ad92d78eef2f56d0cddf606b832fa727`

```dockerfile
```

-	Layers:
	-	`sha256:64fb5f61d8cc58ff61ae7ee554aa19f39db04ae59f85dcf6c6154689a69efa50`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 21.1 KB (21112 bytes)  
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
$ docker pull varnish@sha256:05c583aa2bb69d17ed41a2c80e01de2e7181d49e54a3483277c54ee4dbe0378e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:stable` - linux; amd64

```console
$ docker pull varnish@sha256:7b7e88dbf3a2ed3ed886d84006af84e736c2ce60cf20dfffd3297a2a47a93029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121892562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1176fffba2ebf74600f5af171f16e1c312295accca1eedf724bf371daf6a9213`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:39:21 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:39:21 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 14 Jul 2026 01:39:21 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:39:21 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:39:21 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:39:21 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:39:21 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:39:21 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:39:21 GMT
CMD []
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90a565b87e254c342e59689b58e0c029b658e2efd3fb28256ffd6cc69db5d75`  
		Last Modified: Tue, 14 Jul 2026 01:39:35 GMT  
		Size: 93.7 MB (93659166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2dd2421a0b3a92fa3b87384ecf9c1833bcdfaa6f4333ee7eae5cc036f66fd38`  
		Last Modified: Tue, 14 Jul 2026 01:39:32 GMT  
		Size: 721.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:stable` - unknown; unknown

```console
$ docker pull varnish@sha256:807f78fc0394bb7a1c7908707be4fdccec0f3b8c3fb30bbbee4bffd38aa0d85c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:443aacbad366320a47fd7b34d5e55da1be135cd50b884e798b7878c9ce5adf39`

```dockerfile
```

-	Layers:
	-	`sha256:dd8d86208044292e0d3ba1d073202e0d7a817c66e6f48b2eb11acdb3547d621b`  
		Last Modified: Tue, 14 Jul 2026 01:39:32 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:stable` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:46279ea82babc12127f76364b386f33304f92f3c04d32eff9fb9931b069fbfc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116330996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a652ebcbbe413fc3f1ee3e94b10aa19b368a2f745636510aabac0d2b24e2b19d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:42:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:42:09 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 14 Jul 2026 01:42:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:42:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:42:09 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:42:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:42:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:42:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:42:09 GMT
CMD []
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf25f2626b9a59c60dd8217e3322ee049596f690c32a6be955b4ba59cbf527e`  
		Last Modified: Tue, 14 Jul 2026 01:42:23 GMT  
		Size: 88.2 MB (88212987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a4463bcecf21b861ab4b000b97e2057b5ee891d6acf9e96b55cf3c552bf436`  
		Last Modified: Tue, 14 Jul 2026 01:42:20 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:stable` - unknown; unknown

```console
$ docker pull varnish@sha256:7b26b126559591fd7757d1a423be1dc455c8c6ae07195be7df5fbae12081e386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53cd6a317b67d537e4ce5bf4f3282f9939cc4d3371de208ab93a83a1002cc20d`

```dockerfile
```

-	Layers:
	-	`sha256:19b476306e275796a9e0b39b21386eb32a7f22897c20a3e3f60fba720ec78828`  
		Last Modified: Tue, 14 Jul 2026 01:42:20 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json
