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
$ docker pull varnish@sha256:a0d6b9c6463077ecaac23adb7bbde2a4302c5b01ea981ad725e05b8e85b59493
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6` - linux; amd64

```console
$ docker pull varnish@sha256:9604d12d75af36a6fb92ecfb06bbc84d538961f905be491c15ad9687c2ab01be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121824707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72076c60dd236742353ddddb4894bfa6fab584758f5ceda759fa16b463f68e88`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:40:41 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:40:41 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 21 Oct 2026 00:40:41 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:40:41 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:40:41 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:40:41 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:40:41 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:40:41 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:40:41 GMT
CMD []
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e67db44ea18123805a09c3c7a4b0ea59f1eef9427c823a6f3090af4c3938a07`  
		Last Modified: Wed, 21 Oct 2026 00:40:56 GMT  
		Size: 93.6 MB (93576014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e16f2d2e2d516c532ec6eba4244a44e5baf0cd4e2b8131754b933a1c295f85`  
		Last Modified: Wed, 21 Oct 2026 00:40:53 GMT  
		Size: 726.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6` - unknown; unknown

```console
$ docker pull varnish@sha256:878bc104995f12e0c948244707dcb2a476f3777994a9062fd004f9fefa01433b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf7d6f04409bc67069562412700699a37a048f8a5cdeb4199ff0e4dffa33118`

```dockerfile
```

-	Layers:
	-	`sha256:ef4bfdda91ec0aadb01c264973ea627145d77def7b35b87ad1a0a20297eda856`  
		Last Modified: Wed, 21 Oct 2026 00:40:53 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:b27eceb4d6844afa6709d5a1d4ef4837f590732ca60369b412a61f8aecbb474e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116277787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:207d2cbffa6ed4b2e96fda72d7049c1652e20c59630355ae4d2bb0acbcc352b7`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:44:17 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:44:17 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 21 Oct 2026 00:44:17 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:44:17 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:44:17 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:44:17 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:44:17 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:44:17 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:44:17 GMT
CMD []
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f692f0ed1d0ed5656213a26be5328bd4e36430d4b9e1132c9795dde4f9f7e2`  
		Last Modified: Wed, 21 Oct 2026 00:44:31 GMT  
		Size: 88.1 MB (88138606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77144365c82034090cc76485ef1cd9bbed09845dec414e1182113b76429eddb5`  
		Last Modified: Wed, 21 Oct 2026 00:44:29 GMT  
		Size: 724.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6` - unknown; unknown

```console
$ docker pull varnish@sha256:929b249b216f43b7d450850ca8f04c817e1967745ae8658a9268c8c6eec9a2c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:850fbbe7d397454db3afdea89c2524825c6e9c1936dbbf5be140dfc873a8df7d`

```dockerfile
```

-	Layers:
	-	`sha256:0a8c8003c7cf717838ca3637ae1047c77ffae6654da53df8e01737f989b61d28`  
		Last Modified: Wed, 21 Oct 2026 00:44:29 GMT  
		Size: 13.4 KB (13378 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0`

```console
$ docker pull varnish@sha256:a0d6b9c6463077ecaac23adb7bbde2a4302c5b01ea981ad725e05b8e85b59493
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0` - linux; amd64

```console
$ docker pull varnish@sha256:9604d12d75af36a6fb92ecfb06bbc84d538961f905be491c15ad9687c2ab01be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121824707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72076c60dd236742353ddddb4894bfa6fab584758f5ceda759fa16b463f68e88`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:40:41 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:40:41 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 21 Oct 2026 00:40:41 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:40:41 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:40:41 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:40:41 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:40:41 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:40:41 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:40:41 GMT
CMD []
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e67db44ea18123805a09c3c7a4b0ea59f1eef9427c823a6f3090af4c3938a07`  
		Last Modified: Wed, 21 Oct 2026 00:40:56 GMT  
		Size: 93.6 MB (93576014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e16f2d2e2d516c532ec6eba4244a44e5baf0cd4e2b8131754b933a1c295f85`  
		Last Modified: Wed, 21 Oct 2026 00:40:53 GMT  
		Size: 726.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0` - unknown; unknown

```console
$ docker pull varnish@sha256:878bc104995f12e0c948244707dcb2a476f3777994a9062fd004f9fefa01433b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf7d6f04409bc67069562412700699a37a048f8a5cdeb4199ff0e4dffa33118`

```dockerfile
```

-	Layers:
	-	`sha256:ef4bfdda91ec0aadb01c264973ea627145d77def7b35b87ad1a0a20297eda856`  
		Last Modified: Wed, 21 Oct 2026 00:40:53 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:b27eceb4d6844afa6709d5a1d4ef4837f590732ca60369b412a61f8aecbb474e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116277787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:207d2cbffa6ed4b2e96fda72d7049c1652e20c59630355ae4d2bb0acbcc352b7`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:44:17 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:44:17 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 21 Oct 2026 00:44:17 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:44:17 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:44:17 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:44:17 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:44:17 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:44:17 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:44:17 GMT
CMD []
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f692f0ed1d0ed5656213a26be5328bd4e36430d4b9e1132c9795dde4f9f7e2`  
		Last Modified: Wed, 21 Oct 2026 00:44:31 GMT  
		Size: 88.1 MB (88138606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77144365c82034090cc76485ef1cd9bbed09845dec414e1182113b76429eddb5`  
		Last Modified: Wed, 21 Oct 2026 00:44:29 GMT  
		Size: 724.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0` - unknown; unknown

```console
$ docker pull varnish@sha256:929b249b216f43b7d450850ca8f04c817e1967745ae8658a9268c8c6eec9a2c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:850fbbe7d397454db3afdea89c2524825c6e9c1936dbbf5be140dfc873a8df7d`

```dockerfile
```

-	Layers:
	-	`sha256:0a8c8003c7cf717838ca3637ae1047c77ffae6654da53df8e01737f989b61d28`  
		Last Modified: Wed, 21 Oct 2026 00:44:29 GMT  
		Size: 13.4 KB (13378 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0.18`

```console
$ docker pull varnish@sha256:a0d6b9c6463077ecaac23adb7bbde2a4302c5b01ea981ad725e05b8e85b59493
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0.18` - linux; amd64

```console
$ docker pull varnish@sha256:9604d12d75af36a6fb92ecfb06bbc84d538961f905be491c15ad9687c2ab01be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121824707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72076c60dd236742353ddddb4894bfa6fab584758f5ceda759fa16b463f68e88`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:40:41 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:40:41 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 21 Oct 2026 00:40:41 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:40:41 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:40:41 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:40:41 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:40:41 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:40:41 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:40:41 GMT
CMD []
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e67db44ea18123805a09c3c7a4b0ea59f1eef9427c823a6f3090af4c3938a07`  
		Last Modified: Wed, 21 Oct 2026 00:40:56 GMT  
		Size: 93.6 MB (93576014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e16f2d2e2d516c532ec6eba4244a44e5baf0cd4e2b8131754b933a1c295f85`  
		Last Modified: Wed, 21 Oct 2026 00:40:53 GMT  
		Size: 726.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18` - unknown; unknown

```console
$ docker pull varnish@sha256:878bc104995f12e0c948244707dcb2a476f3777994a9062fd004f9fefa01433b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf7d6f04409bc67069562412700699a37a048f8a5cdeb4199ff0e4dffa33118`

```dockerfile
```

-	Layers:
	-	`sha256:ef4bfdda91ec0aadb01c264973ea627145d77def7b35b87ad1a0a20297eda856`  
		Last Modified: Wed, 21 Oct 2026 00:40:53 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0.18` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:b27eceb4d6844afa6709d5a1d4ef4837f590732ca60369b412a61f8aecbb474e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116277787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:207d2cbffa6ed4b2e96fda72d7049c1652e20c59630355ae4d2bb0acbcc352b7`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:44:17 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:44:17 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 21 Oct 2026 00:44:17 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:44:17 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:44:17 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:44:17 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:44:17 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:44:17 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:44:17 GMT
CMD []
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f692f0ed1d0ed5656213a26be5328bd4e36430d4b9e1132c9795dde4f9f7e2`  
		Last Modified: Wed, 21 Oct 2026 00:44:31 GMT  
		Size: 88.1 MB (88138606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77144365c82034090cc76485ef1cd9bbed09845dec414e1182113b76429eddb5`  
		Last Modified: Wed, 21 Oct 2026 00:44:29 GMT  
		Size: 724.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18` - unknown; unknown

```console
$ docker pull varnish@sha256:929b249b216f43b7d450850ca8f04c817e1967745ae8658a9268c8c6eec9a2c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:850fbbe7d397454db3afdea89c2524825c6e9c1936dbbf5be140dfc873a8df7d`

```dockerfile
```

-	Layers:
	-	`sha256:0a8c8003c7cf717838ca3637ae1047c77ffae6654da53df8e01737f989b61d28`  
		Last Modified: Wed, 21 Oct 2026 00:44:29 GMT  
		Size: 13.4 KB (13378 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0.18-1`

```console
$ docker pull varnish@sha256:a0d6b9c6463077ecaac23adb7bbde2a4302c5b01ea981ad725e05b8e85b59493
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0.18-1` - linux; amd64

```console
$ docker pull varnish@sha256:9604d12d75af36a6fb92ecfb06bbc84d538961f905be491c15ad9687c2ab01be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121824707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72076c60dd236742353ddddb4894bfa6fab584758f5ceda759fa16b463f68e88`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:40:41 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:40:41 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 21 Oct 2026 00:40:41 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:40:41 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:40:41 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:40:41 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:40:41 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:40:41 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:40:41 GMT
CMD []
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e67db44ea18123805a09c3c7a4b0ea59f1eef9427c823a6f3090af4c3938a07`  
		Last Modified: Wed, 21 Oct 2026 00:40:56 GMT  
		Size: 93.6 MB (93576014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e16f2d2e2d516c532ec6eba4244a44e5baf0cd4e2b8131754b933a1c295f85`  
		Last Modified: Wed, 21 Oct 2026 00:40:53 GMT  
		Size: 726.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18-1` - unknown; unknown

```console
$ docker pull varnish@sha256:878bc104995f12e0c948244707dcb2a476f3777994a9062fd004f9fefa01433b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf7d6f04409bc67069562412700699a37a048f8a5cdeb4199ff0e4dffa33118`

```dockerfile
```

-	Layers:
	-	`sha256:ef4bfdda91ec0aadb01c264973ea627145d77def7b35b87ad1a0a20297eda856`  
		Last Modified: Wed, 21 Oct 2026 00:40:53 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0.18-1` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:b27eceb4d6844afa6709d5a1d4ef4837f590732ca60369b412a61f8aecbb474e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116277787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:207d2cbffa6ed4b2e96fda72d7049c1652e20c59630355ae4d2bb0acbcc352b7`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:44:17 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:44:17 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 21 Oct 2026 00:44:17 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:44:17 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:44:17 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:44:17 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:44:17 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:44:17 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:44:17 GMT
CMD []
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f692f0ed1d0ed5656213a26be5328bd4e36430d4b9e1132c9795dde4f9f7e2`  
		Last Modified: Wed, 21 Oct 2026 00:44:31 GMT  
		Size: 88.1 MB (88138606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77144365c82034090cc76485ef1cd9bbed09845dec414e1182113b76429eddb5`  
		Last Modified: Wed, 21 Oct 2026 00:44:29 GMT  
		Size: 724.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18-1` - unknown; unknown

```console
$ docker pull varnish@sha256:929b249b216f43b7d450850ca8f04c817e1967745ae8658a9268c8c6eec9a2c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:850fbbe7d397454db3afdea89c2524825c6e9c1936dbbf5be140dfc873a8df7d`

```dockerfile
```

-	Layers:
	-	`sha256:0a8c8003c7cf717838ca3637ae1047c77ffae6654da53df8e01737f989b61d28`  
		Last Modified: Wed, 21 Oct 2026 00:44:29 GMT  
		Size: 13.4 KB (13378 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9`

```console
$ docker pull varnish@sha256:e4ad0535a84a281f0d6b09d0c59f0eb6973b82891930c87d2580170c4826927e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9` - linux; amd64

```console
$ docker pull varnish@sha256:361e118d5d44067fef3b7096e9c474c8bb67e6d1701556bee52a07d85f37ae4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132996517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6177abee7dd09a3ce0729017832a8f7f966ca8763ad8e09f61a832ee78ce79a`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:41:10 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:41:10 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 21 Oct 2026 00:41:10 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:41:10 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:41:10 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:41:10 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:41:10 GMT
USER varnish
# Wed, 21 Oct 2026 00:41:10 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:41:10 GMT
CMD []
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55b0678b403ab24e387e82e1a8c3c878e4247368688dd6d528aa8704800550f`  
		Last Modified: Wed, 21 Oct 2026 00:41:26 GMT  
		Size: 103.2 MB (103150048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30de77099b8fc5dcfcb1328ec9222a1033469ce08d21539ca97ca17dd328e5c2`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e616739b1989f8d347f8ed972a8e20b2cf71a22e96afde9cb8619106316698`  
		Last Modified: Wed, 21 Oct 2026 00:41:24 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d3ad1735487a4853f1b0ccf9ceacc29d25e2adcc4a511ecc48d3f397278fc0`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:3b2d58ef03087535e8758ec45541580f1d1f5699c2d13afe90fd181a91ee34b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9cbc9a7669f401b8ce58d300c8c8881702772b4a22b1e321732411bb94bd4ca`

```dockerfile
```

-	Layers:
	-	`sha256:fc13c54af2b616e54ccb95521b44b8ce8fdd6b2512190fb806f78f0dcee8b450`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 20.7 KB (20743 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:bde87ef993d026638d87b76fb71c8ba1d4a0024ce2d8bf978c12f5afbd6c3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126118212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40bc49b6924bc6b206124e641f2e823233ea78bed912b5bf700ac70814d19bd1`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:44:19 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:44:19 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:44:19 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:44:19 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:44:19 GMT
USER varnish
# Wed, 21 Oct 2026 00:44:19 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:44:19 GMT
CMD []
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfeb75d21ea2db50e3a9600c7f5457a9da829509508d77348e2e29ca9ebdfa4`  
		Last Modified: Wed, 21 Oct 2026 00:44:34 GMT  
		Size: 95.9 MB (95914850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9fe6d605169a86ae47d326f5415875d7e1aee5b5407bef80fefdbafce0f433`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26942d7cf865390a949a7b6a1223cacb03b06208751924918c6cdaa90139bba5`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae534997bf4eecc0b5b9450c6d8e08898e3a7372eb50729b684024e401c7f41`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:85bae5ccc0722f845f55421db361938774f6cf5cfbea11253f4ab6ec6dfbc127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087d887be48af105c5856cfc12595aa7c387794a8ccf5660b5e1038c8d00da9c`

```dockerfile
```

-	Layers:
	-	`sha256:c0461e4fccd9c03493b08ba36c7c7a65d1a06af793584c8ff76b8fe6f331dfa4`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0`

```console
$ docker pull varnish@sha256:e6fa5820aa627b1a733354dbd8a119dca9538ac5ee862fafab0431112fce015c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0` - linux; amd64

```console
$ docker pull varnish@sha256:e098dfcc02573ba1664c6253acb46effb598b406262cd5c90b4dc697dec56d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132499611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f26e8dca4899665477d086a9be488cc5da39ec1749d131c2bf85c46bc247de4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:41:08 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:41:08 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Wed, 21 Oct 2026 00:41:08 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:41:08 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:41:08 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:41:08 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:41:08 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:41:08 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:41:08 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:41:08 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:08 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:41:08 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:41:08 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:41:08 GMT
USER varnish
# Wed, 21 Oct 2026 00:41:08 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:41:08 GMT
CMD []
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0984c391255c15b40cb2f439004c64b64513cb3fa6e1bd87d90e139c9b6238e`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 102.7 MB (102653143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fcec69d061d1dcd4fe744bcbf77fae7f2b0bb52a0e8c80b79e2cfe250652c3`  
		Last Modified: Wed, 21 Oct 2026 00:41:21 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8bc0992f3d05f28ed34be51299e440a73d005a8b716b96239218ff7a4ef881`  
		Last Modified: Wed, 21 Oct 2026 00:41:21 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c0acd58e3027b4d7fc08034d1bb461f6aaecc35dfb1c29caf5dff73d4a4aca`  
		Last Modified: Wed, 21 Oct 2026 00:41:21 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0` - unknown; unknown

```console
$ docker pull varnish@sha256:55c6f0ff3670bad94a924afdb3f40a5f463110f0750b31146189b8bf2c88195e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 KB (20144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ae3bf1ef098b1bb4c6068faf895ab7ed0bdb59222450436b8e71a300428c6c`

```dockerfile
```

-	Layers:
	-	`sha256:b740b9f7e85db62e8f5c4cc4a00078b397443bc1f7eeb898f9ca10f4add43024`  
		Last Modified: Wed, 21 Oct 2026 00:41:21 GMT  
		Size: 20.1 KB (20144 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:c8f5d0b1959a6d1e571fe85f1ed1ede2a5509aed922b2ed2d2a2dee88c3b3bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125619299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3410be75b64dbf4a86dd44b7827f96229d44dedca0f4248500aae36617b3b5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:44:19 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:44:19 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:44:19 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:44:19 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:44:19 GMT
USER varnish
# Wed, 21 Oct 2026 00:44:19 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:44:19 GMT
CMD []
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead8b336eb6071a07a18bd306cd5aa14e6083a88d5f834e9504598fd929a5465`  
		Last Modified: Wed, 21 Oct 2026 00:44:34 GMT  
		Size: 95.4 MB (95415940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339f29043373695c4be4ec7ccaecabbd9530909e8a0a69de3dd2b89a880f1e22`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38010a5e29a5180beffbd75de55941ea261f1a77992489512dff5dd85f003767`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c578da49b02ff27fea890c75d71a6daef4889102d349d0abf47e844e996e8729`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0` - unknown; unknown

```console
$ docker pull varnish@sha256:b93fcc992612154eb9911e21609b4c217cf45281c816c149326a96b2a1212f76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a662d56125c4c6524a938afa77f6af8f1669e58807b16ed99bc0ebf003298f`

```dockerfile
```

-	Layers:
	-	`sha256:9a22b8934c4c80477f2c9585d721035fa8c0d3db352c132afa88adc5095acf2f`  
		Last Modified: Wed, 21 Oct 2026 00:44:31 GMT  
		Size: 20.2 KB (20243 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0.4`

```console
$ docker pull varnish@sha256:e6fa5820aa627b1a733354dbd8a119dca9538ac5ee862fafab0431112fce015c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0.4` - linux; amd64

```console
$ docker pull varnish@sha256:e098dfcc02573ba1664c6253acb46effb598b406262cd5c90b4dc697dec56d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132499611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f26e8dca4899665477d086a9be488cc5da39ec1749d131c2bf85c46bc247de4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:41:08 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:41:08 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Wed, 21 Oct 2026 00:41:08 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:41:08 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:41:08 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:41:08 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:41:08 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:41:08 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:41:08 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:41:08 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:08 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:41:08 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:41:08 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:41:08 GMT
USER varnish
# Wed, 21 Oct 2026 00:41:08 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:41:08 GMT
CMD []
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0984c391255c15b40cb2f439004c64b64513cb3fa6e1bd87d90e139c9b6238e`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 102.7 MB (102653143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fcec69d061d1dcd4fe744bcbf77fae7f2b0bb52a0e8c80b79e2cfe250652c3`  
		Last Modified: Wed, 21 Oct 2026 00:41:21 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8bc0992f3d05f28ed34be51299e440a73d005a8b716b96239218ff7a4ef881`  
		Last Modified: Wed, 21 Oct 2026 00:41:21 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c0acd58e3027b4d7fc08034d1bb461f6aaecc35dfb1c29caf5dff73d4a4aca`  
		Last Modified: Wed, 21 Oct 2026 00:41:21 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4` - unknown; unknown

```console
$ docker pull varnish@sha256:55c6f0ff3670bad94a924afdb3f40a5f463110f0750b31146189b8bf2c88195e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 KB (20144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ae3bf1ef098b1bb4c6068faf895ab7ed0bdb59222450436b8e71a300428c6c`

```dockerfile
```

-	Layers:
	-	`sha256:b740b9f7e85db62e8f5c4cc4a00078b397443bc1f7eeb898f9ca10f4add43024`  
		Last Modified: Wed, 21 Oct 2026 00:41:21 GMT  
		Size: 20.1 KB (20144 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0.4` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:c8f5d0b1959a6d1e571fe85f1ed1ede2a5509aed922b2ed2d2a2dee88c3b3bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125619299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3410be75b64dbf4a86dd44b7827f96229d44dedca0f4248500aae36617b3b5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:44:19 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:44:19 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:44:19 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:44:19 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:44:19 GMT
USER varnish
# Wed, 21 Oct 2026 00:44:19 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:44:19 GMT
CMD []
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead8b336eb6071a07a18bd306cd5aa14e6083a88d5f834e9504598fd929a5465`  
		Last Modified: Wed, 21 Oct 2026 00:44:34 GMT  
		Size: 95.4 MB (95415940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339f29043373695c4be4ec7ccaecabbd9530909e8a0a69de3dd2b89a880f1e22`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38010a5e29a5180beffbd75de55941ea261f1a77992489512dff5dd85f003767`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c578da49b02ff27fea890c75d71a6daef4889102d349d0abf47e844e996e8729`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4` - unknown; unknown

```console
$ docker pull varnish@sha256:b93fcc992612154eb9911e21609b4c217cf45281c816c149326a96b2a1212f76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a662d56125c4c6524a938afa77f6af8f1669e58807b16ed99bc0ebf003298f`

```dockerfile
```

-	Layers:
	-	`sha256:9a22b8934c4c80477f2c9585d721035fa8c0d3db352c132afa88adc5095acf2f`  
		Last Modified: Wed, 21 Oct 2026 00:44:31 GMT  
		Size: 20.2 KB (20243 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0.4-5`

```console
$ docker pull varnish@sha256:e6fa5820aa627b1a733354dbd8a119dca9538ac5ee862fafab0431112fce015c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0.4-5` - linux; amd64

```console
$ docker pull varnish@sha256:e098dfcc02573ba1664c6253acb46effb598b406262cd5c90b4dc697dec56d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132499611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f26e8dca4899665477d086a9be488cc5da39ec1749d131c2bf85c46bc247de4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:41:08 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:41:08 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Wed, 21 Oct 2026 00:41:08 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:41:08 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:41:08 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:41:08 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:41:08 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:41:08 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:41:08 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:41:08 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:08 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:41:08 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:41:08 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:41:08 GMT
USER varnish
# Wed, 21 Oct 2026 00:41:08 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:41:08 GMT
CMD []
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0984c391255c15b40cb2f439004c64b64513cb3fa6e1bd87d90e139c9b6238e`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 102.7 MB (102653143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fcec69d061d1dcd4fe744bcbf77fae7f2b0bb52a0e8c80b79e2cfe250652c3`  
		Last Modified: Wed, 21 Oct 2026 00:41:21 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8bc0992f3d05f28ed34be51299e440a73d005a8b716b96239218ff7a4ef881`  
		Last Modified: Wed, 21 Oct 2026 00:41:21 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c0acd58e3027b4d7fc08034d1bb461f6aaecc35dfb1c29caf5dff73d4a4aca`  
		Last Modified: Wed, 21 Oct 2026 00:41:21 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4-5` - unknown; unknown

```console
$ docker pull varnish@sha256:55c6f0ff3670bad94a924afdb3f40a5f463110f0750b31146189b8bf2c88195e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 KB (20144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ae3bf1ef098b1bb4c6068faf895ab7ed0bdb59222450436b8e71a300428c6c`

```dockerfile
```

-	Layers:
	-	`sha256:b740b9f7e85db62e8f5c4cc4a00078b397443bc1f7eeb898f9ca10f4add43024`  
		Last Modified: Wed, 21 Oct 2026 00:41:21 GMT  
		Size: 20.1 KB (20144 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0.4-5` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:c8f5d0b1959a6d1e571fe85f1ed1ede2a5509aed922b2ed2d2a2dee88c3b3bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125619299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3410be75b64dbf4a86dd44b7827f96229d44dedca0f4248500aae36617b3b5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:44:19 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:44:19 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:44:19 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:44:19 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:44:19 GMT
USER varnish
# Wed, 21 Oct 2026 00:44:19 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:44:19 GMT
CMD []
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead8b336eb6071a07a18bd306cd5aa14e6083a88d5f834e9504598fd929a5465`  
		Last Modified: Wed, 21 Oct 2026 00:44:34 GMT  
		Size: 95.4 MB (95415940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339f29043373695c4be4ec7ccaecabbd9530909e8a0a69de3dd2b89a880f1e22`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38010a5e29a5180beffbd75de55941ea261f1a77992489512dff5dd85f003767`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c578da49b02ff27fea890c75d71a6daef4889102d349d0abf47e844e996e8729`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4-5` - unknown; unknown

```console
$ docker pull varnish@sha256:b93fcc992612154eb9911e21609b4c217cf45281c816c149326a96b2a1212f76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a662d56125c4c6524a938afa77f6af8f1669e58807b16ed99bc0ebf003298f`

```dockerfile
```

-	Layers:
	-	`sha256:9a22b8934c4c80477f2c9585d721035fa8c0d3db352c132afa88adc5095acf2f`  
		Last Modified: Wed, 21 Oct 2026 00:44:31 GMT  
		Size: 20.2 KB (20243 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.1`

```console
$ docker pull varnish@sha256:e4ad0535a84a281f0d6b09d0c59f0eb6973b82891930c87d2580170c4826927e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.1` - linux; amd64

```console
$ docker pull varnish@sha256:361e118d5d44067fef3b7096e9c474c8bb67e6d1701556bee52a07d85f37ae4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132996517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6177abee7dd09a3ce0729017832a8f7f966ca8763ad8e09f61a832ee78ce79a`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:41:10 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:41:10 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 21 Oct 2026 00:41:10 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:41:10 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:41:10 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:41:10 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:41:10 GMT
USER varnish
# Wed, 21 Oct 2026 00:41:10 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:41:10 GMT
CMD []
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55b0678b403ab24e387e82e1a8c3c878e4247368688dd6d528aa8704800550f`  
		Last Modified: Wed, 21 Oct 2026 00:41:26 GMT  
		Size: 103.2 MB (103150048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30de77099b8fc5dcfcb1328ec9222a1033469ce08d21539ca97ca17dd328e5c2`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e616739b1989f8d347f8ed972a8e20b2cf71a22e96afde9cb8619106316698`  
		Last Modified: Wed, 21 Oct 2026 00:41:24 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d3ad1735487a4853f1b0ccf9ceacc29d25e2adcc4a511ecc48d3f397278fc0`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1` - unknown; unknown

```console
$ docker pull varnish@sha256:3b2d58ef03087535e8758ec45541580f1d1f5699c2d13afe90fd181a91ee34b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9cbc9a7669f401b8ce58d300c8c8881702772b4a22b1e321732411bb94bd4ca`

```dockerfile
```

-	Layers:
	-	`sha256:fc13c54af2b616e54ccb95521b44b8ce8fdd6b2512190fb806f78f0dcee8b450`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 20.7 KB (20743 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.1` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:bde87ef993d026638d87b76fb71c8ba1d4a0024ce2d8bf978c12f5afbd6c3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126118212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40bc49b6924bc6b206124e641f2e823233ea78bed912b5bf700ac70814d19bd1`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:44:19 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:44:19 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:44:19 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:44:19 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:44:19 GMT
USER varnish
# Wed, 21 Oct 2026 00:44:19 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:44:19 GMT
CMD []
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfeb75d21ea2db50e3a9600c7f5457a9da829509508d77348e2e29ca9ebdfa4`  
		Last Modified: Wed, 21 Oct 2026 00:44:34 GMT  
		Size: 95.9 MB (95914850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9fe6d605169a86ae47d326f5415875d7e1aee5b5407bef80fefdbafce0f433`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26942d7cf865390a949a7b6a1223cacb03b06208751924918c6cdaa90139bba5`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae534997bf4eecc0b5b9450c6d8e08898e3a7372eb50729b684024e401c7f41`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1` - unknown; unknown

```console
$ docker pull varnish@sha256:85bae5ccc0722f845f55421db361938774f6cf5cfbea11253f4ab6ec6dfbc127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087d887be48af105c5856cfc12595aa7c387794a8ccf5660b5e1038c8d00da9c`

```dockerfile
```

-	Layers:
	-	`sha256:c0461e4fccd9c03493b08ba36c7c7a65d1a06af793584c8ff76b8fe6f331dfa4`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.1.0`

```console
$ docker pull varnish@sha256:e4ad0535a84a281f0d6b09d0c59f0eb6973b82891930c87d2580170c4826927e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.1.0` - linux; amd64

```console
$ docker pull varnish@sha256:361e118d5d44067fef3b7096e9c474c8bb67e6d1701556bee52a07d85f37ae4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132996517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6177abee7dd09a3ce0729017832a8f7f966ca8763ad8e09f61a832ee78ce79a`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:41:10 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:41:10 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 21 Oct 2026 00:41:10 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:41:10 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:41:10 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:41:10 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:41:10 GMT
USER varnish
# Wed, 21 Oct 2026 00:41:10 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:41:10 GMT
CMD []
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55b0678b403ab24e387e82e1a8c3c878e4247368688dd6d528aa8704800550f`  
		Last Modified: Wed, 21 Oct 2026 00:41:26 GMT  
		Size: 103.2 MB (103150048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30de77099b8fc5dcfcb1328ec9222a1033469ce08d21539ca97ca17dd328e5c2`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e616739b1989f8d347f8ed972a8e20b2cf71a22e96afde9cb8619106316698`  
		Last Modified: Wed, 21 Oct 2026 00:41:24 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d3ad1735487a4853f1b0ccf9ceacc29d25e2adcc4a511ecc48d3f397278fc0`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0` - unknown; unknown

```console
$ docker pull varnish@sha256:3b2d58ef03087535e8758ec45541580f1d1f5699c2d13afe90fd181a91ee34b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9cbc9a7669f401b8ce58d300c8c8881702772b4a22b1e321732411bb94bd4ca`

```dockerfile
```

-	Layers:
	-	`sha256:fc13c54af2b616e54ccb95521b44b8ce8fdd6b2512190fb806f78f0dcee8b450`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 20.7 KB (20743 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.1.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:bde87ef993d026638d87b76fb71c8ba1d4a0024ce2d8bf978c12f5afbd6c3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126118212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40bc49b6924bc6b206124e641f2e823233ea78bed912b5bf700ac70814d19bd1`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:44:19 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:44:19 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:44:19 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:44:19 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:44:19 GMT
USER varnish
# Wed, 21 Oct 2026 00:44:19 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:44:19 GMT
CMD []
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfeb75d21ea2db50e3a9600c7f5457a9da829509508d77348e2e29ca9ebdfa4`  
		Last Modified: Wed, 21 Oct 2026 00:44:34 GMT  
		Size: 95.9 MB (95914850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9fe6d605169a86ae47d326f5415875d7e1aee5b5407bef80fefdbafce0f433`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26942d7cf865390a949a7b6a1223cacb03b06208751924918c6cdaa90139bba5`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae534997bf4eecc0b5b9450c6d8e08898e3a7372eb50729b684024e401c7f41`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0` - unknown; unknown

```console
$ docker pull varnish@sha256:85bae5ccc0722f845f55421db361938774f6cf5cfbea11253f4ab6ec6dfbc127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087d887be48af105c5856cfc12595aa7c387794a8ccf5660b5e1038c8d00da9c`

```dockerfile
```

-	Layers:
	-	`sha256:c0461e4fccd9c03493b08ba36c7c7a65d1a06af793584c8ff76b8fe6f331dfa4`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.1.0-2`

```console
$ docker pull varnish@sha256:e4ad0535a84a281f0d6b09d0c59f0eb6973b82891930c87d2580170c4826927e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.1.0-2` - linux; amd64

```console
$ docker pull varnish@sha256:361e118d5d44067fef3b7096e9c474c8bb67e6d1701556bee52a07d85f37ae4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132996517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6177abee7dd09a3ce0729017832a8f7f966ca8763ad8e09f61a832ee78ce79a`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:41:10 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:41:10 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 21 Oct 2026 00:41:10 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:41:10 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:41:10 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:41:10 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:41:10 GMT
USER varnish
# Wed, 21 Oct 2026 00:41:10 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:41:10 GMT
CMD []
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55b0678b403ab24e387e82e1a8c3c878e4247368688dd6d528aa8704800550f`  
		Last Modified: Wed, 21 Oct 2026 00:41:26 GMT  
		Size: 103.2 MB (103150048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30de77099b8fc5dcfcb1328ec9222a1033469ce08d21539ca97ca17dd328e5c2`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e616739b1989f8d347f8ed972a8e20b2cf71a22e96afde9cb8619106316698`  
		Last Modified: Wed, 21 Oct 2026 00:41:24 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d3ad1735487a4853f1b0ccf9ceacc29d25e2adcc4a511ecc48d3f397278fc0`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0-2` - unknown; unknown

```console
$ docker pull varnish@sha256:3b2d58ef03087535e8758ec45541580f1d1f5699c2d13afe90fd181a91ee34b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9cbc9a7669f401b8ce58d300c8c8881702772b4a22b1e321732411bb94bd4ca`

```dockerfile
```

-	Layers:
	-	`sha256:fc13c54af2b616e54ccb95521b44b8ce8fdd6b2512190fb806f78f0dcee8b450`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 20.7 KB (20743 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.1.0-2` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:bde87ef993d026638d87b76fb71c8ba1d4a0024ce2d8bf978c12f5afbd6c3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126118212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40bc49b6924bc6b206124e641f2e823233ea78bed912b5bf700ac70814d19bd1`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:44:19 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:44:19 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:44:19 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:44:19 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:44:19 GMT
USER varnish
# Wed, 21 Oct 2026 00:44:19 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:44:19 GMT
CMD []
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfeb75d21ea2db50e3a9600c7f5457a9da829509508d77348e2e29ca9ebdfa4`  
		Last Modified: Wed, 21 Oct 2026 00:44:34 GMT  
		Size: 95.9 MB (95914850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9fe6d605169a86ae47d326f5415875d7e1aee5b5407bef80fefdbafce0f433`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26942d7cf865390a949a7b6a1223cacb03b06208751924918c6cdaa90139bba5`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae534997bf4eecc0b5b9450c6d8e08898e3a7372eb50729b684024e401c7f41`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0-2` - unknown; unknown

```console
$ docker pull varnish@sha256:85bae5ccc0722f845f55421db361938774f6cf5cfbea11253f4ab6ec6dfbc127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087d887be48af105c5856cfc12595aa7c387794a8ccf5660b5e1038c8d00da9c`

```dockerfile
```

-	Layers:
	-	`sha256:c0461e4fccd9c03493b08ba36c7c7a65d1a06af793584c8ff76b8fe6f331dfa4`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:fresh`

```console
$ docker pull varnish@sha256:e4ad0535a84a281f0d6b09d0c59f0eb6973b82891930c87d2580170c4826927e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:fresh` - linux; amd64

```console
$ docker pull varnish@sha256:361e118d5d44067fef3b7096e9c474c8bb67e6d1701556bee52a07d85f37ae4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132996517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6177abee7dd09a3ce0729017832a8f7f966ca8763ad8e09f61a832ee78ce79a`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:41:10 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:41:10 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 21 Oct 2026 00:41:10 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:41:10 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:41:10 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:41:10 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:41:10 GMT
USER varnish
# Wed, 21 Oct 2026 00:41:10 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:41:10 GMT
CMD []
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55b0678b403ab24e387e82e1a8c3c878e4247368688dd6d528aa8704800550f`  
		Last Modified: Wed, 21 Oct 2026 00:41:26 GMT  
		Size: 103.2 MB (103150048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30de77099b8fc5dcfcb1328ec9222a1033469ce08d21539ca97ca17dd328e5c2`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e616739b1989f8d347f8ed972a8e20b2cf71a22e96afde9cb8619106316698`  
		Last Modified: Wed, 21 Oct 2026 00:41:24 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d3ad1735487a4853f1b0ccf9ceacc29d25e2adcc4a511ecc48d3f397278fc0`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:3b2d58ef03087535e8758ec45541580f1d1f5699c2d13afe90fd181a91ee34b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9cbc9a7669f401b8ce58d300c8c8881702772b4a22b1e321732411bb94bd4ca`

```dockerfile
```

-	Layers:
	-	`sha256:fc13c54af2b616e54ccb95521b44b8ce8fdd6b2512190fb806f78f0dcee8b450`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 20.7 KB (20743 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:fresh` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:bde87ef993d026638d87b76fb71c8ba1d4a0024ce2d8bf978c12f5afbd6c3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126118212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40bc49b6924bc6b206124e641f2e823233ea78bed912b5bf700ac70814d19bd1`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:44:19 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:44:19 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:44:19 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:44:19 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:44:19 GMT
USER varnish
# Wed, 21 Oct 2026 00:44:19 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:44:19 GMT
CMD []
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfeb75d21ea2db50e3a9600c7f5457a9da829509508d77348e2e29ca9ebdfa4`  
		Last Modified: Wed, 21 Oct 2026 00:44:34 GMT  
		Size: 95.9 MB (95914850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9fe6d605169a86ae47d326f5415875d7e1aee5b5407bef80fefdbafce0f433`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26942d7cf865390a949a7b6a1223cacb03b06208751924918c6cdaa90139bba5`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae534997bf4eecc0b5b9450c6d8e08898e3a7372eb50729b684024e401c7f41`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:85bae5ccc0722f845f55421db361938774f6cf5cfbea11253f4ab6ec6dfbc127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087d887be48af105c5856cfc12595aa7c387794a8ccf5660b5e1038c8d00da9c`

```dockerfile
```

-	Layers:
	-	`sha256:c0461e4fccd9c03493b08ba36c7c7a65d1a06af793584c8ff76b8fe6f331dfa4`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:latest`

```console
$ docker pull varnish@sha256:e4ad0535a84a281f0d6b09d0c59f0eb6973b82891930c87d2580170c4826927e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:latest` - linux; amd64

```console
$ docker pull varnish@sha256:361e118d5d44067fef3b7096e9c474c8bb67e6d1701556bee52a07d85f37ae4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132996517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6177abee7dd09a3ce0729017832a8f7f966ca8763ad8e09f61a832ee78ce79a`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:41:10 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:41:10 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 21 Oct 2026 00:41:10 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:41:10 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:41:10 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:41:10 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:41:10 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:41:10 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:41:10 GMT
USER varnish
# Wed, 21 Oct 2026 00:41:10 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:41:10 GMT
CMD []
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55b0678b403ab24e387e82e1a8c3c878e4247368688dd6d528aa8704800550f`  
		Last Modified: Wed, 21 Oct 2026 00:41:26 GMT  
		Size: 103.2 MB (103150048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30de77099b8fc5dcfcb1328ec9222a1033469ce08d21539ca97ca17dd328e5c2`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e616739b1989f8d347f8ed972a8e20b2cf71a22e96afde9cb8619106316698`  
		Last Modified: Wed, 21 Oct 2026 00:41:24 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d3ad1735487a4853f1b0ccf9ceacc29d25e2adcc4a511ecc48d3f397278fc0`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:3b2d58ef03087535e8758ec45541580f1d1f5699c2d13afe90fd181a91ee34b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9cbc9a7669f401b8ce58d300c8c8881702772b4a22b1e321732411bb94bd4ca`

```dockerfile
```

-	Layers:
	-	`sha256:fc13c54af2b616e54ccb95521b44b8ce8fdd6b2512190fb806f78f0dcee8b450`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 20.7 KB (20743 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:latest` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:bde87ef993d026638d87b76fb71c8ba1d4a0024ce2d8bf978c12f5afbd6c3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126118212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40bc49b6924bc6b206124e641f2e823233ea78bed912b5bf700ac70814d19bd1`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:44:19 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:44:19 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:44:19 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:44:19 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:44:19 GMT
USER varnish
# Wed, 21 Oct 2026 00:44:19 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:44:19 GMT
CMD []
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfeb75d21ea2db50e3a9600c7f5457a9da829509508d77348e2e29ca9ebdfa4`  
		Last Modified: Wed, 21 Oct 2026 00:44:34 GMT  
		Size: 95.9 MB (95914850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9fe6d605169a86ae47d326f5415875d7e1aee5b5407bef80fefdbafce0f433`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26942d7cf865390a949a7b6a1223cacb03b06208751924918c6cdaa90139bba5`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae534997bf4eecc0b5b9450c6d8e08898e3a7372eb50729b684024e401c7f41`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:85bae5ccc0722f845f55421db361938774f6cf5cfbea11253f4ab6ec6dfbc127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087d887be48af105c5856cfc12595aa7c387794a8ccf5660b5e1038c8d00da9c`

```dockerfile
```

-	Layers:
	-	`sha256:c0461e4fccd9c03493b08ba36c7c7a65d1a06af793584c8ff76b8fe6f331dfa4`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:old`

```console
$ docker pull varnish@sha256:e6fa5820aa627b1a733354dbd8a119dca9538ac5ee862fafab0431112fce015c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:old` - linux; amd64

```console
$ docker pull varnish@sha256:e098dfcc02573ba1664c6253acb46effb598b406262cd5c90b4dc697dec56d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132499611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f26e8dca4899665477d086a9be488cc5da39ec1749d131c2bf85c46bc247de4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:41:08 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:41:08 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Wed, 21 Oct 2026 00:41:08 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:41:08 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:41:08 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:41:08 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:41:08 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:41:08 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:41:08 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:41:08 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:08 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:41:08 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:41:08 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:41:08 GMT
USER varnish
# Wed, 21 Oct 2026 00:41:08 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:41:08 GMT
CMD []
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0984c391255c15b40cb2f439004c64b64513cb3fa6e1bd87d90e139c9b6238e`  
		Last Modified: Wed, 21 Oct 2026 00:41:23 GMT  
		Size: 102.7 MB (102653143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fcec69d061d1dcd4fe744bcbf77fae7f2b0bb52a0e8c80b79e2cfe250652c3`  
		Last Modified: Wed, 21 Oct 2026 00:41:21 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8bc0992f3d05f28ed34be51299e440a73d005a8b716b96239218ff7a4ef881`  
		Last Modified: Wed, 21 Oct 2026 00:41:21 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c0acd58e3027b4d7fc08034d1bb461f6aaecc35dfb1c29caf5dff73d4a4aca`  
		Last Modified: Wed, 21 Oct 2026 00:41:21 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:55c6f0ff3670bad94a924afdb3f40a5f463110f0750b31146189b8bf2c88195e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 KB (20144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ae3bf1ef098b1bb4c6068faf895ab7ed0bdb59222450436b8e71a300428c6c`

```dockerfile
```

-	Layers:
	-	`sha256:b740b9f7e85db62e8f5c4cc4a00078b397443bc1f7eeb898f9ca10f4add43024`  
		Last Modified: Wed, 21 Oct 2026 00:41:21 GMT  
		Size: 20.1 KB (20144 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:old` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:c8f5d0b1959a6d1e571fe85f1ed1ede2a5509aed922b2ed2d2a2dee88c3b3bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125619299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3410be75b64dbf4a86dd44b7827f96229d44dedca0f4248500aae36617b3b5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:44:19 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Wed, 21 Oct 2026 00:44:19 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 21 Oct 2026 00:44:19 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:44:19 GMT
ENV VSM_NOPID=1
# Wed, 21 Oct 2026 00:44:19 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:44:19 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 21 Oct 2026 00:44:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:44:19 GMT
USER varnish
# Wed, 21 Oct 2026 00:44:19 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:44:19 GMT
CMD []
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead8b336eb6071a07a18bd306cd5aa14e6083a88d5f834e9504598fd929a5465`  
		Last Modified: Wed, 21 Oct 2026 00:44:34 GMT  
		Size: 95.4 MB (95415940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339f29043373695c4be4ec7ccaecabbd9530909e8a0a69de3dd2b89a880f1e22`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38010a5e29a5180beffbd75de55941ea261f1a77992489512dff5dd85f003767`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c578da49b02ff27fea890c75d71a6daef4889102d349d0abf47e844e996e8729`  
		Last Modified: Wed, 21 Oct 2026 00:44:32 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:b93fcc992612154eb9911e21609b4c217cf45281c816c149326a96b2a1212f76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a662d56125c4c6524a938afa77f6af8f1669e58807b16ed99bc0ebf003298f`

```dockerfile
```

-	Layers:
	-	`sha256:9a22b8934c4c80477f2c9585d721035fa8c0d3db352c132afa88adc5095acf2f`  
		Last Modified: Wed, 21 Oct 2026 00:44:31 GMT  
		Size: 20.2 KB (20243 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:stable`

```console
$ docker pull varnish@sha256:a0d6b9c6463077ecaac23adb7bbde2a4302c5b01ea981ad725e05b8e85b59493
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:stable` - linux; amd64

```console
$ docker pull varnish@sha256:9604d12d75af36a6fb92ecfb06bbc84d538961f905be491c15ad9687c2ab01be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121824707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72076c60dd236742353ddddb4894bfa6fab584758f5ceda759fa16b463f68e88`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:40:41 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:40:41 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 21 Oct 2026 00:40:41 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:40:41 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:40:41 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:40:41 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:40:41 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:40:41 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:40:41 GMT
CMD []
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e67db44ea18123805a09c3c7a4b0ea59f1eef9427c823a6f3090af4c3938a07`  
		Last Modified: Wed, 21 Oct 2026 00:40:56 GMT  
		Size: 93.6 MB (93576014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e16f2d2e2d516c532ec6eba4244a44e5baf0cd4e2b8131754b933a1c295f85`  
		Last Modified: Wed, 21 Oct 2026 00:40:53 GMT  
		Size: 726.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:stable` - unknown; unknown

```console
$ docker pull varnish@sha256:878bc104995f12e0c948244707dcb2a476f3777994a9062fd004f9fefa01433b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf7d6f04409bc67069562412700699a37a048f8a5cdeb4199ff0e4dffa33118`

```dockerfile
```

-	Layers:
	-	`sha256:ef4bfdda91ec0aadb01c264973ea627145d77def7b35b87ad1a0a20297eda856`  
		Last Modified: Wed, 21 Oct 2026 00:40:53 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:stable` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:b27eceb4d6844afa6709d5a1d4ef4837f590732ca60369b412a61f8aecbb474e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116277787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:207d2cbffa6ed4b2e96fda72d7049c1652e20c59630355ae4d2bb0acbcc352b7`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:44:17 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 21 Oct 2026 00:44:17 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 21 Oct 2026 00:44:17 GMT
ENV VARNISH_SIZE=100M
# Wed, 21 Oct 2026 00:44:17 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 21 Oct 2026 00:44:17 GMT
WORKDIR /etc/varnish
# Wed, 21 Oct 2026 00:44:17 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:44:17 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 21 Oct 2026 00:44:17 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 21 Oct 2026 00:44:17 GMT
CMD []
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f692f0ed1d0ed5656213a26be5328bd4e36430d4b9e1132c9795dde4f9f7e2`  
		Last Modified: Wed, 21 Oct 2026 00:44:31 GMT  
		Size: 88.1 MB (88138606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77144365c82034090cc76485ef1cd9bbed09845dec414e1182113b76429eddb5`  
		Last Modified: Wed, 21 Oct 2026 00:44:29 GMT  
		Size: 724.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:stable` - unknown; unknown

```console
$ docker pull varnish@sha256:929b249b216f43b7d450850ca8f04c817e1967745ae8658a9268c8c6eec9a2c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:850fbbe7d397454db3afdea89c2524825c6e9c1936dbbf5be140dfc873a8df7d`

```dockerfile
```

-	Layers:
	-	`sha256:0a8c8003c7cf717838ca3637ae1047c77ffae6654da53df8e01737f989b61d28`  
		Last Modified: Wed, 21 Oct 2026 00:44:29 GMT  
		Size: 13.4 KB (13378 bytes)  
		MIME: application/vnd.in-toto+json
