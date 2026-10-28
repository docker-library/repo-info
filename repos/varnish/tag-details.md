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
$ docker pull varnish@sha256:baeffccf2143476540ceb3883388bc84ef6fc077de80ff80aa72dd81dbd977af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6` - linux; amd64

```console
$ docker pull varnish@sha256:c6047377b2fd3741cb39db7d7e2bd97fa7cce8b1716a9b390bf4cb37a1d18a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121828729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42cb249a04eb290e52aefb9cfa64ef6e6ef3cafeb9a9e96d27cedb0b516c9e1d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:33:42 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:33:42 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 28 Oct 2026 01:33:42 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:33:42 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:33:42 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:33:42 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:33:42 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:33:42 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:33:42 GMT
CMD []
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f57e15049d7aa7f1dd8dbbe40f9dd52d2efd75dfff2215405714621db6cfcf42`  
		Last Modified: Wed, 28 Oct 2026 01:33:57 GMT  
		Size: 93.6 MB (93580536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02edeb1c7b5cfe2ec8705b7b1f10288463108d87a76ea3a5831eb127e87503d`  
		Last Modified: Wed, 28 Oct 2026 01:33:55 GMT  
		Size: 724.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6` - unknown; unknown

```console
$ docker pull varnish@sha256:501b23a5aa37d21199a2974eb9f975e9f00d659013e2e4a84015c8195e7219c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71206266a55e67dd6d81f2a535d94036a47cd0925df9960a5c6942be5b78f85`

```dockerfile
```

-	Layers:
	-	`sha256:c99dbf1f820cd56e9aec1d81ba3582171bf5e0968d413313362e780d8732925a`  
		Last Modified: Wed, 28 Oct 2026 01:33:54 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:ab975462769c6297107c8e3805f68861ef6bf90c1579daf1c998064ccf691959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116284428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b4c84ca7afa0c75e5626ae5bf24763acdaa628e71dd762155e70ba1f55c38fd`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:38:01 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:38:01 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 28 Oct 2026 01:38:01 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:38:01 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:38:01 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:38:01 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:38:01 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:38:01 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:38:01 GMT
CMD []
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1abf212028d1ea9a9f8f8ab6acc36c372e1476a20daf4f54e48333287d9739`  
		Last Modified: Wed, 28 Oct 2026 01:38:13 GMT  
		Size: 88.1 MB (88145723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b25f36d69a621a21757c4285abba379a95d762c0d14b6c3ad2ccddbb0bc6a1`  
		Last Modified: Wed, 28 Oct 2026 01:38:11 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6` - unknown; unknown

```console
$ docker pull varnish@sha256:8425265be0dcb08adc450b154969de149d5c4fe3f838950624e0d3970458dd03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8b103fc18777849f8da1d43ffecc21911ad4519777870a1be32b18778a26bbb`

```dockerfile
```

-	Layers:
	-	`sha256:51d56db782d3a92e300404237cdcd36fb60fd3e2d18b971b23ae2d2564620db9`  
		Last Modified: Wed, 28 Oct 2026 01:38:11 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0`

```console
$ docker pull varnish@sha256:baeffccf2143476540ceb3883388bc84ef6fc077de80ff80aa72dd81dbd977af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0` - linux; amd64

```console
$ docker pull varnish@sha256:c6047377b2fd3741cb39db7d7e2bd97fa7cce8b1716a9b390bf4cb37a1d18a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121828729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42cb249a04eb290e52aefb9cfa64ef6e6ef3cafeb9a9e96d27cedb0b516c9e1d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:33:42 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:33:42 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 28 Oct 2026 01:33:42 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:33:42 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:33:42 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:33:42 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:33:42 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:33:42 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:33:42 GMT
CMD []
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f57e15049d7aa7f1dd8dbbe40f9dd52d2efd75dfff2215405714621db6cfcf42`  
		Last Modified: Wed, 28 Oct 2026 01:33:57 GMT  
		Size: 93.6 MB (93580536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02edeb1c7b5cfe2ec8705b7b1f10288463108d87a76ea3a5831eb127e87503d`  
		Last Modified: Wed, 28 Oct 2026 01:33:55 GMT  
		Size: 724.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0` - unknown; unknown

```console
$ docker pull varnish@sha256:501b23a5aa37d21199a2974eb9f975e9f00d659013e2e4a84015c8195e7219c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71206266a55e67dd6d81f2a535d94036a47cd0925df9960a5c6942be5b78f85`

```dockerfile
```

-	Layers:
	-	`sha256:c99dbf1f820cd56e9aec1d81ba3582171bf5e0968d413313362e780d8732925a`  
		Last Modified: Wed, 28 Oct 2026 01:33:54 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:ab975462769c6297107c8e3805f68861ef6bf90c1579daf1c998064ccf691959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116284428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b4c84ca7afa0c75e5626ae5bf24763acdaa628e71dd762155e70ba1f55c38fd`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:38:01 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:38:01 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 28 Oct 2026 01:38:01 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:38:01 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:38:01 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:38:01 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:38:01 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:38:01 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:38:01 GMT
CMD []
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1abf212028d1ea9a9f8f8ab6acc36c372e1476a20daf4f54e48333287d9739`  
		Last Modified: Wed, 28 Oct 2026 01:38:13 GMT  
		Size: 88.1 MB (88145723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b25f36d69a621a21757c4285abba379a95d762c0d14b6c3ad2ccddbb0bc6a1`  
		Last Modified: Wed, 28 Oct 2026 01:38:11 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0` - unknown; unknown

```console
$ docker pull varnish@sha256:8425265be0dcb08adc450b154969de149d5c4fe3f838950624e0d3970458dd03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8b103fc18777849f8da1d43ffecc21911ad4519777870a1be32b18778a26bbb`

```dockerfile
```

-	Layers:
	-	`sha256:51d56db782d3a92e300404237cdcd36fb60fd3e2d18b971b23ae2d2564620db9`  
		Last Modified: Wed, 28 Oct 2026 01:38:11 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0.18`

```console
$ docker pull varnish@sha256:baeffccf2143476540ceb3883388bc84ef6fc077de80ff80aa72dd81dbd977af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0.18` - linux; amd64

```console
$ docker pull varnish@sha256:c6047377b2fd3741cb39db7d7e2bd97fa7cce8b1716a9b390bf4cb37a1d18a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121828729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42cb249a04eb290e52aefb9cfa64ef6e6ef3cafeb9a9e96d27cedb0b516c9e1d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:33:42 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:33:42 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 28 Oct 2026 01:33:42 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:33:42 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:33:42 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:33:42 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:33:42 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:33:42 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:33:42 GMT
CMD []
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f57e15049d7aa7f1dd8dbbe40f9dd52d2efd75dfff2215405714621db6cfcf42`  
		Last Modified: Wed, 28 Oct 2026 01:33:57 GMT  
		Size: 93.6 MB (93580536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02edeb1c7b5cfe2ec8705b7b1f10288463108d87a76ea3a5831eb127e87503d`  
		Last Modified: Wed, 28 Oct 2026 01:33:55 GMT  
		Size: 724.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18` - unknown; unknown

```console
$ docker pull varnish@sha256:501b23a5aa37d21199a2974eb9f975e9f00d659013e2e4a84015c8195e7219c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71206266a55e67dd6d81f2a535d94036a47cd0925df9960a5c6942be5b78f85`

```dockerfile
```

-	Layers:
	-	`sha256:c99dbf1f820cd56e9aec1d81ba3582171bf5e0968d413313362e780d8732925a`  
		Last Modified: Wed, 28 Oct 2026 01:33:54 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0.18` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:ab975462769c6297107c8e3805f68861ef6bf90c1579daf1c998064ccf691959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116284428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b4c84ca7afa0c75e5626ae5bf24763acdaa628e71dd762155e70ba1f55c38fd`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:38:01 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:38:01 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 28 Oct 2026 01:38:01 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:38:01 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:38:01 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:38:01 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:38:01 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:38:01 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:38:01 GMT
CMD []
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1abf212028d1ea9a9f8f8ab6acc36c372e1476a20daf4f54e48333287d9739`  
		Last Modified: Wed, 28 Oct 2026 01:38:13 GMT  
		Size: 88.1 MB (88145723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b25f36d69a621a21757c4285abba379a95d762c0d14b6c3ad2ccddbb0bc6a1`  
		Last Modified: Wed, 28 Oct 2026 01:38:11 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18` - unknown; unknown

```console
$ docker pull varnish@sha256:8425265be0dcb08adc450b154969de149d5c4fe3f838950624e0d3970458dd03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8b103fc18777849f8da1d43ffecc21911ad4519777870a1be32b18778a26bbb`

```dockerfile
```

-	Layers:
	-	`sha256:51d56db782d3a92e300404237cdcd36fb60fd3e2d18b971b23ae2d2564620db9`  
		Last Modified: Wed, 28 Oct 2026 01:38:11 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0.18-1`

```console
$ docker pull varnish@sha256:baeffccf2143476540ceb3883388bc84ef6fc077de80ff80aa72dd81dbd977af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0.18-1` - linux; amd64

```console
$ docker pull varnish@sha256:c6047377b2fd3741cb39db7d7e2bd97fa7cce8b1716a9b390bf4cb37a1d18a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121828729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42cb249a04eb290e52aefb9cfa64ef6e6ef3cafeb9a9e96d27cedb0b516c9e1d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:33:42 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:33:42 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 28 Oct 2026 01:33:42 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:33:42 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:33:42 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:33:42 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:33:42 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:33:42 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:33:42 GMT
CMD []
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f57e15049d7aa7f1dd8dbbe40f9dd52d2efd75dfff2215405714621db6cfcf42`  
		Last Modified: Wed, 28 Oct 2026 01:33:57 GMT  
		Size: 93.6 MB (93580536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02edeb1c7b5cfe2ec8705b7b1f10288463108d87a76ea3a5831eb127e87503d`  
		Last Modified: Wed, 28 Oct 2026 01:33:55 GMT  
		Size: 724.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18-1` - unknown; unknown

```console
$ docker pull varnish@sha256:501b23a5aa37d21199a2974eb9f975e9f00d659013e2e4a84015c8195e7219c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71206266a55e67dd6d81f2a535d94036a47cd0925df9960a5c6942be5b78f85`

```dockerfile
```

-	Layers:
	-	`sha256:c99dbf1f820cd56e9aec1d81ba3582171bf5e0968d413313362e780d8732925a`  
		Last Modified: Wed, 28 Oct 2026 01:33:54 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0.18-1` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:ab975462769c6297107c8e3805f68861ef6bf90c1579daf1c998064ccf691959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116284428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b4c84ca7afa0c75e5626ae5bf24763acdaa628e71dd762155e70ba1f55c38fd`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:38:01 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:38:01 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 28 Oct 2026 01:38:01 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:38:01 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:38:01 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:38:01 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:38:01 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:38:01 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:38:01 GMT
CMD []
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1abf212028d1ea9a9f8f8ab6acc36c372e1476a20daf4f54e48333287d9739`  
		Last Modified: Wed, 28 Oct 2026 01:38:13 GMT  
		Size: 88.1 MB (88145723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b25f36d69a621a21757c4285abba379a95d762c0d14b6c3ad2ccddbb0bc6a1`  
		Last Modified: Wed, 28 Oct 2026 01:38:11 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18-1` - unknown; unknown

```console
$ docker pull varnish@sha256:8425265be0dcb08adc450b154969de149d5c4fe3f838950624e0d3970458dd03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8b103fc18777849f8da1d43ffecc21911ad4519777870a1be32b18778a26bbb`

```dockerfile
```

-	Layers:
	-	`sha256:51d56db782d3a92e300404237cdcd36fb60fd3e2d18b971b23ae2d2564620db9`  
		Last Modified: Wed, 28 Oct 2026 01:38:11 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9`

```console
$ docker pull varnish@sha256:4c6066279af88edcdd97d35a45579c77f363e551cd9cb5597644ac856d8ebbdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9` - linux; amd64

```console
$ docker pull varnish@sha256:b4a3fad9d3da8f1700c31868df3f8b3fb91d13b94eac6e5d7fceba0860966c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (133007730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c24905edfa2a55185744480c78e74f6be475f48c86b11e2f5c19d3b1a7e2f5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:34:12 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:34:12 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 28 Oct 2026 01:34:12 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:34:12 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:34:12 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:34:12 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:34:12 GMT
USER varnish
# Wed, 28 Oct 2026 01:34:12 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:34:12 GMT
CMD []
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d6c4a09b86a8f50001c5d8775ea3e8e19bbb432de8187b4e4a8ca5bb16d697`  
		Last Modified: Wed, 28 Oct 2026 01:34:27 GMT  
		Size: 103.1 MB (103149611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b573411db82f056fbf48b84a90dd4da5a40a8ccb19a7a0f4818e1d264b5bc5b9`  
		Last Modified: Wed, 28 Oct 2026 01:34:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29b645e5fe662ebab1ebc624741b74e1fad613e4253b537bddb708a084d094f`  
		Last Modified: Wed, 28 Oct 2026 01:34:25 GMT  
		Size: 1.0 KB (1005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520186a2d8254b054e2d5259624475594893bc79ffd2dffcb6611895a6075f6b`  
		Last Modified: Wed, 28 Oct 2026 01:34:25 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:a5f35c607d56b45cbfca3ddbf7ca86041831b25c949f31c30182d2134b93ef44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e21058e5574a5e5764af544533568f7b397a723c92f7741f22d4c29e1f3e1ec`

```dockerfile
```

-	Layers:
	-	`sha256:7c9288065469f70eb90361a7cb5239b55b0ee76e374630f558348cd5389cb9ca`  
		Last Modified: Wed, 28 Oct 2026 01:34:24 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6dbd8c5cd9d385cfe8e706a42a3b620790bede56c32a55b1bae389490efa71e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126130139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0d076ebdac2c9950ff568055a256e4f0f37a2ede3f35a07c66b823792220e3`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:37:22 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:37:22 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 28 Oct 2026 01:37:22 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:37:22 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:37:22 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:37:22 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:37:22 GMT
USER varnish
# Wed, 28 Oct 2026 01:37:22 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:37:22 GMT
CMD []
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecefc5ee8e7bf5163f27800aa93dbba9dfe535b25c2504462be5572020a3e30`  
		Last Modified: Wed, 28 Oct 2026 01:37:37 GMT  
		Size: 95.9 MB (95913756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60aea5d95874c6f42c072f04a4d1f70af987c1740e9cf7988fd4991c36e159b`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9dec42474c5c6662e8dbfa0ea1c7ce5b7d69b63448b01d72032ec315491f2e5`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55832e74f2e0ebca4ef76f4cb226b70c5178ae0de92830a5962d7b5603245616`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:2d0fedc5080201ec252aa9d1c7f772998fd30489ed9c0dabab68e76af7337659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951f4b76c377f6ae2cf26ceae7e9b1f9d1be11a05b54a21b3113a02a14cb20e2`

```dockerfile
```

-	Layers:
	-	`sha256:503d81c2bd5fbcf309bf807db848247687d8ccfa2ba243cdb9ab20e9a52f4959`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 20.9 KB (20866 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0`

```console
$ docker pull varnish@sha256:7b36e1c12183cc6bb0dc850cf82788a8d68210cc448f3abaa4b22fb0c01e7605
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0` - linux; amd64

```console
$ docker pull varnish@sha256:b934fc9be985d5bde5604b22bee54dbb4e94c5ebf1d963a2a1219146c8c77998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132511432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b3edf6db1e69dbd59b7d4718ccf2c8d345039ff77369cfedabcccf4b462eac`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:34:16 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:34:16 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Wed, 28 Oct 2026 01:34:16 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:34:16 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:34:16 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:34:16 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:34:16 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:34:16 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:34:16 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:34:16 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:34:16 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:34:16 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:34:16 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:34:16 GMT
USER varnish
# Wed, 28 Oct 2026 01:34:16 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:34:16 GMT
CMD []
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b5e7a18705e91ac980aff348eafe634dc6602f17db72c66eb8b53ef2edd05c`  
		Last Modified: Wed, 28 Oct 2026 01:34:32 GMT  
		Size: 102.7 MB (102653309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387455c0a59c558b279e88de37051d75bb9ff21f5b72ad975672115c981e110e`  
		Last Modified: Wed, 28 Oct 2026 01:34:30 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9437dadf0a528cadc38196dc868437c281901d57d1eb48c4d520fb83bc9dfdc6`  
		Last Modified: Wed, 28 Oct 2026 01:34:30 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2d774b1518a85058c1759d005e4416bc5e1f3902d405c6e60cfc468b46937c`  
		Last Modified: Wed, 28 Oct 2026 01:34:30 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0` - unknown; unknown

```console
$ docker pull varnish@sha256:47cff3dd12512cce900d7e663888ebfe0534d52eb2902156ca1b2fda3a30e1c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 KB (20144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64354198c00eb2cd52f73de74d5366dbeaa3bafdb00894818024439092a11211`

```dockerfile
```

-	Layers:
	-	`sha256:ec2111481e1619c84f420ead2b3de9408e72e2eff8eee32570170b1a3072f737`  
		Last Modified: Wed, 28 Oct 2026 01:34:30 GMT  
		Size: 20.1 KB (20144 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:5370ffa278684cf574d828522bc7a20505cb74dac5b0dc017639cc337d8d81f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125632300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75c87379bbeaa8fc8129f9c31dc9cf560dd336b20ced110f13d53d27165d64c5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:37:35 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:37:35 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Wed, 28 Oct 2026 01:37:35 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:37:35 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:37:35 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:37:35 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:37:35 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:37:35 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:37:35 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:37:35 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:37:35 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:37:35 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:37:35 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:37:35 GMT
USER varnish
# Wed, 28 Oct 2026 01:37:35 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:37:35 GMT
CMD []
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cf2a2404cd60e4e4770c558c8a12d7809847cc701b3966a2b0c82adda2d7380`  
		Last Modified: Wed, 28 Oct 2026 01:37:51 GMT  
		Size: 95.4 MB (95415917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f17a73dc14425da942974528f0ab9ea74504fc16bbc03401842ff0d52be24e`  
		Last Modified: Wed, 28 Oct 2026 01:37:48 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c50f642821244e5fa611973cbd75f078fc9fbcb6f81720cad2438fc3c8749069`  
		Last Modified: Wed, 28 Oct 2026 01:37:48 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81137d09162d96eb86dc4d0ca54400d42e34e96270a96e121057bb1acdd9ba6c`  
		Last Modified: Wed, 28 Oct 2026 01:37:48 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0` - unknown; unknown

```console
$ docker pull varnish@sha256:c425e17828ad5d70de701878906df73a0fb6fdc7ac14a327fdc77641c1663dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68aa491244480b4757892977791688412e5893dac07ccfe1e102358e87bf3e3a`

```dockerfile
```

-	Layers:
	-	`sha256:f065a0f41cd7940f1dcf95aa35a2324afd141bb09e055ae2850a6b1a7177e7dc`  
		Last Modified: Wed, 28 Oct 2026 01:37:48 GMT  
		Size: 20.2 KB (20242 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0.4`

```console
$ docker pull varnish@sha256:7b36e1c12183cc6bb0dc850cf82788a8d68210cc448f3abaa4b22fb0c01e7605
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0.4` - linux; amd64

```console
$ docker pull varnish@sha256:b934fc9be985d5bde5604b22bee54dbb4e94c5ebf1d963a2a1219146c8c77998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132511432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b3edf6db1e69dbd59b7d4718ccf2c8d345039ff77369cfedabcccf4b462eac`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:34:16 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:34:16 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Wed, 28 Oct 2026 01:34:16 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:34:16 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:34:16 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:34:16 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:34:16 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:34:16 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:34:16 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:34:16 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:34:16 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:34:16 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:34:16 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:34:16 GMT
USER varnish
# Wed, 28 Oct 2026 01:34:16 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:34:16 GMT
CMD []
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b5e7a18705e91ac980aff348eafe634dc6602f17db72c66eb8b53ef2edd05c`  
		Last Modified: Wed, 28 Oct 2026 01:34:32 GMT  
		Size: 102.7 MB (102653309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387455c0a59c558b279e88de37051d75bb9ff21f5b72ad975672115c981e110e`  
		Last Modified: Wed, 28 Oct 2026 01:34:30 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9437dadf0a528cadc38196dc868437c281901d57d1eb48c4d520fb83bc9dfdc6`  
		Last Modified: Wed, 28 Oct 2026 01:34:30 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2d774b1518a85058c1759d005e4416bc5e1f3902d405c6e60cfc468b46937c`  
		Last Modified: Wed, 28 Oct 2026 01:34:30 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4` - unknown; unknown

```console
$ docker pull varnish@sha256:47cff3dd12512cce900d7e663888ebfe0534d52eb2902156ca1b2fda3a30e1c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 KB (20144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64354198c00eb2cd52f73de74d5366dbeaa3bafdb00894818024439092a11211`

```dockerfile
```

-	Layers:
	-	`sha256:ec2111481e1619c84f420ead2b3de9408e72e2eff8eee32570170b1a3072f737`  
		Last Modified: Wed, 28 Oct 2026 01:34:30 GMT  
		Size: 20.1 KB (20144 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0.4` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:5370ffa278684cf574d828522bc7a20505cb74dac5b0dc017639cc337d8d81f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125632300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75c87379bbeaa8fc8129f9c31dc9cf560dd336b20ced110f13d53d27165d64c5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:37:35 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:37:35 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Wed, 28 Oct 2026 01:37:35 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:37:35 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:37:35 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:37:35 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:37:35 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:37:35 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:37:35 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:37:35 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:37:35 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:37:35 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:37:35 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:37:35 GMT
USER varnish
# Wed, 28 Oct 2026 01:37:35 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:37:35 GMT
CMD []
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cf2a2404cd60e4e4770c558c8a12d7809847cc701b3966a2b0c82adda2d7380`  
		Last Modified: Wed, 28 Oct 2026 01:37:51 GMT  
		Size: 95.4 MB (95415917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f17a73dc14425da942974528f0ab9ea74504fc16bbc03401842ff0d52be24e`  
		Last Modified: Wed, 28 Oct 2026 01:37:48 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c50f642821244e5fa611973cbd75f078fc9fbcb6f81720cad2438fc3c8749069`  
		Last Modified: Wed, 28 Oct 2026 01:37:48 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81137d09162d96eb86dc4d0ca54400d42e34e96270a96e121057bb1acdd9ba6c`  
		Last Modified: Wed, 28 Oct 2026 01:37:48 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4` - unknown; unknown

```console
$ docker pull varnish@sha256:c425e17828ad5d70de701878906df73a0fb6fdc7ac14a327fdc77641c1663dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68aa491244480b4757892977791688412e5893dac07ccfe1e102358e87bf3e3a`

```dockerfile
```

-	Layers:
	-	`sha256:f065a0f41cd7940f1dcf95aa35a2324afd141bb09e055ae2850a6b1a7177e7dc`  
		Last Modified: Wed, 28 Oct 2026 01:37:48 GMT  
		Size: 20.2 KB (20242 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0.4-5`

```console
$ docker pull varnish@sha256:7b36e1c12183cc6bb0dc850cf82788a8d68210cc448f3abaa4b22fb0c01e7605
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0.4-5` - linux; amd64

```console
$ docker pull varnish@sha256:b934fc9be985d5bde5604b22bee54dbb4e94c5ebf1d963a2a1219146c8c77998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132511432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b3edf6db1e69dbd59b7d4718ccf2c8d345039ff77369cfedabcccf4b462eac`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:34:16 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:34:16 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Wed, 28 Oct 2026 01:34:16 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:34:16 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:34:16 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:34:16 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:34:16 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:34:16 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:34:16 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:34:16 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:34:16 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:34:16 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:34:16 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:34:16 GMT
USER varnish
# Wed, 28 Oct 2026 01:34:16 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:34:16 GMT
CMD []
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b5e7a18705e91ac980aff348eafe634dc6602f17db72c66eb8b53ef2edd05c`  
		Last Modified: Wed, 28 Oct 2026 01:34:32 GMT  
		Size: 102.7 MB (102653309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387455c0a59c558b279e88de37051d75bb9ff21f5b72ad975672115c981e110e`  
		Last Modified: Wed, 28 Oct 2026 01:34:30 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9437dadf0a528cadc38196dc868437c281901d57d1eb48c4d520fb83bc9dfdc6`  
		Last Modified: Wed, 28 Oct 2026 01:34:30 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2d774b1518a85058c1759d005e4416bc5e1f3902d405c6e60cfc468b46937c`  
		Last Modified: Wed, 28 Oct 2026 01:34:30 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4-5` - unknown; unknown

```console
$ docker pull varnish@sha256:47cff3dd12512cce900d7e663888ebfe0534d52eb2902156ca1b2fda3a30e1c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 KB (20144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64354198c00eb2cd52f73de74d5366dbeaa3bafdb00894818024439092a11211`

```dockerfile
```

-	Layers:
	-	`sha256:ec2111481e1619c84f420ead2b3de9408e72e2eff8eee32570170b1a3072f737`  
		Last Modified: Wed, 28 Oct 2026 01:34:30 GMT  
		Size: 20.1 KB (20144 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0.4-5` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:5370ffa278684cf574d828522bc7a20505cb74dac5b0dc017639cc337d8d81f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125632300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75c87379bbeaa8fc8129f9c31dc9cf560dd336b20ced110f13d53d27165d64c5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:37:35 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:37:35 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Wed, 28 Oct 2026 01:37:35 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:37:35 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:37:35 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:37:35 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:37:35 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:37:35 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:37:35 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:37:35 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:37:35 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:37:35 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:37:35 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:37:35 GMT
USER varnish
# Wed, 28 Oct 2026 01:37:35 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:37:35 GMT
CMD []
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cf2a2404cd60e4e4770c558c8a12d7809847cc701b3966a2b0c82adda2d7380`  
		Last Modified: Wed, 28 Oct 2026 01:37:51 GMT  
		Size: 95.4 MB (95415917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f17a73dc14425da942974528f0ab9ea74504fc16bbc03401842ff0d52be24e`  
		Last Modified: Wed, 28 Oct 2026 01:37:48 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c50f642821244e5fa611973cbd75f078fc9fbcb6f81720cad2438fc3c8749069`  
		Last Modified: Wed, 28 Oct 2026 01:37:48 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81137d09162d96eb86dc4d0ca54400d42e34e96270a96e121057bb1acdd9ba6c`  
		Last Modified: Wed, 28 Oct 2026 01:37:48 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4-5` - unknown; unknown

```console
$ docker pull varnish@sha256:c425e17828ad5d70de701878906df73a0fb6fdc7ac14a327fdc77641c1663dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68aa491244480b4757892977791688412e5893dac07ccfe1e102358e87bf3e3a`

```dockerfile
```

-	Layers:
	-	`sha256:f065a0f41cd7940f1dcf95aa35a2324afd141bb09e055ae2850a6b1a7177e7dc`  
		Last Modified: Wed, 28 Oct 2026 01:37:48 GMT  
		Size: 20.2 KB (20242 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.1`

```console
$ docker pull varnish@sha256:4c6066279af88edcdd97d35a45579c77f363e551cd9cb5597644ac856d8ebbdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.1` - linux; amd64

```console
$ docker pull varnish@sha256:b4a3fad9d3da8f1700c31868df3f8b3fb91d13b94eac6e5d7fceba0860966c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (133007730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c24905edfa2a55185744480c78e74f6be475f48c86b11e2f5c19d3b1a7e2f5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:34:12 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:34:12 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 28 Oct 2026 01:34:12 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:34:12 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:34:12 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:34:12 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:34:12 GMT
USER varnish
# Wed, 28 Oct 2026 01:34:12 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:34:12 GMT
CMD []
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d6c4a09b86a8f50001c5d8775ea3e8e19bbb432de8187b4e4a8ca5bb16d697`  
		Last Modified: Wed, 28 Oct 2026 01:34:27 GMT  
		Size: 103.1 MB (103149611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b573411db82f056fbf48b84a90dd4da5a40a8ccb19a7a0f4818e1d264b5bc5b9`  
		Last Modified: Wed, 28 Oct 2026 01:34:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29b645e5fe662ebab1ebc624741b74e1fad613e4253b537bddb708a084d094f`  
		Last Modified: Wed, 28 Oct 2026 01:34:25 GMT  
		Size: 1.0 KB (1005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520186a2d8254b054e2d5259624475594893bc79ffd2dffcb6611895a6075f6b`  
		Last Modified: Wed, 28 Oct 2026 01:34:25 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1` - unknown; unknown

```console
$ docker pull varnish@sha256:a5f35c607d56b45cbfca3ddbf7ca86041831b25c949f31c30182d2134b93ef44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e21058e5574a5e5764af544533568f7b397a723c92f7741f22d4c29e1f3e1ec`

```dockerfile
```

-	Layers:
	-	`sha256:7c9288065469f70eb90361a7cb5239b55b0ee76e374630f558348cd5389cb9ca`  
		Last Modified: Wed, 28 Oct 2026 01:34:24 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.1` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6dbd8c5cd9d385cfe8e706a42a3b620790bede56c32a55b1bae389490efa71e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126130139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0d076ebdac2c9950ff568055a256e4f0f37a2ede3f35a07c66b823792220e3`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:37:22 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:37:22 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 28 Oct 2026 01:37:22 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:37:22 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:37:22 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:37:22 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:37:22 GMT
USER varnish
# Wed, 28 Oct 2026 01:37:22 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:37:22 GMT
CMD []
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecefc5ee8e7bf5163f27800aa93dbba9dfe535b25c2504462be5572020a3e30`  
		Last Modified: Wed, 28 Oct 2026 01:37:37 GMT  
		Size: 95.9 MB (95913756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60aea5d95874c6f42c072f04a4d1f70af987c1740e9cf7988fd4991c36e159b`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9dec42474c5c6662e8dbfa0ea1c7ce5b7d69b63448b01d72032ec315491f2e5`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55832e74f2e0ebca4ef76f4cb226b70c5178ae0de92830a5962d7b5603245616`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1` - unknown; unknown

```console
$ docker pull varnish@sha256:2d0fedc5080201ec252aa9d1c7f772998fd30489ed9c0dabab68e76af7337659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951f4b76c377f6ae2cf26ceae7e9b1f9d1be11a05b54a21b3113a02a14cb20e2`

```dockerfile
```

-	Layers:
	-	`sha256:503d81c2bd5fbcf309bf807db848247687d8ccfa2ba243cdb9ab20e9a52f4959`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 20.9 KB (20866 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.1.0`

```console
$ docker pull varnish@sha256:4c6066279af88edcdd97d35a45579c77f363e551cd9cb5597644ac856d8ebbdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.1.0` - linux; amd64

```console
$ docker pull varnish@sha256:b4a3fad9d3da8f1700c31868df3f8b3fb91d13b94eac6e5d7fceba0860966c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (133007730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c24905edfa2a55185744480c78e74f6be475f48c86b11e2f5c19d3b1a7e2f5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:34:12 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:34:12 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 28 Oct 2026 01:34:12 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:34:12 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:34:12 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:34:12 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:34:12 GMT
USER varnish
# Wed, 28 Oct 2026 01:34:12 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:34:12 GMT
CMD []
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d6c4a09b86a8f50001c5d8775ea3e8e19bbb432de8187b4e4a8ca5bb16d697`  
		Last Modified: Wed, 28 Oct 2026 01:34:27 GMT  
		Size: 103.1 MB (103149611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b573411db82f056fbf48b84a90dd4da5a40a8ccb19a7a0f4818e1d264b5bc5b9`  
		Last Modified: Wed, 28 Oct 2026 01:34:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29b645e5fe662ebab1ebc624741b74e1fad613e4253b537bddb708a084d094f`  
		Last Modified: Wed, 28 Oct 2026 01:34:25 GMT  
		Size: 1.0 KB (1005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520186a2d8254b054e2d5259624475594893bc79ffd2dffcb6611895a6075f6b`  
		Last Modified: Wed, 28 Oct 2026 01:34:25 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0` - unknown; unknown

```console
$ docker pull varnish@sha256:a5f35c607d56b45cbfca3ddbf7ca86041831b25c949f31c30182d2134b93ef44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e21058e5574a5e5764af544533568f7b397a723c92f7741f22d4c29e1f3e1ec`

```dockerfile
```

-	Layers:
	-	`sha256:7c9288065469f70eb90361a7cb5239b55b0ee76e374630f558348cd5389cb9ca`  
		Last Modified: Wed, 28 Oct 2026 01:34:24 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.1.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6dbd8c5cd9d385cfe8e706a42a3b620790bede56c32a55b1bae389490efa71e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126130139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0d076ebdac2c9950ff568055a256e4f0f37a2ede3f35a07c66b823792220e3`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:37:22 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:37:22 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 28 Oct 2026 01:37:22 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:37:22 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:37:22 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:37:22 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:37:22 GMT
USER varnish
# Wed, 28 Oct 2026 01:37:22 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:37:22 GMT
CMD []
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecefc5ee8e7bf5163f27800aa93dbba9dfe535b25c2504462be5572020a3e30`  
		Last Modified: Wed, 28 Oct 2026 01:37:37 GMT  
		Size: 95.9 MB (95913756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60aea5d95874c6f42c072f04a4d1f70af987c1740e9cf7988fd4991c36e159b`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9dec42474c5c6662e8dbfa0ea1c7ce5b7d69b63448b01d72032ec315491f2e5`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55832e74f2e0ebca4ef76f4cb226b70c5178ae0de92830a5962d7b5603245616`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0` - unknown; unknown

```console
$ docker pull varnish@sha256:2d0fedc5080201ec252aa9d1c7f772998fd30489ed9c0dabab68e76af7337659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951f4b76c377f6ae2cf26ceae7e9b1f9d1be11a05b54a21b3113a02a14cb20e2`

```dockerfile
```

-	Layers:
	-	`sha256:503d81c2bd5fbcf309bf807db848247687d8ccfa2ba243cdb9ab20e9a52f4959`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 20.9 KB (20866 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.1.0-2`

```console
$ docker pull varnish@sha256:4c6066279af88edcdd97d35a45579c77f363e551cd9cb5597644ac856d8ebbdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.1.0-2` - linux; amd64

```console
$ docker pull varnish@sha256:b4a3fad9d3da8f1700c31868df3f8b3fb91d13b94eac6e5d7fceba0860966c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (133007730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c24905edfa2a55185744480c78e74f6be475f48c86b11e2f5c19d3b1a7e2f5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:34:12 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:34:12 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 28 Oct 2026 01:34:12 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:34:12 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:34:12 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:34:12 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:34:12 GMT
USER varnish
# Wed, 28 Oct 2026 01:34:12 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:34:12 GMT
CMD []
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d6c4a09b86a8f50001c5d8775ea3e8e19bbb432de8187b4e4a8ca5bb16d697`  
		Last Modified: Wed, 28 Oct 2026 01:34:27 GMT  
		Size: 103.1 MB (103149611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b573411db82f056fbf48b84a90dd4da5a40a8ccb19a7a0f4818e1d264b5bc5b9`  
		Last Modified: Wed, 28 Oct 2026 01:34:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29b645e5fe662ebab1ebc624741b74e1fad613e4253b537bddb708a084d094f`  
		Last Modified: Wed, 28 Oct 2026 01:34:25 GMT  
		Size: 1.0 KB (1005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520186a2d8254b054e2d5259624475594893bc79ffd2dffcb6611895a6075f6b`  
		Last Modified: Wed, 28 Oct 2026 01:34:25 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0-2` - unknown; unknown

```console
$ docker pull varnish@sha256:a5f35c607d56b45cbfca3ddbf7ca86041831b25c949f31c30182d2134b93ef44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e21058e5574a5e5764af544533568f7b397a723c92f7741f22d4c29e1f3e1ec`

```dockerfile
```

-	Layers:
	-	`sha256:7c9288065469f70eb90361a7cb5239b55b0ee76e374630f558348cd5389cb9ca`  
		Last Modified: Wed, 28 Oct 2026 01:34:24 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.1.0-2` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6dbd8c5cd9d385cfe8e706a42a3b620790bede56c32a55b1bae389490efa71e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126130139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0d076ebdac2c9950ff568055a256e4f0f37a2ede3f35a07c66b823792220e3`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:37:22 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:37:22 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 28 Oct 2026 01:37:22 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:37:22 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:37:22 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:37:22 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:37:22 GMT
USER varnish
# Wed, 28 Oct 2026 01:37:22 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:37:22 GMT
CMD []
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecefc5ee8e7bf5163f27800aa93dbba9dfe535b25c2504462be5572020a3e30`  
		Last Modified: Wed, 28 Oct 2026 01:37:37 GMT  
		Size: 95.9 MB (95913756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60aea5d95874c6f42c072f04a4d1f70af987c1740e9cf7988fd4991c36e159b`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9dec42474c5c6662e8dbfa0ea1c7ce5b7d69b63448b01d72032ec315491f2e5`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55832e74f2e0ebca4ef76f4cb226b70c5178ae0de92830a5962d7b5603245616`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0-2` - unknown; unknown

```console
$ docker pull varnish@sha256:2d0fedc5080201ec252aa9d1c7f772998fd30489ed9c0dabab68e76af7337659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951f4b76c377f6ae2cf26ceae7e9b1f9d1be11a05b54a21b3113a02a14cb20e2`

```dockerfile
```

-	Layers:
	-	`sha256:503d81c2bd5fbcf309bf807db848247687d8ccfa2ba243cdb9ab20e9a52f4959`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 20.9 KB (20866 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:fresh`

```console
$ docker pull varnish@sha256:4c6066279af88edcdd97d35a45579c77f363e551cd9cb5597644ac856d8ebbdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:fresh` - linux; amd64

```console
$ docker pull varnish@sha256:b4a3fad9d3da8f1700c31868df3f8b3fb91d13b94eac6e5d7fceba0860966c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (133007730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c24905edfa2a55185744480c78e74f6be475f48c86b11e2f5c19d3b1a7e2f5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:34:12 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:34:12 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 28 Oct 2026 01:34:12 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:34:12 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:34:12 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:34:12 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:34:12 GMT
USER varnish
# Wed, 28 Oct 2026 01:34:12 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:34:12 GMT
CMD []
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d6c4a09b86a8f50001c5d8775ea3e8e19bbb432de8187b4e4a8ca5bb16d697`  
		Last Modified: Wed, 28 Oct 2026 01:34:27 GMT  
		Size: 103.1 MB (103149611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b573411db82f056fbf48b84a90dd4da5a40a8ccb19a7a0f4818e1d264b5bc5b9`  
		Last Modified: Wed, 28 Oct 2026 01:34:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29b645e5fe662ebab1ebc624741b74e1fad613e4253b537bddb708a084d094f`  
		Last Modified: Wed, 28 Oct 2026 01:34:25 GMT  
		Size: 1.0 KB (1005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520186a2d8254b054e2d5259624475594893bc79ffd2dffcb6611895a6075f6b`  
		Last Modified: Wed, 28 Oct 2026 01:34:25 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:a5f35c607d56b45cbfca3ddbf7ca86041831b25c949f31c30182d2134b93ef44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e21058e5574a5e5764af544533568f7b397a723c92f7741f22d4c29e1f3e1ec`

```dockerfile
```

-	Layers:
	-	`sha256:7c9288065469f70eb90361a7cb5239b55b0ee76e374630f558348cd5389cb9ca`  
		Last Modified: Wed, 28 Oct 2026 01:34:24 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:fresh` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6dbd8c5cd9d385cfe8e706a42a3b620790bede56c32a55b1bae389490efa71e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126130139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0d076ebdac2c9950ff568055a256e4f0f37a2ede3f35a07c66b823792220e3`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:37:22 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:37:22 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 28 Oct 2026 01:37:22 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:37:22 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:37:22 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:37:22 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:37:22 GMT
USER varnish
# Wed, 28 Oct 2026 01:37:22 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:37:22 GMT
CMD []
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecefc5ee8e7bf5163f27800aa93dbba9dfe535b25c2504462be5572020a3e30`  
		Last Modified: Wed, 28 Oct 2026 01:37:37 GMT  
		Size: 95.9 MB (95913756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60aea5d95874c6f42c072f04a4d1f70af987c1740e9cf7988fd4991c36e159b`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9dec42474c5c6662e8dbfa0ea1c7ce5b7d69b63448b01d72032ec315491f2e5`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55832e74f2e0ebca4ef76f4cb226b70c5178ae0de92830a5962d7b5603245616`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:2d0fedc5080201ec252aa9d1c7f772998fd30489ed9c0dabab68e76af7337659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951f4b76c377f6ae2cf26ceae7e9b1f9d1be11a05b54a21b3113a02a14cb20e2`

```dockerfile
```

-	Layers:
	-	`sha256:503d81c2bd5fbcf309bf807db848247687d8ccfa2ba243cdb9ab20e9a52f4959`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 20.9 KB (20866 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:latest`

```console
$ docker pull varnish@sha256:4c6066279af88edcdd97d35a45579c77f363e551cd9cb5597644ac856d8ebbdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:latest` - linux; amd64

```console
$ docker pull varnish@sha256:b4a3fad9d3da8f1700c31868df3f8b3fb91d13b94eac6e5d7fceba0860966c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (133007730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c24905edfa2a55185744480c78e74f6be475f48c86b11e2f5c19d3b1a7e2f5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:34:12 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:34:12 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 28 Oct 2026 01:34:12 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:34:12 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:34:12 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:34:12 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:34:12 GMT
USER varnish
# Wed, 28 Oct 2026 01:34:12 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:34:12 GMT
CMD []
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d6c4a09b86a8f50001c5d8775ea3e8e19bbb432de8187b4e4a8ca5bb16d697`  
		Last Modified: Wed, 28 Oct 2026 01:34:27 GMT  
		Size: 103.1 MB (103149611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b573411db82f056fbf48b84a90dd4da5a40a8ccb19a7a0f4818e1d264b5bc5b9`  
		Last Modified: Wed, 28 Oct 2026 01:34:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29b645e5fe662ebab1ebc624741b74e1fad613e4253b537bddb708a084d094f`  
		Last Modified: Wed, 28 Oct 2026 01:34:25 GMT  
		Size: 1.0 KB (1005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520186a2d8254b054e2d5259624475594893bc79ffd2dffcb6611895a6075f6b`  
		Last Modified: Wed, 28 Oct 2026 01:34:25 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:a5f35c607d56b45cbfca3ddbf7ca86041831b25c949f31c30182d2134b93ef44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e21058e5574a5e5764af544533568f7b397a723c92f7741f22d4c29e1f3e1ec`

```dockerfile
```

-	Layers:
	-	`sha256:7c9288065469f70eb90361a7cb5239b55b0ee76e374630f558348cd5389cb9ca`  
		Last Modified: Wed, 28 Oct 2026 01:34:24 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:latest` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6dbd8c5cd9d385cfe8e706a42a3b620790bede56c32a55b1bae389490efa71e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126130139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0d076ebdac2c9950ff568055a256e4f0f37a2ede3f35a07c66b823792220e3`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:37:22 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:37:22 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 28 Oct 2026 01:37:22 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:37:22 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:37:22 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:37:22 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:37:22 GMT
USER varnish
# Wed, 28 Oct 2026 01:37:22 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:37:22 GMT
CMD []
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecefc5ee8e7bf5163f27800aa93dbba9dfe535b25c2504462be5572020a3e30`  
		Last Modified: Wed, 28 Oct 2026 01:37:37 GMT  
		Size: 95.9 MB (95913756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60aea5d95874c6f42c072f04a4d1f70af987c1740e9cf7988fd4991c36e159b`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9dec42474c5c6662e8dbfa0ea1c7ce5b7d69b63448b01d72032ec315491f2e5`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55832e74f2e0ebca4ef76f4cb226b70c5178ae0de92830a5962d7b5603245616`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:2d0fedc5080201ec252aa9d1c7f772998fd30489ed9c0dabab68e76af7337659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951f4b76c377f6ae2cf26ceae7e9b1f9d1be11a05b54a21b3113a02a14cb20e2`

```dockerfile
```

-	Layers:
	-	`sha256:503d81c2bd5fbcf309bf807db848247687d8ccfa2ba243cdb9ab20e9a52f4959`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 20.9 KB (20866 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:old`

```console
$ docker pull varnish@sha256:7b36e1c12183cc6bb0dc850cf82788a8d68210cc448f3abaa4b22fb0c01e7605
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:old` - linux; amd64

```console
$ docker pull varnish@sha256:b934fc9be985d5bde5604b22bee54dbb4e94c5ebf1d963a2a1219146c8c77998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132511432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b3edf6db1e69dbd59b7d4718ccf2c8d345039ff77369cfedabcccf4b462eac`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:34:16 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:34:16 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Wed, 28 Oct 2026 01:34:16 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:34:16 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:34:16 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:34:16 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:34:16 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:34:16 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:34:16 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:34:16 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:34:16 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:34:16 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:34:16 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:34:16 GMT
USER varnish
# Wed, 28 Oct 2026 01:34:16 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:34:16 GMT
CMD []
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b5e7a18705e91ac980aff348eafe634dc6602f17db72c66eb8b53ef2edd05c`  
		Last Modified: Wed, 28 Oct 2026 01:34:32 GMT  
		Size: 102.7 MB (102653309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387455c0a59c558b279e88de37051d75bb9ff21f5b72ad975672115c981e110e`  
		Last Modified: Wed, 28 Oct 2026 01:34:30 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9437dadf0a528cadc38196dc868437c281901d57d1eb48c4d520fb83bc9dfdc6`  
		Last Modified: Wed, 28 Oct 2026 01:34:30 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2d774b1518a85058c1759d005e4416bc5e1f3902d405c6e60cfc468b46937c`  
		Last Modified: Wed, 28 Oct 2026 01:34:30 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:47cff3dd12512cce900d7e663888ebfe0534d52eb2902156ca1b2fda3a30e1c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 KB (20144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64354198c00eb2cd52f73de74d5366dbeaa3bafdb00894818024439092a11211`

```dockerfile
```

-	Layers:
	-	`sha256:ec2111481e1619c84f420ead2b3de9408e72e2eff8eee32570170b1a3072f737`  
		Last Modified: Wed, 28 Oct 2026 01:34:30 GMT  
		Size: 20.1 KB (20144 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:old` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:5370ffa278684cf574d828522bc7a20505cb74dac5b0dc017639cc337d8d81f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125632300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75c87379bbeaa8fc8129f9c31dc9cf560dd336b20ced110f13d53d27165d64c5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:37:35 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:37:35 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Wed, 28 Oct 2026 01:37:35 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:37:35 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:37:35 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:37:35 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:37:35 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:37:35 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:37:35 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:37:35 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:37:35 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:37:35 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:37:35 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:37:35 GMT
USER varnish
# Wed, 28 Oct 2026 01:37:35 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:37:35 GMT
CMD []
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cf2a2404cd60e4e4770c558c8a12d7809847cc701b3966a2b0c82adda2d7380`  
		Last Modified: Wed, 28 Oct 2026 01:37:51 GMT  
		Size: 95.4 MB (95415917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f17a73dc14425da942974528f0ab9ea74504fc16bbc03401842ff0d52be24e`  
		Last Modified: Wed, 28 Oct 2026 01:37:48 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c50f642821244e5fa611973cbd75f078fc9fbcb6f81720cad2438fc3c8749069`  
		Last Modified: Wed, 28 Oct 2026 01:37:48 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81137d09162d96eb86dc4d0ca54400d42e34e96270a96e121057bb1acdd9ba6c`  
		Last Modified: Wed, 28 Oct 2026 01:37:48 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:c425e17828ad5d70de701878906df73a0fb6fdc7ac14a327fdc77641c1663dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68aa491244480b4757892977791688412e5893dac07ccfe1e102358e87bf3e3a`

```dockerfile
```

-	Layers:
	-	`sha256:f065a0f41cd7940f1dcf95aa35a2324afd141bb09e055ae2850a6b1a7177e7dc`  
		Last Modified: Wed, 28 Oct 2026 01:37:48 GMT  
		Size: 20.2 KB (20242 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:stable`

```console
$ docker pull varnish@sha256:baeffccf2143476540ceb3883388bc84ef6fc077de80ff80aa72dd81dbd977af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:stable` - linux; amd64

```console
$ docker pull varnish@sha256:c6047377b2fd3741cb39db7d7e2bd97fa7cce8b1716a9b390bf4cb37a1d18a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121828729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42cb249a04eb290e52aefb9cfa64ef6e6ef3cafeb9a9e96d27cedb0b516c9e1d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:33:42 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:33:42 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 28 Oct 2026 01:33:42 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:33:42 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:33:42 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:33:42 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:33:42 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:33:42 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:33:42 GMT
CMD []
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f57e15049d7aa7f1dd8dbbe40f9dd52d2efd75dfff2215405714621db6cfcf42`  
		Last Modified: Wed, 28 Oct 2026 01:33:57 GMT  
		Size: 93.6 MB (93580536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02edeb1c7b5cfe2ec8705b7b1f10288463108d87a76ea3a5831eb127e87503d`  
		Last Modified: Wed, 28 Oct 2026 01:33:55 GMT  
		Size: 724.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:stable` - unknown; unknown

```console
$ docker pull varnish@sha256:501b23a5aa37d21199a2974eb9f975e9f00d659013e2e4a84015c8195e7219c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71206266a55e67dd6d81f2a535d94036a47cd0925df9960a5c6942be5b78f85`

```dockerfile
```

-	Layers:
	-	`sha256:c99dbf1f820cd56e9aec1d81ba3582171bf5e0968d413313362e780d8732925a`  
		Last Modified: Wed, 28 Oct 2026 01:33:54 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:stable` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:ab975462769c6297107c8e3805f68861ef6bf90c1579daf1c998064ccf691959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116284428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b4c84ca7afa0c75e5626ae5bf24763acdaa628e71dd762155e70ba1f55c38fd`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:38:01 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:38:01 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Wed, 28 Oct 2026 01:38:01 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:38:01 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:38:01 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:38:01 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:38:01 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:38:01 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:38:01 GMT
CMD []
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1abf212028d1ea9a9f8f8ab6acc36c372e1476a20daf4f54e48333287d9739`  
		Last Modified: Wed, 28 Oct 2026 01:38:13 GMT  
		Size: 88.1 MB (88145723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b25f36d69a621a21757c4285abba379a95d762c0d14b6c3ad2ccddbb0bc6a1`  
		Last Modified: Wed, 28 Oct 2026 01:38:11 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:stable` - unknown; unknown

```console
$ docker pull varnish@sha256:8425265be0dcb08adc450b154969de149d5c4fe3f838950624e0d3970458dd03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8b103fc18777849f8da1d43ffecc21911ad4519777870a1be32b18778a26bbb`

```dockerfile
```

-	Layers:
	-	`sha256:51d56db782d3a92e300404237cdcd36fb60fd3e2d18b971b23ae2d2564620db9`  
		Last Modified: Wed, 28 Oct 2026 01:38:11 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json
