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
