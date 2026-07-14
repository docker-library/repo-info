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
-	[`varnish:9.0.3-1`](#varnish903-1)
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
$ docker pull varnish@sha256:fcd92ea45df06e2b29a339165c3f64843b0102e0698ad3e25f4bde99ff326ab9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8` - linux; amd64

```console
$ docker pull varnish@sha256:8178408dc6b0c13af2f18611e0d99de270cb333f06b9680b831237153c522f3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120256326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86cb644c6997458cb46437c470be57950ac1e35b03ab31b4ec9f26a752d87c57`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:40:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 01:40:09 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:40:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:40:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:40:09 GMT
USER varnish
# Tue, 14 Jul 2026 01:40:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:40:09 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:addef6db71ca9abb05bed866fd9f03b4f01bdd0e5975dcf2a29fe342a395594f`  
		Last Modified: Tue, 14 Jul 2026 01:40:23 GMT  
		Size: 90.5 MB (90472304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eeaf37db7ec20f296122835c8249ec6ba0d00bf1166544e2d347da59fe37609`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3c51e1802cf459f277e69246137c04edaad74291d16c8615f7053309530c8b2`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80dad77942c6d8529eca0e83f0320de22b000a971af3c4b358c2a45f1aa5410f`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8` - unknown; unknown

```console
$ docker pull varnish@sha256:c437d8e80097176f37fc5c81b9daf687a8105ea552d9ac940dc706d014313c3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051616de3cfe62023c4493e3861d43f3c96da85cb47d7ff6e217ccf0b1f55dcc`

```dockerfile
```

-	Layers:
	-	`sha256:5d1d26fefd05797f7c26f6171551f2757fb3e57455f2ddea549e3f31fe101b48`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 20.9 KB (20868 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6659032ff1aa5d51a333a651a7107bf09df5c58903e89fdec6e97375647b7d19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114253078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6553e98773bd5ab1668eb6e5a2edf306ea6c73a1b819fbdeeddcc5c7f9dbb5d7`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:01 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:43:01 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 01:43:01 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 01:43:01 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 01:43:01 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:43:01 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:43:01 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:43:01 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:43:01 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:43:01 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:43:01 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:43:01 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:43:02 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:43:02 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:43:02 GMT
USER varnish
# Tue, 14 Jul 2026 01:43:02 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:43:02 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b698e23c6436268f5004a34028d67a3e19e63b4b0072aa12ab025beb73fda8f`  
		Last Modified: Tue, 14 Jul 2026 01:43:22 GMT  
		Size: 84.1 MB (84106252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b80fc5a719287087a3f948558a180c7fc3065a068744d6162f8cb620d912f5`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c6efc61a8f081f414322beaa034851ffada6dc0abf27022e92627fabeddc3e`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f20ae84e312d510c25ea33d0b92e843ab364c6bae97a13a6587fd445ccc8236`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8` - unknown; unknown

```console
$ docker pull varnish@sha256:faa2f99ccc2308db435d866e3ca20aa63504f62e5d55d535c7eb86bc8e3abb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab82243712c685cacbf37b589d3fe164e4eb00f6a1100014ab1a2013b4d3ee3`

```dockerfile
```

-	Layers:
	-	`sha256:21a0ec58174ca69dbcd5882271841c7ed12d1f28b46932f0f91a1faee0e96a2c`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 21.0 KB (20985 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8-alpine`

```console
$ docker pull varnish@sha256:a44e33228e62b1da338b0de838e56ef0c49fc828e933b393a7ecf20a38121e60
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8-alpine` - linux; amd64

```console
$ docker pull varnish@sha256:b05c774dc8e19360f9718835e98af8f4b94f73a5c945d2052a528958944b892e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.0 MB (93034595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c921eb4e0ed8f21795cc59b2fdde256911e14722157457c03969d4c9c52e5fa`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:23 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Mon, 22 Jun 2026 19:54:23 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Mon, 22 Jun 2026 19:54:23 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Mon, 22 Jun 2026 19:54:23 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Mon, 22 Jun 2026 19:54:23 GMT
ENV VARNISH_SIZE=100M
# Mon, 22 Jun 2026 19:54:23 GMT
ENV VSM_NOPID=1
# Mon, 22 Jun 2026 19:54:23 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Mon, 22 Jun 2026 19:54:23 GMT
WORKDIR /etc/varnish
# Mon, 22 Jun 2026 19:54:23 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:23 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Mon, 22 Jun 2026 19:54:23 GMT
COPY index.html /etc/varnish/ # buildkit
# Mon, 22 Jun 2026 19:54:23 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Mon, 22 Jun 2026 19:54:23 GMT
USER varnish
# Mon, 22 Jun 2026 19:54:23 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Mon, 22 Jun 2026 19:54:23 GMT
CMD []
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215620931a8076c266ac6fdd258edb15c83525809dcb96926865c9d0d95db873`  
		Last Modified: Mon, 22 Jun 2026 19:54:37 GMT  
		Size: 89.2 MB (89187040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4129b7be8a15877ab424531ef956ab4c80e6f51fd5abfb3d741a6cce3f0a889`  
		Last Modified: Mon, 22 Jun 2026 19:54:34 GMT  
		Size: 500.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb448c926c3dcc4a2493c5831b29af7223c531dc08cc287d7b606dd8f80b668`  
		Last Modified: Mon, 22 Jun 2026 19:54:34 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15c6184f2532de9169714274a7a3be9b149c5ee07c1908ae7f6a28d571de3d54`  
		Last Modified: Mon, 22 Jun 2026 19:54:34 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:275987e296c2e6c9e630b67ac30987a57d563f891d63b116f79ad07278866d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e0caed73f581606a8bda3f1fc2ede415704844bddfda61a7015c634c9ef0aa`

```dockerfile
```

-	Layers:
	-	`sha256:af0ecf12dc5f1c5d3fadff66eccfc4468104a080d93f1d8fb67c7a010985c953`  
		Last Modified: Mon, 22 Jun 2026 19:54:35 GMT  
		Size: 20.5 KB (20498 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8-alpine` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:786088462bfa11a9de63ee6860e3d4cd2582c896cfc30a06ef4adc12f9f1c08d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84799141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a087cf9c812fac203b772e01ca99592cf7bf3fed1c3600113de1ac3ea4eeb838`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:55:50 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Mon, 22 Jun 2026 19:55:50 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Mon, 22 Jun 2026 19:55:50 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Mon, 22 Jun 2026 19:55:50 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Mon, 22 Jun 2026 19:55:50 GMT
ENV VARNISH_SIZE=100M
# Mon, 22 Jun 2026 19:55:50 GMT
ENV VSM_NOPID=1
# Mon, 22 Jun 2026 19:55:50 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Mon, 22 Jun 2026 19:55:50 GMT
WORKDIR /etc/varnish
# Mon, 22 Jun 2026 19:55:50 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:55:50 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Mon, 22 Jun 2026 19:55:50 GMT
COPY index.html /etc/varnish/ # buildkit
# Mon, 22 Jun 2026 19:55:50 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Mon, 22 Jun 2026 19:55:50 GMT
USER varnish
# Mon, 22 Jun 2026 19:55:50 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Mon, 22 Jun 2026 19:55:50 GMT
CMD []
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7a4b4ecda678c3dbc222e0d4ec0c1d634527f0a96662609b7421a3f9346c72`  
		Last Modified: Mon, 22 Jun 2026 19:56:02 GMT  
		Size: 80.6 MB (80614146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6d96b8b3760e0d3ae66e00a8e33e9321cddc66151bc0834462e57d378357cf`  
		Last Modified: Mon, 22 Jun 2026 19:56:00 GMT  
		Size: 500.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a2c1e2fa77b64c9a6dacb353229adc80a0853661106bb263e5b97a96390844`  
		Last Modified: Mon, 22 Jun 2026 19:56:00 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e417791ac79c1e5b4c7986b86d151d8da6def0a7b8d3d8c57c2bdf39d31957d`  
		Last Modified: Mon, 22 Jun 2026 19:56:00 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:5b2cdda6fba2cebdf20b66c6b1bc3d0fef88adfcc0e5f99e3319ae92489b55ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3309acee5e9be0347b2916eae01d5ef83a2a67be67a68e661542d0db32df3247`

```dockerfile
```

-	Layers:
	-	`sha256:92cb663791962fc731364a0b3c0a61c0d1cdef7133cfe9edda21cca123656171`  
		Last Modified: Mon, 22 Jun 2026 19:56:00 GMT  
		Size: 20.6 KB (20602 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8.0`

```console
$ docker pull varnish@sha256:fcd92ea45df06e2b29a339165c3f64843b0102e0698ad3e25f4bde99ff326ab9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0` - linux; amd64

```console
$ docker pull varnish@sha256:8178408dc6b0c13af2f18611e0d99de270cb333f06b9680b831237153c522f3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120256326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86cb644c6997458cb46437c470be57950ac1e35b03ab31b4ec9f26a752d87c57`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:40:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 01:40:09 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:40:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:40:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:40:09 GMT
USER varnish
# Tue, 14 Jul 2026 01:40:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:40:09 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:addef6db71ca9abb05bed866fd9f03b4f01bdd0e5975dcf2a29fe342a395594f`  
		Last Modified: Tue, 14 Jul 2026 01:40:23 GMT  
		Size: 90.5 MB (90472304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eeaf37db7ec20f296122835c8249ec6ba0d00bf1166544e2d347da59fe37609`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3c51e1802cf459f277e69246137c04edaad74291d16c8615f7053309530c8b2`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80dad77942c6d8529eca0e83f0320de22b000a971af3c4b358c2a45f1aa5410f`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0` - unknown; unknown

```console
$ docker pull varnish@sha256:c437d8e80097176f37fc5c81b9daf687a8105ea552d9ac940dc706d014313c3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051616de3cfe62023c4493e3861d43f3c96da85cb47d7ff6e217ccf0b1f55dcc`

```dockerfile
```

-	Layers:
	-	`sha256:5d1d26fefd05797f7c26f6171551f2757fb3e57455f2ddea549e3f31fe101b48`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 20.9 KB (20868 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6659032ff1aa5d51a333a651a7107bf09df5c58903e89fdec6e97375647b7d19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114253078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6553e98773bd5ab1668eb6e5a2edf306ea6c73a1b819fbdeeddcc5c7f9dbb5d7`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:01 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:43:01 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 01:43:01 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 01:43:01 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 01:43:01 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:43:01 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:43:01 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:43:01 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:43:01 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:43:01 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:43:01 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:43:01 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:43:02 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:43:02 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:43:02 GMT
USER varnish
# Tue, 14 Jul 2026 01:43:02 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:43:02 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b698e23c6436268f5004a34028d67a3e19e63b4b0072aa12ab025beb73fda8f`  
		Last Modified: Tue, 14 Jul 2026 01:43:22 GMT  
		Size: 84.1 MB (84106252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b80fc5a719287087a3f948558a180c7fc3065a068744d6162f8cb620d912f5`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c6efc61a8f081f414322beaa034851ffada6dc0abf27022e92627fabeddc3e`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f20ae84e312d510c25ea33d0b92e843ab364c6bae97a13a6587fd445ccc8236`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0` - unknown; unknown

```console
$ docker pull varnish@sha256:faa2f99ccc2308db435d866e3ca20aa63504f62e5d55d535c7eb86bc8e3abb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab82243712c685cacbf37b589d3fe164e4eb00f6a1100014ab1a2013b4d3ee3`

```dockerfile
```

-	Layers:
	-	`sha256:21a0ec58174ca69dbcd5882271841c7ed12d1f28b46932f0f91a1faee0e96a2c`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 21.0 KB (20985 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8.0-alpine`

```console
$ docker pull varnish@sha256:a44e33228e62b1da338b0de838e56ef0c49fc828e933b393a7ecf20a38121e60
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0-alpine` - linux; amd64

```console
$ docker pull varnish@sha256:b05c774dc8e19360f9718835e98af8f4b94f73a5c945d2052a528958944b892e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.0 MB (93034595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c921eb4e0ed8f21795cc59b2fdde256911e14722157457c03969d4c9c52e5fa`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:23 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Mon, 22 Jun 2026 19:54:23 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Mon, 22 Jun 2026 19:54:23 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Mon, 22 Jun 2026 19:54:23 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Mon, 22 Jun 2026 19:54:23 GMT
ENV VARNISH_SIZE=100M
# Mon, 22 Jun 2026 19:54:23 GMT
ENV VSM_NOPID=1
# Mon, 22 Jun 2026 19:54:23 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Mon, 22 Jun 2026 19:54:23 GMT
WORKDIR /etc/varnish
# Mon, 22 Jun 2026 19:54:23 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:23 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Mon, 22 Jun 2026 19:54:23 GMT
COPY index.html /etc/varnish/ # buildkit
# Mon, 22 Jun 2026 19:54:23 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Mon, 22 Jun 2026 19:54:23 GMT
USER varnish
# Mon, 22 Jun 2026 19:54:23 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Mon, 22 Jun 2026 19:54:23 GMT
CMD []
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215620931a8076c266ac6fdd258edb15c83525809dcb96926865c9d0d95db873`  
		Last Modified: Mon, 22 Jun 2026 19:54:37 GMT  
		Size: 89.2 MB (89187040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4129b7be8a15877ab424531ef956ab4c80e6f51fd5abfb3d741a6cce3f0a889`  
		Last Modified: Mon, 22 Jun 2026 19:54:34 GMT  
		Size: 500.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb448c926c3dcc4a2493c5831b29af7223c531dc08cc287d7b606dd8f80b668`  
		Last Modified: Mon, 22 Jun 2026 19:54:34 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15c6184f2532de9169714274a7a3be9b149c5ee07c1908ae7f6a28d571de3d54`  
		Last Modified: Mon, 22 Jun 2026 19:54:34 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:275987e296c2e6c9e630b67ac30987a57d563f891d63b116f79ad07278866d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e0caed73f581606a8bda3f1fc2ede415704844bddfda61a7015c634c9ef0aa`

```dockerfile
```

-	Layers:
	-	`sha256:af0ecf12dc5f1c5d3fadff66eccfc4468104a080d93f1d8fb67c7a010985c953`  
		Last Modified: Mon, 22 Jun 2026 19:54:35 GMT  
		Size: 20.5 KB (20498 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0-alpine` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:786088462bfa11a9de63ee6860e3d4cd2582c896cfc30a06ef4adc12f9f1c08d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84799141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a087cf9c812fac203b772e01ca99592cf7bf3fed1c3600113de1ac3ea4eeb838`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:55:50 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Mon, 22 Jun 2026 19:55:50 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Mon, 22 Jun 2026 19:55:50 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Mon, 22 Jun 2026 19:55:50 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Mon, 22 Jun 2026 19:55:50 GMT
ENV VARNISH_SIZE=100M
# Mon, 22 Jun 2026 19:55:50 GMT
ENV VSM_NOPID=1
# Mon, 22 Jun 2026 19:55:50 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Mon, 22 Jun 2026 19:55:50 GMT
WORKDIR /etc/varnish
# Mon, 22 Jun 2026 19:55:50 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:55:50 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Mon, 22 Jun 2026 19:55:50 GMT
COPY index.html /etc/varnish/ # buildkit
# Mon, 22 Jun 2026 19:55:50 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Mon, 22 Jun 2026 19:55:50 GMT
USER varnish
# Mon, 22 Jun 2026 19:55:50 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Mon, 22 Jun 2026 19:55:50 GMT
CMD []
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7a4b4ecda678c3dbc222e0d4ec0c1d634527f0a96662609b7421a3f9346c72`  
		Last Modified: Mon, 22 Jun 2026 19:56:02 GMT  
		Size: 80.6 MB (80614146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6d96b8b3760e0d3ae66e00a8e33e9321cddc66151bc0834462e57d378357cf`  
		Last Modified: Mon, 22 Jun 2026 19:56:00 GMT  
		Size: 500.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a2c1e2fa77b64c9a6dacb353229adc80a0853661106bb263e5b97a96390844`  
		Last Modified: Mon, 22 Jun 2026 19:56:00 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e417791ac79c1e5b4c7986b86d151d8da6def0a7b8d3d8c57c2bdf39d31957d`  
		Last Modified: Mon, 22 Jun 2026 19:56:00 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:5b2cdda6fba2cebdf20b66c6b1bc3d0fef88adfcc0e5f99e3319ae92489b55ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3309acee5e9be0347b2916eae01d5ef83a2a67be67a68e661542d0db32df3247`

```dockerfile
```

-	Layers:
	-	`sha256:92cb663791962fc731364a0b3c0a61c0d1cdef7133cfe9edda21cca123656171`  
		Last Modified: Mon, 22 Jun 2026 19:56:00 GMT  
		Size: 20.6 KB (20602 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8.0.2`

```console
$ docker pull varnish@sha256:fcd92ea45df06e2b29a339165c3f64843b0102e0698ad3e25f4bde99ff326ab9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0.2` - linux; amd64

```console
$ docker pull varnish@sha256:8178408dc6b0c13af2f18611e0d99de270cb333f06b9680b831237153c522f3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120256326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86cb644c6997458cb46437c470be57950ac1e35b03ab31b4ec9f26a752d87c57`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:40:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 01:40:09 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:40:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:40:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:40:09 GMT
USER varnish
# Tue, 14 Jul 2026 01:40:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:40:09 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:addef6db71ca9abb05bed866fd9f03b4f01bdd0e5975dcf2a29fe342a395594f`  
		Last Modified: Tue, 14 Jul 2026 01:40:23 GMT  
		Size: 90.5 MB (90472304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eeaf37db7ec20f296122835c8249ec6ba0d00bf1166544e2d347da59fe37609`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3c51e1802cf459f277e69246137c04edaad74291d16c8615f7053309530c8b2`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80dad77942c6d8529eca0e83f0320de22b000a971af3c4b358c2a45f1aa5410f`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2` - unknown; unknown

```console
$ docker pull varnish@sha256:c437d8e80097176f37fc5c81b9daf687a8105ea552d9ac940dc706d014313c3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051616de3cfe62023c4493e3861d43f3c96da85cb47d7ff6e217ccf0b1f55dcc`

```dockerfile
```

-	Layers:
	-	`sha256:5d1d26fefd05797f7c26f6171551f2757fb3e57455f2ddea549e3f31fe101b48`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 20.9 KB (20868 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0.2` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6659032ff1aa5d51a333a651a7107bf09df5c58903e89fdec6e97375647b7d19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114253078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6553e98773bd5ab1668eb6e5a2edf306ea6c73a1b819fbdeeddcc5c7f9dbb5d7`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:01 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:43:01 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 01:43:01 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 01:43:01 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 01:43:01 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:43:01 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:43:01 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:43:01 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:43:01 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:43:01 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:43:01 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:43:01 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:43:02 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:43:02 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:43:02 GMT
USER varnish
# Tue, 14 Jul 2026 01:43:02 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:43:02 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b698e23c6436268f5004a34028d67a3e19e63b4b0072aa12ab025beb73fda8f`  
		Last Modified: Tue, 14 Jul 2026 01:43:22 GMT  
		Size: 84.1 MB (84106252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b80fc5a719287087a3f948558a180c7fc3065a068744d6162f8cb620d912f5`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c6efc61a8f081f414322beaa034851ffada6dc0abf27022e92627fabeddc3e`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f20ae84e312d510c25ea33d0b92e843ab364c6bae97a13a6587fd445ccc8236`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2` - unknown; unknown

```console
$ docker pull varnish@sha256:faa2f99ccc2308db435d866e3ca20aa63504f62e5d55d535c7eb86bc8e3abb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab82243712c685cacbf37b589d3fe164e4eb00f6a1100014ab1a2013b4d3ee3`

```dockerfile
```

-	Layers:
	-	`sha256:21a0ec58174ca69dbcd5882271841c7ed12d1f28b46932f0f91a1faee0e96a2c`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 21.0 KB (20985 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8.0.2-1`

```console
$ docker pull varnish@sha256:fcd92ea45df06e2b29a339165c3f64843b0102e0698ad3e25f4bde99ff326ab9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0.2-1` - linux; amd64

```console
$ docker pull varnish@sha256:8178408dc6b0c13af2f18611e0d99de270cb333f06b9680b831237153c522f3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120256326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86cb644c6997458cb46437c470be57950ac1e35b03ab31b4ec9f26a752d87c57`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:40:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 01:40:09 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:40:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:40:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:40:09 GMT
USER varnish
# Tue, 14 Jul 2026 01:40:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:40:09 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:addef6db71ca9abb05bed866fd9f03b4f01bdd0e5975dcf2a29fe342a395594f`  
		Last Modified: Tue, 14 Jul 2026 01:40:23 GMT  
		Size: 90.5 MB (90472304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eeaf37db7ec20f296122835c8249ec6ba0d00bf1166544e2d347da59fe37609`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3c51e1802cf459f277e69246137c04edaad74291d16c8615f7053309530c8b2`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80dad77942c6d8529eca0e83f0320de22b000a971af3c4b358c2a45f1aa5410f`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2-1` - unknown; unknown

```console
$ docker pull varnish@sha256:c437d8e80097176f37fc5c81b9daf687a8105ea552d9ac940dc706d014313c3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051616de3cfe62023c4493e3861d43f3c96da85cb47d7ff6e217ccf0b1f55dcc`

```dockerfile
```

-	Layers:
	-	`sha256:5d1d26fefd05797f7c26f6171551f2757fb3e57455f2ddea549e3f31fe101b48`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 20.9 KB (20868 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0.2-1` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6659032ff1aa5d51a333a651a7107bf09df5c58903e89fdec6e97375647b7d19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114253078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6553e98773bd5ab1668eb6e5a2edf306ea6c73a1b819fbdeeddcc5c7f9dbb5d7`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:01 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:43:01 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 01:43:01 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 01:43:01 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 01:43:01 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:43:01 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:43:01 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:43:01 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:43:01 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:43:01 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:43:01 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:43:01 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:43:02 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:43:02 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:43:02 GMT
USER varnish
# Tue, 14 Jul 2026 01:43:02 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:43:02 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b698e23c6436268f5004a34028d67a3e19e63b4b0072aa12ab025beb73fda8f`  
		Last Modified: Tue, 14 Jul 2026 01:43:22 GMT  
		Size: 84.1 MB (84106252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b80fc5a719287087a3f948558a180c7fc3065a068744d6162f8cb620d912f5`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c6efc61a8f081f414322beaa034851ffada6dc0abf27022e92627fabeddc3e`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f20ae84e312d510c25ea33d0b92e843ab364c6bae97a13a6587fd445ccc8236`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2-1` - unknown; unknown

```console
$ docker pull varnish@sha256:faa2f99ccc2308db435d866e3ca20aa63504f62e5d55d535c7eb86bc8e3abb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab82243712c685cacbf37b589d3fe164e4eb00f6a1100014ab1a2013b4d3ee3`

```dockerfile
```

-	Layers:
	-	`sha256:21a0ec58174ca69dbcd5882271841c7ed12d1f28b46932f0f91a1faee0e96a2c`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 21.0 KB (20985 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8.0.2-alpine`

```console
$ docker pull varnish@sha256:a44e33228e62b1da338b0de838e56ef0c49fc828e933b393a7ecf20a38121e60
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0.2-alpine` - linux; amd64

```console
$ docker pull varnish@sha256:b05c774dc8e19360f9718835e98af8f4b94f73a5c945d2052a528958944b892e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.0 MB (93034595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c921eb4e0ed8f21795cc59b2fdde256911e14722157457c03969d4c9c52e5fa`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:23 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Mon, 22 Jun 2026 19:54:23 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Mon, 22 Jun 2026 19:54:23 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Mon, 22 Jun 2026 19:54:23 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Mon, 22 Jun 2026 19:54:23 GMT
ENV VARNISH_SIZE=100M
# Mon, 22 Jun 2026 19:54:23 GMT
ENV VSM_NOPID=1
# Mon, 22 Jun 2026 19:54:23 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Mon, 22 Jun 2026 19:54:23 GMT
WORKDIR /etc/varnish
# Mon, 22 Jun 2026 19:54:23 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:23 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Mon, 22 Jun 2026 19:54:23 GMT
COPY index.html /etc/varnish/ # buildkit
# Mon, 22 Jun 2026 19:54:23 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Mon, 22 Jun 2026 19:54:23 GMT
USER varnish
# Mon, 22 Jun 2026 19:54:23 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Mon, 22 Jun 2026 19:54:23 GMT
CMD []
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215620931a8076c266ac6fdd258edb15c83525809dcb96926865c9d0d95db873`  
		Last Modified: Mon, 22 Jun 2026 19:54:37 GMT  
		Size: 89.2 MB (89187040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4129b7be8a15877ab424531ef956ab4c80e6f51fd5abfb3d741a6cce3f0a889`  
		Last Modified: Mon, 22 Jun 2026 19:54:34 GMT  
		Size: 500.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb448c926c3dcc4a2493c5831b29af7223c531dc08cc287d7b606dd8f80b668`  
		Last Modified: Mon, 22 Jun 2026 19:54:34 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15c6184f2532de9169714274a7a3be9b149c5ee07c1908ae7f6a28d571de3d54`  
		Last Modified: Mon, 22 Jun 2026 19:54:34 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:275987e296c2e6c9e630b67ac30987a57d563f891d63b116f79ad07278866d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e0caed73f581606a8bda3f1fc2ede415704844bddfda61a7015c634c9ef0aa`

```dockerfile
```

-	Layers:
	-	`sha256:af0ecf12dc5f1c5d3fadff66eccfc4468104a080d93f1d8fb67c7a010985c953`  
		Last Modified: Mon, 22 Jun 2026 19:54:35 GMT  
		Size: 20.5 KB (20498 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0.2-alpine` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:786088462bfa11a9de63ee6860e3d4cd2582c896cfc30a06ef4adc12f9f1c08d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84799141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a087cf9c812fac203b772e01ca99592cf7bf3fed1c3600113de1ac3ea4eeb838`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:55:50 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Mon, 22 Jun 2026 19:55:50 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Mon, 22 Jun 2026 19:55:50 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Mon, 22 Jun 2026 19:55:50 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Mon, 22 Jun 2026 19:55:50 GMT
ENV VARNISH_SIZE=100M
# Mon, 22 Jun 2026 19:55:50 GMT
ENV VSM_NOPID=1
# Mon, 22 Jun 2026 19:55:50 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Mon, 22 Jun 2026 19:55:50 GMT
WORKDIR /etc/varnish
# Mon, 22 Jun 2026 19:55:50 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:55:50 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Mon, 22 Jun 2026 19:55:50 GMT
COPY index.html /etc/varnish/ # buildkit
# Mon, 22 Jun 2026 19:55:50 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Mon, 22 Jun 2026 19:55:50 GMT
USER varnish
# Mon, 22 Jun 2026 19:55:50 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Mon, 22 Jun 2026 19:55:50 GMT
CMD []
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7a4b4ecda678c3dbc222e0d4ec0c1d634527f0a96662609b7421a3f9346c72`  
		Last Modified: Mon, 22 Jun 2026 19:56:02 GMT  
		Size: 80.6 MB (80614146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6d96b8b3760e0d3ae66e00a8e33e9321cddc66151bc0834462e57d378357cf`  
		Last Modified: Mon, 22 Jun 2026 19:56:00 GMT  
		Size: 500.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a2c1e2fa77b64c9a6dacb353229adc80a0853661106bb263e5b97a96390844`  
		Last Modified: Mon, 22 Jun 2026 19:56:00 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e417791ac79c1e5b4c7986b86d151d8da6def0a7b8d3d8c57c2bdf39d31957d`  
		Last Modified: Mon, 22 Jun 2026 19:56:00 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:5b2cdda6fba2cebdf20b66c6b1bc3d0fef88adfcc0e5f99e3319ae92489b55ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3309acee5e9be0347b2916eae01d5ef83a2a67be67a68e661542d0db32df3247`

```dockerfile
```

-	Layers:
	-	`sha256:92cb663791962fc731364a0b3c0a61c0d1cdef7133cfe9edda21cca123656171`  
		Last Modified: Mon, 22 Jun 2026 19:56:00 GMT  
		Size: 20.6 KB (20602 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9`

```console
$ docker pull varnish@sha256:9019ca1f9aed0832ded70579ec3f696e37f2c3546bf24262bd8acdaaf442d576
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9` - linux; amd64

```console
$ docker pull varnish@sha256:982ae4d77e1a8f71fbfcf023fe73ab64ff00d36985477bc5217edc9c97e10021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122306052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1b36c5ec1e9a3c17b91f6e8272d4785a43ded41e5666c31a210a9e47ecbcc0`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:40:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-1
# Tue, 14 Jul 2026 01:40:09 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:40:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:40:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:40:09 GMT
USER varnish
# Tue, 14 Jul 2026 01:40:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:40:09 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c049f2764d2fe34133c289dfdb7357ab59a79fe710c0135e79812ff15b76c011`  
		Last Modified: Tue, 14 Jul 2026 01:40:24 GMT  
		Size: 92.5 MB (92522261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f45e2d003bcaa6ed0295b71f32f76a014a25f97ad288690d8d034345feb9b66b`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4085e21ecf63c40e6d75d97d06d09d48cba806ebac2600d03464301782018cb7`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d05f626533d3692ce73990f089760d9c59af54c45c82d77e99107a250fea262`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:9b7fbbe69a1112779bc109869b6be80c8be74929fe43381d0f6abbd12471f55b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c838f841d92d3ce81e0f003d6e49b8a8af9d19d43e0133eccf334843c9823085`

```dockerfile
```

-	Layers:
	-	`sha256:c80c07e540d3f48e8c2ab30a0796d340d354a7b050a27ff22e1901167740fab3`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 20.0 KB (20024 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:e02795ad89577ddca83e9aa2bd9142aefec31584851b3e78e5aa70291986a1d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116287886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008a45819cb47a644dca439245272158c1564be1a0f943812178ada37e293390`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:11 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:43:11 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-1
# Tue, 14 Jul 2026 01:43:11 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:43:11 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:43:11 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:43:11 GMT
USER varnish
# Tue, 14 Jul 2026 01:43:11 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:43:11 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03281976e067e8ab5d5f83608b2a58042c79e97a82cedf69267aae4d310d847c`  
		Last Modified: Tue, 14 Jul 2026 01:43:25 GMT  
		Size: 86.1 MB (86141294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27d457369598ab9397fef726e48b16e898c6782289111800e8a0104437b637a`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5de04b34c236880828f271ecf3888f1098bf42823200b3d5eae979af8a9c82`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c49192c31bf014223fee271e2c2d10a52359836108fe280827a521d0b74cd2`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:9f25186411f2c383b05d2e2480f9f0e73ed552cfbd4ec884d5bc09d93d62f703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee74d32b2263de918e362a91dae7d3492c5ea937fdd5b66b82bae81d101068a`

```dockerfile
```

-	Layers:
	-	`sha256:0ee9f86622ea81976254ccbc001362b3888a31006b9340fab98b777d6d56373c`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 20.2 KB (20152 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0`

```console
$ docker pull varnish@sha256:9019ca1f9aed0832ded70579ec3f696e37f2c3546bf24262bd8acdaaf442d576
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0` - linux; amd64

```console
$ docker pull varnish@sha256:982ae4d77e1a8f71fbfcf023fe73ab64ff00d36985477bc5217edc9c97e10021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122306052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1b36c5ec1e9a3c17b91f6e8272d4785a43ded41e5666c31a210a9e47ecbcc0`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:40:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-1
# Tue, 14 Jul 2026 01:40:09 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:40:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:40:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:40:09 GMT
USER varnish
# Tue, 14 Jul 2026 01:40:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:40:09 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c049f2764d2fe34133c289dfdb7357ab59a79fe710c0135e79812ff15b76c011`  
		Last Modified: Tue, 14 Jul 2026 01:40:24 GMT  
		Size: 92.5 MB (92522261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f45e2d003bcaa6ed0295b71f32f76a014a25f97ad288690d8d034345feb9b66b`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4085e21ecf63c40e6d75d97d06d09d48cba806ebac2600d03464301782018cb7`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d05f626533d3692ce73990f089760d9c59af54c45c82d77e99107a250fea262`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0` - unknown; unknown

```console
$ docker pull varnish@sha256:9b7fbbe69a1112779bc109869b6be80c8be74929fe43381d0f6abbd12471f55b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c838f841d92d3ce81e0f003d6e49b8a8af9d19d43e0133eccf334843c9823085`

```dockerfile
```

-	Layers:
	-	`sha256:c80c07e540d3f48e8c2ab30a0796d340d354a7b050a27ff22e1901167740fab3`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 20.0 KB (20024 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:e02795ad89577ddca83e9aa2bd9142aefec31584851b3e78e5aa70291986a1d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116287886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008a45819cb47a644dca439245272158c1564be1a0f943812178ada37e293390`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:11 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:43:11 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-1
# Tue, 14 Jul 2026 01:43:11 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:43:11 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:43:11 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:43:11 GMT
USER varnish
# Tue, 14 Jul 2026 01:43:11 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:43:11 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03281976e067e8ab5d5f83608b2a58042c79e97a82cedf69267aae4d310d847c`  
		Last Modified: Tue, 14 Jul 2026 01:43:25 GMT  
		Size: 86.1 MB (86141294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27d457369598ab9397fef726e48b16e898c6782289111800e8a0104437b637a`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5de04b34c236880828f271ecf3888f1098bf42823200b3d5eae979af8a9c82`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c49192c31bf014223fee271e2c2d10a52359836108fe280827a521d0b74cd2`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0` - unknown; unknown

```console
$ docker pull varnish@sha256:9f25186411f2c383b05d2e2480f9f0e73ed552cfbd4ec884d5bc09d93d62f703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee74d32b2263de918e362a91dae7d3492c5ea937fdd5b66b82bae81d101068a`

```dockerfile
```

-	Layers:
	-	`sha256:0ee9f86622ea81976254ccbc001362b3888a31006b9340fab98b777d6d56373c`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 20.2 KB (20152 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0.3`

```console
$ docker pull varnish@sha256:9019ca1f9aed0832ded70579ec3f696e37f2c3546bf24262bd8acdaaf442d576
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0.3` - linux; amd64

```console
$ docker pull varnish@sha256:982ae4d77e1a8f71fbfcf023fe73ab64ff00d36985477bc5217edc9c97e10021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122306052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1b36c5ec1e9a3c17b91f6e8272d4785a43ded41e5666c31a210a9e47ecbcc0`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:40:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-1
# Tue, 14 Jul 2026 01:40:09 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:40:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:40:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:40:09 GMT
USER varnish
# Tue, 14 Jul 2026 01:40:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:40:09 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c049f2764d2fe34133c289dfdb7357ab59a79fe710c0135e79812ff15b76c011`  
		Last Modified: Tue, 14 Jul 2026 01:40:24 GMT  
		Size: 92.5 MB (92522261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f45e2d003bcaa6ed0295b71f32f76a014a25f97ad288690d8d034345feb9b66b`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4085e21ecf63c40e6d75d97d06d09d48cba806ebac2600d03464301782018cb7`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d05f626533d3692ce73990f089760d9c59af54c45c82d77e99107a250fea262`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.3` - unknown; unknown

```console
$ docker pull varnish@sha256:9b7fbbe69a1112779bc109869b6be80c8be74929fe43381d0f6abbd12471f55b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c838f841d92d3ce81e0f003d6e49b8a8af9d19d43e0133eccf334843c9823085`

```dockerfile
```

-	Layers:
	-	`sha256:c80c07e540d3f48e8c2ab30a0796d340d354a7b050a27ff22e1901167740fab3`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 20.0 KB (20024 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0.3` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:e02795ad89577ddca83e9aa2bd9142aefec31584851b3e78e5aa70291986a1d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116287886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008a45819cb47a644dca439245272158c1564be1a0f943812178ada37e293390`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:11 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:43:11 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-1
# Tue, 14 Jul 2026 01:43:11 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:43:11 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:43:11 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:43:11 GMT
USER varnish
# Tue, 14 Jul 2026 01:43:11 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:43:11 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03281976e067e8ab5d5f83608b2a58042c79e97a82cedf69267aae4d310d847c`  
		Last Modified: Tue, 14 Jul 2026 01:43:25 GMT  
		Size: 86.1 MB (86141294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27d457369598ab9397fef726e48b16e898c6782289111800e8a0104437b637a`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5de04b34c236880828f271ecf3888f1098bf42823200b3d5eae979af8a9c82`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c49192c31bf014223fee271e2c2d10a52359836108fe280827a521d0b74cd2`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.3` - unknown; unknown

```console
$ docker pull varnish@sha256:9f25186411f2c383b05d2e2480f9f0e73ed552cfbd4ec884d5bc09d93d62f703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee74d32b2263de918e362a91dae7d3492c5ea937fdd5b66b82bae81d101068a`

```dockerfile
```

-	Layers:
	-	`sha256:0ee9f86622ea81976254ccbc001362b3888a31006b9340fab98b777d6d56373c`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 20.2 KB (20152 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0.3-1`

```console
$ docker pull varnish@sha256:9019ca1f9aed0832ded70579ec3f696e37f2c3546bf24262bd8acdaaf442d576
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0.3-1` - linux; amd64

```console
$ docker pull varnish@sha256:982ae4d77e1a8f71fbfcf023fe73ab64ff00d36985477bc5217edc9c97e10021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122306052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1b36c5ec1e9a3c17b91f6e8272d4785a43ded41e5666c31a210a9e47ecbcc0`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:40:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-1
# Tue, 14 Jul 2026 01:40:09 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:40:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:40:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:40:09 GMT
USER varnish
# Tue, 14 Jul 2026 01:40:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:40:09 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c049f2764d2fe34133c289dfdb7357ab59a79fe710c0135e79812ff15b76c011`  
		Last Modified: Tue, 14 Jul 2026 01:40:24 GMT  
		Size: 92.5 MB (92522261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f45e2d003bcaa6ed0295b71f32f76a014a25f97ad288690d8d034345feb9b66b`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4085e21ecf63c40e6d75d97d06d09d48cba806ebac2600d03464301782018cb7`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d05f626533d3692ce73990f089760d9c59af54c45c82d77e99107a250fea262`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.3-1` - unknown; unknown

```console
$ docker pull varnish@sha256:9b7fbbe69a1112779bc109869b6be80c8be74929fe43381d0f6abbd12471f55b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c838f841d92d3ce81e0f003d6e49b8a8af9d19d43e0133eccf334843c9823085`

```dockerfile
```

-	Layers:
	-	`sha256:c80c07e540d3f48e8c2ab30a0796d340d354a7b050a27ff22e1901167740fab3`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 20.0 KB (20024 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0.3-1` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:e02795ad89577ddca83e9aa2bd9142aefec31584851b3e78e5aa70291986a1d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116287886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008a45819cb47a644dca439245272158c1564be1a0f943812178ada37e293390`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:11 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:43:11 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-1
# Tue, 14 Jul 2026 01:43:11 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:43:11 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:43:11 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:43:11 GMT
USER varnish
# Tue, 14 Jul 2026 01:43:11 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:43:11 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03281976e067e8ab5d5f83608b2a58042c79e97a82cedf69267aae4d310d847c`  
		Last Modified: Tue, 14 Jul 2026 01:43:25 GMT  
		Size: 86.1 MB (86141294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27d457369598ab9397fef726e48b16e898c6782289111800e8a0104437b637a`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5de04b34c236880828f271ecf3888f1098bf42823200b3d5eae979af8a9c82`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c49192c31bf014223fee271e2c2d10a52359836108fe280827a521d0b74cd2`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.3-1` - unknown; unknown

```console
$ docker pull varnish@sha256:9f25186411f2c383b05d2e2480f9f0e73ed552cfbd4ec884d5bc09d93d62f703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee74d32b2263de918e362a91dae7d3492c5ea937fdd5b66b82bae81d101068a`

```dockerfile
```

-	Layers:
	-	`sha256:0ee9f86622ea81976254ccbc001362b3888a31006b9340fab98b777d6d56373c`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 20.2 KB (20152 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:fresh`

```console
$ docker pull varnish@sha256:9019ca1f9aed0832ded70579ec3f696e37f2c3546bf24262bd8acdaaf442d576
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:fresh` - linux; amd64

```console
$ docker pull varnish@sha256:982ae4d77e1a8f71fbfcf023fe73ab64ff00d36985477bc5217edc9c97e10021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122306052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1b36c5ec1e9a3c17b91f6e8272d4785a43ded41e5666c31a210a9e47ecbcc0`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:40:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-1
# Tue, 14 Jul 2026 01:40:09 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:40:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:40:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:40:09 GMT
USER varnish
# Tue, 14 Jul 2026 01:40:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:40:09 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c049f2764d2fe34133c289dfdb7357ab59a79fe710c0135e79812ff15b76c011`  
		Last Modified: Tue, 14 Jul 2026 01:40:24 GMT  
		Size: 92.5 MB (92522261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f45e2d003bcaa6ed0295b71f32f76a014a25f97ad288690d8d034345feb9b66b`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4085e21ecf63c40e6d75d97d06d09d48cba806ebac2600d03464301782018cb7`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d05f626533d3692ce73990f089760d9c59af54c45c82d77e99107a250fea262`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:9b7fbbe69a1112779bc109869b6be80c8be74929fe43381d0f6abbd12471f55b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c838f841d92d3ce81e0f003d6e49b8a8af9d19d43e0133eccf334843c9823085`

```dockerfile
```

-	Layers:
	-	`sha256:c80c07e540d3f48e8c2ab30a0796d340d354a7b050a27ff22e1901167740fab3`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 20.0 KB (20024 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:fresh` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:e02795ad89577ddca83e9aa2bd9142aefec31584851b3e78e5aa70291986a1d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116287886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008a45819cb47a644dca439245272158c1564be1a0f943812178ada37e293390`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:11 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:43:11 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-1
# Tue, 14 Jul 2026 01:43:11 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:43:11 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:43:11 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:43:11 GMT
USER varnish
# Tue, 14 Jul 2026 01:43:11 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:43:11 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03281976e067e8ab5d5f83608b2a58042c79e97a82cedf69267aae4d310d847c`  
		Last Modified: Tue, 14 Jul 2026 01:43:25 GMT  
		Size: 86.1 MB (86141294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27d457369598ab9397fef726e48b16e898c6782289111800e8a0104437b637a`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5de04b34c236880828f271ecf3888f1098bf42823200b3d5eae979af8a9c82`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c49192c31bf014223fee271e2c2d10a52359836108fe280827a521d0b74cd2`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:9f25186411f2c383b05d2e2480f9f0e73ed552cfbd4ec884d5bc09d93d62f703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee74d32b2263de918e362a91dae7d3492c5ea937fdd5b66b82bae81d101068a`

```dockerfile
```

-	Layers:
	-	`sha256:0ee9f86622ea81976254ccbc001362b3888a31006b9340fab98b777d6d56373c`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 20.2 KB (20152 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:latest`

```console
$ docker pull varnish@sha256:9019ca1f9aed0832ded70579ec3f696e37f2c3546bf24262bd8acdaaf442d576
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:latest` - linux; amd64

```console
$ docker pull varnish@sha256:982ae4d77e1a8f71fbfcf023fe73ab64ff00d36985477bc5217edc9c97e10021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122306052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1b36c5ec1e9a3c17b91f6e8272d4785a43ded41e5666c31a210a9e47ecbcc0`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:40:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-1
# Tue, 14 Jul 2026 01:40:09 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:40:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:40:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:40:09 GMT
USER varnish
# Tue, 14 Jul 2026 01:40:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:40:09 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c049f2764d2fe34133c289dfdb7357ab59a79fe710c0135e79812ff15b76c011`  
		Last Modified: Tue, 14 Jul 2026 01:40:24 GMT  
		Size: 92.5 MB (92522261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f45e2d003bcaa6ed0295b71f32f76a014a25f97ad288690d8d034345feb9b66b`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4085e21ecf63c40e6d75d97d06d09d48cba806ebac2600d03464301782018cb7`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d05f626533d3692ce73990f089760d9c59af54c45c82d77e99107a250fea262`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:9b7fbbe69a1112779bc109869b6be80c8be74929fe43381d0f6abbd12471f55b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c838f841d92d3ce81e0f003d6e49b8a8af9d19d43e0133eccf334843c9823085`

```dockerfile
```

-	Layers:
	-	`sha256:c80c07e540d3f48e8c2ab30a0796d340d354a7b050a27ff22e1901167740fab3`  
		Last Modified: Tue, 14 Jul 2026 01:40:22 GMT  
		Size: 20.0 KB (20024 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:latest` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:e02795ad89577ddca83e9aa2bd9142aefec31584851b3e78e5aa70291986a1d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116287886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008a45819cb47a644dca439245272158c1564be1a0f943812178ada37e293390`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:11 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:43:11 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-1
# Tue, 14 Jul 2026 01:43:11 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:43:11 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:43:11 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:43:11 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 01:43:11 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:43:11 GMT
USER varnish
# Tue, 14 Jul 2026 01:43:11 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:43:11 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03281976e067e8ab5d5f83608b2a58042c79e97a82cedf69267aae4d310d847c`  
		Last Modified: Tue, 14 Jul 2026 01:43:25 GMT  
		Size: 86.1 MB (86141294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27d457369598ab9397fef726e48b16e898c6782289111800e8a0104437b637a`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5de04b34c236880828f271ecf3888f1098bf42823200b3d5eae979af8a9c82`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c49192c31bf014223fee271e2c2d10a52359836108fe280827a521d0b74cd2`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:9f25186411f2c383b05d2e2480f9f0e73ed552cfbd4ec884d5bc09d93d62f703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee74d32b2263de918e362a91dae7d3492c5ea937fdd5b66b82bae81d101068a`

```dockerfile
```

-	Layers:
	-	`sha256:0ee9f86622ea81976254ccbc001362b3888a31006b9340fab98b777d6d56373c`  
		Last Modified: Tue, 14 Jul 2026 01:43:23 GMT  
		Size: 20.2 KB (20152 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:old`

```console
$ docker pull varnish@sha256:fcd92ea45df06e2b29a339165c3f64843b0102e0698ad3e25f4bde99ff326ab9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:old` - linux; amd64

```console
$ docker pull varnish@sha256:8178408dc6b0c13af2f18611e0d99de270cb333f06b9680b831237153c522f3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120256326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86cb644c6997458cb46437c470be57950ac1e35b03ab31b4ec9f26a752d87c57`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:40:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 01:40:09 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 01:40:09 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:40:09 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:40:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:40:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:40:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:40:09 GMT
USER varnish
# Tue, 14 Jul 2026 01:40:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:40:09 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:addef6db71ca9abb05bed866fd9f03b4f01bdd0e5975dcf2a29fe342a395594f`  
		Last Modified: Tue, 14 Jul 2026 01:40:23 GMT  
		Size: 90.5 MB (90472304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eeaf37db7ec20f296122835c8249ec6ba0d00bf1166544e2d347da59fe37609`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3c51e1802cf459f277e69246137c04edaad74291d16c8615f7053309530c8b2`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80dad77942c6d8529eca0e83f0320de22b000a971af3c4b358c2a45f1aa5410f`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:c437d8e80097176f37fc5c81b9daf687a8105ea552d9ac940dc706d014313c3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051616de3cfe62023c4493e3861d43f3c96da85cb47d7ff6e217ccf0b1f55dcc`

```dockerfile
```

-	Layers:
	-	`sha256:5d1d26fefd05797f7c26f6171551f2757fb3e57455f2ddea549e3f31fe101b48`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 20.9 KB (20868 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:old` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6659032ff1aa5d51a333a651a7107bf09df5c58903e89fdec6e97375647b7d19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114253078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6553e98773bd5ab1668eb6e5a2edf306ea6c73a1b819fbdeeddcc5c7f9dbb5d7`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:01 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:43:01 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 01:43:01 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 01:43:01 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 01:43:01 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 01:43:01 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 01:43:01 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:43:01 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 01:43:01 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:43:01 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:43:01 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:43:01 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:43:02 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 01:43:02 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:43:02 GMT
USER varnish
# Tue, 14 Jul 2026 01:43:02 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:43:02 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b698e23c6436268f5004a34028d67a3e19e63b4b0072aa12ab025beb73fda8f`  
		Last Modified: Tue, 14 Jul 2026 01:43:22 GMT  
		Size: 84.1 MB (84106252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b80fc5a719287087a3f948558a180c7fc3065a068744d6162f8cb620d912f5`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c6efc61a8f081f414322beaa034851ffada6dc0abf27022e92627fabeddc3e`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f20ae84e312d510c25ea33d0b92e843ab364c6bae97a13a6587fd445ccc8236`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:faa2f99ccc2308db435d866e3ca20aa63504f62e5d55d535c7eb86bc8e3abb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab82243712c685cacbf37b589d3fe164e4eb00f6a1100014ab1a2013b4d3ee3`

```dockerfile
```

-	Layers:
	-	`sha256:21a0ec58174ca69dbcd5882271841c7ed12d1f28b46932f0f91a1faee0e96a2c`  
		Last Modified: Tue, 14 Jul 2026 01:43:16 GMT  
		Size: 21.0 KB (20985 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:old-alpine`

```console
$ docker pull varnish@sha256:a44e33228e62b1da338b0de838e56ef0c49fc828e933b393a7ecf20a38121e60
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:old-alpine` - linux; amd64

```console
$ docker pull varnish@sha256:b05c774dc8e19360f9718835e98af8f4b94f73a5c945d2052a528958944b892e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.0 MB (93034595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c921eb4e0ed8f21795cc59b2fdde256911e14722157457c03969d4c9c52e5fa`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:23 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Mon, 22 Jun 2026 19:54:23 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Mon, 22 Jun 2026 19:54:23 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Mon, 22 Jun 2026 19:54:23 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Mon, 22 Jun 2026 19:54:23 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Mon, 22 Jun 2026 19:54:23 GMT
ENV VARNISH_SIZE=100M
# Mon, 22 Jun 2026 19:54:23 GMT
ENV VSM_NOPID=1
# Mon, 22 Jun 2026 19:54:23 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Mon, 22 Jun 2026 19:54:23 GMT
WORKDIR /etc/varnish
# Mon, 22 Jun 2026 19:54:23 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:23 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Mon, 22 Jun 2026 19:54:23 GMT
COPY index.html /etc/varnish/ # buildkit
# Mon, 22 Jun 2026 19:54:23 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Mon, 22 Jun 2026 19:54:23 GMT
USER varnish
# Mon, 22 Jun 2026 19:54:23 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Mon, 22 Jun 2026 19:54:23 GMT
CMD []
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215620931a8076c266ac6fdd258edb15c83525809dcb96926865c9d0d95db873`  
		Last Modified: Mon, 22 Jun 2026 19:54:37 GMT  
		Size: 89.2 MB (89187040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4129b7be8a15877ab424531ef956ab4c80e6f51fd5abfb3d741a6cce3f0a889`  
		Last Modified: Mon, 22 Jun 2026 19:54:34 GMT  
		Size: 500.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb448c926c3dcc4a2493c5831b29af7223c531dc08cc287d7b606dd8f80b668`  
		Last Modified: Mon, 22 Jun 2026 19:54:34 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15c6184f2532de9169714274a7a3be9b149c5ee07c1908ae7f6a28d571de3d54`  
		Last Modified: Mon, 22 Jun 2026 19:54:34 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:275987e296c2e6c9e630b67ac30987a57d563f891d63b116f79ad07278866d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e0caed73f581606a8bda3f1fc2ede415704844bddfda61a7015c634c9ef0aa`

```dockerfile
```

-	Layers:
	-	`sha256:af0ecf12dc5f1c5d3fadff66eccfc4468104a080d93f1d8fb67c7a010985c953`  
		Last Modified: Mon, 22 Jun 2026 19:54:35 GMT  
		Size: 20.5 KB (20498 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:old-alpine` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:786088462bfa11a9de63ee6860e3d4cd2582c896cfc30a06ef4adc12f9f1c08d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84799141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a087cf9c812fac203b772e01ca99592cf7bf3fed1c3600113de1ac3ea4eeb838`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:55:50 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Mon, 22 Jun 2026 19:55:50 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Mon, 22 Jun 2026 19:55:50 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Mon, 22 Jun 2026 19:55:50 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Mon, 22 Jun 2026 19:55:50 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Mon, 22 Jun 2026 19:55:50 GMT
ENV VARNISH_SIZE=100M
# Mon, 22 Jun 2026 19:55:50 GMT
ENV VSM_NOPID=1
# Mon, 22 Jun 2026 19:55:50 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Mon, 22 Jun 2026 19:55:50 GMT
WORKDIR /etc/varnish
# Mon, 22 Jun 2026 19:55:50 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:55:50 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Mon, 22 Jun 2026 19:55:50 GMT
COPY index.html /etc/varnish/ # buildkit
# Mon, 22 Jun 2026 19:55:50 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Mon, 22 Jun 2026 19:55:50 GMT
USER varnish
# Mon, 22 Jun 2026 19:55:50 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Mon, 22 Jun 2026 19:55:50 GMT
CMD []
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7a4b4ecda678c3dbc222e0d4ec0c1d634527f0a96662609b7421a3f9346c72`  
		Last Modified: Mon, 22 Jun 2026 19:56:02 GMT  
		Size: 80.6 MB (80614146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6d96b8b3760e0d3ae66e00a8e33e9321cddc66151bc0834462e57d378357cf`  
		Last Modified: Mon, 22 Jun 2026 19:56:00 GMT  
		Size: 500.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a2c1e2fa77b64c9a6dacb353229adc80a0853661106bb263e5b97a96390844`  
		Last Modified: Mon, 22 Jun 2026 19:56:00 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e417791ac79c1e5b4c7986b86d151d8da6def0a7b8d3d8c57c2bdf39d31957d`  
		Last Modified: Mon, 22 Jun 2026 19:56:00 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:5b2cdda6fba2cebdf20b66c6b1bc3d0fef88adfcc0e5f99e3319ae92489b55ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3309acee5e9be0347b2916eae01d5ef83a2a67be67a68e661542d0db32df3247`

```dockerfile
```

-	Layers:
	-	`sha256:92cb663791962fc731364a0b3c0a61c0d1cdef7133cfe9edda21cca123656171`  
		Last Modified: Mon, 22 Jun 2026 19:56:00 GMT  
		Size: 20.6 KB (20602 bytes)  
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
