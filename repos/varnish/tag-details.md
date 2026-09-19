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
-	[`varnish:9.0.4`](#varnish904)
-	[`varnish:9.0.4-5`](#varnish904-5)
-	[`varnish:fresh`](#varnishfresh)
-	[`varnish:latest`](#varnishlatest)
-	[`varnish:old`](#varnishold)
-	[`varnish:old-alpine`](#varnishold-alpine)
-	[`varnish:stable`](#varnishstable)

## `varnish:6`

```console
$ docker pull varnish@sha256:add2ed65569b00cec40afee9eacc17b015eb99468e46f4dcd56c29216c5fbd1c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6` - linux; amd64

```console
$ docker pull varnish@sha256:e6696e424cbd55bc11effb8f8cfa0bc148d39d42e5764aa8ddf8533c903212bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121974888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d54abf008cfe12a898cbfbcc382a46ccc74d543760bcd96be9321b8e3f4943c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:40:02 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:40:02 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Sat, 19 Sep 2026 00:40:02 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:40:02 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:40:02 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:40:02 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:40:02 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:40:02 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:40:02 GMT
CMD []
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954d27e0586d9a2c5b084fe634c368e440b18f0e63712c1ae6f285149b36b4c`  
		Last Modified: Sat, 19 Sep 2026 00:40:16 GMT  
		Size: 93.7 MB (93735691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24f685131b8b383f94370176a13a6e64ec64653c422abbc2e4392a1ec2747fa9`  
		Last Modified: Sat, 19 Sep 2026 00:40:13 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6` - unknown; unknown

```console
$ docker pull varnish@sha256:02af4c412b221b82ca6dfc909c7f65e23e6cce54184bb0c4a5d92a06c0e3f898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea8dcaf01f077def21c7039e61278738232e4b3b42dbf78bba0b70e3b05b48f`

```dockerfile
```

-	Layers:
	-	`sha256:7ec5e80544d94437276a94b314e2ca75aedd71cf64b6b5d91440de5f69cd25ae`  
		Last Modified: Sat, 19 Sep 2026 00:40:13 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:ee35620f1be01b919631ef793fd39e43addd8c0f1d86277ea66fdcba1a03ebdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116421137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2291ac40a70c7455fccf9f52f7c0d118cd80282c6ce35d4897da909efe6b5c95`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:42:28 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:42:28 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Sat, 19 Sep 2026 00:42:28 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:42:28 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:42:28 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:42:28 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:42:28 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:42:28 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:42:28 GMT
CMD []
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0539f478aa31ba89e4b61ac6dd0ca49cf66266996c94f42a8ce7a6a651ea8b`  
		Last Modified: Sat, 19 Sep 2026 00:42:42 GMT  
		Size: 88.3 MB (88296702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ff39b9d501db9d198171fb58b8c0cccb3b0931e51e48127df2f807b8741db7`  
		Last Modified: Sat, 19 Sep 2026 00:42:40 GMT  
		Size: 723.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6` - unknown; unknown

```console
$ docker pull varnish@sha256:5600a1ddb530c4b718f6dedb34009f6ccc6e520ac08e235cd225f15ff2dc867b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19b967030bb723b400264aac42259f37e31631ab9d6b5f4960f86ed96e8aca14`

```dockerfile
```

-	Layers:
	-	`sha256:23df6d9e556f397e40c837a1286410e48fe065dfa558f120b01a265f39e54323`  
		Last Modified: Sat, 19 Sep 2026 00:42:39 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0`

```console
$ docker pull varnish@sha256:add2ed65569b00cec40afee9eacc17b015eb99468e46f4dcd56c29216c5fbd1c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0` - linux; amd64

```console
$ docker pull varnish@sha256:e6696e424cbd55bc11effb8f8cfa0bc148d39d42e5764aa8ddf8533c903212bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121974888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d54abf008cfe12a898cbfbcc382a46ccc74d543760bcd96be9321b8e3f4943c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:40:02 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:40:02 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Sat, 19 Sep 2026 00:40:02 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:40:02 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:40:02 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:40:02 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:40:02 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:40:02 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:40:02 GMT
CMD []
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954d27e0586d9a2c5b084fe634c368e440b18f0e63712c1ae6f285149b36b4c`  
		Last Modified: Sat, 19 Sep 2026 00:40:16 GMT  
		Size: 93.7 MB (93735691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24f685131b8b383f94370176a13a6e64ec64653c422abbc2e4392a1ec2747fa9`  
		Last Modified: Sat, 19 Sep 2026 00:40:13 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0` - unknown; unknown

```console
$ docker pull varnish@sha256:02af4c412b221b82ca6dfc909c7f65e23e6cce54184bb0c4a5d92a06c0e3f898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea8dcaf01f077def21c7039e61278738232e4b3b42dbf78bba0b70e3b05b48f`

```dockerfile
```

-	Layers:
	-	`sha256:7ec5e80544d94437276a94b314e2ca75aedd71cf64b6b5d91440de5f69cd25ae`  
		Last Modified: Sat, 19 Sep 2026 00:40:13 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:ee35620f1be01b919631ef793fd39e43addd8c0f1d86277ea66fdcba1a03ebdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116421137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2291ac40a70c7455fccf9f52f7c0d118cd80282c6ce35d4897da909efe6b5c95`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:42:28 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:42:28 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Sat, 19 Sep 2026 00:42:28 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:42:28 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:42:28 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:42:28 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:42:28 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:42:28 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:42:28 GMT
CMD []
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0539f478aa31ba89e4b61ac6dd0ca49cf66266996c94f42a8ce7a6a651ea8b`  
		Last Modified: Sat, 19 Sep 2026 00:42:42 GMT  
		Size: 88.3 MB (88296702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ff39b9d501db9d198171fb58b8c0cccb3b0931e51e48127df2f807b8741db7`  
		Last Modified: Sat, 19 Sep 2026 00:42:40 GMT  
		Size: 723.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0` - unknown; unknown

```console
$ docker pull varnish@sha256:5600a1ddb530c4b718f6dedb34009f6ccc6e520ac08e235cd225f15ff2dc867b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19b967030bb723b400264aac42259f37e31631ab9d6b5f4960f86ed96e8aca14`

```dockerfile
```

-	Layers:
	-	`sha256:23df6d9e556f397e40c837a1286410e48fe065dfa558f120b01a265f39e54323`  
		Last Modified: Sat, 19 Sep 2026 00:42:39 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0.18`

```console
$ docker pull varnish@sha256:add2ed65569b00cec40afee9eacc17b015eb99468e46f4dcd56c29216c5fbd1c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0.18` - linux; amd64

```console
$ docker pull varnish@sha256:e6696e424cbd55bc11effb8f8cfa0bc148d39d42e5764aa8ddf8533c903212bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121974888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d54abf008cfe12a898cbfbcc382a46ccc74d543760bcd96be9321b8e3f4943c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:40:02 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:40:02 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Sat, 19 Sep 2026 00:40:02 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:40:02 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:40:02 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:40:02 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:40:02 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:40:02 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:40:02 GMT
CMD []
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954d27e0586d9a2c5b084fe634c368e440b18f0e63712c1ae6f285149b36b4c`  
		Last Modified: Sat, 19 Sep 2026 00:40:16 GMT  
		Size: 93.7 MB (93735691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24f685131b8b383f94370176a13a6e64ec64653c422abbc2e4392a1ec2747fa9`  
		Last Modified: Sat, 19 Sep 2026 00:40:13 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18` - unknown; unknown

```console
$ docker pull varnish@sha256:02af4c412b221b82ca6dfc909c7f65e23e6cce54184bb0c4a5d92a06c0e3f898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea8dcaf01f077def21c7039e61278738232e4b3b42dbf78bba0b70e3b05b48f`

```dockerfile
```

-	Layers:
	-	`sha256:7ec5e80544d94437276a94b314e2ca75aedd71cf64b6b5d91440de5f69cd25ae`  
		Last Modified: Sat, 19 Sep 2026 00:40:13 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0.18` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:ee35620f1be01b919631ef793fd39e43addd8c0f1d86277ea66fdcba1a03ebdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116421137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2291ac40a70c7455fccf9f52f7c0d118cd80282c6ce35d4897da909efe6b5c95`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:42:28 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:42:28 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Sat, 19 Sep 2026 00:42:28 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:42:28 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:42:28 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:42:28 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:42:28 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:42:28 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:42:28 GMT
CMD []
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0539f478aa31ba89e4b61ac6dd0ca49cf66266996c94f42a8ce7a6a651ea8b`  
		Last Modified: Sat, 19 Sep 2026 00:42:42 GMT  
		Size: 88.3 MB (88296702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ff39b9d501db9d198171fb58b8c0cccb3b0931e51e48127df2f807b8741db7`  
		Last Modified: Sat, 19 Sep 2026 00:42:40 GMT  
		Size: 723.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18` - unknown; unknown

```console
$ docker pull varnish@sha256:5600a1ddb530c4b718f6dedb34009f6ccc6e520ac08e235cd225f15ff2dc867b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19b967030bb723b400264aac42259f37e31631ab9d6b5f4960f86ed96e8aca14`

```dockerfile
```

-	Layers:
	-	`sha256:23df6d9e556f397e40c837a1286410e48fe065dfa558f120b01a265f39e54323`  
		Last Modified: Sat, 19 Sep 2026 00:42:39 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:6.0.18-1`

```console
$ docker pull varnish@sha256:add2ed65569b00cec40afee9eacc17b015eb99468e46f4dcd56c29216c5fbd1c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:6.0.18-1` - linux; amd64

```console
$ docker pull varnish@sha256:e6696e424cbd55bc11effb8f8cfa0bc148d39d42e5764aa8ddf8533c903212bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121974888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d54abf008cfe12a898cbfbcc382a46ccc74d543760bcd96be9321b8e3f4943c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:40:02 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:40:02 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Sat, 19 Sep 2026 00:40:02 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:40:02 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:40:02 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:40:02 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:40:02 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:40:02 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:40:02 GMT
CMD []
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954d27e0586d9a2c5b084fe634c368e440b18f0e63712c1ae6f285149b36b4c`  
		Last Modified: Sat, 19 Sep 2026 00:40:16 GMT  
		Size: 93.7 MB (93735691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24f685131b8b383f94370176a13a6e64ec64653c422abbc2e4392a1ec2747fa9`  
		Last Modified: Sat, 19 Sep 2026 00:40:13 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18-1` - unknown; unknown

```console
$ docker pull varnish@sha256:02af4c412b221b82ca6dfc909c7f65e23e6cce54184bb0c4a5d92a06c0e3f898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea8dcaf01f077def21c7039e61278738232e4b3b42dbf78bba0b70e3b05b48f`

```dockerfile
```

-	Layers:
	-	`sha256:7ec5e80544d94437276a94b314e2ca75aedd71cf64b6b5d91440de5f69cd25ae`  
		Last Modified: Sat, 19 Sep 2026 00:40:13 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:6.0.18-1` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:ee35620f1be01b919631ef793fd39e43addd8c0f1d86277ea66fdcba1a03ebdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116421137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2291ac40a70c7455fccf9f52f7c0d118cd80282c6ce35d4897da909efe6b5c95`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:42:28 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:42:28 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Sat, 19 Sep 2026 00:42:28 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:42:28 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:42:28 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:42:28 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:42:28 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:42:28 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:42:28 GMT
CMD []
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0539f478aa31ba89e4b61ac6dd0ca49cf66266996c94f42a8ce7a6a651ea8b`  
		Last Modified: Sat, 19 Sep 2026 00:42:42 GMT  
		Size: 88.3 MB (88296702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ff39b9d501db9d198171fb58b8c0cccb3b0931e51e48127df2f807b8741db7`  
		Last Modified: Sat, 19 Sep 2026 00:42:40 GMT  
		Size: 723.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:6.0.18-1` - unknown; unknown

```console
$ docker pull varnish@sha256:5600a1ddb530c4b718f6dedb34009f6ccc6e520ac08e235cd225f15ff2dc867b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19b967030bb723b400264aac42259f37e31631ab9d6b5f4960f86ed96e8aca14`

```dockerfile
```

-	Layers:
	-	`sha256:23df6d9e556f397e40c837a1286410e48fe065dfa558f120b01a265f39e54323`  
		Last Modified: Sat, 19 Sep 2026 00:42:39 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8`

```console
$ docker pull varnish@sha256:d5cb7840d6dcff465031e52276f2113675cc8edbea1cc8d7e6f8e6cfd0f522a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8` - linux; amd64

```console
$ docker pull varnish@sha256:f3aa1b5be541689d22362436ac314a4dbee5b50601e735e6b6e6a2ac28202a10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120311533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a532ca65445cb6552a079502e90d7bb50c57249fe46aeb274247b552332e0bec`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:39:47 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:39:47 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Sat, 19 Sep 2026 00:39:47 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Sat, 19 Sep 2026 00:39:47 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Sat, 19 Sep 2026 00:39:47 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:39:47 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:39:47 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:39:47 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:39:47 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:39:47 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
COPY index.html /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:39:47 GMT
USER varnish
# Sat, 19 Sep 2026 00:39:47 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:39:47 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb507d61d4267728be8bbf98ffb78806c5727240ce8d5d4596ef9c19fc84c77`  
		Last Modified: Sat, 19 Sep 2026 00:40:01 GMT  
		Size: 90.5 MB (90477996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e706d1412430d30ad2d9b6a89a847093b04da69804bd7fae20a08caf78172ad0`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82bbe9ca1020c75c66e46f191cdf4329b058f5a3a9bafbbd0fb09624b32a062`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1877719bd968fe3ee7172421a81a4e6faf7378c627b1e5da9342a92b8bb0520`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8` - unknown; unknown

```console
$ docker pull varnish@sha256:9d461ed6cbf14f677d1c510c7351c055fb427ec6cab9970f9135249f46c12242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26b12b283fbb673daa0d252e26c53d638b79491aaaefb4623f702c32643e90e`

```dockerfile
```

-	Layers:
	-	`sha256:6077140618d9ae2c3666668f89c8bc3fd0cd75b7ba3a1e8b02f57b71efafb5fa`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 21.0 KB (20996 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:38d40346dd6f992900087bf431798c25a49ae3149bf8c7535994209b760bc8d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114303801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02071e8c98b54e2c5f0fe3073337fce9a51c3475086db37790ad4a4b8589fab4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:55 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:42:55 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Sat, 19 Sep 2026 00:42:55 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Sat, 19 Sep 2026 00:42:55 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Sat, 19 Sep 2026 00:42:55 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:42:55 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:42:55 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:42:55 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:42:55 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:42:55 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
COPY index.html /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:42:55 GMT
USER varnish
# Sat, 19 Sep 2026 00:42:55 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:42:55 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e74041fe79f42f1479c967bbc5e151bddeae92b3785bf190a7264381b4f037`  
		Last Modified: Sat, 19 Sep 2026 00:43:09 GMT  
		Size: 84.1 MB (84110992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d813b39470a4bec9ba61f15c844d0983df2adafb65b3c8388fda83ea095cd6`  
		Last Modified: Sat, 19 Sep 2026 00:43:07 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c979e3eab4c7441a16407d37af2eaf71e45dd1b19863ba5e807ba68cc3aad6c4`  
		Last Modified: Sat, 19 Sep 2026 00:43:07 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9765a69219cb865bb101d684c3b4ca5636bfacf79cd5d9d4fcc72afc4d94881d`  
		Last Modified: Sat, 19 Sep 2026 00:43:07 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8` - unknown; unknown

```console
$ docker pull varnish@sha256:7698d0ab7dea26fee3fbacce7e52667049de0dac32b5122dbb188d8beb210137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 KB (21113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6894868d6716460a632ec96d14c3ae2ada97151087f7f4bc800320373fddc5f8`

```dockerfile
```

-	Layers:
	-	`sha256:87036dfe2ee6b4e9ce2d269a9c537a4b56039826299c4e9c168ad931cecfd0d8`  
		Last Modified: Sat, 19 Sep 2026 00:43:06 GMT  
		Size: 21.1 KB (21113 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8-alpine`

```console
$ docker pull varnish@sha256:1b39ddb86b460d9c80fbe7a92de6167ebafd4bb58d5b098a02f963d6efd7902e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8-alpine` - linux; amd64

```console
$ docker pull varnish@sha256:27d27179075c747c1e015240d00761154a1ed23ba668de65583c5374c4c14ddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93061856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10ecced7e66f3c546df920323812563302af3fd4d76e4d9c78f091ee9034162`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:24 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Thu, 17 Sep 2026 21:34:24 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Thu, 17 Sep 2026 21:34:24 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Thu, 17 Sep 2026 21:34:24 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Thu, 17 Sep 2026 21:34:24 GMT
ENV VARNISH_SIZE=100M
# Thu, 17 Sep 2026 21:34:24 GMT
ENV VSM_NOPID=1
# Thu, 17 Sep 2026 21:34:24 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
WORKDIR /etc/varnish
# Thu, 17 Sep 2026 21:34:24 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
COPY index.html /etc/varnish/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Thu, 17 Sep 2026 21:34:24 GMT
USER varnish
# Thu, 17 Sep 2026 21:34:24 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Thu, 17 Sep 2026 21:34:24 GMT
CMD []
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d00121f4674423c9cefde2a3d37433b9e66d8b79b06e6475b917be36d017a8e`  
		Last Modified: Thu, 17 Sep 2026 21:34:38 GMT  
		Size: 89.2 MB (89210212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d03fa33b9838f3684a8664eb4d25e965d971e8fbd74c90e7ba8b865257a36e8`  
		Last Modified: Thu, 17 Sep 2026 21:34:36 GMT  
		Size: 500.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a675d552a27d48333d08b306e038c1581d0097294ae32a374a21cb0c0abced`  
		Last Modified: Thu, 17 Sep 2026 21:34:36 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a52e835ea7a5d22bcf358a86d0608be47c0e634b877a37b3da793c7ad6f29dd`  
		Last Modified: Thu, 17 Sep 2026 21:34:36 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:3bf8f4e8851b656ad6ea5a6590b61efda6f4500da108c38e7e8243a8e0bcda8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d500b2c424f191a94eeb6bae49ad4595704b9628c2b6c0f7433815f453e0843`

```dockerfile
```

-	Layers:
	-	`sha256:81e1ef5a1d15b6321d3750086dfaf6275a84b059692c60481501284992e9c4ca`  
		Last Modified: Thu, 17 Sep 2026 21:34:36 GMT  
		Size: 20.6 KB (20626 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8-alpine` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:8a294ff519bbe13f8029a5792cc29fa5c5de8aea020bfc6a7f508a84a74a9f6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84823611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7c1620559ed3a5af9a58c38a2ac377dcacbf9552b27020d541222a3054e63f0`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:10 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Thu, 17 Sep 2026 21:36:10 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Thu, 17 Sep 2026 21:36:10 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Thu, 17 Sep 2026 21:36:10 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Thu, 17 Sep 2026 21:36:10 GMT
ENV VARNISH_SIZE=100M
# Thu, 17 Sep 2026 21:36:10 GMT
ENV VSM_NOPID=1
# Thu, 17 Sep 2026 21:36:10 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
WORKDIR /etc/varnish
# Thu, 17 Sep 2026 21:36:10 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
COPY index.html /etc/varnish/ # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Thu, 17 Sep 2026 21:36:10 GMT
USER varnish
# Thu, 17 Sep 2026 21:36:10 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Thu, 17 Sep 2026 21:36:10 GMT
CMD []
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d2b1260b07990417f1bf2eaebabae9d701ab999b0ba0355c0bc2ba0824e79e`  
		Last Modified: Thu, 17 Sep 2026 21:36:22 GMT  
		Size: 80.6 MB (80634417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae3093a744af6f05407bb6ccc05134c98162e966a0f868cb27913a0f673540b`  
		Last Modified: Thu, 17 Sep 2026 21:36:20 GMT  
		Size: 500.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ec5b6489b4ba91815907e4dd9e0175446fd9eb24a157fd7e401c7b46709669`  
		Last Modified: Thu, 17 Sep 2026 21:36:20 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4af2536d4a78f09fa085d908810f82e7987b763224a8aa5dd136d918b12d03b`  
		Last Modified: Thu, 17 Sep 2026 21:36:20 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:61b85170780b7e9b079ac4e3c5861419e4746ee2398e52c03be114b32fb9bb79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92e16d8a4475bb53553e70e0895eaaf1d036cc8a61d6eac1801bacf4998b8117`

```dockerfile
```

-	Layers:
	-	`sha256:5d8e8002ecdaf3bcd6d95d7df46f6b6ee611a186ec670b54917127202684b8a6`  
		Last Modified: Thu, 17 Sep 2026 21:36:20 GMT  
		Size: 20.7 KB (20730 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8.0`

```console
$ docker pull varnish@sha256:d5cb7840d6dcff465031e52276f2113675cc8edbea1cc8d7e6f8e6cfd0f522a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0` - linux; amd64

```console
$ docker pull varnish@sha256:f3aa1b5be541689d22362436ac314a4dbee5b50601e735e6b6e6a2ac28202a10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120311533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a532ca65445cb6552a079502e90d7bb50c57249fe46aeb274247b552332e0bec`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:39:47 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:39:47 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Sat, 19 Sep 2026 00:39:47 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Sat, 19 Sep 2026 00:39:47 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Sat, 19 Sep 2026 00:39:47 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:39:47 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:39:47 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:39:47 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:39:47 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:39:47 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
COPY index.html /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:39:47 GMT
USER varnish
# Sat, 19 Sep 2026 00:39:47 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:39:47 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb507d61d4267728be8bbf98ffb78806c5727240ce8d5d4596ef9c19fc84c77`  
		Last Modified: Sat, 19 Sep 2026 00:40:01 GMT  
		Size: 90.5 MB (90477996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e706d1412430d30ad2d9b6a89a847093b04da69804bd7fae20a08caf78172ad0`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82bbe9ca1020c75c66e46f191cdf4329b058f5a3a9bafbbd0fb09624b32a062`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1877719bd968fe3ee7172421a81a4e6faf7378c627b1e5da9342a92b8bb0520`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0` - unknown; unknown

```console
$ docker pull varnish@sha256:9d461ed6cbf14f677d1c510c7351c055fb427ec6cab9970f9135249f46c12242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26b12b283fbb673daa0d252e26c53d638b79491aaaefb4623f702c32643e90e`

```dockerfile
```

-	Layers:
	-	`sha256:6077140618d9ae2c3666668f89c8bc3fd0cd75b7ba3a1e8b02f57b71efafb5fa`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 21.0 KB (20996 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:38d40346dd6f992900087bf431798c25a49ae3149bf8c7535994209b760bc8d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114303801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02071e8c98b54e2c5f0fe3073337fce9a51c3475086db37790ad4a4b8589fab4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:55 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:42:55 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Sat, 19 Sep 2026 00:42:55 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Sat, 19 Sep 2026 00:42:55 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Sat, 19 Sep 2026 00:42:55 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:42:55 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:42:55 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:42:55 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:42:55 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:42:55 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
COPY index.html /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:42:55 GMT
USER varnish
# Sat, 19 Sep 2026 00:42:55 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:42:55 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e74041fe79f42f1479c967bbc5e151bddeae92b3785bf190a7264381b4f037`  
		Last Modified: Sat, 19 Sep 2026 00:43:09 GMT  
		Size: 84.1 MB (84110992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d813b39470a4bec9ba61f15c844d0983df2adafb65b3c8388fda83ea095cd6`  
		Last Modified: Sat, 19 Sep 2026 00:43:07 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c979e3eab4c7441a16407d37af2eaf71e45dd1b19863ba5e807ba68cc3aad6c4`  
		Last Modified: Sat, 19 Sep 2026 00:43:07 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9765a69219cb865bb101d684c3b4ca5636bfacf79cd5d9d4fcc72afc4d94881d`  
		Last Modified: Sat, 19 Sep 2026 00:43:07 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0` - unknown; unknown

```console
$ docker pull varnish@sha256:7698d0ab7dea26fee3fbacce7e52667049de0dac32b5122dbb188d8beb210137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 KB (21113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6894868d6716460a632ec96d14c3ae2ada97151087f7f4bc800320373fddc5f8`

```dockerfile
```

-	Layers:
	-	`sha256:87036dfe2ee6b4e9ce2d269a9c537a4b56039826299c4e9c168ad931cecfd0d8`  
		Last Modified: Sat, 19 Sep 2026 00:43:06 GMT  
		Size: 21.1 KB (21113 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8.0-alpine`

```console
$ docker pull varnish@sha256:1b39ddb86b460d9c80fbe7a92de6167ebafd4bb58d5b098a02f963d6efd7902e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0-alpine` - linux; amd64

```console
$ docker pull varnish@sha256:27d27179075c747c1e015240d00761154a1ed23ba668de65583c5374c4c14ddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93061856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10ecced7e66f3c546df920323812563302af3fd4d76e4d9c78f091ee9034162`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:24 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Thu, 17 Sep 2026 21:34:24 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Thu, 17 Sep 2026 21:34:24 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Thu, 17 Sep 2026 21:34:24 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Thu, 17 Sep 2026 21:34:24 GMT
ENV VARNISH_SIZE=100M
# Thu, 17 Sep 2026 21:34:24 GMT
ENV VSM_NOPID=1
# Thu, 17 Sep 2026 21:34:24 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
WORKDIR /etc/varnish
# Thu, 17 Sep 2026 21:34:24 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
COPY index.html /etc/varnish/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Thu, 17 Sep 2026 21:34:24 GMT
USER varnish
# Thu, 17 Sep 2026 21:34:24 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Thu, 17 Sep 2026 21:34:24 GMT
CMD []
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d00121f4674423c9cefde2a3d37433b9e66d8b79b06e6475b917be36d017a8e`  
		Last Modified: Thu, 17 Sep 2026 21:34:38 GMT  
		Size: 89.2 MB (89210212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d03fa33b9838f3684a8664eb4d25e965d971e8fbd74c90e7ba8b865257a36e8`  
		Last Modified: Thu, 17 Sep 2026 21:34:36 GMT  
		Size: 500.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a675d552a27d48333d08b306e038c1581d0097294ae32a374a21cb0c0abced`  
		Last Modified: Thu, 17 Sep 2026 21:34:36 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a52e835ea7a5d22bcf358a86d0608be47c0e634b877a37b3da793c7ad6f29dd`  
		Last Modified: Thu, 17 Sep 2026 21:34:36 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:3bf8f4e8851b656ad6ea5a6590b61efda6f4500da108c38e7e8243a8e0bcda8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d500b2c424f191a94eeb6bae49ad4595704b9628c2b6c0f7433815f453e0843`

```dockerfile
```

-	Layers:
	-	`sha256:81e1ef5a1d15b6321d3750086dfaf6275a84b059692c60481501284992e9c4ca`  
		Last Modified: Thu, 17 Sep 2026 21:34:36 GMT  
		Size: 20.6 KB (20626 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0-alpine` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:8a294ff519bbe13f8029a5792cc29fa5c5de8aea020bfc6a7f508a84a74a9f6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84823611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7c1620559ed3a5af9a58c38a2ac377dcacbf9552b27020d541222a3054e63f0`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:10 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Thu, 17 Sep 2026 21:36:10 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Thu, 17 Sep 2026 21:36:10 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Thu, 17 Sep 2026 21:36:10 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Thu, 17 Sep 2026 21:36:10 GMT
ENV VARNISH_SIZE=100M
# Thu, 17 Sep 2026 21:36:10 GMT
ENV VSM_NOPID=1
# Thu, 17 Sep 2026 21:36:10 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
WORKDIR /etc/varnish
# Thu, 17 Sep 2026 21:36:10 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
COPY index.html /etc/varnish/ # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Thu, 17 Sep 2026 21:36:10 GMT
USER varnish
# Thu, 17 Sep 2026 21:36:10 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Thu, 17 Sep 2026 21:36:10 GMT
CMD []
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d2b1260b07990417f1bf2eaebabae9d701ab999b0ba0355c0bc2ba0824e79e`  
		Last Modified: Thu, 17 Sep 2026 21:36:22 GMT  
		Size: 80.6 MB (80634417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae3093a744af6f05407bb6ccc05134c98162e966a0f868cb27913a0f673540b`  
		Last Modified: Thu, 17 Sep 2026 21:36:20 GMT  
		Size: 500.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ec5b6489b4ba91815907e4dd9e0175446fd9eb24a157fd7e401c7b46709669`  
		Last Modified: Thu, 17 Sep 2026 21:36:20 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4af2536d4a78f09fa085d908810f82e7987b763224a8aa5dd136d918b12d03b`  
		Last Modified: Thu, 17 Sep 2026 21:36:20 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:61b85170780b7e9b079ac4e3c5861419e4746ee2398e52c03be114b32fb9bb79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92e16d8a4475bb53553e70e0895eaaf1d036cc8a61d6eac1801bacf4998b8117`

```dockerfile
```

-	Layers:
	-	`sha256:5d8e8002ecdaf3bcd6d95d7df46f6b6ee611a186ec670b54917127202684b8a6`  
		Last Modified: Thu, 17 Sep 2026 21:36:20 GMT  
		Size: 20.7 KB (20730 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8.0.2`

```console
$ docker pull varnish@sha256:d5cb7840d6dcff465031e52276f2113675cc8edbea1cc8d7e6f8e6cfd0f522a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0.2` - linux; amd64

```console
$ docker pull varnish@sha256:f3aa1b5be541689d22362436ac314a4dbee5b50601e735e6b6e6a2ac28202a10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120311533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a532ca65445cb6552a079502e90d7bb50c57249fe46aeb274247b552332e0bec`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:39:47 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:39:47 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Sat, 19 Sep 2026 00:39:47 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Sat, 19 Sep 2026 00:39:47 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Sat, 19 Sep 2026 00:39:47 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:39:47 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:39:47 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:39:47 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:39:47 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:39:47 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
COPY index.html /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:39:47 GMT
USER varnish
# Sat, 19 Sep 2026 00:39:47 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:39:47 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb507d61d4267728be8bbf98ffb78806c5727240ce8d5d4596ef9c19fc84c77`  
		Last Modified: Sat, 19 Sep 2026 00:40:01 GMT  
		Size: 90.5 MB (90477996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e706d1412430d30ad2d9b6a89a847093b04da69804bd7fae20a08caf78172ad0`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82bbe9ca1020c75c66e46f191cdf4329b058f5a3a9bafbbd0fb09624b32a062`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1877719bd968fe3ee7172421a81a4e6faf7378c627b1e5da9342a92b8bb0520`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2` - unknown; unknown

```console
$ docker pull varnish@sha256:9d461ed6cbf14f677d1c510c7351c055fb427ec6cab9970f9135249f46c12242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26b12b283fbb673daa0d252e26c53d638b79491aaaefb4623f702c32643e90e`

```dockerfile
```

-	Layers:
	-	`sha256:6077140618d9ae2c3666668f89c8bc3fd0cd75b7ba3a1e8b02f57b71efafb5fa`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 21.0 KB (20996 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0.2` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:38d40346dd6f992900087bf431798c25a49ae3149bf8c7535994209b760bc8d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114303801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02071e8c98b54e2c5f0fe3073337fce9a51c3475086db37790ad4a4b8589fab4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:55 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:42:55 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Sat, 19 Sep 2026 00:42:55 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Sat, 19 Sep 2026 00:42:55 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Sat, 19 Sep 2026 00:42:55 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:42:55 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:42:55 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:42:55 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:42:55 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:42:55 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
COPY index.html /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:42:55 GMT
USER varnish
# Sat, 19 Sep 2026 00:42:55 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:42:55 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e74041fe79f42f1479c967bbc5e151bddeae92b3785bf190a7264381b4f037`  
		Last Modified: Sat, 19 Sep 2026 00:43:09 GMT  
		Size: 84.1 MB (84110992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d813b39470a4bec9ba61f15c844d0983df2adafb65b3c8388fda83ea095cd6`  
		Last Modified: Sat, 19 Sep 2026 00:43:07 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c979e3eab4c7441a16407d37af2eaf71e45dd1b19863ba5e807ba68cc3aad6c4`  
		Last Modified: Sat, 19 Sep 2026 00:43:07 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9765a69219cb865bb101d684c3b4ca5636bfacf79cd5d9d4fcc72afc4d94881d`  
		Last Modified: Sat, 19 Sep 2026 00:43:07 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2` - unknown; unknown

```console
$ docker pull varnish@sha256:7698d0ab7dea26fee3fbacce7e52667049de0dac32b5122dbb188d8beb210137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 KB (21113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6894868d6716460a632ec96d14c3ae2ada97151087f7f4bc800320373fddc5f8`

```dockerfile
```

-	Layers:
	-	`sha256:87036dfe2ee6b4e9ce2d269a9c537a4b56039826299c4e9c168ad931cecfd0d8`  
		Last Modified: Sat, 19 Sep 2026 00:43:06 GMT  
		Size: 21.1 KB (21113 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8.0.2-1`

```console
$ docker pull varnish@sha256:d5cb7840d6dcff465031e52276f2113675cc8edbea1cc8d7e6f8e6cfd0f522a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0.2-1` - linux; amd64

```console
$ docker pull varnish@sha256:f3aa1b5be541689d22362436ac314a4dbee5b50601e735e6b6e6a2ac28202a10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120311533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a532ca65445cb6552a079502e90d7bb50c57249fe46aeb274247b552332e0bec`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:39:47 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:39:47 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Sat, 19 Sep 2026 00:39:47 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Sat, 19 Sep 2026 00:39:47 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Sat, 19 Sep 2026 00:39:47 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:39:47 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:39:47 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:39:47 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:39:47 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:39:47 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
COPY index.html /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:39:47 GMT
USER varnish
# Sat, 19 Sep 2026 00:39:47 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:39:47 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb507d61d4267728be8bbf98ffb78806c5727240ce8d5d4596ef9c19fc84c77`  
		Last Modified: Sat, 19 Sep 2026 00:40:01 GMT  
		Size: 90.5 MB (90477996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e706d1412430d30ad2d9b6a89a847093b04da69804bd7fae20a08caf78172ad0`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82bbe9ca1020c75c66e46f191cdf4329b058f5a3a9bafbbd0fb09624b32a062`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1877719bd968fe3ee7172421a81a4e6faf7378c627b1e5da9342a92b8bb0520`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2-1` - unknown; unknown

```console
$ docker pull varnish@sha256:9d461ed6cbf14f677d1c510c7351c055fb427ec6cab9970f9135249f46c12242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26b12b283fbb673daa0d252e26c53d638b79491aaaefb4623f702c32643e90e`

```dockerfile
```

-	Layers:
	-	`sha256:6077140618d9ae2c3666668f89c8bc3fd0cd75b7ba3a1e8b02f57b71efafb5fa`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 21.0 KB (20996 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0.2-1` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:38d40346dd6f992900087bf431798c25a49ae3149bf8c7535994209b760bc8d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114303801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02071e8c98b54e2c5f0fe3073337fce9a51c3475086db37790ad4a4b8589fab4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:55 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:42:55 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Sat, 19 Sep 2026 00:42:55 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Sat, 19 Sep 2026 00:42:55 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Sat, 19 Sep 2026 00:42:55 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:42:55 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:42:55 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:42:55 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:42:55 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:42:55 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
COPY index.html /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:42:55 GMT
USER varnish
# Sat, 19 Sep 2026 00:42:55 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:42:55 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e74041fe79f42f1479c967bbc5e151bddeae92b3785bf190a7264381b4f037`  
		Last Modified: Sat, 19 Sep 2026 00:43:09 GMT  
		Size: 84.1 MB (84110992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d813b39470a4bec9ba61f15c844d0983df2adafb65b3c8388fda83ea095cd6`  
		Last Modified: Sat, 19 Sep 2026 00:43:07 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c979e3eab4c7441a16407d37af2eaf71e45dd1b19863ba5e807ba68cc3aad6c4`  
		Last Modified: Sat, 19 Sep 2026 00:43:07 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9765a69219cb865bb101d684c3b4ca5636bfacf79cd5d9d4fcc72afc4d94881d`  
		Last Modified: Sat, 19 Sep 2026 00:43:07 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2-1` - unknown; unknown

```console
$ docker pull varnish@sha256:7698d0ab7dea26fee3fbacce7e52667049de0dac32b5122dbb188d8beb210137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 KB (21113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6894868d6716460a632ec96d14c3ae2ada97151087f7f4bc800320373fddc5f8`

```dockerfile
```

-	Layers:
	-	`sha256:87036dfe2ee6b4e9ce2d269a9c537a4b56039826299c4e9c168ad931cecfd0d8`  
		Last Modified: Sat, 19 Sep 2026 00:43:06 GMT  
		Size: 21.1 KB (21113 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:8.0.2-alpine`

```console
$ docker pull varnish@sha256:1b39ddb86b460d9c80fbe7a92de6167ebafd4bb58d5b098a02f963d6efd7902e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:8.0.2-alpine` - linux; amd64

```console
$ docker pull varnish@sha256:27d27179075c747c1e015240d00761154a1ed23ba668de65583c5374c4c14ddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93061856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10ecced7e66f3c546df920323812563302af3fd4d76e4d9c78f091ee9034162`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:24 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Thu, 17 Sep 2026 21:34:24 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Thu, 17 Sep 2026 21:34:24 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Thu, 17 Sep 2026 21:34:24 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Thu, 17 Sep 2026 21:34:24 GMT
ENV VARNISH_SIZE=100M
# Thu, 17 Sep 2026 21:34:24 GMT
ENV VSM_NOPID=1
# Thu, 17 Sep 2026 21:34:24 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
WORKDIR /etc/varnish
# Thu, 17 Sep 2026 21:34:24 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
COPY index.html /etc/varnish/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Thu, 17 Sep 2026 21:34:24 GMT
USER varnish
# Thu, 17 Sep 2026 21:34:24 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Thu, 17 Sep 2026 21:34:24 GMT
CMD []
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d00121f4674423c9cefde2a3d37433b9e66d8b79b06e6475b917be36d017a8e`  
		Last Modified: Thu, 17 Sep 2026 21:34:38 GMT  
		Size: 89.2 MB (89210212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d03fa33b9838f3684a8664eb4d25e965d971e8fbd74c90e7ba8b865257a36e8`  
		Last Modified: Thu, 17 Sep 2026 21:34:36 GMT  
		Size: 500.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a675d552a27d48333d08b306e038c1581d0097294ae32a374a21cb0c0abced`  
		Last Modified: Thu, 17 Sep 2026 21:34:36 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a52e835ea7a5d22bcf358a86d0608be47c0e634b877a37b3da793c7ad6f29dd`  
		Last Modified: Thu, 17 Sep 2026 21:34:36 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:3bf8f4e8851b656ad6ea5a6590b61efda6f4500da108c38e7e8243a8e0bcda8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d500b2c424f191a94eeb6bae49ad4595704b9628c2b6c0f7433815f453e0843`

```dockerfile
```

-	Layers:
	-	`sha256:81e1ef5a1d15b6321d3750086dfaf6275a84b059692c60481501284992e9c4ca`  
		Last Modified: Thu, 17 Sep 2026 21:34:36 GMT  
		Size: 20.6 KB (20626 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:8.0.2-alpine` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:8a294ff519bbe13f8029a5792cc29fa5c5de8aea020bfc6a7f508a84a74a9f6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84823611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7c1620559ed3a5af9a58c38a2ac377dcacbf9552b27020d541222a3054e63f0`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:10 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Thu, 17 Sep 2026 21:36:10 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Thu, 17 Sep 2026 21:36:10 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Thu, 17 Sep 2026 21:36:10 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Thu, 17 Sep 2026 21:36:10 GMT
ENV VARNISH_SIZE=100M
# Thu, 17 Sep 2026 21:36:10 GMT
ENV VSM_NOPID=1
# Thu, 17 Sep 2026 21:36:10 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
WORKDIR /etc/varnish
# Thu, 17 Sep 2026 21:36:10 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
COPY index.html /etc/varnish/ # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Thu, 17 Sep 2026 21:36:10 GMT
USER varnish
# Thu, 17 Sep 2026 21:36:10 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Thu, 17 Sep 2026 21:36:10 GMT
CMD []
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d2b1260b07990417f1bf2eaebabae9d701ab999b0ba0355c0bc2ba0824e79e`  
		Last Modified: Thu, 17 Sep 2026 21:36:22 GMT  
		Size: 80.6 MB (80634417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae3093a744af6f05407bb6ccc05134c98162e966a0f868cb27913a0f673540b`  
		Last Modified: Thu, 17 Sep 2026 21:36:20 GMT  
		Size: 500.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ec5b6489b4ba91815907e4dd9e0175446fd9eb24a157fd7e401c7b46709669`  
		Last Modified: Thu, 17 Sep 2026 21:36:20 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4af2536d4a78f09fa085d908810f82e7987b763224a8aa5dd136d918b12d03b`  
		Last Modified: Thu, 17 Sep 2026 21:36:20 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:8.0.2-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:61b85170780b7e9b079ac4e3c5861419e4746ee2398e52c03be114b32fb9bb79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92e16d8a4475bb53553e70e0895eaaf1d036cc8a61d6eac1801bacf4998b8117`

```dockerfile
```

-	Layers:
	-	`sha256:5d8e8002ecdaf3bcd6d95d7df46f6b6ee611a186ec670b54917127202684b8a6`  
		Last Modified: Thu, 17 Sep 2026 21:36:20 GMT  
		Size: 20.7 KB (20730 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9`

```console
$ docker pull varnish@sha256:73d7da8ba87f83564131a79b7901f14bc36937a4e2a11b8f90940855b144b4a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9` - linux; amd64

```console
$ docker pull varnish@sha256:e7079ee088d3646ce4e7169f695b7202c137ebfd8f3ac0603ec1e32a4b016cb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132490673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d1c7f707ce7ec7ec7ede50766fb238ff6127812347a322cb611ab70cbb4830`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:39:33 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:39:33 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Sat, 19 Sep 2026 00:39:33 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Sat, 19 Sep 2026 00:39:33 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:39:33 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:39:33 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
COPY index.html /var/www/html/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:39:33 GMT
USER varnish
# Sat, 19 Sep 2026 00:39:33 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:39:33 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df12b0d15431cc5487847e0537a6a8ab62a59aec00366bf53581e2dc7431bd4b`  
		Last Modified: Sat, 19 Sep 2026 00:39:47 GMT  
		Size: 102.7 MB (102657369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b88fca4339aa152d4787c30a0dee1676cde4a0345ae04205fb40e45476735a`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad309b2c6e4d248f697cd92036e681522f653e1a86aac80d80a32d0a558ea39f`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19431f24944551b24ed9cc25839cddccfdb9a386f593438bc9ff6d53f37017dd`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:e4a066d6640cbd6590168d910b1ba345614c89606d1af8b223dc33362814b5de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77412792382cc2ada88f42615fcdea9831226fc090a467e0bccd83f7c3e16485`

```dockerfile
```

-	Layers:
	-	`sha256:d3af7cec00151e2b818f4939b209c895bbb5dc928a2abf70b9f7c707d3a06938`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:5e2ce0e48bbc1c68fa83c048c8e16d96ad778acfaabb5b69e8699333b535a31f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125611425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b6a89860d6cf51ba3e5a38015d9d46faccd51beae119ea40413dbe0c7581de`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:36 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:42:36 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Sat, 19 Sep 2026 00:42:36 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Sat, 19 Sep 2026 00:42:36 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:42:36 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:42:36 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
COPY index.html /var/www/html/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:42:36 GMT
USER varnish
# Sat, 19 Sep 2026 00:42:36 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:42:36 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98069c1c5aa6c562f6d398547f27ca0994b7f37a18ff8fb0ccc8243fd2f10284`  
		Last Modified: Sat, 19 Sep 2026 00:42:51 GMT  
		Size: 95.4 MB (95418853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9927f29cabc66896a0143f2cef23a17cda51c604602a84c221175872cebb84`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380827a7d2ac30f3ab87e4944a03042d2112d6cb9efb293768469d462ecf6350`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d2e5cc8b7b5ccab29ffb90241af07a38ae28127ca1df9ff05b0b65bdfdee2b`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:021d777de39e0b6fa49acd7e243f02027700f956afac35cb3eaf0f3d3d549124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b3d024a3ee035eb3fb4ee2002aaa9b60c58196379457c71ba632304943c7ed7`

```dockerfile
```

-	Layers:
	-	`sha256:6c437f17b849cd6211248a7545d0524d49cdd4594364b290008919e36a143f19`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 20.9 KB (20866 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0`

```console
$ docker pull varnish@sha256:73d7da8ba87f83564131a79b7901f14bc36937a4e2a11b8f90940855b144b4a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0` - linux; amd64

```console
$ docker pull varnish@sha256:e7079ee088d3646ce4e7169f695b7202c137ebfd8f3ac0603ec1e32a4b016cb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132490673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d1c7f707ce7ec7ec7ede50766fb238ff6127812347a322cb611ab70cbb4830`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:39:33 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:39:33 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Sat, 19 Sep 2026 00:39:33 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Sat, 19 Sep 2026 00:39:33 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:39:33 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:39:33 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
COPY index.html /var/www/html/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:39:33 GMT
USER varnish
# Sat, 19 Sep 2026 00:39:33 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:39:33 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df12b0d15431cc5487847e0537a6a8ab62a59aec00366bf53581e2dc7431bd4b`  
		Last Modified: Sat, 19 Sep 2026 00:39:47 GMT  
		Size: 102.7 MB (102657369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b88fca4339aa152d4787c30a0dee1676cde4a0345ae04205fb40e45476735a`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad309b2c6e4d248f697cd92036e681522f653e1a86aac80d80a32d0a558ea39f`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19431f24944551b24ed9cc25839cddccfdb9a386f593438bc9ff6d53f37017dd`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0` - unknown; unknown

```console
$ docker pull varnish@sha256:e4a066d6640cbd6590168d910b1ba345614c89606d1af8b223dc33362814b5de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77412792382cc2ada88f42615fcdea9831226fc090a467e0bccd83f7c3e16485`

```dockerfile
```

-	Layers:
	-	`sha256:d3af7cec00151e2b818f4939b209c895bbb5dc928a2abf70b9f7c707d3a06938`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:5e2ce0e48bbc1c68fa83c048c8e16d96ad778acfaabb5b69e8699333b535a31f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125611425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b6a89860d6cf51ba3e5a38015d9d46faccd51beae119ea40413dbe0c7581de`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:36 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:42:36 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Sat, 19 Sep 2026 00:42:36 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Sat, 19 Sep 2026 00:42:36 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:42:36 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:42:36 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
COPY index.html /var/www/html/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:42:36 GMT
USER varnish
# Sat, 19 Sep 2026 00:42:36 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:42:36 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98069c1c5aa6c562f6d398547f27ca0994b7f37a18ff8fb0ccc8243fd2f10284`  
		Last Modified: Sat, 19 Sep 2026 00:42:51 GMT  
		Size: 95.4 MB (95418853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9927f29cabc66896a0143f2cef23a17cda51c604602a84c221175872cebb84`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380827a7d2ac30f3ab87e4944a03042d2112d6cb9efb293768469d462ecf6350`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d2e5cc8b7b5ccab29ffb90241af07a38ae28127ca1df9ff05b0b65bdfdee2b`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0` - unknown; unknown

```console
$ docker pull varnish@sha256:021d777de39e0b6fa49acd7e243f02027700f956afac35cb3eaf0f3d3d549124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b3d024a3ee035eb3fb4ee2002aaa9b60c58196379457c71ba632304943c7ed7`

```dockerfile
```

-	Layers:
	-	`sha256:6c437f17b849cd6211248a7545d0524d49cdd4594364b290008919e36a143f19`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 20.9 KB (20866 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0.4`

```console
$ docker pull varnish@sha256:73d7da8ba87f83564131a79b7901f14bc36937a4e2a11b8f90940855b144b4a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0.4` - linux; amd64

```console
$ docker pull varnish@sha256:e7079ee088d3646ce4e7169f695b7202c137ebfd8f3ac0603ec1e32a4b016cb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132490673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d1c7f707ce7ec7ec7ede50766fb238ff6127812347a322cb611ab70cbb4830`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:39:33 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:39:33 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Sat, 19 Sep 2026 00:39:33 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Sat, 19 Sep 2026 00:39:33 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:39:33 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:39:33 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
COPY index.html /var/www/html/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:39:33 GMT
USER varnish
# Sat, 19 Sep 2026 00:39:33 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:39:33 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df12b0d15431cc5487847e0537a6a8ab62a59aec00366bf53581e2dc7431bd4b`  
		Last Modified: Sat, 19 Sep 2026 00:39:47 GMT  
		Size: 102.7 MB (102657369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b88fca4339aa152d4787c30a0dee1676cde4a0345ae04205fb40e45476735a`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad309b2c6e4d248f697cd92036e681522f653e1a86aac80d80a32d0a558ea39f`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19431f24944551b24ed9cc25839cddccfdb9a386f593438bc9ff6d53f37017dd`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4` - unknown; unknown

```console
$ docker pull varnish@sha256:e4a066d6640cbd6590168d910b1ba345614c89606d1af8b223dc33362814b5de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77412792382cc2ada88f42615fcdea9831226fc090a467e0bccd83f7c3e16485`

```dockerfile
```

-	Layers:
	-	`sha256:d3af7cec00151e2b818f4939b209c895bbb5dc928a2abf70b9f7c707d3a06938`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0.4` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:5e2ce0e48bbc1c68fa83c048c8e16d96ad778acfaabb5b69e8699333b535a31f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125611425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b6a89860d6cf51ba3e5a38015d9d46faccd51beae119ea40413dbe0c7581de`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:36 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:42:36 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Sat, 19 Sep 2026 00:42:36 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Sat, 19 Sep 2026 00:42:36 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:42:36 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:42:36 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
COPY index.html /var/www/html/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:42:36 GMT
USER varnish
# Sat, 19 Sep 2026 00:42:36 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:42:36 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98069c1c5aa6c562f6d398547f27ca0994b7f37a18ff8fb0ccc8243fd2f10284`  
		Last Modified: Sat, 19 Sep 2026 00:42:51 GMT  
		Size: 95.4 MB (95418853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9927f29cabc66896a0143f2cef23a17cda51c604602a84c221175872cebb84`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380827a7d2ac30f3ab87e4944a03042d2112d6cb9efb293768469d462ecf6350`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d2e5cc8b7b5ccab29ffb90241af07a38ae28127ca1df9ff05b0b65bdfdee2b`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4` - unknown; unknown

```console
$ docker pull varnish@sha256:021d777de39e0b6fa49acd7e243f02027700f956afac35cb3eaf0f3d3d549124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b3d024a3ee035eb3fb4ee2002aaa9b60c58196379457c71ba632304943c7ed7`

```dockerfile
```

-	Layers:
	-	`sha256:6c437f17b849cd6211248a7545d0524d49cdd4594364b290008919e36a143f19`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 20.9 KB (20866 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0.4-5`

```console
$ docker pull varnish@sha256:73d7da8ba87f83564131a79b7901f14bc36937a4e2a11b8f90940855b144b4a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0.4-5` - linux; amd64

```console
$ docker pull varnish@sha256:e7079ee088d3646ce4e7169f695b7202c137ebfd8f3ac0603ec1e32a4b016cb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132490673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d1c7f707ce7ec7ec7ede50766fb238ff6127812347a322cb611ab70cbb4830`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:39:33 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:39:33 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Sat, 19 Sep 2026 00:39:33 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Sat, 19 Sep 2026 00:39:33 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:39:33 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:39:33 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
COPY index.html /var/www/html/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:39:33 GMT
USER varnish
# Sat, 19 Sep 2026 00:39:33 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:39:33 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df12b0d15431cc5487847e0537a6a8ab62a59aec00366bf53581e2dc7431bd4b`  
		Last Modified: Sat, 19 Sep 2026 00:39:47 GMT  
		Size: 102.7 MB (102657369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b88fca4339aa152d4787c30a0dee1676cde4a0345ae04205fb40e45476735a`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad309b2c6e4d248f697cd92036e681522f653e1a86aac80d80a32d0a558ea39f`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19431f24944551b24ed9cc25839cddccfdb9a386f593438bc9ff6d53f37017dd`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4-5` - unknown; unknown

```console
$ docker pull varnish@sha256:e4a066d6640cbd6590168d910b1ba345614c89606d1af8b223dc33362814b5de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77412792382cc2ada88f42615fcdea9831226fc090a467e0bccd83f7c3e16485`

```dockerfile
```

-	Layers:
	-	`sha256:d3af7cec00151e2b818f4939b209c895bbb5dc928a2abf70b9f7c707d3a06938`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0.4-5` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:5e2ce0e48bbc1c68fa83c048c8e16d96ad778acfaabb5b69e8699333b535a31f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125611425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b6a89860d6cf51ba3e5a38015d9d46faccd51beae119ea40413dbe0c7581de`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:36 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:42:36 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Sat, 19 Sep 2026 00:42:36 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Sat, 19 Sep 2026 00:42:36 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:42:36 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:42:36 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
COPY index.html /var/www/html/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:42:36 GMT
USER varnish
# Sat, 19 Sep 2026 00:42:36 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:42:36 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98069c1c5aa6c562f6d398547f27ca0994b7f37a18ff8fb0ccc8243fd2f10284`  
		Last Modified: Sat, 19 Sep 2026 00:42:51 GMT  
		Size: 95.4 MB (95418853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9927f29cabc66896a0143f2cef23a17cda51c604602a84c221175872cebb84`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380827a7d2ac30f3ab87e4944a03042d2112d6cb9efb293768469d462ecf6350`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d2e5cc8b7b5ccab29ffb90241af07a38ae28127ca1df9ff05b0b65bdfdee2b`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4-5` - unknown; unknown

```console
$ docker pull varnish@sha256:021d777de39e0b6fa49acd7e243f02027700f956afac35cb3eaf0f3d3d549124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b3d024a3ee035eb3fb4ee2002aaa9b60c58196379457c71ba632304943c7ed7`

```dockerfile
```

-	Layers:
	-	`sha256:6c437f17b849cd6211248a7545d0524d49cdd4594364b290008919e36a143f19`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 20.9 KB (20866 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:fresh`

```console
$ docker pull varnish@sha256:73d7da8ba87f83564131a79b7901f14bc36937a4e2a11b8f90940855b144b4a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:fresh` - linux; amd64

```console
$ docker pull varnish@sha256:e7079ee088d3646ce4e7169f695b7202c137ebfd8f3ac0603ec1e32a4b016cb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132490673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d1c7f707ce7ec7ec7ede50766fb238ff6127812347a322cb611ab70cbb4830`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:39:33 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:39:33 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Sat, 19 Sep 2026 00:39:33 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Sat, 19 Sep 2026 00:39:33 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:39:33 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:39:33 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
COPY index.html /var/www/html/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:39:33 GMT
USER varnish
# Sat, 19 Sep 2026 00:39:33 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:39:33 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df12b0d15431cc5487847e0537a6a8ab62a59aec00366bf53581e2dc7431bd4b`  
		Last Modified: Sat, 19 Sep 2026 00:39:47 GMT  
		Size: 102.7 MB (102657369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b88fca4339aa152d4787c30a0dee1676cde4a0345ae04205fb40e45476735a`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad309b2c6e4d248f697cd92036e681522f653e1a86aac80d80a32d0a558ea39f`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19431f24944551b24ed9cc25839cddccfdb9a386f593438bc9ff6d53f37017dd`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:e4a066d6640cbd6590168d910b1ba345614c89606d1af8b223dc33362814b5de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77412792382cc2ada88f42615fcdea9831226fc090a467e0bccd83f7c3e16485`

```dockerfile
```

-	Layers:
	-	`sha256:d3af7cec00151e2b818f4939b209c895bbb5dc928a2abf70b9f7c707d3a06938`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:fresh` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:5e2ce0e48bbc1c68fa83c048c8e16d96ad778acfaabb5b69e8699333b535a31f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125611425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b6a89860d6cf51ba3e5a38015d9d46faccd51beae119ea40413dbe0c7581de`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:36 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:42:36 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Sat, 19 Sep 2026 00:42:36 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Sat, 19 Sep 2026 00:42:36 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:42:36 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:42:36 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
COPY index.html /var/www/html/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:42:36 GMT
USER varnish
# Sat, 19 Sep 2026 00:42:36 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:42:36 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98069c1c5aa6c562f6d398547f27ca0994b7f37a18ff8fb0ccc8243fd2f10284`  
		Last Modified: Sat, 19 Sep 2026 00:42:51 GMT  
		Size: 95.4 MB (95418853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9927f29cabc66896a0143f2cef23a17cda51c604602a84c221175872cebb84`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380827a7d2ac30f3ab87e4944a03042d2112d6cb9efb293768469d462ecf6350`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d2e5cc8b7b5ccab29ffb90241af07a38ae28127ca1df9ff05b0b65bdfdee2b`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:021d777de39e0b6fa49acd7e243f02027700f956afac35cb3eaf0f3d3d549124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b3d024a3ee035eb3fb4ee2002aaa9b60c58196379457c71ba632304943c7ed7`

```dockerfile
```

-	Layers:
	-	`sha256:6c437f17b849cd6211248a7545d0524d49cdd4594364b290008919e36a143f19`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 20.9 KB (20866 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:latest`

```console
$ docker pull varnish@sha256:73d7da8ba87f83564131a79b7901f14bc36937a4e2a11b8f90940855b144b4a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:latest` - linux; amd64

```console
$ docker pull varnish@sha256:e7079ee088d3646ce4e7169f695b7202c137ebfd8f3ac0603ec1e32a4b016cb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132490673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d1c7f707ce7ec7ec7ede50766fb238ff6127812347a322cb611ab70cbb4830`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:39:33 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:39:33 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Sat, 19 Sep 2026 00:39:33 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Sat, 19 Sep 2026 00:39:33 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:39:33 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:39:33 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
COPY index.html /var/www/html/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:39:33 GMT
USER varnish
# Sat, 19 Sep 2026 00:39:33 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:39:33 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df12b0d15431cc5487847e0537a6a8ab62a59aec00366bf53581e2dc7431bd4b`  
		Last Modified: Sat, 19 Sep 2026 00:39:47 GMT  
		Size: 102.7 MB (102657369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b88fca4339aa152d4787c30a0dee1676cde4a0345ae04205fb40e45476735a`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad309b2c6e4d248f697cd92036e681522f653e1a86aac80d80a32d0a558ea39f`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19431f24944551b24ed9cc25839cddccfdb9a386f593438bc9ff6d53f37017dd`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:e4a066d6640cbd6590168d910b1ba345614c89606d1af8b223dc33362814b5de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77412792382cc2ada88f42615fcdea9831226fc090a467e0bccd83f7c3e16485`

```dockerfile
```

-	Layers:
	-	`sha256:d3af7cec00151e2b818f4939b209c895bbb5dc928a2abf70b9f7c707d3a06938`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:latest` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:5e2ce0e48bbc1c68fa83c048c8e16d96ad778acfaabb5b69e8699333b535a31f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125611425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b6a89860d6cf51ba3e5a38015d9d46faccd51beae119ea40413dbe0c7581de`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:36 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:42:36 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Sat, 19 Sep 2026 00:42:36 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Sat, 19 Sep 2026 00:42:36 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:42:36 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:42:36 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
COPY index.html /var/www/html/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:42:36 GMT
USER varnish
# Sat, 19 Sep 2026 00:42:36 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:42:36 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98069c1c5aa6c562f6d398547f27ca0994b7f37a18ff8fb0ccc8243fd2f10284`  
		Last Modified: Sat, 19 Sep 2026 00:42:51 GMT  
		Size: 95.4 MB (95418853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9927f29cabc66896a0143f2cef23a17cda51c604602a84c221175872cebb84`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380827a7d2ac30f3ab87e4944a03042d2112d6cb9efb293768469d462ecf6350`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d2e5cc8b7b5ccab29ffb90241af07a38ae28127ca1df9ff05b0b65bdfdee2b`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:021d777de39e0b6fa49acd7e243f02027700f956afac35cb3eaf0f3d3d549124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b3d024a3ee035eb3fb4ee2002aaa9b60c58196379457c71ba632304943c7ed7`

```dockerfile
```

-	Layers:
	-	`sha256:6c437f17b849cd6211248a7545d0524d49cdd4594364b290008919e36a143f19`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 20.9 KB (20866 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:old`

```console
$ docker pull varnish@sha256:d5cb7840d6dcff465031e52276f2113675cc8edbea1cc8d7e6f8e6cfd0f522a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:old` - linux; amd64

```console
$ docker pull varnish@sha256:f3aa1b5be541689d22362436ac314a4dbee5b50601e735e6b6e6a2ac28202a10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120311533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a532ca65445cb6552a079502e90d7bb50c57249fe46aeb274247b552332e0bec`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:39:47 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:39:47 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Sat, 19 Sep 2026 00:39:47 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Sat, 19 Sep 2026 00:39:47 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Sat, 19 Sep 2026 00:39:47 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:39:47 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:39:47 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:39:47 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:39:47 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:39:47 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
COPY index.html /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:39:47 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:39:47 GMT
USER varnish
# Sat, 19 Sep 2026 00:39:47 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:39:47 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb507d61d4267728be8bbf98ffb78806c5727240ce8d5d4596ef9c19fc84c77`  
		Last Modified: Sat, 19 Sep 2026 00:40:01 GMT  
		Size: 90.5 MB (90477996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e706d1412430d30ad2d9b6a89a847093b04da69804bd7fae20a08caf78172ad0`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82bbe9ca1020c75c66e46f191cdf4329b058f5a3a9bafbbd0fb09624b32a062`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1877719bd968fe3ee7172421a81a4e6faf7378c627b1e5da9342a92b8bb0520`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:9d461ed6cbf14f677d1c510c7351c055fb427ec6cab9970f9135249f46c12242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26b12b283fbb673daa0d252e26c53d638b79491aaaefb4623f702c32643e90e`

```dockerfile
```

-	Layers:
	-	`sha256:6077140618d9ae2c3666668f89c8bc3fd0cd75b7ba3a1e8b02f57b71efafb5fa`  
		Last Modified: Sat, 19 Sep 2026 00:39:59 GMT  
		Size: 21.0 KB (20996 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:old` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:38d40346dd6f992900087bf431798c25a49ae3149bf8c7535994209b760bc8d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114303801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02071e8c98b54e2c5f0fe3073337fce9a51c3475086db37790ad4a4b8589fab4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:55 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:42:55 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Sat, 19 Sep 2026 00:42:55 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Sat, 19 Sep 2026 00:42:55 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Sat, 19 Sep 2026 00:42:55 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:42:55 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:42:55 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:42:55 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:42:55 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:42:55 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
COPY index.html /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:42:55 GMT
USER varnish
# Sat, 19 Sep 2026 00:42:55 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:42:55 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e74041fe79f42f1479c967bbc5e151bddeae92b3785bf190a7264381b4f037`  
		Last Modified: Sat, 19 Sep 2026 00:43:09 GMT  
		Size: 84.1 MB (84110992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d813b39470a4bec9ba61f15c844d0983df2adafb65b3c8388fda83ea095cd6`  
		Last Modified: Sat, 19 Sep 2026 00:43:07 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c979e3eab4c7441a16407d37af2eaf71e45dd1b19863ba5e807ba68cc3aad6c4`  
		Last Modified: Sat, 19 Sep 2026 00:43:07 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9765a69219cb865bb101d684c3b4ca5636bfacf79cd5d9d4fcc72afc4d94881d`  
		Last Modified: Sat, 19 Sep 2026 00:43:07 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:7698d0ab7dea26fee3fbacce7e52667049de0dac32b5122dbb188d8beb210137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 KB (21113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6894868d6716460a632ec96d14c3ae2ada97151087f7f4bc800320373fddc5f8`

```dockerfile
```

-	Layers:
	-	`sha256:87036dfe2ee6b4e9ce2d269a9c537a4b56039826299c4e9c168ad931cecfd0d8`  
		Last Modified: Sat, 19 Sep 2026 00:43:06 GMT  
		Size: 21.1 KB (21113 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:old-alpine`

```console
$ docker pull varnish@sha256:1b39ddb86b460d9c80fbe7a92de6167ebafd4bb58d5b098a02f963d6efd7902e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:old-alpine` - linux; amd64

```console
$ docker pull varnish@sha256:27d27179075c747c1e015240d00761154a1ed23ba668de65583c5374c4c14ddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93061856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10ecced7e66f3c546df920323812563302af3fd4d76e4d9c78f091ee9034162`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:24 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Thu, 17 Sep 2026 21:34:24 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Thu, 17 Sep 2026 21:34:24 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Thu, 17 Sep 2026 21:34:24 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Thu, 17 Sep 2026 21:34:24 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Thu, 17 Sep 2026 21:34:24 GMT
ENV VARNISH_SIZE=100M
# Thu, 17 Sep 2026 21:34:24 GMT
ENV VSM_NOPID=1
# Thu, 17 Sep 2026 21:34:24 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
WORKDIR /etc/varnish
# Thu, 17 Sep 2026 21:34:24 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
COPY index.html /etc/varnish/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Thu, 17 Sep 2026 21:34:24 GMT
USER varnish
# Thu, 17 Sep 2026 21:34:24 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Thu, 17 Sep 2026 21:34:24 GMT
CMD []
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d00121f4674423c9cefde2a3d37433b9e66d8b79b06e6475b917be36d017a8e`  
		Last Modified: Thu, 17 Sep 2026 21:34:38 GMT  
		Size: 89.2 MB (89210212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d03fa33b9838f3684a8664eb4d25e965d971e8fbd74c90e7ba8b865257a36e8`  
		Last Modified: Thu, 17 Sep 2026 21:34:36 GMT  
		Size: 500.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a675d552a27d48333d08b306e038c1581d0097294ae32a374a21cb0c0abced`  
		Last Modified: Thu, 17 Sep 2026 21:34:36 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a52e835ea7a5d22bcf358a86d0608be47c0e634b877a37b3da793c7ad6f29dd`  
		Last Modified: Thu, 17 Sep 2026 21:34:36 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:3bf8f4e8851b656ad6ea5a6590b61efda6f4500da108c38e7e8243a8e0bcda8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d500b2c424f191a94eeb6bae49ad4595704b9628c2b6c0f7433815f453e0843`

```dockerfile
```

-	Layers:
	-	`sha256:81e1ef5a1d15b6321d3750086dfaf6275a84b059692c60481501284992e9c4ca`  
		Last Modified: Thu, 17 Sep 2026 21:34:36 GMT  
		Size: 20.6 KB (20626 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:old-alpine` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:8a294ff519bbe13f8029a5792cc29fa5c5de8aea020bfc6a7f508a84a74a9f6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84823611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7c1620559ed3a5af9a58c38a2ac377dcacbf9552b27020d541222a3054e63f0`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:10 GMT
ARG PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2
# Thu, 17 Sep 2026 21:36:10 GMT
ARG DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VARNISH_MODULES_VERSION=0.27.0
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Thu, 17 Sep 2026 21:36:10 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Thu, 17 Sep 2026 21:36:10 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Thu, 17 Sep 2026 21:36:10 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkgconfig py3-sphinx
# Thu, 17 Sep 2026 21:36:10 GMT
ENV VARNISH_SIZE=100M
# Thu, 17 Sep 2026 21:36:10 GMT
ENV VSM_NOPID=1
# Thu, 17 Sep 2026 21:36:10 GMT
# ARGS: PKG_COMMIT=eb692742c1a107cf3f896985271b35b125873bd7 VARNISH_VERSION_NUMBER=8.0.2 DIST_SHA512=0f349a8227644e3e1f640ad78d8ca04f3293920e53c6b5cd325f34e9dbe1d3a7d459808edff94f136428d7c5a6bd0159dac3ff2c8bb4268b72b6e8aabffbe0f1 VARNISH_MODULES_VERSION=0.27.0 VARNISH_MODULES_SHA512SUM=bb8a55b3d665fe6de918f784a6f4276b2053f5b1cd0628d6b6c6c78c0042fd678736a2f48375cf356daa47a987175f52569c0b468ccd2b37ab55a32c25255264 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;    BASE_PKGS="tar alpine-sdk curl sudo py3-docutils python3 autoconf automake libtool";     apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS;         addgroup -g 1000 -S varnish;     adduser -u 1000 -S -D -H -s /sbin/nologin -G varnish -g varnish varnish;     adduser -u 1001 -S -D -H -s /sbin/nologin -G varnish -g varnish vcache;     adduser -u 1002 -S -D -H -s /sbin/nologin -G varnish -g varnish varnishlog;         adduser -D builder;     echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder;     addgroup builder abuild;     su builder -c "abuild-keygen -nai";         git clone https://github.com/varnish/all-packager.git;     cd all-packager;     git checkout $PKG_COMMIT;     cd varnish-cache/alpine;     ls;     sed -i APKBUILD         -e "s/pkgver=@VERSION@/pkgver=$VARNISH_VERSION_NUMBER/" 	-e 's@^source=.*@source="https://github.com/varnish/varnish/releases/download/varnish-$pkgver/varnish-$pkgver.tar.gz"@' 	-e "s/^sha512sums=.*/sha512sums=\"$DIST_SHA512  varnish-\$pkgver.tar.gz\"/";         chown builder -R .;     su builder -c "abuild -r";     apk add --allow-untrusted ~builder/packages/varnish-cache/*/*.apk;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         install-vmod https://github.com/varnish/varnish-modules/releases/download/$VARNISH_MODULES_VERSION/varnish-modules-$VARNISH_MODULES_VERSION.tar.gz $VARNISH_MODULES_SHA512SUM;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apk del --no-network varnish-build-deps;     rm -rf ~builder /pkg-varnish-cache /varnish-modules /vmod-dynamic /etc/sudoers.d/builder;     deluser --remove-home builder;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
WORKDIR /etc/varnish
# Thu, 17 Sep 2026 21:36:10 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
COPY index.html /etc/varnish/ # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Thu, 17 Sep 2026 21:36:10 GMT
USER varnish
# Thu, 17 Sep 2026 21:36:10 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Thu, 17 Sep 2026 21:36:10 GMT
CMD []
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d2b1260b07990417f1bf2eaebabae9d701ab999b0ba0355c0bc2ba0824e79e`  
		Last Modified: Thu, 17 Sep 2026 21:36:22 GMT  
		Size: 80.6 MB (80634417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae3093a744af6f05407bb6ccc05134c98162e966a0f868cb27913a0f673540b`  
		Last Modified: Thu, 17 Sep 2026 21:36:20 GMT  
		Size: 500.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ec5b6489b4ba91815907e4dd9e0175446fd9eb24a157fd7e401c7b46709669`  
		Last Modified: Thu, 17 Sep 2026 21:36:20 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4af2536d4a78f09fa085d908810f82e7987b763224a8aa5dd136d918b12d03b`  
		Last Modified: Thu, 17 Sep 2026 21:36:20 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old-alpine` - unknown; unknown

```console
$ docker pull varnish@sha256:61b85170780b7e9b079ac4e3c5861419e4746ee2398e52c03be114b32fb9bb79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92e16d8a4475bb53553e70e0895eaaf1d036cc8a61d6eac1801bacf4998b8117`

```dockerfile
```

-	Layers:
	-	`sha256:5d8e8002ecdaf3bcd6d95d7df46f6b6ee611a186ec670b54917127202684b8a6`  
		Last Modified: Thu, 17 Sep 2026 21:36:20 GMT  
		Size: 20.7 KB (20730 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:stable`

```console
$ docker pull varnish@sha256:add2ed65569b00cec40afee9eacc17b015eb99468e46f4dcd56c29216c5fbd1c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:stable` - linux; amd64

```console
$ docker pull varnish@sha256:e6696e424cbd55bc11effb8f8cfa0bc148d39d42e5764aa8ddf8533c903212bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121974888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d54abf008cfe12a898cbfbcc382a46ccc74d543760bcd96be9321b8e3f4943c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:40:02 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:40:02 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Sat, 19 Sep 2026 00:40:02 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:40:02 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:40:02 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:40:02 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:40:02 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:40:02 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:40:02 GMT
CMD []
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954d27e0586d9a2c5b084fe634c368e440b18f0e63712c1ae6f285149b36b4c`  
		Last Modified: Sat, 19 Sep 2026 00:40:16 GMT  
		Size: 93.7 MB (93735691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24f685131b8b383f94370176a13a6e64ec64653c422abbc2e4392a1ec2747fa9`  
		Last Modified: Sat, 19 Sep 2026 00:40:13 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:stable` - unknown; unknown

```console
$ docker pull varnish@sha256:02af4c412b221b82ca6dfc909c7f65e23e6cce54184bb0c4a5d92a06c0e3f898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea8dcaf01f077def21c7039e61278738232e4b3b42dbf78bba0b70e3b05b48f`

```dockerfile
```

-	Layers:
	-	`sha256:7ec5e80544d94437276a94b314e2ca75aedd71cf64b6b5d91440de5f69cd25ae`  
		Last Modified: Sat, 19 Sep 2026 00:40:13 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:stable` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:ee35620f1be01b919631ef793fd39e43addd8c0f1d86277ea66fdcba1a03ebdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116421137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2291ac40a70c7455fccf9f52f7c0d118cd80282c6ce35d4897da909efe6b5c95`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:42:28 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:42:28 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Sat, 19 Sep 2026 00:42:28 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:42:28 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:42:28 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:42:28 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:42:28 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:42:28 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:42:28 GMT
CMD []
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0539f478aa31ba89e4b61ac6dd0ca49cf66266996c94f42a8ce7a6a651ea8b`  
		Last Modified: Sat, 19 Sep 2026 00:42:42 GMT  
		Size: 88.3 MB (88296702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ff39b9d501db9d198171fb58b8c0cccb3b0931e51e48127df2f807b8741db7`  
		Last Modified: Sat, 19 Sep 2026 00:42:40 GMT  
		Size: 723.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:stable` - unknown; unknown

```console
$ docker pull varnish@sha256:5600a1ddb530c4b718f6dedb34009f6ccc6e520ac08e235cd225f15ff2dc867b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19b967030bb723b400264aac42259f37e31631ab9d6b5f4960f86ed96e8aca14`

```dockerfile
```

-	Layers:
	-	`sha256:23df6d9e556f397e40c837a1286410e48fe065dfa558f120b01a265f39e54323`  
		Last Modified: Sat, 19 Sep 2026 00:42:39 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json
