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

## `varnish:9`

```console
$ docker pull varnish@sha256:2b2f4efc79f6172af8513e48d8b37bc03bb91b34470122f4e3ccec29aeb0afc9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9` - linux; amd64

```console
$ docker pull varnish@sha256:d6048518d9d00ddd659e6de25d4d36d750969c596ded8acf7e7cb1b46d30de4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132980763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37820760379585f60008e27c44683a69c553fc4ac78100e49f990ccc763423d4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 23:04:57 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 23 Sep 2026 23:04:57 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 23 Sep 2026 23:04:57 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 23 Sep 2026 23:04:57 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VARNISH_SIZE=100M
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VSM_NOPID=1
# Wed, 23 Sep 2026 23:04:57 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
WORKDIR /etc/varnish
# Wed, 23 Sep 2026 23:04:57 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 23 Sep 2026 23:04:57 GMT
USER varnish
# Wed, 23 Sep 2026 23:04:57 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 23 Sep 2026 23:04:57 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1467269b5053a1f8817df51b88cf5c5340b5679474e11e0c5c6288cac65e67b0`  
		Last Modified: Wed, 23 Sep 2026 23:05:12 GMT  
		Size: 103.1 MB (103147462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af45e8e15cf7d52ebfa95cedf7d6e2499efbd316bdd4d41ca96163bdd93ad47`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cc519b78f8e4f79b9db4980de72098625e690610c2c5f767ae583c4d974ec4`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51916c48dc92df91aa9b30dfd7bbdb67f944053b0255c56310dded779dd3ff6b`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:21e345e8408ff92133e99a0b05fa03ddda479b0c73710458f20771ef51ca33d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d944c43941234f1a461de6b0a31e080d3903376488e5dba414496f485004c85`

```dockerfile
```

-	Layers:
	-	`sha256:2e9ab3ad1400f3e74fccd4a99d787161c0b9165662e3301f92b6ad888aa4a946`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 20.7 KB (20743 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:9f15995af051433778a59616b665670e487303ef986da86a659c2340335bdb98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126108193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ca1580ec3399e4f0374e6d14222657130567835bfc5467de648ca41e2c0225`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 23:04:49 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 23 Sep 2026 23:04:49 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 23 Sep 2026 23:04:49 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 23 Sep 2026 23:04:49 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VARNISH_SIZE=100M
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VSM_NOPID=1
# Wed, 23 Sep 2026 23:04:49 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
WORKDIR /etc/varnish
# Wed, 23 Sep 2026 23:04:49 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 23 Sep 2026 23:04:49 GMT
USER varnish
# Wed, 23 Sep 2026 23:04:49 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 23 Sep 2026 23:04:49 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4a6ad11e60a5294e29dd92e7c5dbac7a9b41e41368d813dc5001ddd2481b59`  
		Last Modified: Wed, 23 Sep 2026 23:05:04 GMT  
		Size: 95.9 MB (95915617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e146336566a705567ec0988d9a32c6b4c30ddc913af67c2a2c3bc6b62cfb7f`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5719cc96cceb042d4b211e9f9c83f742beffeba9ef9c21f54b40a3d1f44d61f`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db493ff6e1c4fb862ca41c8374cf9afb7fe44b82efb264e075f5e1a7102d31b9`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:8742de5d9d76f588310d4f56560a23c3453b0890b7c4c63c3262126a0bd9ef20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afa6a59909d343ee1889cd2c7d47b60b836365488f3005022d788eda979b718`

```dockerfile
```

-	Layers:
	-	`sha256:53dda76f2e837d1d86fa89332168848f6c732524c775000b03ee7e12c61ace73`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 20.9 KB (20867 bytes)  
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

## `varnish:9.1`

```console
$ docker pull varnish@sha256:2b2f4efc79f6172af8513e48d8b37bc03bb91b34470122f4e3ccec29aeb0afc9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.1` - linux; amd64

```console
$ docker pull varnish@sha256:d6048518d9d00ddd659e6de25d4d36d750969c596ded8acf7e7cb1b46d30de4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132980763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37820760379585f60008e27c44683a69c553fc4ac78100e49f990ccc763423d4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 23:04:57 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 23 Sep 2026 23:04:57 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 23 Sep 2026 23:04:57 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 23 Sep 2026 23:04:57 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VARNISH_SIZE=100M
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VSM_NOPID=1
# Wed, 23 Sep 2026 23:04:57 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
WORKDIR /etc/varnish
# Wed, 23 Sep 2026 23:04:57 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 23 Sep 2026 23:04:57 GMT
USER varnish
# Wed, 23 Sep 2026 23:04:57 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 23 Sep 2026 23:04:57 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1467269b5053a1f8817df51b88cf5c5340b5679474e11e0c5c6288cac65e67b0`  
		Last Modified: Wed, 23 Sep 2026 23:05:12 GMT  
		Size: 103.1 MB (103147462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af45e8e15cf7d52ebfa95cedf7d6e2499efbd316bdd4d41ca96163bdd93ad47`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cc519b78f8e4f79b9db4980de72098625e690610c2c5f767ae583c4d974ec4`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51916c48dc92df91aa9b30dfd7bbdb67f944053b0255c56310dded779dd3ff6b`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1` - unknown; unknown

```console
$ docker pull varnish@sha256:21e345e8408ff92133e99a0b05fa03ddda479b0c73710458f20771ef51ca33d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d944c43941234f1a461de6b0a31e080d3903376488e5dba414496f485004c85`

```dockerfile
```

-	Layers:
	-	`sha256:2e9ab3ad1400f3e74fccd4a99d787161c0b9165662e3301f92b6ad888aa4a946`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 20.7 KB (20743 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.1` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:9f15995af051433778a59616b665670e487303ef986da86a659c2340335bdb98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126108193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ca1580ec3399e4f0374e6d14222657130567835bfc5467de648ca41e2c0225`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 23:04:49 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 23 Sep 2026 23:04:49 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 23 Sep 2026 23:04:49 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 23 Sep 2026 23:04:49 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VARNISH_SIZE=100M
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VSM_NOPID=1
# Wed, 23 Sep 2026 23:04:49 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
WORKDIR /etc/varnish
# Wed, 23 Sep 2026 23:04:49 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 23 Sep 2026 23:04:49 GMT
USER varnish
# Wed, 23 Sep 2026 23:04:49 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 23 Sep 2026 23:04:49 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4a6ad11e60a5294e29dd92e7c5dbac7a9b41e41368d813dc5001ddd2481b59`  
		Last Modified: Wed, 23 Sep 2026 23:05:04 GMT  
		Size: 95.9 MB (95915617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e146336566a705567ec0988d9a32c6b4c30ddc913af67c2a2c3bc6b62cfb7f`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5719cc96cceb042d4b211e9f9c83f742beffeba9ef9c21f54b40a3d1f44d61f`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db493ff6e1c4fb862ca41c8374cf9afb7fe44b82efb264e075f5e1a7102d31b9`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1` - unknown; unknown

```console
$ docker pull varnish@sha256:8742de5d9d76f588310d4f56560a23c3453b0890b7c4c63c3262126a0bd9ef20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afa6a59909d343ee1889cd2c7d47b60b836365488f3005022d788eda979b718`

```dockerfile
```

-	Layers:
	-	`sha256:53dda76f2e837d1d86fa89332168848f6c732524c775000b03ee7e12c61ace73`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.1.0`

```console
$ docker pull varnish@sha256:2b2f4efc79f6172af8513e48d8b37bc03bb91b34470122f4e3ccec29aeb0afc9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.1.0` - linux; amd64

```console
$ docker pull varnish@sha256:d6048518d9d00ddd659e6de25d4d36d750969c596ded8acf7e7cb1b46d30de4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132980763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37820760379585f60008e27c44683a69c553fc4ac78100e49f990ccc763423d4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 23:04:57 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 23 Sep 2026 23:04:57 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 23 Sep 2026 23:04:57 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 23 Sep 2026 23:04:57 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VARNISH_SIZE=100M
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VSM_NOPID=1
# Wed, 23 Sep 2026 23:04:57 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
WORKDIR /etc/varnish
# Wed, 23 Sep 2026 23:04:57 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 23 Sep 2026 23:04:57 GMT
USER varnish
# Wed, 23 Sep 2026 23:04:57 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 23 Sep 2026 23:04:57 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1467269b5053a1f8817df51b88cf5c5340b5679474e11e0c5c6288cac65e67b0`  
		Last Modified: Wed, 23 Sep 2026 23:05:12 GMT  
		Size: 103.1 MB (103147462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af45e8e15cf7d52ebfa95cedf7d6e2499efbd316bdd4d41ca96163bdd93ad47`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cc519b78f8e4f79b9db4980de72098625e690610c2c5f767ae583c4d974ec4`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51916c48dc92df91aa9b30dfd7bbdb67f944053b0255c56310dded779dd3ff6b`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0` - unknown; unknown

```console
$ docker pull varnish@sha256:21e345e8408ff92133e99a0b05fa03ddda479b0c73710458f20771ef51ca33d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d944c43941234f1a461de6b0a31e080d3903376488e5dba414496f485004c85`

```dockerfile
```

-	Layers:
	-	`sha256:2e9ab3ad1400f3e74fccd4a99d787161c0b9165662e3301f92b6ad888aa4a946`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 20.7 KB (20743 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.1.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:9f15995af051433778a59616b665670e487303ef986da86a659c2340335bdb98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126108193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ca1580ec3399e4f0374e6d14222657130567835bfc5467de648ca41e2c0225`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 23:04:49 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 23 Sep 2026 23:04:49 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 23 Sep 2026 23:04:49 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 23 Sep 2026 23:04:49 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VARNISH_SIZE=100M
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VSM_NOPID=1
# Wed, 23 Sep 2026 23:04:49 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
WORKDIR /etc/varnish
# Wed, 23 Sep 2026 23:04:49 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 23 Sep 2026 23:04:49 GMT
USER varnish
# Wed, 23 Sep 2026 23:04:49 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 23 Sep 2026 23:04:49 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4a6ad11e60a5294e29dd92e7c5dbac7a9b41e41368d813dc5001ddd2481b59`  
		Last Modified: Wed, 23 Sep 2026 23:05:04 GMT  
		Size: 95.9 MB (95915617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e146336566a705567ec0988d9a32c6b4c30ddc913af67c2a2c3bc6b62cfb7f`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5719cc96cceb042d4b211e9f9c83f742beffeba9ef9c21f54b40a3d1f44d61f`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db493ff6e1c4fb862ca41c8374cf9afb7fe44b82efb264e075f5e1a7102d31b9`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0` - unknown; unknown

```console
$ docker pull varnish@sha256:8742de5d9d76f588310d4f56560a23c3453b0890b7c4c63c3262126a0bd9ef20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afa6a59909d343ee1889cd2c7d47b60b836365488f3005022d788eda979b718`

```dockerfile
```

-	Layers:
	-	`sha256:53dda76f2e837d1d86fa89332168848f6c732524c775000b03ee7e12c61ace73`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.1.0-2`

```console
$ docker pull varnish@sha256:2b2f4efc79f6172af8513e48d8b37bc03bb91b34470122f4e3ccec29aeb0afc9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.1.0-2` - linux; amd64

```console
$ docker pull varnish@sha256:d6048518d9d00ddd659e6de25d4d36d750969c596ded8acf7e7cb1b46d30de4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132980763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37820760379585f60008e27c44683a69c553fc4ac78100e49f990ccc763423d4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 23:04:57 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 23 Sep 2026 23:04:57 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 23 Sep 2026 23:04:57 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 23 Sep 2026 23:04:57 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VARNISH_SIZE=100M
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VSM_NOPID=1
# Wed, 23 Sep 2026 23:04:57 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
WORKDIR /etc/varnish
# Wed, 23 Sep 2026 23:04:57 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 23 Sep 2026 23:04:57 GMT
USER varnish
# Wed, 23 Sep 2026 23:04:57 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 23 Sep 2026 23:04:57 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1467269b5053a1f8817df51b88cf5c5340b5679474e11e0c5c6288cac65e67b0`  
		Last Modified: Wed, 23 Sep 2026 23:05:12 GMT  
		Size: 103.1 MB (103147462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af45e8e15cf7d52ebfa95cedf7d6e2499efbd316bdd4d41ca96163bdd93ad47`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cc519b78f8e4f79b9db4980de72098625e690610c2c5f767ae583c4d974ec4`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51916c48dc92df91aa9b30dfd7bbdb67f944053b0255c56310dded779dd3ff6b`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0-2` - unknown; unknown

```console
$ docker pull varnish@sha256:21e345e8408ff92133e99a0b05fa03ddda479b0c73710458f20771ef51ca33d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d944c43941234f1a461de6b0a31e080d3903376488e5dba414496f485004c85`

```dockerfile
```

-	Layers:
	-	`sha256:2e9ab3ad1400f3e74fccd4a99d787161c0b9165662e3301f92b6ad888aa4a946`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 20.7 KB (20743 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.1.0-2` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:9f15995af051433778a59616b665670e487303ef986da86a659c2340335bdb98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126108193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ca1580ec3399e4f0374e6d14222657130567835bfc5467de648ca41e2c0225`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 23:04:49 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 23 Sep 2026 23:04:49 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 23 Sep 2026 23:04:49 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 23 Sep 2026 23:04:49 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VARNISH_SIZE=100M
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VSM_NOPID=1
# Wed, 23 Sep 2026 23:04:49 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
WORKDIR /etc/varnish
# Wed, 23 Sep 2026 23:04:49 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 23 Sep 2026 23:04:49 GMT
USER varnish
# Wed, 23 Sep 2026 23:04:49 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 23 Sep 2026 23:04:49 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4a6ad11e60a5294e29dd92e7c5dbac7a9b41e41368d813dc5001ddd2481b59`  
		Last Modified: Wed, 23 Sep 2026 23:05:04 GMT  
		Size: 95.9 MB (95915617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e146336566a705567ec0988d9a32c6b4c30ddc913af67c2a2c3bc6b62cfb7f`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5719cc96cceb042d4b211e9f9c83f742beffeba9ef9c21f54b40a3d1f44d61f`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db493ff6e1c4fb862ca41c8374cf9afb7fe44b82efb264e075f5e1a7102d31b9`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0-2` - unknown; unknown

```console
$ docker pull varnish@sha256:8742de5d9d76f588310d4f56560a23c3453b0890b7c4c63c3262126a0bd9ef20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afa6a59909d343ee1889cd2c7d47b60b836365488f3005022d788eda979b718`

```dockerfile
```

-	Layers:
	-	`sha256:53dda76f2e837d1d86fa89332168848f6c732524c775000b03ee7e12c61ace73`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:fresh`

```console
$ docker pull varnish@sha256:2b2f4efc79f6172af8513e48d8b37bc03bb91b34470122f4e3ccec29aeb0afc9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:fresh` - linux; amd64

```console
$ docker pull varnish@sha256:d6048518d9d00ddd659e6de25d4d36d750969c596ded8acf7e7cb1b46d30de4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132980763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37820760379585f60008e27c44683a69c553fc4ac78100e49f990ccc763423d4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 23:04:57 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 23 Sep 2026 23:04:57 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 23 Sep 2026 23:04:57 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 23 Sep 2026 23:04:57 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VARNISH_SIZE=100M
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VSM_NOPID=1
# Wed, 23 Sep 2026 23:04:57 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
WORKDIR /etc/varnish
# Wed, 23 Sep 2026 23:04:57 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 23 Sep 2026 23:04:57 GMT
USER varnish
# Wed, 23 Sep 2026 23:04:57 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 23 Sep 2026 23:04:57 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1467269b5053a1f8817df51b88cf5c5340b5679474e11e0c5c6288cac65e67b0`  
		Last Modified: Wed, 23 Sep 2026 23:05:12 GMT  
		Size: 103.1 MB (103147462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af45e8e15cf7d52ebfa95cedf7d6e2499efbd316bdd4d41ca96163bdd93ad47`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cc519b78f8e4f79b9db4980de72098625e690610c2c5f767ae583c4d974ec4`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51916c48dc92df91aa9b30dfd7bbdb67f944053b0255c56310dded779dd3ff6b`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:21e345e8408ff92133e99a0b05fa03ddda479b0c73710458f20771ef51ca33d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d944c43941234f1a461de6b0a31e080d3903376488e5dba414496f485004c85`

```dockerfile
```

-	Layers:
	-	`sha256:2e9ab3ad1400f3e74fccd4a99d787161c0b9165662e3301f92b6ad888aa4a946`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 20.7 KB (20743 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:fresh` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:9f15995af051433778a59616b665670e487303ef986da86a659c2340335bdb98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126108193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ca1580ec3399e4f0374e6d14222657130567835bfc5467de648ca41e2c0225`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 23:04:49 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 23 Sep 2026 23:04:49 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 23 Sep 2026 23:04:49 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 23 Sep 2026 23:04:49 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VARNISH_SIZE=100M
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VSM_NOPID=1
# Wed, 23 Sep 2026 23:04:49 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
WORKDIR /etc/varnish
# Wed, 23 Sep 2026 23:04:49 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 23 Sep 2026 23:04:49 GMT
USER varnish
# Wed, 23 Sep 2026 23:04:49 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 23 Sep 2026 23:04:49 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4a6ad11e60a5294e29dd92e7c5dbac7a9b41e41368d813dc5001ddd2481b59`  
		Last Modified: Wed, 23 Sep 2026 23:05:04 GMT  
		Size: 95.9 MB (95915617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e146336566a705567ec0988d9a32c6b4c30ddc913af67c2a2c3bc6b62cfb7f`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5719cc96cceb042d4b211e9f9c83f742beffeba9ef9c21f54b40a3d1f44d61f`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db493ff6e1c4fb862ca41c8374cf9afb7fe44b82efb264e075f5e1a7102d31b9`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:8742de5d9d76f588310d4f56560a23c3453b0890b7c4c63c3262126a0bd9ef20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afa6a59909d343ee1889cd2c7d47b60b836365488f3005022d788eda979b718`

```dockerfile
```

-	Layers:
	-	`sha256:53dda76f2e837d1d86fa89332168848f6c732524c775000b03ee7e12c61ace73`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:latest`

```console
$ docker pull varnish@sha256:2b2f4efc79f6172af8513e48d8b37bc03bb91b34470122f4e3ccec29aeb0afc9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:latest` - linux; amd64

```console
$ docker pull varnish@sha256:d6048518d9d00ddd659e6de25d4d36d750969c596ded8acf7e7cb1b46d30de4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132980763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37820760379585f60008e27c44683a69c553fc4ac78100e49f990ccc763423d4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 23:04:57 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 23 Sep 2026 23:04:57 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 23 Sep 2026 23:04:57 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 23 Sep 2026 23:04:57 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VARNISH_SIZE=100M
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VSM_NOPID=1
# Wed, 23 Sep 2026 23:04:57 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
WORKDIR /etc/varnish
# Wed, 23 Sep 2026 23:04:57 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 23 Sep 2026 23:04:57 GMT
USER varnish
# Wed, 23 Sep 2026 23:04:57 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 23 Sep 2026 23:04:57 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1467269b5053a1f8817df51b88cf5c5340b5679474e11e0c5c6288cac65e67b0`  
		Last Modified: Wed, 23 Sep 2026 23:05:12 GMT  
		Size: 103.1 MB (103147462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af45e8e15cf7d52ebfa95cedf7d6e2499efbd316bdd4d41ca96163bdd93ad47`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cc519b78f8e4f79b9db4980de72098625e690610c2c5f767ae583c4d974ec4`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51916c48dc92df91aa9b30dfd7bbdb67f944053b0255c56310dded779dd3ff6b`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:21e345e8408ff92133e99a0b05fa03ddda479b0c73710458f20771ef51ca33d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d944c43941234f1a461de6b0a31e080d3903376488e5dba414496f485004c85`

```dockerfile
```

-	Layers:
	-	`sha256:2e9ab3ad1400f3e74fccd4a99d787161c0b9165662e3301f92b6ad888aa4a946`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 20.7 KB (20743 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:latest` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:9f15995af051433778a59616b665670e487303ef986da86a659c2340335bdb98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126108193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ca1580ec3399e4f0374e6d14222657130567835bfc5467de648ca41e2c0225`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 23:04:49 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 23 Sep 2026 23:04:49 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 23 Sep 2026 23:04:49 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 23 Sep 2026 23:04:49 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VARNISH_SIZE=100M
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VSM_NOPID=1
# Wed, 23 Sep 2026 23:04:49 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
WORKDIR /etc/varnish
# Wed, 23 Sep 2026 23:04:49 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 23 Sep 2026 23:04:49 GMT
USER varnish
# Wed, 23 Sep 2026 23:04:49 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 23 Sep 2026 23:04:49 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4a6ad11e60a5294e29dd92e7c5dbac7a9b41e41368d813dc5001ddd2481b59`  
		Last Modified: Wed, 23 Sep 2026 23:05:04 GMT  
		Size: 95.9 MB (95915617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e146336566a705567ec0988d9a32c6b4c30ddc913af67c2a2c3bc6b62cfb7f`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5719cc96cceb042d4b211e9f9c83f742beffeba9ef9c21f54b40a3d1f44d61f`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db493ff6e1c4fb862ca41c8374cf9afb7fe44b82efb264e075f5e1a7102d31b9`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:8742de5d9d76f588310d4f56560a23c3453b0890b7c4c63c3262126a0bd9ef20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afa6a59909d343ee1889cd2c7d47b60b836365488f3005022d788eda979b718`

```dockerfile
```

-	Layers:
	-	`sha256:53dda76f2e837d1d86fa89332168848f6c732524c775000b03ee7e12c61ace73`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:old`

```console
$ docker pull varnish@sha256:73d7da8ba87f83564131a79b7901f14bc36937a4e2a11b8f90940855b144b4a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:old` - linux; amd64

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

### `varnish:old` - unknown; unknown

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

### `varnish:old` - linux; arm64 variant v8

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

### `varnish:old` - unknown; unknown

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
