<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `varnish`

-	[`varnish:6`](#varnish6)
-	[`varnish:6.0`](#varnish60)
-	[`varnish:6.0.18`](#varnish6018)
-	[`varnish:6.0.18-1`](#varnish6018-1)
-	[`varnish:9`](#varnish9)
-	[`varnish:9.0`](#varnish90)
-	[`varnish:9.0.4`](#varnish904)
-	[`varnish:9.0.4-5`](#varnish904-5)
-	[`varnish:9.1`](#varnish91)
-	[`varnish:9.1.0`](#varnish910)
-	[`varnish:9.1.0-2`](#varnish910-2)
-	[`varnish:fresh`](#varnishfresh)
-	[`varnish:latest`](#varnishlatest)
-	[`varnish:old`](#varnishold)
-	[`varnish:stable`](#varnishstable)

## `varnish:6`

```console
$ docker pull varnish@sha256:e9d21a33fa558d5fd34e2474286a16a4bbe29aa38a687ffe34845e8911db6bf2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6` - linux; amd64

```console
$ docker pull varnish@sha256:77d91acdd3d1f14c0942f1fa678fdc4255baf03b086d8d56608ed615e8a66b2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121819509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a7e1025b26628b45a9b7e4ff5f02a3ff85356efe0fe4dd40a21978b7ac1c28`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:35:53 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:35:53 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 06 Oct 2026 01:35:53 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:35:53 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:35:53 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:35:53 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:35:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:35:53 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:35:53 GMT
CMD []
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c2ff6ea9c96a791063bced5cbbfaec7344530c601a34a516550f78a7abc538`  
		Last Modified: Tue, 06 Oct 2026 01:36:07 GMT  
		Size: 93.6 MB (93569433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3731bb706b0259e5ea514dd8edc170bde4fa466a4121bd3a64a4a3583d0a9dfc`  
		Last Modified: Tue, 06 Oct 2026 01:36:04 GMT  
		Size: 721.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6` - unknown; unknown

```console
$ docker pull varnish@sha256:792dd276a63a4e4d45a9a9f56ec13a00310570d2551b0e1bf019109a66ebc450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cd1607d36c0aae1e17a4faadc4602161ada9b6d228747e2f03e027e243ec83d`

```dockerfile
```

-	Layers:
	-	`sha256:b5ea9dc7ee4516bd1fe4ac71fe9775f3c6fdb437b226234a4603c4c05e53b3b3`  
		Last Modified: Tue, 06 Oct 2026 01:36:04 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:1b48178e373a1a06d4640921cf23f96c06361a9a80696c1812848f3937db8d3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116270056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35771446ce135ba9615afb59e0650a1fda4367cb339e3be1801bff4262561f6`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:39:01 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:39:01 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 06 Oct 2026 01:39:01 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:39:01 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:39:01 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:39:01 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:01 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:39:01 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:39:01 GMT
CMD []
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c186d70df43637dea4d07124c6327ae24c05c214a3a015415ae126afd6f730`  
		Last Modified: Tue, 06 Oct 2026 01:39:14 GMT  
		Size: 88.1 MB (88132123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda9adb204e2686a13281fb4cc745f5fc828c95247216c422133890a63f48ca2`  
		Last Modified: Tue, 06 Oct 2026 01:39:11 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6` - unknown; unknown

```console
$ docker pull varnish@sha256:d8f9f0daf39bd9308f2bec89ef6c8474862abb4e462ce9bdf68ac522265af4ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7edb79621e36712da1444bcc6b4f0e77a8e4f6b152f79e3b14e8d8866c6b0cb3`

```dockerfile
```

-	Layers:
	-	`sha256:f13fbb81c7c2108fabc1276cb5a4977336b27cf38130200a0263066d6a036ab8`  
		Last Modified: Tue, 06 Oct 2026 01:39:11 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0`

```console
$ docker pull varnish@sha256:e9d21a33fa558d5fd34e2474286a16a4bbe29aa38a687ffe34845e8911db6bf2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0` - linux; amd64

```console
$ docker pull varnish@sha256:77d91acdd3d1f14c0942f1fa678fdc4255baf03b086d8d56608ed615e8a66b2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121819509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a7e1025b26628b45a9b7e4ff5f02a3ff85356efe0fe4dd40a21978b7ac1c28`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:35:53 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:35:53 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 06 Oct 2026 01:35:53 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:35:53 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:35:53 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:35:53 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:35:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:35:53 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:35:53 GMT
CMD []
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c2ff6ea9c96a791063bced5cbbfaec7344530c601a34a516550f78a7abc538`  
		Last Modified: Tue, 06 Oct 2026 01:36:07 GMT  
		Size: 93.6 MB (93569433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3731bb706b0259e5ea514dd8edc170bde4fa466a4121bd3a64a4a3583d0a9dfc`  
		Last Modified: Tue, 06 Oct 2026 01:36:04 GMT  
		Size: 721.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0` - unknown; unknown

```console
$ docker pull varnish@sha256:792dd276a63a4e4d45a9a9f56ec13a00310570d2551b0e1bf019109a66ebc450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cd1607d36c0aae1e17a4faadc4602161ada9b6d228747e2f03e027e243ec83d`

```dockerfile
```

-	Layers:
	-	`sha256:b5ea9dc7ee4516bd1fe4ac71fe9775f3c6fdb437b226234a4603c4c05e53b3b3`  
		Last Modified: Tue, 06 Oct 2026 01:36:04 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:1b48178e373a1a06d4640921cf23f96c06361a9a80696c1812848f3937db8d3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116270056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35771446ce135ba9615afb59e0650a1fda4367cb339e3be1801bff4262561f6`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:39:01 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:39:01 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 06 Oct 2026 01:39:01 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:39:01 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:39:01 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:39:01 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:01 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:39:01 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:39:01 GMT
CMD []
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c186d70df43637dea4d07124c6327ae24c05c214a3a015415ae126afd6f730`  
		Last Modified: Tue, 06 Oct 2026 01:39:14 GMT  
		Size: 88.1 MB (88132123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda9adb204e2686a13281fb4cc745f5fc828c95247216c422133890a63f48ca2`  
		Last Modified: Tue, 06 Oct 2026 01:39:11 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0` - unknown; unknown

```console
$ docker pull varnish@sha256:d8f9f0daf39bd9308f2bec89ef6c8474862abb4e462ce9bdf68ac522265af4ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7edb79621e36712da1444bcc6b4f0e77a8e4f6b152f79e3b14e8d8866c6b0cb3`

```dockerfile
```

-	Layers:
	-	`sha256:f13fbb81c7c2108fabc1276cb5a4977336b27cf38130200a0263066d6a036ab8`  
		Last Modified: Tue, 06 Oct 2026 01:39:11 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0.18`

```console
$ docker pull varnish@sha256:e9d21a33fa558d5fd34e2474286a16a4bbe29aa38a687ffe34845e8911db6bf2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0.18` - linux; amd64

```console
$ docker pull varnish@sha256:77d91acdd3d1f14c0942f1fa678fdc4255baf03b086d8d56608ed615e8a66b2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121819509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a7e1025b26628b45a9b7e4ff5f02a3ff85356efe0fe4dd40a21978b7ac1c28`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:35:53 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:35:53 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 06 Oct 2026 01:35:53 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:35:53 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:35:53 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:35:53 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:35:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:35:53 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:35:53 GMT
CMD []
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c2ff6ea9c96a791063bced5cbbfaec7344530c601a34a516550f78a7abc538`  
		Last Modified: Tue, 06 Oct 2026 01:36:07 GMT  
		Size: 93.6 MB (93569433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3731bb706b0259e5ea514dd8edc170bde4fa466a4121bd3a64a4a3583d0a9dfc`  
		Last Modified: Tue, 06 Oct 2026 01:36:04 GMT  
		Size: 721.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18` - unknown; unknown

```console
$ docker pull varnish@sha256:792dd276a63a4e4d45a9a9f56ec13a00310570d2551b0e1bf019109a66ebc450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cd1607d36c0aae1e17a4faadc4602161ada9b6d228747e2f03e027e243ec83d`

```dockerfile
```

-	Layers:
	-	`sha256:b5ea9dc7ee4516bd1fe4ac71fe9775f3c6fdb437b226234a4603c4c05e53b3b3`  
		Last Modified: Tue, 06 Oct 2026 01:36:04 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0.18` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:1b48178e373a1a06d4640921cf23f96c06361a9a80696c1812848f3937db8d3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116270056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35771446ce135ba9615afb59e0650a1fda4367cb339e3be1801bff4262561f6`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:39:01 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:39:01 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 06 Oct 2026 01:39:01 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:39:01 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:39:01 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:39:01 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:01 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:39:01 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:39:01 GMT
CMD []
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c186d70df43637dea4d07124c6327ae24c05c214a3a015415ae126afd6f730`  
		Last Modified: Tue, 06 Oct 2026 01:39:14 GMT  
		Size: 88.1 MB (88132123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda9adb204e2686a13281fb4cc745f5fc828c95247216c422133890a63f48ca2`  
		Last Modified: Tue, 06 Oct 2026 01:39:11 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18` - unknown; unknown

```console
$ docker pull varnish@sha256:d8f9f0daf39bd9308f2bec89ef6c8474862abb4e462ce9bdf68ac522265af4ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7edb79621e36712da1444bcc6b4f0e77a8e4f6b152f79e3b14e8d8866c6b0cb3`

```dockerfile
```

-	Layers:
	-	`sha256:f13fbb81c7c2108fabc1276cb5a4977336b27cf38130200a0263066d6a036ab8`  
		Last Modified: Tue, 06 Oct 2026 01:39:11 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0.18-1`

```console
$ docker pull varnish@sha256:e9d21a33fa558d5fd34e2474286a16a4bbe29aa38a687ffe34845e8911db6bf2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0.18-1` - linux; amd64

```console
$ docker pull varnish@sha256:77d91acdd3d1f14c0942f1fa678fdc4255baf03b086d8d56608ed615e8a66b2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121819509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a7e1025b26628b45a9b7e4ff5f02a3ff85356efe0fe4dd40a21978b7ac1c28`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:35:53 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:35:53 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 06 Oct 2026 01:35:53 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:35:53 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:35:53 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:35:53 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:35:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:35:53 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:35:53 GMT
CMD []
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c2ff6ea9c96a791063bced5cbbfaec7344530c601a34a516550f78a7abc538`  
		Last Modified: Tue, 06 Oct 2026 01:36:07 GMT  
		Size: 93.6 MB (93569433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3731bb706b0259e5ea514dd8edc170bde4fa466a4121bd3a64a4a3583d0a9dfc`  
		Last Modified: Tue, 06 Oct 2026 01:36:04 GMT  
		Size: 721.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18-1` - unknown; unknown

```console
$ docker pull varnish@sha256:792dd276a63a4e4d45a9a9f56ec13a00310570d2551b0e1bf019109a66ebc450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cd1607d36c0aae1e17a4faadc4602161ada9b6d228747e2f03e027e243ec83d`

```dockerfile
```

-	Layers:
	-	`sha256:b5ea9dc7ee4516bd1fe4ac71fe9775f3c6fdb437b226234a4603c4c05e53b3b3`  
		Last Modified: Tue, 06 Oct 2026 01:36:04 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0.18-1` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:1b48178e373a1a06d4640921cf23f96c06361a9a80696c1812848f3937db8d3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116270056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35771446ce135ba9615afb59e0650a1fda4367cb339e3be1801bff4262561f6`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:39:01 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:39:01 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 06 Oct 2026 01:39:01 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:39:01 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:39:01 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:39:01 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:01 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:39:01 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:39:01 GMT
CMD []
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c186d70df43637dea4d07124c6327ae24c05c214a3a015415ae126afd6f730`  
		Last Modified: Tue, 06 Oct 2026 01:39:14 GMT  
		Size: 88.1 MB (88132123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda9adb204e2686a13281fb4cc745f5fc828c95247216c422133890a63f48ca2`  
		Last Modified: Tue, 06 Oct 2026 01:39:11 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18-1` - unknown; unknown

```console
$ docker pull varnish@sha256:d8f9f0daf39bd9308f2bec89ef6c8474862abb4e462ce9bdf68ac522265af4ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7edb79621e36712da1444bcc6b4f0e77a8e4f6b152f79e3b14e8d8866c6b0cb3`

```dockerfile
```

-	Layers:
	-	`sha256:f13fbb81c7c2108fabc1276cb5a4977336b27cf38130200a0263066d6a036ab8`  
		Last Modified: Tue, 06 Oct 2026 01:39:11 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9`

```console
$ docker pull varnish@sha256:842a2874f49d5b9eb7690a8fe0b6d3a66d8045b2d2a96154b4a804e2cbd8ac33
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9` - linux; amd64

```console
$ docker pull varnish@sha256:e4c94ea3a25e13b6d7e555d20f906579c8a88fd0ea3759730dfbd6d1e7424c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132993292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad38ebf4e47a3661ad568309c6fbdbba5288afc5384fdc58630de516502bedaf`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:36:26 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:36:26 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 06 Oct 2026 01:36:26 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:36:26 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:36:26 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:36:26 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:36:26 GMT
USER varnish
# Tue, 06 Oct 2026 01:36:26 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:36:26 GMT
CMD []
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80564f41ff3ef515799d0654faf6ac7ff41bd2a74fd0547a88c8505e184bff4`  
		Last Modified: Tue, 06 Oct 2026 01:36:41 GMT  
		Size: 103.1 MB (103147057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d398eace9284ca7c06858dd5682ce4074eb187bb4b834a963c719c375decfb9`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea6e3cc5cb580e16f000e6b796b9696da6aa16a7defe2c188873fb5b51b822d`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0d39d4af23caa74c50d2dbfa86bf4cdfdd0d9e740c967d835c1442e699c369`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:4a9883a2415d11a7dbe5c116a29220445f3a27dc518f75d01c3a0fc5fe05d28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3458cd8c89887e477862e08960bbd2232ec7c844a41c32a14de2c51bf3d4fae`

```dockerfile
```

-	Layers:
	-	`sha256:4f8b566e35b7f7095d79edcd368d94d7362cb6444c44f85cd852412f65473ec2`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:b2a676c96d5ac592aa38b242bf3ed3730f41cf9f873c5e44e7c10767440c0e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126117971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00faaa00c36ad51f1db592199ee59ee0ed94889e64f6e7365a260ea29199851`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:18 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:39:18 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 06 Oct 2026 01:39:18 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:39:18 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:39:18 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:39:18 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:39:18 GMT
USER varnish
# Tue, 06 Oct 2026 01:39:18 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:39:18 GMT
CMD []
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b839df2d3182d1daf5083a013afb9344417c88c69764988b336b39bda919dd6`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 95.9 MB (95914806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:717b024d6240fba1dcd23467a7215d31fc35f67d05391740cd48a3f4692ea78b`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1c12b4cf7833af64872e91b4e276a9c33ab834a0bf9dc3bc0f8995d2e598bc`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cfb2273e3a4691d7a68d305cbe86e08b21696aec5a135acfc4a94c20d6fa074`  
		Last Modified: Tue, 06 Oct 2026 01:39:30 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:28230a0fdcbb7480c74b3da7bf67c032ae5d47af60dc85161b8354286723c553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73fd3f06bf475409ceaf5fc9da35221e4cfb0c198dfbcaf2484175ca410e3a67`

```dockerfile
```

-	Layers:
	-	`sha256:ac73bf6b53270c123dc370bb996b81abd90300392800f76016a7caa238139fb0`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0`

```console
$ docker pull varnish@sha256:8630ca5549864dd6ab87572286e83ab1011e04e160c23630e6da45cfadc23fdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0` - linux; amd64

```console
$ docker pull varnish@sha256:cc8a07ee425059bc496c5742789806383bd82fde5f9ce542216c3eb53272eb91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e711e2c8b5dc246d88a50b249bc7f550451062d9037fb22aad267aeed3de44`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:36:25 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:36:25 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 06 Oct 2026 01:36:25 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:36:25 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:36:25 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:36:25 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:36:25 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:36:25 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:36:25 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:36:25 GMT
USER varnish
# Tue, 06 Oct 2026 01:36:25 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:36:25 GMT
CMD []
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b4a1c97fbc79a0c7782cb7e1bbe81c0cb37f0c8d458d9268c8e7e4d015c336`  
		Last Modified: Tue, 06 Oct 2026 01:36:41 GMT  
		Size: 102.7 MB (102655696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495eafed19f3d1d1d1e47e3f33dc8569d8d128b6f5b12486ac1c00e9555c0dc6`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb79b49d0880abf031ff6f45ce7839e133639ce10c80bd9980d2c122f6836a3`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0692f4cba6b69ff7042b46e454e69947360557980fe9c3efcd131397e629700b`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0` - unknown; unknown

```console
$ docker pull varnish@sha256:2507c03412ebaf6eb08b8c5f9a93bf1cbb9d19ca69b72b325cf09dbaf0c65f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 KB (20144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdcb56be31e7da94e0204156594b8f9f0ac4908fa83a0ae3234371bb898a6100`

```dockerfile
```

-	Layers:
	-	`sha256:49b0090e203ecabd1bc5b37243ef519c68f32ca4bd8d5e78fcd939cfaf0978de`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 20.1 KB (20144 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:e9a6fff9a325e186e6046e6cd277ac472add5870d222e44669286c2b0a8e5932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125621488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c12e998210eec8efd7b8ddf21930cbb61387c2980588941eb2dd30b45b0e24c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:20 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:39:20 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 06 Oct 2026 01:39:20 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:39:20 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:39:20 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:39:20 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:39:20 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:39:20 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:39:20 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:39:20 GMT
USER varnish
# Tue, 06 Oct 2026 01:39:20 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:39:20 GMT
CMD []
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a6222d8ef884bd9c687a296014069f240580ec9ea27254803b41d3aeac5aff`  
		Last Modified: Tue, 06 Oct 2026 01:39:35 GMT  
		Size: 95.4 MB (95418322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56745d3248f8f36dd2d6d30abb6ec6c31e037a2482fbb96daa1389d383e5285d`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cbf2120c09137b7928c4d059e0ab70aa83ea663d95d2cb878d68939e3b43eb1`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38abdbdcaa678039c78f2c678a12fbcd1290bfcdf8a9b5827c1be9889d808256`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0` - unknown; unknown

```console
$ docker pull varnish@sha256:15967b49f5d8a24e40b423c6e96fc3ba548ca33d45905d7a2163a2417ca849e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bd80d5201869d0458d0ecdf71cde30c2f26a4837fb2f9f1fecab944c91bd764`

```dockerfile
```

-	Layers:
	-	`sha256:c8118e5b9975910c617e09b161f2f9e2a124c9abcb77408fdad05306c29d1c8d`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 20.2 KB (20243 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0.4`

```console
$ docker pull varnish@sha256:8630ca5549864dd6ab87572286e83ab1011e04e160c23630e6da45cfadc23fdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0.4` - linux; amd64

```console
$ docker pull varnish@sha256:cc8a07ee425059bc496c5742789806383bd82fde5f9ce542216c3eb53272eb91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e711e2c8b5dc246d88a50b249bc7f550451062d9037fb22aad267aeed3de44`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:36:25 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:36:25 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 06 Oct 2026 01:36:25 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:36:25 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:36:25 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:36:25 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:36:25 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:36:25 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:36:25 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:36:25 GMT
USER varnish
# Tue, 06 Oct 2026 01:36:25 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:36:25 GMT
CMD []
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b4a1c97fbc79a0c7782cb7e1bbe81c0cb37f0c8d458d9268c8e7e4d015c336`  
		Last Modified: Tue, 06 Oct 2026 01:36:41 GMT  
		Size: 102.7 MB (102655696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495eafed19f3d1d1d1e47e3f33dc8569d8d128b6f5b12486ac1c00e9555c0dc6`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb79b49d0880abf031ff6f45ce7839e133639ce10c80bd9980d2c122f6836a3`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0692f4cba6b69ff7042b46e454e69947360557980fe9c3efcd131397e629700b`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4` - unknown; unknown

```console
$ docker pull varnish@sha256:2507c03412ebaf6eb08b8c5f9a93bf1cbb9d19ca69b72b325cf09dbaf0c65f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 KB (20144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdcb56be31e7da94e0204156594b8f9f0ac4908fa83a0ae3234371bb898a6100`

```dockerfile
```

-	Layers:
	-	`sha256:49b0090e203ecabd1bc5b37243ef519c68f32ca4bd8d5e78fcd939cfaf0978de`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 20.1 KB (20144 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0.4` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:e9a6fff9a325e186e6046e6cd277ac472add5870d222e44669286c2b0a8e5932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125621488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c12e998210eec8efd7b8ddf21930cbb61387c2980588941eb2dd30b45b0e24c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:20 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:39:20 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 06 Oct 2026 01:39:20 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:39:20 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:39:20 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:39:20 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:39:20 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:39:20 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:39:20 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:39:20 GMT
USER varnish
# Tue, 06 Oct 2026 01:39:20 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:39:20 GMT
CMD []
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a6222d8ef884bd9c687a296014069f240580ec9ea27254803b41d3aeac5aff`  
		Last Modified: Tue, 06 Oct 2026 01:39:35 GMT  
		Size: 95.4 MB (95418322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56745d3248f8f36dd2d6d30abb6ec6c31e037a2482fbb96daa1389d383e5285d`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cbf2120c09137b7928c4d059e0ab70aa83ea663d95d2cb878d68939e3b43eb1`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38abdbdcaa678039c78f2c678a12fbcd1290bfcdf8a9b5827c1be9889d808256`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4` - unknown; unknown

```console
$ docker pull varnish@sha256:15967b49f5d8a24e40b423c6e96fc3ba548ca33d45905d7a2163a2417ca849e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bd80d5201869d0458d0ecdf71cde30c2f26a4837fb2f9f1fecab944c91bd764`

```dockerfile
```

-	Layers:
	-	`sha256:c8118e5b9975910c617e09b161f2f9e2a124c9abcb77408fdad05306c29d1c8d`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 20.2 KB (20243 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0.4-5`

```console
$ docker pull varnish@sha256:8630ca5549864dd6ab87572286e83ab1011e04e160c23630e6da45cfadc23fdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0.4-5` - linux; amd64

```console
$ docker pull varnish@sha256:cc8a07ee425059bc496c5742789806383bd82fde5f9ce542216c3eb53272eb91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e711e2c8b5dc246d88a50b249bc7f550451062d9037fb22aad267aeed3de44`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:36:25 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:36:25 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 06 Oct 2026 01:36:25 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:36:25 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:36:25 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:36:25 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:36:25 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:36:25 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:36:25 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:36:25 GMT
USER varnish
# Tue, 06 Oct 2026 01:36:25 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:36:25 GMT
CMD []
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b4a1c97fbc79a0c7782cb7e1bbe81c0cb37f0c8d458d9268c8e7e4d015c336`  
		Last Modified: Tue, 06 Oct 2026 01:36:41 GMT  
		Size: 102.7 MB (102655696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495eafed19f3d1d1d1e47e3f33dc8569d8d128b6f5b12486ac1c00e9555c0dc6`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb79b49d0880abf031ff6f45ce7839e133639ce10c80bd9980d2c122f6836a3`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0692f4cba6b69ff7042b46e454e69947360557980fe9c3efcd131397e629700b`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4-5` - unknown; unknown

```console
$ docker pull varnish@sha256:2507c03412ebaf6eb08b8c5f9a93bf1cbb9d19ca69b72b325cf09dbaf0c65f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 KB (20144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdcb56be31e7da94e0204156594b8f9f0ac4908fa83a0ae3234371bb898a6100`

```dockerfile
```

-	Layers:
	-	`sha256:49b0090e203ecabd1bc5b37243ef519c68f32ca4bd8d5e78fcd939cfaf0978de`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 20.1 KB (20144 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0.4-5` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:e9a6fff9a325e186e6046e6cd277ac472add5870d222e44669286c2b0a8e5932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125621488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c12e998210eec8efd7b8ddf21930cbb61387c2980588941eb2dd30b45b0e24c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:20 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:39:20 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 06 Oct 2026 01:39:20 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:39:20 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:39:20 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:39:20 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:39:20 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:39:20 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:39:20 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:39:20 GMT
USER varnish
# Tue, 06 Oct 2026 01:39:20 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:39:20 GMT
CMD []
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a6222d8ef884bd9c687a296014069f240580ec9ea27254803b41d3aeac5aff`  
		Last Modified: Tue, 06 Oct 2026 01:39:35 GMT  
		Size: 95.4 MB (95418322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56745d3248f8f36dd2d6d30abb6ec6c31e037a2482fbb96daa1389d383e5285d`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cbf2120c09137b7928c4d059e0ab70aa83ea663d95d2cb878d68939e3b43eb1`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38abdbdcaa678039c78f2c678a12fbcd1290bfcdf8a9b5827c1be9889d808256`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4-5` - unknown; unknown

```console
$ docker pull varnish@sha256:15967b49f5d8a24e40b423c6e96fc3ba548ca33d45905d7a2163a2417ca849e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bd80d5201869d0458d0ecdf71cde30c2f26a4837fb2f9f1fecab944c91bd764`

```dockerfile
```

-	Layers:
	-	`sha256:c8118e5b9975910c617e09b161f2f9e2a124c9abcb77408fdad05306c29d1c8d`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 20.2 KB (20243 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.1`

```console
$ docker pull varnish@sha256:842a2874f49d5b9eb7690a8fe0b6d3a66d8045b2d2a96154b4a804e2cbd8ac33
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.1` - linux; amd64

```console
$ docker pull varnish@sha256:e4c94ea3a25e13b6d7e555d20f906579c8a88fd0ea3759730dfbd6d1e7424c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132993292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad38ebf4e47a3661ad568309c6fbdbba5288afc5384fdc58630de516502bedaf`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:36:26 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:36:26 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 06 Oct 2026 01:36:26 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:36:26 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:36:26 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:36:26 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:36:26 GMT
USER varnish
# Tue, 06 Oct 2026 01:36:26 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:36:26 GMT
CMD []
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80564f41ff3ef515799d0654faf6ac7ff41bd2a74fd0547a88c8505e184bff4`  
		Last Modified: Tue, 06 Oct 2026 01:36:41 GMT  
		Size: 103.1 MB (103147057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d398eace9284ca7c06858dd5682ce4074eb187bb4b834a963c719c375decfb9`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea6e3cc5cb580e16f000e6b796b9696da6aa16a7defe2c188873fb5b51b822d`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0d39d4af23caa74c50d2dbfa86bf4cdfdd0d9e740c967d835c1442e699c369`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1` - unknown; unknown

```console
$ docker pull varnish@sha256:4a9883a2415d11a7dbe5c116a29220445f3a27dc518f75d01c3a0fc5fe05d28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3458cd8c89887e477862e08960bbd2232ec7c844a41c32a14de2c51bf3d4fae`

```dockerfile
```

-	Layers:
	-	`sha256:4f8b566e35b7f7095d79edcd368d94d7362cb6444c44f85cd852412f65473ec2`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.1` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:b2a676c96d5ac592aa38b242bf3ed3730f41cf9f873c5e44e7c10767440c0e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126117971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00faaa00c36ad51f1db592199ee59ee0ed94889e64f6e7365a260ea29199851`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:18 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:39:18 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 06 Oct 2026 01:39:18 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:39:18 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:39:18 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:39:18 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:39:18 GMT
USER varnish
# Tue, 06 Oct 2026 01:39:18 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:39:18 GMT
CMD []
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b839df2d3182d1daf5083a013afb9344417c88c69764988b336b39bda919dd6`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 95.9 MB (95914806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:717b024d6240fba1dcd23467a7215d31fc35f67d05391740cd48a3f4692ea78b`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1c12b4cf7833af64872e91b4e276a9c33ab834a0bf9dc3bc0f8995d2e598bc`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cfb2273e3a4691d7a68d305cbe86e08b21696aec5a135acfc4a94c20d6fa074`  
		Last Modified: Tue, 06 Oct 2026 01:39:30 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1` - unknown; unknown

```console
$ docker pull varnish@sha256:28230a0fdcbb7480c74b3da7bf67c032ae5d47af60dc85161b8354286723c553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73fd3f06bf475409ceaf5fc9da35221e4cfb0c198dfbcaf2484175ca410e3a67`

```dockerfile
```

-	Layers:
	-	`sha256:ac73bf6b53270c123dc370bb996b81abd90300392800f76016a7caa238139fb0`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.1.0`

```console
$ docker pull varnish@sha256:842a2874f49d5b9eb7690a8fe0b6d3a66d8045b2d2a96154b4a804e2cbd8ac33
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.1.0` - linux; amd64

```console
$ docker pull varnish@sha256:e4c94ea3a25e13b6d7e555d20f906579c8a88fd0ea3759730dfbd6d1e7424c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132993292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad38ebf4e47a3661ad568309c6fbdbba5288afc5384fdc58630de516502bedaf`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:36:26 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:36:26 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 06 Oct 2026 01:36:26 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:36:26 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:36:26 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:36:26 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:36:26 GMT
USER varnish
# Tue, 06 Oct 2026 01:36:26 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:36:26 GMT
CMD []
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80564f41ff3ef515799d0654faf6ac7ff41bd2a74fd0547a88c8505e184bff4`  
		Last Modified: Tue, 06 Oct 2026 01:36:41 GMT  
		Size: 103.1 MB (103147057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d398eace9284ca7c06858dd5682ce4074eb187bb4b834a963c719c375decfb9`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea6e3cc5cb580e16f000e6b796b9696da6aa16a7defe2c188873fb5b51b822d`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0d39d4af23caa74c50d2dbfa86bf4cdfdd0d9e740c967d835c1442e699c369`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0` - unknown; unknown

```console
$ docker pull varnish@sha256:4a9883a2415d11a7dbe5c116a29220445f3a27dc518f75d01c3a0fc5fe05d28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3458cd8c89887e477862e08960bbd2232ec7c844a41c32a14de2c51bf3d4fae`

```dockerfile
```

-	Layers:
	-	`sha256:4f8b566e35b7f7095d79edcd368d94d7362cb6444c44f85cd852412f65473ec2`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.1.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:b2a676c96d5ac592aa38b242bf3ed3730f41cf9f873c5e44e7c10767440c0e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126117971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00faaa00c36ad51f1db592199ee59ee0ed94889e64f6e7365a260ea29199851`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:18 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:39:18 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 06 Oct 2026 01:39:18 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:39:18 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:39:18 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:39:18 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:39:18 GMT
USER varnish
# Tue, 06 Oct 2026 01:39:18 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:39:18 GMT
CMD []
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b839df2d3182d1daf5083a013afb9344417c88c69764988b336b39bda919dd6`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 95.9 MB (95914806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:717b024d6240fba1dcd23467a7215d31fc35f67d05391740cd48a3f4692ea78b`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1c12b4cf7833af64872e91b4e276a9c33ab834a0bf9dc3bc0f8995d2e598bc`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cfb2273e3a4691d7a68d305cbe86e08b21696aec5a135acfc4a94c20d6fa074`  
		Last Modified: Tue, 06 Oct 2026 01:39:30 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0` - unknown; unknown

```console
$ docker pull varnish@sha256:28230a0fdcbb7480c74b3da7bf67c032ae5d47af60dc85161b8354286723c553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73fd3f06bf475409ceaf5fc9da35221e4cfb0c198dfbcaf2484175ca410e3a67`

```dockerfile
```

-	Layers:
	-	`sha256:ac73bf6b53270c123dc370bb996b81abd90300392800f76016a7caa238139fb0`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.1.0-2`

```console
$ docker pull varnish@sha256:842a2874f49d5b9eb7690a8fe0b6d3a66d8045b2d2a96154b4a804e2cbd8ac33
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.1.0-2` - linux; amd64

```console
$ docker pull varnish@sha256:e4c94ea3a25e13b6d7e555d20f906579c8a88fd0ea3759730dfbd6d1e7424c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132993292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad38ebf4e47a3661ad568309c6fbdbba5288afc5384fdc58630de516502bedaf`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:36:26 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:36:26 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 06 Oct 2026 01:36:26 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:36:26 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:36:26 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:36:26 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:36:26 GMT
USER varnish
# Tue, 06 Oct 2026 01:36:26 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:36:26 GMT
CMD []
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80564f41ff3ef515799d0654faf6ac7ff41bd2a74fd0547a88c8505e184bff4`  
		Last Modified: Tue, 06 Oct 2026 01:36:41 GMT  
		Size: 103.1 MB (103147057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d398eace9284ca7c06858dd5682ce4074eb187bb4b834a963c719c375decfb9`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea6e3cc5cb580e16f000e6b796b9696da6aa16a7defe2c188873fb5b51b822d`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0d39d4af23caa74c50d2dbfa86bf4cdfdd0d9e740c967d835c1442e699c369`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0-2` - unknown; unknown

```console
$ docker pull varnish@sha256:4a9883a2415d11a7dbe5c116a29220445f3a27dc518f75d01c3a0fc5fe05d28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3458cd8c89887e477862e08960bbd2232ec7c844a41c32a14de2c51bf3d4fae`

```dockerfile
```

-	Layers:
	-	`sha256:4f8b566e35b7f7095d79edcd368d94d7362cb6444c44f85cd852412f65473ec2`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.1.0-2` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:b2a676c96d5ac592aa38b242bf3ed3730f41cf9f873c5e44e7c10767440c0e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126117971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00faaa00c36ad51f1db592199ee59ee0ed94889e64f6e7365a260ea29199851`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:18 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:39:18 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 06 Oct 2026 01:39:18 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:39:18 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:39:18 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:39:18 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:39:18 GMT
USER varnish
# Tue, 06 Oct 2026 01:39:18 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:39:18 GMT
CMD []
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b839df2d3182d1daf5083a013afb9344417c88c69764988b336b39bda919dd6`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 95.9 MB (95914806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:717b024d6240fba1dcd23467a7215d31fc35f67d05391740cd48a3f4692ea78b`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1c12b4cf7833af64872e91b4e276a9c33ab834a0bf9dc3bc0f8995d2e598bc`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cfb2273e3a4691d7a68d305cbe86e08b21696aec5a135acfc4a94c20d6fa074`  
		Last Modified: Tue, 06 Oct 2026 01:39:30 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0-2` - unknown; unknown

```console
$ docker pull varnish@sha256:28230a0fdcbb7480c74b3da7bf67c032ae5d47af60dc85161b8354286723c553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73fd3f06bf475409ceaf5fc9da35221e4cfb0c198dfbcaf2484175ca410e3a67`

```dockerfile
```

-	Layers:
	-	`sha256:ac73bf6b53270c123dc370bb996b81abd90300392800f76016a7caa238139fb0`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:fresh`

```console
$ docker pull varnish@sha256:842a2874f49d5b9eb7690a8fe0b6d3a66d8045b2d2a96154b4a804e2cbd8ac33
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:fresh` - linux; amd64

```console
$ docker pull varnish@sha256:e4c94ea3a25e13b6d7e555d20f906579c8a88fd0ea3759730dfbd6d1e7424c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132993292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad38ebf4e47a3661ad568309c6fbdbba5288afc5384fdc58630de516502bedaf`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:36:26 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:36:26 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 06 Oct 2026 01:36:26 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:36:26 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:36:26 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:36:26 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:36:26 GMT
USER varnish
# Tue, 06 Oct 2026 01:36:26 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:36:26 GMT
CMD []
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80564f41ff3ef515799d0654faf6ac7ff41bd2a74fd0547a88c8505e184bff4`  
		Last Modified: Tue, 06 Oct 2026 01:36:41 GMT  
		Size: 103.1 MB (103147057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d398eace9284ca7c06858dd5682ce4074eb187bb4b834a963c719c375decfb9`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea6e3cc5cb580e16f000e6b796b9696da6aa16a7defe2c188873fb5b51b822d`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0d39d4af23caa74c50d2dbfa86bf4cdfdd0d9e740c967d835c1442e699c369`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:4a9883a2415d11a7dbe5c116a29220445f3a27dc518f75d01c3a0fc5fe05d28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3458cd8c89887e477862e08960bbd2232ec7c844a41c32a14de2c51bf3d4fae`

```dockerfile
```

-	Layers:
	-	`sha256:4f8b566e35b7f7095d79edcd368d94d7362cb6444c44f85cd852412f65473ec2`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:fresh` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:b2a676c96d5ac592aa38b242bf3ed3730f41cf9f873c5e44e7c10767440c0e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126117971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00faaa00c36ad51f1db592199ee59ee0ed94889e64f6e7365a260ea29199851`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:18 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:39:18 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 06 Oct 2026 01:39:18 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:39:18 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:39:18 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:39:18 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:39:18 GMT
USER varnish
# Tue, 06 Oct 2026 01:39:18 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:39:18 GMT
CMD []
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b839df2d3182d1daf5083a013afb9344417c88c69764988b336b39bda919dd6`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 95.9 MB (95914806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:717b024d6240fba1dcd23467a7215d31fc35f67d05391740cd48a3f4692ea78b`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1c12b4cf7833af64872e91b4e276a9c33ab834a0bf9dc3bc0f8995d2e598bc`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cfb2273e3a4691d7a68d305cbe86e08b21696aec5a135acfc4a94c20d6fa074`  
		Last Modified: Tue, 06 Oct 2026 01:39:30 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:28230a0fdcbb7480c74b3da7bf67c032ae5d47af60dc85161b8354286723c553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73fd3f06bf475409ceaf5fc9da35221e4cfb0c198dfbcaf2484175ca410e3a67`

```dockerfile
```

-	Layers:
	-	`sha256:ac73bf6b53270c123dc370bb996b81abd90300392800f76016a7caa238139fb0`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:latest`

```console
$ docker pull varnish@sha256:842a2874f49d5b9eb7690a8fe0b6d3a66d8045b2d2a96154b4a804e2cbd8ac33
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:latest` - linux; amd64

```console
$ docker pull varnish@sha256:e4c94ea3a25e13b6d7e555d20f906579c8a88fd0ea3759730dfbd6d1e7424c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132993292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad38ebf4e47a3661ad568309c6fbdbba5288afc5384fdc58630de516502bedaf`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:36:26 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:36:26 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 06 Oct 2026 01:36:26 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:36:26 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:36:26 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:36:26 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:36:26 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:36:26 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:36:26 GMT
USER varnish
# Tue, 06 Oct 2026 01:36:26 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:36:26 GMT
CMD []
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80564f41ff3ef515799d0654faf6ac7ff41bd2a74fd0547a88c8505e184bff4`  
		Last Modified: Tue, 06 Oct 2026 01:36:41 GMT  
		Size: 103.1 MB (103147057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d398eace9284ca7c06858dd5682ce4074eb187bb4b834a963c719c375decfb9`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea6e3cc5cb580e16f000e6b796b9696da6aa16a7defe2c188873fb5b51b822d`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0d39d4af23caa74c50d2dbfa86bf4cdfdd0d9e740c967d835c1442e699c369`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:4a9883a2415d11a7dbe5c116a29220445f3a27dc518f75d01c3a0fc5fe05d28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3458cd8c89887e477862e08960bbd2232ec7c844a41c32a14de2c51bf3d4fae`

```dockerfile
```

-	Layers:
	-	`sha256:4f8b566e35b7f7095d79edcd368d94d7362cb6444c44f85cd852412f65473ec2`  
		Last Modified: Tue, 06 Oct 2026 01:36:38 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:latest` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:b2a676c96d5ac592aa38b242bf3ed3730f41cf9f873c5e44e7c10767440c0e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126117971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00faaa00c36ad51f1db592199ee59ee0ed94889e64f6e7365a260ea29199851`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:18 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:39:18 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 06 Oct 2026 01:39:18 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:39:18 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:39:18 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:39:18 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:39:18 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:39:18 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:39:18 GMT
USER varnish
# Tue, 06 Oct 2026 01:39:18 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:39:18 GMT
CMD []
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b839df2d3182d1daf5083a013afb9344417c88c69764988b336b39bda919dd6`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 95.9 MB (95914806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:717b024d6240fba1dcd23467a7215d31fc35f67d05391740cd48a3f4692ea78b`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1c12b4cf7833af64872e91b4e276a9c33ab834a0bf9dc3bc0f8995d2e598bc`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cfb2273e3a4691d7a68d305cbe86e08b21696aec5a135acfc4a94c20d6fa074`  
		Last Modified: Tue, 06 Oct 2026 01:39:30 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:28230a0fdcbb7480c74b3da7bf67c032ae5d47af60dc85161b8354286723c553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73fd3f06bf475409ceaf5fc9da35221e4cfb0c198dfbcaf2484175ca410e3a67`

```dockerfile
```

-	Layers:
	-	`sha256:ac73bf6b53270c123dc370bb996b81abd90300392800f76016a7caa238139fb0`  
		Last Modified: Tue, 06 Oct 2026 01:39:29 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:old`

```console
$ docker pull varnish@sha256:8630ca5549864dd6ab87572286e83ab1011e04e160c23630e6da45cfadc23fdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:old` - linux; amd64

```console
$ docker pull varnish@sha256:cc8a07ee425059bc496c5742789806383bd82fde5f9ce542216c3eb53272eb91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e711e2c8b5dc246d88a50b249bc7f550451062d9037fb22aad267aeed3de44`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:36:25 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:36:25 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 06 Oct 2026 01:36:25 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:36:25 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:36:25 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:36:25 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:36:25 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:36:25 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:36:25 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:36:25 GMT
USER varnish
# Tue, 06 Oct 2026 01:36:25 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:36:25 GMT
CMD []
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b4a1c97fbc79a0c7782cb7e1bbe81c0cb37f0c8d458d9268c8e7e4d015c336`  
		Last Modified: Tue, 06 Oct 2026 01:36:41 GMT  
		Size: 102.7 MB (102655696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495eafed19f3d1d1d1e47e3f33dc8569d8d128b6f5b12486ac1c00e9555c0dc6`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb79b49d0880abf031ff6f45ce7839e133639ce10c80bd9980d2c122f6836a3`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0692f4cba6b69ff7042b46e454e69947360557980fe9c3efcd131397e629700b`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:2507c03412ebaf6eb08b8c5f9a93bf1cbb9d19ca69b72b325cf09dbaf0c65f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 KB (20144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdcb56be31e7da94e0204156594b8f9f0ac4908fa83a0ae3234371bb898a6100`

```dockerfile
```

-	Layers:
	-	`sha256:49b0090e203ecabd1bc5b37243ef519c68f32ca4bd8d5e78fcd939cfaf0978de`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 20.1 KB (20144 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:old` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:e9a6fff9a325e186e6046e6cd277ac472add5870d222e44669286c2b0a8e5932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125621488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c12e998210eec8efd7b8ddf21930cbb61387c2980588941eb2dd30b45b0e24c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:20 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:39:20 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 06 Oct 2026 01:39:20 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:39:20 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:39:20 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:39:20 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:39:20 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:39:20 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:39:20 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:39:20 GMT
USER varnish
# Tue, 06 Oct 2026 01:39:20 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:39:20 GMT
CMD []
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a6222d8ef884bd9c687a296014069f240580ec9ea27254803b41d3aeac5aff`  
		Last Modified: Tue, 06 Oct 2026 01:39:35 GMT  
		Size: 95.4 MB (95418322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56745d3248f8f36dd2d6d30abb6ec6c31e037a2482fbb96daa1389d383e5285d`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cbf2120c09137b7928c4d059e0ab70aa83ea663d95d2cb878d68939e3b43eb1`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38abdbdcaa678039c78f2c678a12fbcd1290bfcdf8a9b5827c1be9889d808256`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:15967b49f5d8a24e40b423c6e96fc3ba548ca33d45905d7a2163a2417ca849e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bd80d5201869d0458d0ecdf71cde30c2f26a4837fb2f9f1fecab944c91bd764`

```dockerfile
```

-	Layers:
	-	`sha256:c8118e5b9975910c617e09b161f2f9e2a124c9abcb77408fdad05306c29d1c8d`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 20.2 KB (20243 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:stable`

```console
$ docker pull varnish@sha256:e9d21a33fa558d5fd34e2474286a16a4bbe29aa38a687ffe34845e8911db6bf2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:stable` - linux; amd64

```console
$ docker pull varnish@sha256:77d91acdd3d1f14c0942f1fa678fdc4255baf03b086d8d56608ed615e8a66b2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121819509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a7e1025b26628b45a9b7e4ff5f02a3ff85356efe0fe4dd40a21978b7ac1c28`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:35:53 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:35:53 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 06 Oct 2026 01:35:53 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:35:53 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:35:53 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:35:53 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:35:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:35:53 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:35:53 GMT
CMD []
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c2ff6ea9c96a791063bced5cbbfaec7344530c601a34a516550f78a7abc538`  
		Last Modified: Tue, 06 Oct 2026 01:36:07 GMT  
		Size: 93.6 MB (93569433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3731bb706b0259e5ea514dd8edc170bde4fa466a4121bd3a64a4a3583d0a9dfc`  
		Last Modified: Tue, 06 Oct 2026 01:36:04 GMT  
		Size: 721.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:stable` - unknown; unknown

```console
$ docker pull varnish@sha256:792dd276a63a4e4d45a9a9f56ec13a00310570d2551b0e1bf019109a66ebc450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cd1607d36c0aae1e17a4faadc4602161ada9b6d228747e2f03e027e243ec83d`

```dockerfile
```

-	Layers:
	-	`sha256:b5ea9dc7ee4516bd1fe4ac71fe9775f3c6fdb437b226234a4603c4c05e53b3b3`  
		Last Modified: Tue, 06 Oct 2026 01:36:04 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:stable` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:1b48178e373a1a06d4640921cf23f96c06361a9a80696c1812848f3937db8d3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116270056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35771446ce135ba9615afb59e0650a1fda4367cb339e3be1801bff4262561f6`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:39:01 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:39:01 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 06 Oct 2026 01:39:01 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:39:01 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:39:01 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:39:01 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:01 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:39:01 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:39:01 GMT
CMD []
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c186d70df43637dea4d07124c6327ae24c05c214a3a015415ae126afd6f730`  
		Last Modified: Tue, 06 Oct 2026 01:39:14 GMT  
		Size: 88.1 MB (88132123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda9adb204e2686a13281fb4cc745f5fc828c95247216c422133890a63f48ca2`  
		Last Modified: Tue, 06 Oct 2026 01:39:11 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:stable` - unknown; unknown

```console
$ docker pull varnish@sha256:d8f9f0daf39bd9308f2bec89ef6c8474862abb4e462ce9bdf68ac522265af4ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7edb79621e36712da1444bcc6b4f0e77a8e4f6b152f79e3b14e8d8866c6b0cb3`

```dockerfile
```

-	Layers:
	-	`sha256:f13fbb81c7c2108fabc1276cb5a4977336b27cf38130200a0263066d6a036ab8`  
		Last Modified: Tue, 06 Oct 2026 01:39:11 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json
